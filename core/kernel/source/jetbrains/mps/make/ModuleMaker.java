package jetbrains.mps.make;

import jetbrains.mps.compiler.JavaCompiler;
import jetbrains.mps.ide.messages.FileWithPosition;
import jetbrains.mps.make.MakeScheduleBuilder;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.MPSExtentions;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.jetbrains.annotations.NotNull;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.*;

import com.intellij.openapi.progress.ProgressIndicator;

public class ModuleMaker {
  private static Logger LOG = Logger.getLogger(ModuleMaker.class);

  private Map<String, IModule> myContainingModules = new HashMap<String, IModule>();
  private Map<IModule, ModuleSources> myModuleSources = new HashMap<IModule, ModuleSources>();

  public ModuleMaker() {
  }

  public void clean(final Set<IModule> modules, @NotNull final ProgressIndicator indicator) {
    indicator.pushState();
    try {
      indicator.setIndeterminate(true);
      indicator.setText("Cleaning...");
      for (IModule m : modules) {
        if (isExcluded(m)) continue;
        if (indicator.isCanceled()) {
          break;
        }
        indicator.setText2("Cleaning " + m.getModuleReference() + "...");
        FileUtil.delete(m.getClassesGen().toFile());
      }
    } finally {
      indicator.popState();
    }
  }

  public jetbrains.mps.plugin.CompilationResult make(Set<IModule> modules, @NotNull final ProgressIndicator indicator) {
    indicator.pushState();
    try {
      indicator.setText("Compiling...");
      indicator.setIndeterminate(true);

      Set<IModule> toCompile = getModulesToCompile(modules);

      int errorCount = 0;
      List<Set<IModule>> schedule = new MakeScheduleBuilder<IModule>() {
        protected List<IModule> getDependOnModules(IModule m) {
          return m.getExplicitlyDependOnModules();
        }
      }.buildSchedule(toCompile);

      for (Set<IModule> cycle : schedule) {
        if (indicator.isCanceled()) {
          break;
        }

        indicator.setText2("Compiling modules " + cycle + "...");
        int currentErrorsCount = compile(cycle).getErrors();
        errorCount += currentErrorsCount;
      }

      return new jetbrains.mps.plugin.CompilationResult(errorCount, 0, false);
    } finally {
      indicator.popState();
    }
  }

  public Set<IModule> getModulesToCompile(Set<IModule> modules) {
    Set<IModule> toCompile = new LinkedHashSet<IModule>();
    Set<IModule> candidates = new LinkedHashSet<IModule>();
    candidates.addAll(modules);

    for (IModule m : modules) {
      candidates.addAll(m.getAllDependOnModules(IModule.class));
    }

    for (IModule c : candidates) {
      if (!isUpToDate(c)) {
        toCompile.add(c);
      }
    }                                         
    return toCompile;
  }

  private jetbrains.mps.plugin.CompilationResult compile(Set<IModule> modules) {
    boolean hasAnythingToCompile = false;
    for (IModule m : modules) {
      if (m.isCompileInMPS()) {
        hasAnythingToCompile = true;
      }
    }

    if (!hasAnythingToCompile) {
      return new jetbrains.mps.plugin.CompilationResult(0, 0, false);
    }   

    IClassPathItem classPathItems = computeDependenciesClassPath(modules);

    JavaCompiler compiler = new JavaCompiler(classPathItems);

    for (IModule m : modules) {
      if (areClassesUpToDate(m)) {
        continue;
      }
      
      if (!m.isCompileInMPS()) {
        LOG.warning("Module which compiled in IDEA depend on module which has to be compiled in MPS:" + m.getModuleFqName(), m);
        continue;
      }

      ModuleSources sources = getModuleSources(m);

      for (IFile f : sources.getFilesToDelete()) {
        f.delete();
      }

      for (JavaFile f : sources.getFilesToCompile()) {                        
        compiler.addSource(f.getClassName(), f.getContents());
        myContainingModules.put(f.getClassName(), m);
      }
    }

    compiler.compile();

    int errorCount = 0;

    for (CompilationResult cr : compiler.getCompilationResults()) {
      Set<String> classesWithErrors = new HashSet<String>();
      if (cr.getErrors() != null) {
        for (CategorizedProblem cp : cr.getErrors()) {
          String fileName = new String(cp.getOriginatingFileName());
          String fqName = fileName.substring(0, fileName.length() - MPSExtentions.DOT_JAVAFILE.length()).replace(File.separatorChar, '.');
          classesWithErrors.add(fqName);

          IModule containingModule = myContainingModules.get(fqName);
          assert containingModule != null;
          JavaFile javaFile = myModuleSources.get(containingModule).getJavaFile(fqName);

          String messageStirng = new String(cp.getOriginatingFileName()) + " : " + cp.getMessage();                    
          if (cp.isWarning()) {
            LOG.warning(messageStirng + " (line: " + cp.getSourceLineNumber() + ")", new FileWithPosition(javaFile.getFile(), cp.getSourceStart()));
          } else {
            LOG.error(messageStirng + " (line: " + cp.getSourceLineNumber() + ")", new FileWithPosition(javaFile.getFile(), cp.getSourceStart()));
          }
        }
        
        errorCount += cr.getErrors().length;               
      }

      for (ClassFile cf : cr.getClassFiles()) {
        String fqName = getName(cf.getCompoundName());
        String containerClassName = fqName;
        if (containerClassName.contains("$")) {
          int index = containerClassName.indexOf('$');
          containerClassName = containerClassName.substring(0, index);
        }
        if (myContainingModules.containsKey(containerClassName)) {
          IModule m = myContainingModules.get(containerClassName);
          File classesGen = m.getClassesGen().toFile();
          String packageName = NameUtil.namespaceFromLongName(fqName);
          File outputDir = new File(classesGen + File.separator + packageName.replace('.', File.separatorChar));
          if (!outputDir.exists()) {
            if (!outputDir.mkdirs()) {
              throw new RuntimeException("Can't create " + outputDir.getPath() + " directory");
            }
          }
          String className = NameUtil.shortNameFromLongName(fqName);
          File output = new File(outputDir, className + ".class");
          if (!classesWithErrors.contains(fqName)) {
            try {
              FileOutputStream os = new FileOutputStream(output);
              os.write(cf.getBytes());
              os.close();
            } catch (IOException e) {
              throw new RuntimeException(e);
            }
          } else {
            output.delete();            
          }
        } else {
          LOG.error("I don't know in which module's output path I should place class file for " + fqName);
        }
      }
    }

    for (IModule module : modules){
      ModuleSources sources = getModuleSources(module);
      for (ResourceFile toCopy : sources.getResourcesToCopy()) {
        String fqName = toCopy.getPath();

        fqName = fqName.substring(0, fqName.length() - toCopy.getFile().getName().length());
        String path = fqName.replace('/', File.separatorChar) + toCopy.getFile().getName();

        FileUtil.copyFile(
          toCopy.getFile().toFile(),
          module.getClassesGen().child(path).toFile()
        );
      }
    }

    for (IModule module : modules) {
      module.updateClassPath();
    }

    return new jetbrains.mps.plugin.CompilationResult(errorCount, 0, false);
  }                               

  private String getName(char[][] compoundName) {
    StringBuilder result = new StringBuilder();
    for (int i = 0; i < compoundName.length; i++) {
      char[] part = compoundName[i];
      result.append(part);
      if (i != compoundName.length - 1) {
        result.append(".");
      }
    }

    return result.toString();
  }

  private IClassPathItem computeDependenciesClassPath(Set<IModule> modules) {   
    return AbstractModule.getDependenciesClasspath(modules);
  }

  private boolean isUpToDate(IModule m) {
    if (isExcluded(m)) {
      return true;
    }

    if (!areClassesUpToDate(m)) {
      return false;
    }

    for (IModule dep : m.getAllDependOnModules(IModule.class)) {
      if (!areClassesUpToDate(dep)) {
        return false;
      }
    }

    return true;
  }

  private boolean areClassesUpToDate(IModule m) {
    if (isExcluded(m)) {
      return true;
    }

    if (!m.isCompileInMPS()) {
      return true;
    }

    return getModuleSources(m).isUpToDate();
  }

  private ModuleSources getModuleSources(IModule module) {
    if (!myModuleSources.containsKey(module)) {
      myModuleSources.put(module, new ModuleSources(module));
    }
    return myModuleSources.get(module);
  }

  private boolean isExcluded(IModule m) {
    if (!(m instanceof Solution) && !(m instanceof Language)) {
      return true;
    }

    if (m.isPackaged()) {
      return true;
    }

    if (!m.isCompileInMPS()) {
      return true;
    }

    return false;
  }
}

/*
 * Copyright 2003-2009 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.make;

import com.intellij.openapi.progress.ProgressIndicator;
import jetbrains.mps.compiler.JavaCompiler;
import jetbrains.mps.ide.messages.FileWithPosition;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.DependencyCollector;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.MPSExtentions;
import jetbrains.mps.make.dependencies.StronglyConnectedModules;
import jetbrains.mps.debug.BLDebugInfoCache;
import jetbrains.mps.debug.DebugInfo;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.jetbrains.annotations.NotNull;
import org.apache.commons.lang.ObjectUtils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.*;

public class ModuleMaker {
  private static final Logger LOG = Logger.getLogger(ModuleMaker.class);

  private final static int MAX_ERRORS = 100;

  private Map<String, IModule> myContainingModules = new HashMap<String, IModule>();
  private Map<IModule, ModuleSources> myModuleSources = new HashMap<IModule, ModuleSources>();
  private Dependencies myDependencies;

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
        indicator.setText2("Cleaning " + m.getModuleFqName() + "...");
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

      Set<IModule> candidates = new DependencyCollector(modules, IModule.class).collect();
      myDependencies = new Dependencies(candidates);

      Set<IModule> toCompile = getModulesToCompile(candidates);


      int errorCount = 0;
      int warnCount = 0;
      boolean compiled = false;
      List<Set<IModule>> schedule = StronglyConnectedModules.getInstance().getStronglyConnectedComponents(toCompile, false);

      for (Set<IModule> cycle : schedule) {
        if (indicator.isCanceled()) {
          break;
        }

        indicator.setText2("Compiling modules " + cycle + "...");
        jetbrains.mps.plugin.CompilationResult result = compile(cycle);
        errorCount += result.getErrors();
        warnCount += result.getWarnings();
        compiled = compiled || result.isCompiledAnything();
      }

      return new jetbrains.mps.plugin.CompilationResult(errorCount, warnCount, false, compiled);
    } finally {
      indicator.popState();
    }
  }

  private jetbrains.mps.plugin.CompilationResult compile(Set<IModule> modules) {
    boolean hasAnythingToCompile = false;

    for (IModule m : modules) {
      if (m.isCompileInMPS()) {
        hasAnythingToCompile = true;
      }
    }

    if (!hasAnythingToCompile) {
      return new jetbrains.mps.plugin.CompilationResult(0, 0, false, false);
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
    int outputtedErrors = 0;

    for (CompilationResult cr : compiler.getCompilationResults()) {
      Set<String> classesWithErrors = new HashSet<String>();
      if (cr.getErrors() != null) {
        for (final CategorizedProblem cp : cr.getErrors()) {
          String fileName = new String(cp.getOriginatingFileName());
          final String fqName = fileName.substring(0, fileName.length() - MPSExtentions.DOT_JAVAFILE.length()).replace(File.separatorChar, '.');
          classesWithErrors.add(fqName);

          IModule containingModule = myContainingModules.get(fqName);
          assert containingModule != null;
          JavaFile javaFile = myModuleSources.get(containingModule).getJavaFile(fqName);

          String messageStirng = new String(cp.getOriginatingFileName()) + " : " + cp.getMessage();

          //final SNode nodeToShow = getNodeByLine(cp, fqName);

          Object hintObject = new FileWithPosition(javaFile.getFile(), cp.getSourceStart());

          if (cp.isWarning()) {
            LOG.warning(messageStirng + " (line: " + cp.getSourceLineNumber() + ")", hintObject);
          } else {
            if (outputtedErrors < MAX_ERRORS) {
              outputtedErrors++;
              LOG.error(messageStirng + " (line: " + cp.getSourceLineNumber() + ")", hintObject);
            }
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
            FileOutputStream os = null;
            try {
              os = new FileOutputStream(output);
              os.write(cf.getBytes());
            } catch (IOException e) {
              LOG.error("Can't write to " + output.getAbsolutePath());
            } finally {
              if (os != null) {
                try {
                  os.close();
                } catch (IOException e) {
                  LOG.error(e);
                }
              }
            }
          } else {
            if (output.exists() && !(output.delete())) {
              LOG.error("Can't delete " + output.getPath());
            }
          }
        } else {
          LOG.error("I don't know in which module's output path I should place class file for " + fqName);
        }
      }
    }

    for (IModule module : modules) {
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

  private SNode getNodeByLine(final CategorizedProblem cp, final String fqName) {
    final int lastDot = fqName.lastIndexOf(".");
    String pkg = (lastDot == -1 ?
      "" :
      fqName.substring(0, lastDot)
    );

    List<SModelDescriptor> list = SModelRepository.getInstance().getModelDescriptorsByModelName(pkg);
    final Wrappers._T<SModelDescriptor> descriptor = new Wrappers._T<SModelDescriptor>(null);


    for (SModelDescriptor modelDescriptor : ListSequence.fromList(list)) {
      if (!(ObjectUtils.equals(modelDescriptor.getStereotype(), SModelStereotype.JAVA_STUB)) && !(modelDescriptor.isTransient())) {
        descriptor.value = modelDescriptor;
      }
    }

    final Wrappers._T<SNode> nodeToShow = new Wrappers._T<SNode>(null);
    if (descriptor.value != null) {
      final DebugInfo result = BLDebugInfoCache.getInstance().get(descriptor.value);
      if (result != null) {
        ModelAccess.instance().runReadAction(new Runnable() {
          public void run() {
            nodeToShow.value = result.getNodeForLine(fqName.substring(lastDot + 1) + ".java", cp.getSourceLineNumber(), descriptor.value.getSModel());
          }
        });
      }
    }

    return nodeToShow.value;
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

  private Set<IModule> getModulesToCompile(Set<IModule> modules) {
    Set<IModule> dirtyModules = new HashSet<IModule>();
    for (IModule m : modules) {
      if (isDirty(m)) {
        dirtyModules.add(m);
      }
    }

    Map<IModule, Set<IModule>> backDependencies = new HashMap<IModule, Set<IModule>>();

    for (IModule m : modules) {
      for (IModule dep : m.getExplicitlyDependOnModules(true)) {
        if (!backDependencies.containsKey(dep)) {
          backDependencies.put(dep, new HashSet<IModule>());
        }
        backDependencies.get(dep).add(m);
      }
    }

    Set<IModule> toCompile = new LinkedHashSet<IModule>();

    for (IModule dirty : dirtyModules) {
      collectToCompile(dirty, toCompile, backDependencies);
    }

    return toCompile;
  }

  private void collectToCompile(IModule current, Set<IModule> result, Map<IModule, Set<IModule>> deps) {
    if (!result.add(current)) return;
    if (!deps.containsKey(current)) return;

    for (IModule dep : deps.get(current)) {
      collectToCompile(dep, result, deps);
    }
  }

  private boolean isDirty(IModule m) {
    if (isExcluded(m)) return false;
    if (areClassesUpToDate(m)) return false;
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
      myModuleSources.put(module, new ModuleSources(module, myDependencies));
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

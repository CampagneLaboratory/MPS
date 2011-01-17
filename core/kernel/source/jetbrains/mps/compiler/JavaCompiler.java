/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
package jetbrains.mps.compiler;

import jetbrains.mps.project.MPSExtentions;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.util.AbstractClassLoader;
import jetbrains.mps.util.NameUtil;
import org.eclipse.jdt.internal.compiler.*;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.batch.CompilationUnit;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class JavaCompiler {
  private Map<String, CompilationUnit> myCompilationUnits = new HashMap<String, CompilationUnit>();
  private Map<String, byte[]> myClasses = new HashMap<String, byte[]>();

  public JavaCompiler() {

  }

  public void addSource(String classFqName, String text) {
    CompilationUnit compilationUnit = new CompilationUnit(text.toCharArray(), NameUtil.pathFromNamespace(classFqName) + MPSExtentions.DOT_JAVAFILE, "UTF-8");
    myCompilationUnits.put(classFqName, compilationUnit);
  }

  public void compile(IClassPathItem classPath) {
    CompilerOptions options = new CompilerOptions();
    options.sourceLevel = ClassFileConstants.JDK1_6;
    options.targetJDK = ClassFileConstants.JDK1_5;
    options.produceDebugAttributes = ClassFileConstants.ATTR_SOURCE | ClassFileConstants.ATTR_LINES | ClassFileConstants.ATTR_VARS;

    org.eclipse.jdt.internal.compiler.Compiler c = new Compiler(new MyNameEnvironment(classPath), new MyErrorHandlingPolicy(), options, new MyCompilerRequestor(), new DefaultProblemFactory(), null);
    //c.options.verbose = true;

    c.compile(myCompilationUnits.values().toArray(new CompilationUnit[0]));
  }

  public ClassLoader getClassLoader(ClassLoader parent) {
    return new MapClassLoader(parent);
  }

  public Map<String, byte[]> getClasses() {
    return Collections.unmodifiableMap(myClasses);
  }

  private class MapClassLoader extends AbstractClassLoader {
    private MapClassLoader(ClassLoader parent) {
      super(parent);
    }

    protected byte[] findClassBytes(String name) {
      return getClasses().get(name);
    }

    protected boolean isExcluded(String name) {
      return false;
    }
  }

  private class MyNameEnvironment extends MPSNameEnvironment {
    private IClassPathItem myClassPath;

    public MyNameEnvironment(IClassPathItem classPath) {
      myClassPath = classPath;
    }

    protected IClassPathItem getClassPathItem() {
      return myClassPath;
    }

    protected NameEnvironmentAnswer findType(String fqName) {
      if (myCompilationUnits.containsKey(fqName)) {
        return new NameEnvironmentAnswer(myCompilationUnits.get(fqName), null);
      }

      return super.findType(fqName);
    }
  }

  private static class MyErrorHandlingPolicy implements IErrorHandlingPolicy {
    public boolean proceedOnErrors() {
      return true;
    }

    public boolean stopOnFirstError() {
      return false;
    }
  }

  public static String getClassName(ClassFile file) {
    StringBuilder sb = new StringBuilder(100);
    for (int i = 0; i < file.getCompoundName().length; i++) {
      sb.append(file.getCompoundName()[i]);
      if (i != file.getCompoundName().length - 1) {
        sb.append('.');
      }
    }

    return sb.toString();
  }

  private class MyCompilerRequestor implements ICompilerRequestor {
    public void acceptResult(CompilationResult result) {
      for (ClassFile file : result.getClassFiles()) {
        onClass(file);
        myClasses.put(getClassName(file), file.getBytes());
      }

      onCompilationResult(result);
    }
  }

  //-----------event handling------------

  private void onCompilationResult(CompilationResult r) {
    for (CompilationResultListener l : myCompilationResultListeners) {
      l.onCompilationResult(r);
    }
  }

  private void onClass(ClassFile f) {
    for (CompilationResultListener l : myCompilationResultListeners) {
      l.onClass(f);
    }
  }

  private ArrayList<CompilationResultListener> myCompilationResultListeners = new ArrayList<CompilationResultListener>();

  public void addCompilationResultListener(@NotNull CompilationResultListener l) {
    myCompilationResultListeners.add(l);
  }

  public void removeCompilationResultListener(CompilationResultListener l) {
    myCompilationResultListeners.remove(l);
  }
}

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
package jetbrains.mps.ide.projectPane;

import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.TextTreeNode;
import jetbrains.mps.ide.IStereotypeProvider;
import jetbrains.mps.ide.ui.smodel.SModelTreeNode;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.SModelRoot;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.ProjectModels;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SModelStereotype;

import java.util.ArrayList;
import java.util.List;

public class SModelsSubtree {
  public static void create(MPSTreeNode rootTreeNode, IOperationContext operationContext) {
    List<SModelDescriptor> regularModels = new ArrayList<SModelDescriptor>();
    List<SModelDescriptor> tests = new ArrayList<SModelDescriptor>();
    List<SModelDescriptor> javaStubs = new ArrayList<SModelDescriptor>();

    IModule module = operationContext.getModule();
    assert module != null;
    for (SModelDescriptor modelDescriptor : module.getOwnModelDescriptors()) {
      if (ProjectModels.isProjectModel(modelDescriptor.getSModelReference())) continue;

      String stereotype = modelDescriptor.getStereotype();

      if (stereotype == null || stereotype.length() == 0) {
        stereotype = ".";
      }

      if (SModelStereotype.JAVA_STUB.equals(stereotype)) {
        javaStubs.add(modelDescriptor);
      } else if (SModelStereotype.TESTS.equals(stereotype)) {
        tests.add(modelDescriptor);
      } else{
        regularModels.add(modelDescriptor);
      }
    }

    SModelNamespaceTreeBuilder builder;
    List<SModelTreeNode> regularModelNodes = getRootModelTreeNodes(regularModels, operationContext);
    if (!regularModelNodes.isEmpty()) {
      if (rootTreeNode instanceof ProjectSolutionTreeNode) {
        builder = new SModelNamespaceTreeBuilder();
        for (SModelTreeNode treeNode : regularModelNodes) {
          builder.addNode(treeNode);
        }
        builder.fillNode(rootTreeNode);
      } else {
        MPSTreeNode currentRootNode;
        if (rootTreeNode instanceof ProjectLanguageTreeNode || rootTreeNode instanceof TransientModelsTreeNode) {
          currentRootNode = rootTreeNode;
        } else {
          IModule contextModule = operationContext.getModule();
          List<SModelRoot> modelRoots = contextModule.getSModelRoots();
          String namespace = (modelRoots.isEmpty())? "" : contextModule.getSModelRoots().get(0).getPrefix();
          if (namespace == null || namespace.length() == 0) {
            namespace = contextModule.getModuleNamespace();
          }

          currentRootNode = new NamespaceTextNode((namespace == null)? "" : namespace, operationContext);
        }
        for (SModelTreeNode treeNode : regularModelNodes) {
          currentRootNode.add(treeNode);
        }
        if (!currentRootNode.equals(rootTreeNode)) {
          rootTreeNode.add(currentRootNode);
        }
      }
    }

    if (!tests.isEmpty()) {
      builder = new SModelNamespaceTreeBuilder();

      List<SModelTreeNode> testNodes = getRootModelTreeNodes(tests, operationContext);
      for (SModelTreeNode testNode : testNodes) {
        builder.addNode(testNode);                        
      }

      TestsTreeNode testsNode = new TestsTreeNode(operationContext);
      builder.fillNode(testsNode);
      
      rootTreeNode.add(testsNode);
    }

    if (!javaStubs.isEmpty()) {
      builder = new SModelNamespaceTreeBuilder();
      List<SModelTreeNode> javaStubNodes = getRootModelTreeNodes(javaStubs, operationContext);
      for (SModelTreeNode treeNode : javaStubNodes) {
        builder.addNode(treeNode);
      }

      JavaStubsTreeNode javaStubsNode = new JavaStubsTreeNode(operationContext);
      builder.fillNode(javaStubsNode);

      rootTreeNode.add(javaStubsNode);
    }
  }

  private static List<SModelTreeNode> getRootModelTreeNodes(List<SModelDescriptor> models, IOperationContext context) {
    List<SModelTreeNode> result = new ArrayList<SModelTreeNode>();
    List<SModelDescriptor> sortedModels = SortUtil.sortModels(models);
    if (!sortedModels.isEmpty()) {
      int rootIndex = 0;
      while (rootIndex < sortedModels.size()) {
        SModelDescriptor rootModelDescriptor = sortedModels.get(rootIndex);
        int countNamePart = getCountNamePart(rootModelDescriptor, rootModelDescriptor.getModule().getModuleNamespace());
        SModelTreeNode treeNode = new SModelTreeNode(sortedModels.get(rootIndex), null, context, countNamePart);
        result.add(treeNode);
        rootIndex = buildChildModels(treeNode, sortedModels, rootIndex);
      }      
    }
    return result;
  }

  private static int buildChildModels(SModelTreeNode treeNode, List<SModelDescriptor> candidates, int rootIndex) {
    int index = rootIndex + 1;
    while (index < candidates.size()) {
      SModelDescriptor candidate = (SModelDescriptor) candidates.get(index);
      if (treeNode.isSubfolderModel(candidate)) {
        IOperationContext context = treeNode.getOperationContext();
        int countNamePart = getCountNamePart(candidate, treeNode.getSModelDescriptor().getLongName());
        SModelTreeNode newChildModel = new SModelTreeNode(candidate, null, context, countNamePart);
        treeNode.addChildModel(newChildModel);
        index = buildChildModels(newChildModel, candidates, index);
      } else {
        return index;
      }
    }
    return index;
  }

  public static int getCountNamePart(SModelDescriptor md, String baseName) {
    String modelLongName = md.getLongName();
    String shortName = modelLongName.replace(baseName + '.', "");
    return shortName.split("\\.").length - 1;
  }

  public static class JavaStubsTreeNode extends TextTreeNode implements IStereotypeProvider {
    public JavaStubsTreeNode(IOperationContext context) {
      super("java stubs", context);

      setIcon(Icons.PROJECT_MODELS_ICON, false);
      setIcon(Icons.PROJECT_MODELS_EXPANDED_ICON, true);
    }

    public String getStereotype() {
      return SModelStereotype.JAVA_STUB;
    }

    public boolean isStrict() {
      return true;
    }
  }

  public static class TestsTreeNode extends TextTreeNode implements IStereotypeProvider {
    public TestsTreeNode(IOperationContext context) {
      super("tests", context);

      setIcon(Icons.PROJECT_MODELS_ICON, false);
      setIcon(Icons.PROJECT_MODELS_EXPANDED_ICON, true);
    }

    public String getStereotype() {
      return SModelStereotype.TESTS;
    }

    public boolean isStrict() {
      return true;
    }
  }
}

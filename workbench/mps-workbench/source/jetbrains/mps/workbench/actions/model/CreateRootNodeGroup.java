/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.workbench.actions.model;

import com.intellij.ide.FileEditorProvider;
import com.intellij.ide.SelectInContext;
import com.intellij.ide.SelectInTarget;
import com.intellij.ide.projectView.ProjectView;
import com.intellij.ide.projectView.impl.AbstractProjectViewPane;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.project.DumbAware;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import org.jetbrains.mps.openapi.model.EditableSModel;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.ui.smodel.PackageNode;
import jetbrains.mps.ide.ui.smodel.SModelTreeNode;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ProjectOperationContext;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SModelOperations;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.action.NodeFactoryManager;
import jetbrains.mps.smodel.constraints.ModelConstraintsManager;
import jetbrains.mps.smodel.presentation.NodePresentationUtil;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.ToStringComparator;
import jetbrains.mps.workbench.MPSDataKeys;
import jetbrains.mps.workbench.action.BaseAction;
import jetbrains.mps.workbench.action.BaseGroup;
import jetbrains.mps.workbench.nodesFs.MPSNodesVirtualFileSystem;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModuleReference;

import javax.swing.Icon;
import javax.swing.tree.TreeNode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/**
 * @author Kostik
 */
public class CreateRootNodeGroup extends BaseGroup {
  private String myPackage;
  private boolean myPlain = false;

  public CreateRootNodeGroup() {
    super("Create Root Node");
    setPopup(false);
  }

  public CreateRootNodeGroup(boolean plain) {
    this();
    myPlain = plain;
  }

  @Override
  public void doUpdate(AnActionEvent event) {
    removeAll();

    SModel modelDescriptor = event.getData(MPSDataKeys.CONTEXT_MODEL);
    if (modelDescriptor == null) {
      setEnabledState(event.getPresentation(), false);
      return;
    }

    if (!(modelDescriptor instanceof EditableSModel) || (((EditableSModel) modelDescriptor).isReadOnly())) {
      event.getPresentation().setEnabled(false);
      event.getPresentation().setVisible(false);
      return;
    }

    IScope scope = event.getData(MPSDataKeys.SCOPE);
    IOperationContext context = event.getData(MPSDataKeys.OPERATION_CONTEXT);

    boolean isStubModel = SModelStereotype.isStubModelStereotype(SModelStereotype.getStereotype(modelDescriptor));
    if (scope == null || context == null || isStubModel) {
      setEnabledState(event.getPresentation(), false);
      return;
    }

    boolean inEditor = event.getData(MPSDataKeys.LOGICAL_VIEW_SELECTION_SIZE) == null;

    if (!inEditor) {
      Integer selectedItemsCount = event.getData(MPSDataKeys.LOGICAL_VIEW_SELECTION_SIZE);
      boolean singleItemSelected = selectedItemsCount != null && selectedItemsCount == 1;

      if (!singleItemSelected) {
        setEnabledState(event.getPresentation(), false);
        return;
      }

      TreeNode treeNode = event.getData(MPSDataKeys.LOGICAL_VIEW_NODE);

      if (!(treeNode instanceof PackageNode)) {
        myPackage = null;
      } else {
        final PackageNode node = (PackageNode) treeNode;
        myPackage = node.getPackage();
      }
    } else {
      SNode node = event.getData(MPSDataKeys.NODE);
      myPackage = null;
      if (node != null) {
        SNode root = node.getContainingRoot();
        myPackage = SNodeAccessUtil.getProperty(root, SNodeUtil.property_BaseConcept_virtualPackage);
      }
    }

    setEnabledState(event.getPresentation(), true);

    List<Language> modelLanguages = SModelOperations.getLanguages(modelDescriptor, scope);

    LanguageAspect aspect = Language.getModelAspect(modelDescriptor);
    if (aspect != null) {
      SModuleReference ref = aspect.getMainLanguage();
      Language lang = scope.getLanguage(ref);
      if (lang != null) {
        modelLanguages.remove(lang);

        for (SNode conceptDeclaration : lang.getConceptDeclarations()) {
          if (ModelConstraintsManager.canBeRoot(context, NameUtil.nodeFQName(conceptDeclaration), modelDescriptor)) {
            add(new NewRootNodeAction(new jetbrains.mps.smodel.SNodePointer(conceptDeclaration), modelDescriptor));
          }
        }

        addSeparator();
      }
    }

    Collections.sort(modelLanguages, new ToStringComparator());

    List<Language> languagesWithRoots = new ArrayList<Language>();
    for (final Language language : modelLanguages) {
      for (SNode conceptDeclaration : language.getConceptDeclarations()) {
        if (ModelConstraintsManager.canBeRoot(context, NameUtil.nodeFQName(conceptDeclaration), modelDescriptor)) {
          languagesWithRoots.add(language);
          break;
        }
      }
    }

    boolean plain = myPlain || (languagesWithRoots.size() == 1 && aspect == null);

    for (final Language language : languagesWithRoots) {
      String name = language.getModuleName();
      Icon icon = IconManager.getIconForNamespace(language.getModuleName());
      BaseGroup langRootsGroup;

      if (!plain) {
        langRootsGroup = new BaseGroup(NameUtil.compactNamespace(name), name, icon);
        langRootsGroup.setPopup(true);
      } else {
        langRootsGroup = this;
      }

      for (SNode conceptDeclaration : language.getConceptDeclarations()) {
        if (ModelConstraintsManager.getInstance().canBeRoot(context, NameUtil.nodeFQName(conceptDeclaration), modelDescriptor)) {
          langRootsGroup.add(new NewRootNodeAction(new jetbrains.mps.smodel.SNodePointer(conceptDeclaration), modelDescriptor));
        }
      }
      if (!plain) {
        this.add(langRootsGroup);
      } else {
        this.addSeparator();
      }
    }

    if (getChildrenCount() == 0) {
      add(ActionManager.getInstance().getAction(
          "jetbrains.mps.ide.editor.actions.AddLanguageImport_Action"/* FIXME AddLanguageImport_Action.class.getName()*/));
    }
  }

  private class NewRootNodeAction extends BaseAction implements DumbAware {
    private Project myProject;
    private IScope myScope;
    public IOperationContext myContext;
    private final SNodeReference myNodeConcept;
    private final SModel myModelDescriptor;

    public NewRootNodeAction(final SNodeReference nodeConcept, SModel modelDescriptor) {
      super(NodePresentationUtil.matchingText(nodeConcept.resolve(MPSModuleRepository.getInstance())));
      myNodeConcept = nodeConcept;
      myModelDescriptor = modelDescriptor;
      Icon icon = ModelAccess.instance().runReadAction(new Computable<Icon>() {
        @Override
        public Icon compute() {
          return IconManager.getIconForConceptFQName(NameUtil.nodeFQName(nodeConcept.resolve(MPSModuleRepository.getInstance())));
        }
      });
      getTemplatePresentation().setIcon(icon);
      setExecuteOutsideCommand(true);
    }

    @Override
    protected boolean collectActionData(AnActionEvent e, Map<String, Object> _params) {
      if (!super.collectActionData(e, _params)) return false;
      myProject = MPSDataKeys.PROJECT.getData(e.getDataContext());
      myScope = MPSDataKeys.SCOPE.getData(e.getDataContext());
      if (myScope == null) return false;
      myContext = MPSDataKeys.OPERATION_CONTEXT.getData(e.getDataContext());
      if (myContext == null) return false;
      return true;
    }

    @Override
    protected void doExecute(AnActionEvent e, Map<String, Object> _params) {
      ModelAccess.instance().runCommandInEDT(new Runnable() {
        @Override
        public void run() {
          final SNode node = NodeFactoryManager.createNode(myNodeConcept.resolve(MPSModuleRepository.getInstance()), null, null, myModelDescriptor, myScope);
          SNodeAccessUtil.setProperty(node, SModelTreeNode.PACK, myPackage);
          myModelDescriptor.addRootNode(node);

          ModelAccess.instance().runWriteInEDT(new Runnable() {
            @Override
            public void run() {
              if (!trySelectInCurrentPane(node)) {
                ProjectOperationContext context = new ProjectOperationContext(ProjectHelper.toMPSProject(myProject));
                NavigationSupport.getInstance().selectInTree(context, node, false);
              }

              NavigationSupport.getInstance().openNode(myContext, node, true, false);
            }
          });
        }
      }, myProject.getComponent(MPSProject.class));
    }

    private boolean trySelectInCurrentPane(final SNode node) {
      final ProjectView projectView = ProjectView.getInstance(myProject);

      AbstractProjectViewPane selectedPane = projectView.getCurrentProjectViewPane();
      if (selectedPane == null) return false;

      SelectInTarget target = selectedPane.createSelectInTarget();
      if (target == null) return false;

      SNodeReference pointer = ModelAccess.instance().runReadAction(new Computable<SNodeReference>() {
        @Override
        public SNodeReference compute() {
          return new jetbrains.mps.smodel.SNodePointer(node);
        }
      });
      MySelectInContext context = new MySelectInContext(pointer);
      if (!target.canSelect(context)) return false;

      target.selectIn(context, false);
      return true;
    }

    private class MySelectInContext implements SelectInContext {
      private final SNodeReference myNode;

      public MySelectInContext(SNodeReference node) {
        myNode = node;
      }

      @Override
      @NotNull
      public Project getProject() {
        return myProject;
      }

      @Override
      @NotNull
      public VirtualFile getVirtualFile() {
        return MPSNodesVirtualFileSystem.getInstance().getFileFor(myNode);
      }

      @Override
      public Object getSelectorInFile() {
        return null;
      }

      @Override
      public FileEditorProvider getFileEditorProvider() {
        return null;
      }
    }
  }
}

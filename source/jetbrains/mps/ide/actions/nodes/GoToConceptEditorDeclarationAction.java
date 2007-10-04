package jetbrains.mps.ide.actions.nodes;

import jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.ide.BootstrapLanguages;
import jetbrains.mps.ide.IDEProjectFrame;
import jetbrains.mps.ide.IEditor;
import jetbrains.mps.ide.action.ActionContext;
import jetbrains.mps.ide.action.MPSAction;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.ide.navigation.EditorNavigationCommand;
import jetbrains.mps.ide.navigation.NavigationActionProcessor;
import jetbrains.mps.ide.projectPane.ProjectPane;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.ModuleContext;
import jetbrains.mps.projectLanguage.structure.Editor;
import jetbrains.mps.projectLanguage.structure.LanguageDescriptor;
import jetbrains.mps.projectLanguage.structure.Model;
import jetbrains.mps.projectLanguage.structure.ModelRoot;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.persistence.IModelRootManager;
import jetbrains.mps.smodel.persistence.DefaultModelRootManager;
import jetbrains.mps.smodel.persistence.ModelRootsUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.nodeEditor.AbstractEditorComponent;
import org.jetbrains.annotations.NotNull;

import javax.swing.Icon;
import javax.swing.JOptionPane;
import java.util.List;

/**
 * @author Kostik
 */
public class GoToConceptEditorDeclarationAction extends MPSAction {

  public GoToConceptEditorDeclarationAction() {
    super("Go To Concept Editor Declaration");
  }

  @NotNull
  public String getKeyStroke() {
    return "control shift E";
  }

  public Icon getIcon() {
    return jetbrains.mps.bootstrap.editorLanguage.icons.Icons.EDITOR_ICON;
  }

  public void update(@NotNull ActionContext context) {
    super.update(context);
    boolean visible = BaseAdapter.fromNode(context.getNode()) instanceof ConceptDeclaration;
    setVisible(visible);
    setEnabled(visible);
  }

  public boolean executeInsideCommand() {
    return false;
  }

  public void execute(@NotNull ActionContext context) {
    final SNode node = context.get(SNode.class);
    if (!(BaseAdapter.fromNode(node) instanceof ConceptDeclaration)) return;

    final IDEProjectFrame ide = context.get(IDEProjectFrame.class);
    IOperationContext invocationContext = context.get(IOperationContext.class);
    final IScope scope = invocationContext.getScope();
    IEditor currentEditor = ide.getEditorsPane().getCurrentEditor();
    if (currentEditor == null) return;
    AbstractEditorComponent editorComponent = currentEditor.getCurrentEditorComponent();
    if (editorComponent == null) return;
    if (!editorComponent.hasFocus()) {
      currentEditor = context.get(IDEProjectFrame.class).getInspectorPane().getInspector().getEditor();
    }

    Language language = null;
    IModule module = invocationContext.getModule();
    if (module instanceof Language) {
      Language contextLanguage = (Language) module;
      SModelDescriptor testStructureModel = contextLanguage.getStructureModelDescriptor();
      if (node.getModel().getUID().equals(testStructureModel.getModelUID())) {
        language = contextLanguage;
      }
    }
    if (language == null) {
      language = SModelUtil_new.getDeclaringLanguage((ConceptDeclaration) node.getAdapter(), scope);
      if (language == null) {
        JOptionPane.showMessageDialog(null, "Couldn't find declaring language for concept " + NameUtil.nodeFQName(node));
        return;
      }
    }

    final ModuleContext languageContext = new ModuleContext(language, invocationContext.getProject());
    SModelDescriptor languageEditor = language.getEditorModelDescriptor();
    ConceptEditorDeclaration editorDeclaration;
    if (languageEditor != null) {
      editorDeclaration = SModelUtil_new.findEditorDeclaration(languageEditor.getSModel(), (ConceptDeclaration) node.getAdapter());
      if (editorDeclaration != null) {
        navigateToEditorDeclaration(editorDeclaration.getNode(), languageContext, currentEditor, ide);
        return;
      }
    }

    String message;
    if (languageEditor == null) {
      message = "Language \"" + language.getModuleUID() + "\" has no editor model.\n" +
              "Create new editor model?";
    } else {
      message = "Concept \"" + NameUtil.nodeFQName(node) + "\" has no editor.\n" +
              "Create new editor?";
    }
    int option = JOptionPane.showConfirmDialog(null, message, "Editor not found",
            JOptionPane.YES_NO_OPTION,
            JOptionPane.QUESTION_MESSAGE);
    if (option != JOptionPane.YES_OPTION) {
      return;
    }

    // create ...
    final Language languageFinal = language;
    final SModelDescriptor languageEditorFinal = languageEditor;
    CommandProcessor.instance().executeCommand(new Runnable() {
      public void run() {
        if (languageEditorFinal == null) {
          createLanguageEditorModel(languageFinal);
          createEditorDeclaration((ConceptDeclaration) node.getAdapter(), languageFinal.getEditorModelDescriptor(), scope);
        } else {
          createEditorDeclaration((ConceptDeclaration) node.getAdapter(), languageEditorFinal, scope);
        }
      }
    });

    SModelDescriptor editorModelDescriptor = language.getEditorModelDescriptor();
    assert editorModelDescriptor != null;
    editorDeclaration = SModelUtil_new.findEditorDeclaration(editorModelDescriptor.getSModel(), (ConceptDeclaration) node.getAdapter());
    navigateToEditorDeclaration(editorDeclaration.getNode(), languageContext, currentEditor, ide);
  }

  private void navigateToEditorDeclaration(final SNode editorDeclaration, final IOperationContext operationContext, final IEditor currentEditor, final IDEProjectFrame ide) {
    operationContext.getComponent(ProjectPane.class).selectNode(editorDeclaration, operationContext);

    NavigationActionProcessor.executeNavigationAction(new EditorNavigationCommand(editorDeclaration, currentEditor, ide.getEditorsPane()), operationContext);
  }

  public static ConceptEditorDeclaration createEditorDeclaration(ConceptDeclaration conceptDeclaration, SModelDescriptor editorModelDescriptor, IScope scope) {
    SModel editorModel = editorModelDescriptor.getSModel();
    ConceptEditorDeclaration editorDeclaration = (ConceptEditorDeclaration) SModelUtil_new.instantiateConceptDeclaration("jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration", editorModel, scope).getAdapter();
    editorDeclaration.setConceptDeclaration(conceptDeclaration);
    editorModel.addRoot(editorDeclaration);
    return editorDeclaration;
  }

  public static SModelDescriptor createLanguageEditorModel(Language language) {
    ModelRoot modelRoot = null;
    List<ModelRoot> modelRoots = language.getModelRoots();
    for (ModelRoot mRoot : modelRoots) {
      IModelRootManager rootManager = ModelRootsUtil.getManagerFor(mRoot);
      if (rootManager instanceof DefaultModelRootManager) {
        modelRoot = mRoot;
        break;
      }
    }

    assert modelRoot != null;

    SModelDescriptor editorModelDescriptor = language.createModel(new SModelUID(language.getModuleUID(), "editor", ""), modelRoot);
    SModel editorModel = editorModelDescriptor.getSModel();
    editorModel.addLanguage(BootstrapLanguages.getInstance().getEditorLanguage());
    editorModelDescriptor.save();

    // updateTypesystem language
    LanguageDescriptor languageDescriptor = language.getLanguageDescriptor();
    Model _model = Model.newInstance(languageDescriptor.getModel());
    _model.setName(editorModel.getUID().toString());
    Editor _editor = Editor.newInstance(languageDescriptor.getModel());
    _editor.setEditorModel(_model);
    _editor.setStereotype("");
    languageDescriptor.addEditor(_editor);
    language.setLanguageDescriptor(languageDescriptor);
    language.save();

    return editorModelDescriptor;
  }

  public static SModelDescriptor createConstraintsModel(Language language) {
    ModelRoot modelRoot = null;
    List<ModelRoot> modelRoots = language.getModelRoots();
    for (ModelRoot mRoot : modelRoots) {
      IModelRootManager rootManager = ModelRootsUtil.getManagerFor(mRoot);
      if (rootManager instanceof DefaultModelRootManager) {
        modelRoot = mRoot;
        break;
      }
    }

    assert modelRoot != null;

    SModelDescriptor constraintsModelDescriptor = language.createModel(new SModelUID(language.getModuleUID(), "constraints", ""), modelRoot);
    SModel constraintsModel = constraintsModelDescriptor.getSModel();
    constraintsModel.addLanguage(BootstrapLanguages.getInstance().getConstraintsLanguage());
    constraintsModel.addLanguage(BootstrapLanguages.getInstance().getBaseLanguage());
    constraintsModel.addLanguage(BootstrapLanguages.getInstance().getSModelLanguage());
    constraintsModelDescriptor.save();


    LanguageDescriptor languageDescriptor = language.getLanguageDescriptor();
    Model model = Model.newInstance(languageDescriptor.getModel());
    model.setName(constraintsModel.getUID().toString());
    languageDescriptor.setConstraintsModel(model);
    language.setLanguageDescriptor(languageDescriptor);
    language.save();

    return constraintsModelDescriptor;
  }
}

package jetbrains.mps.ide.dialogs;

import com.intellij.openapi.project.Project;
import jetbrains.mps.datatransfer.CloneModelUtil;
import jetbrains.mps.ide.projectPane.ProjectPane;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.SModelRoot;
import jetbrains.mps.projectLanguage.structure.CloneModelProperties;
import jetbrains.mps.projectLanguage.structure.DevKit;
import jetbrains.mps.projectLanguage.structure.Model;
import jetbrains.mps.projectLanguage.structure.RootReference;
import jetbrains.mps.smodel.*;

import javax.swing.SwingUtilities;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class CloneModelDialog extends BaseNodeDialog {

  private static final DialogDimensionsSettings.DialogDimensions ourDefaultDialogSettings = new DialogDimensionsSettings.DialogDimensions(100, 100, 500, 400);
  private CloneModelProperties myCloneModelProperties;

  private SModel myProjectModel;
  private SModel mySModel;

  protected SNode getNode() {
    return BaseAdapter.fromAdapter(myCloneModelProperties);
  }

  public DialogDimensionsSettings.DialogDimensions getDefaultDimensionSettings() {
    return ourDefaultDialogSettings;
  }


  public CloneModelDialog(SModelDescriptor modelDescriptor, IOperationContext operationContext) {
    super("Clone Model", operationContext);
    IModule module = operationContext.getModule();
    assert module != null;
    SModelDescriptor workingModel = ProjectModels.createDescriptorFor(module);
    myProjectModel = workingModel.getSModel();
    mySModel = modelDescriptor.getSModel();

    initNode();
  }

  private String createNameForCopy(String longName, String stereotype) {
    String result = longName + "_copy";
    int i;
    for (i = 1; ; i++) {
      if (getOperationContext().getScope().getModelDescriptor(new SModelUID(result + i, stereotype)) == null) break;
    }
    return result + i;
  }

  private void initNode() {
    ModelAccess.instance().runWriteActionInCommand(new Runnable() {
      public void run() {
        Language l = getOperationContext().getScope().getLanguage("jetbrains.mps.projectLanguage");
        assert l != null;
        myProjectModel.addLanguage(l);
        myCloneModelProperties = CloneModelProperties.newInstance(myProjectModel);
        myProjectModel.addRoot(myCloneModelProperties);

        String longName = mySModel.getLongName();
        myCloneModelProperties.setLongName(createNameForCopy(longName, mySModel.getStereotype()));
        myCloneModelProperties.setStereotype(mySModel.getStereotype());
        Set<SModelRoot> modelRoots = mySModel.getModelDescriptor().collectSModelRoots();
        if (!modelRoots.isEmpty()) {
          SModelRoot root = modelRoots.iterator().next();
          RootReference rootReference = RootReference.newInstance(myProjectModel);
          rootReference.setPath(root.getPath());
          rootReference.setPrefix(root.getPrefix());
          myCloneModelProperties.setRoot(rootReference);
        }

        for (String language : mySModel.getExplicitlyImportedLanguages()) {
          jetbrains.mps.projectLanguage.structure.Language lang = jetbrains.mps.projectLanguage.structure.Language.newInstance(myProjectModel);
          lang.setName(language);
          myCloneModelProperties.addLanguage(lang);
        }

        for (SModelUID importedModelUID : mySModel.getImportedModelUIDs()) {
          Model m = Model.newInstance(myProjectModel);
          m.setName(importedModelUID.toString());
          myCloneModelProperties.addImportedModel(m);
        }

        for (String devKit : mySModel.getDevKitNamespaces()) {
          DevKit dk = DevKit.newInstance(myProjectModel);
          dk.setName(devKit);
          myCloneModelProperties.addDevKit(dk);
        }

        for (String language : mySModel.getEngagedOnGenerationLanguages()) {
          jetbrains.mps.projectLanguage.structure.Language lang = jetbrains.mps.projectLanguage.structure.Language.newInstance(myProjectModel);
          lang.setName(language);
          myCloneModelProperties.addEngagedOnGenerationLanguage(lang);
        }
      }
    });
  }

  protected String getErrorString() {
    if (myCloneModelProperties.getRoot() == null) return "Please specify root";
    if (myCloneModelProperties.getLongName() == null || myCloneModelProperties.getLongName().length() == 0)
      return "Please specify name";
    if (!myCloneModelProperties.getLongName().startsWith(myCloneModelProperties.getRoot().getPrefix()))
      return "Incorrect namespace for specified root";
    if (myCloneModelProperties.getLongName().equals(myCloneModelProperties.getRoot().getPrefix()))
      return "Model fqName is the same as prefix. Can't import";
    if (myCloneModelProperties.getLanguagesCount() < 1) return "Model must have at least one language";
    return null;
  }

  protected boolean saveChanges() {
    String stereotype = myCloneModelProperties.getStereotype();
    String modelName = myCloneModelProperties.getLongName();
    RootReference reference = myCloneModelProperties.getRoot();

    IOperationContext operationContext = getOperationContext();
    IModule module = operationContext.getModule();
    assert module != null;

    for (SModelDescriptor model : module.getOwnModelDescriptors()) {
      if (model.getLongName().equals(modelName)) {
        setErrorText("Model with the same name already exists. Please choose another name");
        return false;
      }
    }

    SModelRoot modelRoot = module.findModelRoot(reference.getPath());
    final SModelDescriptor modelDescriptor = module.createModel(new SModelUID(modelName, stereotype), modelRoot);
    if (modelDescriptor == null) {
      setErrorText("You can't create a model in the model root that you specified");
      return false;
    }

    final SModel model = modelDescriptor.getSModel();
    model.runLoadingAction(new Runnable() {
      public void run() {
        Set<String> modelsInProps = getModelsInProperties();
        for (String modelUID : modelsInProps) {
          model.addImportedModel(SModelUID.fromString(modelUID));
        }

        for (jetbrains.mps.projectLanguage.structure.Language l : myCloneModelProperties.getLanguages()) {
          String name = l.getName();
          assert name != null;
          Language language = getOperationContext().getScope().getLanguage(name);
          assert language != null;
          model.addLanguage(language);
        }

        for (DevKit d : myCloneModelProperties.getDevKits()) {
          String name = d.getName();
          assert name != null;
          jetbrains.mps.project.DevKit devkit = getOperationContext().getScope().getDevKit(name);
          assert devkit != null;
          model.addDevKit(devkit);
        }

        for (jetbrains.mps.projectLanguage.structure.Language l : myCloneModelProperties.getEngagedOnGenerationLanguages()) {
          String name = l.getName();
          assert name != null;
          model.addEngagedOnGenerationLanguage(name);
        }
      }
    });

    CloneModelUtil.cloneModel(mySModel, modelDescriptor.getSModel(), getScope());

    Project project = getOperationContext().getProject();
    assert project != null;
    final ProjectPane pane = project.getComponent(ProjectPane.class);
    assert pane != null;
    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        pane.rebuildTree();
        pane.selectModel(modelDescriptor);
      }
    });
    return true;
  }

  private Set<String> getModelsInProperties() {
    Set<String> result = new HashSet<String>();
    Iterator<Model> models = myCloneModelProperties.importedModels();
    while (models.hasNext()) {
      result.add(models.next().getName());
    }
    return result;
  }
}

package jetbrains.mps.ide.findusages.view.treeholder.treedata.nodedatatypes;

import jetbrains.mps.ide.findusages.CantLoadSomethingException;
import jetbrains.mps.ide.findusages.CantSaveSomethingException;
import jetbrains.mps.ide.findusages.view.treeholder.path.PathItemRole;
import jetbrains.mps.ide.findusages.view.treeholder.treedata.TextOptions;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModuleRepositoryAdapter;
import org.jdom.Element;

import javax.swing.Icon;

public class ModuleNodeData extends BaseNodeData {
  private static Logger LOG = Logger.getLogger(ModuleNodeData.class);

  private static final String UID = "uid";

  private ModuleRepositoryAdapter myRepositoryListener = null;
  private boolean myIsRemoved = false;
  public String myModuleUID = "";

  public ModuleNodeData(PathItemRole role, IModule module, boolean isResult, boolean resultsSection) {
    super(role, getCaption(module), "", true, isResult, resultsSection);
    myModuleUID = module.getModuleUID();

    startListening();
  }

  public ModuleNodeData(Element element, MPSProject project) throws CantLoadSomethingException {
    read(element, project);
  }

  private static String getCaption(IModule module) {
    if (module instanceof Generator) {
      Generator generator = (Generator) module;
      String name = generator.getName();
      if (name == null || name.equals("")) name = "no name";
      return generator.getSourceLanguage().getModuleUID() + " (generator/" + name + ")";
    } else {
      return module.getModuleUID();
    }
  }

  private void startListening() {
    myRepositoryListener = new ModuleRepositoryAdapter() {
      public void moduleRemoved(IModule module) {
        if (module.getModuleUID().equals(myModuleUID)) {
          myIsRemoved = true;
          notifyChangeListeners();
        }
      }
    };
    MPSModuleRepository.getInstance().addModuleRepositoryListener(myRepositoryListener);
  }

  public Icon getIcon() {
    if (myIsRemoved) return null;
    return IconManager.getIconFor(getModule());
  }

  public IModule getModule() {
    return (IModule) getIdObject();
  }

  public Object getIdObject() {
    if (myIsRemoved) return null;
    return MPSModuleRepository.getInstance().getModuleByUID(myModuleUID);
  }

  public void write(Element element, MPSProject project) throws CantSaveSomethingException {
    super.write(element, project);
    element.setAttribute(UID, myModuleUID);
  }

  public void read(Element element, MPSProject project) throws CantLoadSomethingException {
    super.read(element, project);
    myModuleUID = element.getAttributeValue(UID);

    if (!isInvalid()) {
      startListening();
    }
  }

  public String getText(TextOptions options) {
    boolean showCounter = options.myCounters && isResultsSection() && (!isResultNode());
    String counter = showCounter ? " " + sizeRepresentation(getSubresultsCount()) : "";
    return super.getText(options) + counter;
  }

  private static String sizeRepresentation(int size) {
    return "<font color='gray'>(" + Integer.toString(size) + ")</font>";
  }
}

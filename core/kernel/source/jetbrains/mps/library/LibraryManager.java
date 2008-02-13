package jetbrains.mps.library;

import jetbrains.mps.component.IComponentLifecycle;
import jetbrains.mps.components.DefaultExternalizableComponent;
import jetbrains.mps.components.Externalizable;
import jetbrains.mps.ide.preferences.IComponentWithPreferences;
import jetbrains.mps.ide.preferences.IPreferencesPage;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.project.ApplicationComponents;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.MPSModuleOwner;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.vfs.FileSystem;
import org.jdom.Element;

import java.util.*;

public class LibraryManager extends DefaultExternalizableComponent implements IComponentWithPreferences, IComponentLifecycle {

  public static LibraryManager getInstance() {
    return ApplicationComponents.getInstance().getComponent(LibraryManager.class);
  }

  private @Externalizable Map<String, Library> myLibraries = new HashMap<String, Library>();

  private MPSModuleOwner myOwner;
  private MPSModuleOwner myPredefinedLibrariesOwner;

  public LibraryManager() {
  }

  public void initComponent() {
    CommandProcessor.instance().executeLightweightCommand(new Runnable() {
      public void run() {
        updatePredefinedLibraries();
        update();
      }
    });
  }

  public Library newLibrary(String name) {
    Library library = new Library(name);
    myLibraries.put(library.getName(), library);
    return library;
  }

  public Library get(String name) {
    for (Library l : getLibraries()) {
      if (name.equals(l.getName())) {
        return l;
      }
    }
    return null;
  }

  public void remove(Library l) {
    myLibraries.remove(l.getName());
  }

  public Set<Library> getLibraries() {
    Set<Library> result = new HashSet<Library>();

    result.addAll(myLibraries.values());

    result.add(new PredefinedLibrary("mps.languages") {
      public String getPath() {
        return PathManager.getLanguagesPath();
      }
    });
    result.add(new PredefinedLibrary("mps.languageDesign") {
      public String getPath() {
        return PathManager.getLanguageDesignPath();
      }
    });
    result.add(new PredefinedLibrary("mps.platform") {
      public String getPath() {
        return PathManager.getPlatformPath();
      }
    });
    result.add(new PredefinedLibrary("mps.workbench") {
      public String getPath() {
        return PathManager.getWorkbenchPath();
      }
    });
    result.add(new PredefinedLibrary("mps.projects") {
      public String getPath() {
        return PathManager.getProjectsPath()  ;
      }
    });
    result.add(new PredefinedLibrary("mps.baseLanguage.old") {
      public String getPath() {
        return PathManager.getBaseLanguagePath_Old()  ;
      }
    });
    result.add(new PredefinedLibrary("mps.baseLanguage") {
      public String getPath() {
        return PathManager.getBaseLanguagePath()  ;
      }
    });

    return result;
  }

  public boolean isOwns(IModule m) {
    return MPSModuleRepository.getInstance().getOwners(m).contains(myOwner);
  }

  public void read(Element element, MPSProject project) {
    super.read(element, project);
    update();
  }

  private void updatePredefinedLibraries() {
    myPredefinedLibrariesOwner = new MPSModuleOwner() { };
    for (Library l : getLibraries()) {
      if (l.isPredefined()) {
        MPSModuleRepository.getInstance().readModuleDescriptors(FileSystem.getFile(l.getPath()), myPredefinedLibrariesOwner);
      }
    }
    convert(myPredefinedLibrariesOwner);
  }

  public void update() {
    if (myOwner != null) {
      MPSModuleRepository.getInstance().unRegisterModules(myOwner);
    }
    myOwner = new MPSModuleOwner() { };
    CommandProcessor.instance().executeLightweightCommand(new Runnable() {
      public void run() {
        for (Library l : getLibraries()) {
          if (!l.isPredefined()) {
            MPSModuleRepository.getInstance().readModuleDescriptors(FileSystem.getFile(l.getPath()), myOwner);
          }
        }
        convert(myOwner);
      }
    });
  }

  private void convert(final MPSModuleOwner owner) {
    for (IModule m : MPSModuleRepository.getInstance().getModules(owner)) {
      m.convert();
    }
  }

  public <M extends IModule> Set<M> getGlobalModules(Class<M> cls) {
    List<M> result = MPSModuleRepository.getInstance().getModules(myOwner, cls);
    result.addAll(MPSModuleRepository.getInstance().getModules(myPredefinedLibrariesOwner, cls));
    return new HashSet<M>(result);
  }

  public List<IPreferencesPage> createPreferencesPages() {
    return CollectionUtil.asList((IPreferencesPage) new LibraryManagerPreferences(this));
  }
}

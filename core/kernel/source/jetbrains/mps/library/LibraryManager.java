package jetbrains.mps.library;

import jetbrains.mps.ide.BootstrapModule;
import jetbrains.mps.project.IModule;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.constraints.ModelConstraintsManager;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.library.LibraryManager.MyState;
import jetbrains.mps.cleanup.CleanupManager;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nls;
import org.jetbrains.annotations.Nullable;

import java.util.*;

import com.intellij.openapi.progress.EmptyProgressIndicator;
import com.intellij.openapi.components.ApplicationComponent;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.options.Configurable;
import com.intellij.openapi.options.ConfigurationException;
import com.intellij.util.xmlb.annotations.Transient;

import javax.swing.Icon;
import javax.swing.JComponent;


@State(
  name = "LibraryManager",
  storages = {
    @Storage(
      id ="other",
      file = "$APP_CONFIG$/libraryManager.xml"
    )}
)
public class LibraryManager implements ApplicationComponent, Configurable, PersistentStateComponent<MyState> {

  public static LibraryManager getInstance() {
    return ApplicationManager.getApplication().getComponent(LibraryManager.class);
  }

  private MyState myState = new MyState();

  private MPSModuleOwner myOwner;
  private MPSModuleOwner myBootstrapLibrariesOwner;
  private MPSModuleOwner myPredefinedLibrariesOwner;

  private MPSModuleRepository myRepository;
  private LibraryManagerPreferences myPreferences;

  public LibraryManager(MPSModuleRepository repo, ModelConstraintsManager cm) {
    myRepository = repo;
  }

  public void initComponent() {
    ModelAccess.instance().runWriteAction(new Runnable() {
      public void run() {
        updatePredefinedLibraries();
        update();
      }
    });
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return "Library Manager";
  }

  public void disposeComponent() {

  }

  public Library newLibrary(String name) {
    Library library = new Library();
    library.setName(name);
    myState.myLibraries.put(library.getName(), library);
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
    myState.myLibraries.remove(l.getName());
  }

  public Set<Library> getLibraries() {
    Set<Library> result = new HashSet<Library>();

    result.addAll(myState.myLibraries.values());

    result.add(new PredefinedLibrary("mps.bootstrap") {
      public String getPath() {
        return PathManager.getBootstrapPath();
      }

      @Transient
      public boolean isBootstrap() {
        return true;
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
   result.add(new PredefinedLibrary("mps.app") {
      public String getPath() {
        return PathManager.getAppPath()  ;
      }
    });
    result.add(new PredefinedLibrary("mps.samples") {
      public String getPath() {
        return PathManager.getSamplesPath();
      }
    });
    return result;
  }

  public boolean isOwns(IModule m) {
    return myRepository.getOwners(m).contains(myOwner);
  }

  private void updatePredefinedLibraries() {
    myPredefinedLibrariesOwner = new MPSModuleOwner() { };
    myBootstrapLibrariesOwner = new MPSModuleOwner() { };
    for (Library l : getLibraries()) {
      if (l.isPredefined()) {
        MPSModuleOwner owner = (l.isBootstrap() ? myBootstrapLibrariesOwner : myPredefinedLibrariesOwner);
        List<IModule> modules = myRepository.readModuleDescriptors(FileSystem.getFile(l.getPath()), owner);

        if (l.isBootstrap()) {
          for (IModule m : modules) {
            m.updateClassPath();
          }
        }
      }
    }

    fireOnLoad(myBootstrapLibrariesOwner);
    fireOnLoad(myPredefinedLibrariesOwner);
  }

  public void update() {
    if (myOwner != null) {
      myRepository.unRegisterModules(myOwner);
    }
    myOwner = new MPSModuleOwner() { };
    ModelAccess.instance().runWriteAction(new Runnable() {
      public void run() {
        for (Library l : getLibraries()) {
          if (!l.isPredefined()) {
            myRepository.readModuleDescriptors(FileSystem.getFile(l.getPath()), myOwner);
          }
        }
        ClassLoaderManager.getInstance().reloadAll(new EmptyProgressIndicator());
        fireOnLoad(myOwner);

        CleanupManager.getInstance().cleanup();
      }
    });
  }

  private void fireOnLoad(final MPSModuleOwner owner) {
    for (IModule m : myRepository.getModules(owner)) {
      m.onModuleLoad();
    }
  }

  public <M extends IModule> Set<M> getGlobalModules(Class<M> cls) {
    List<M> result = new ArrayList<M>();
    result.addAll(myRepository.getModules(myBootstrapLibrariesOwner, cls));
    result.addAll(myRepository.getModules(myPredefinedLibrariesOwner, cls));
    result.addAll(myRepository.getModules(myOwner, cls));

    addGenerators(cls, result);

    return new HashSet<M>(result);
  }

  public <M extends IModule> Set<M> getBootstrapModules(Class<M> cls) {
    List<M> result = new ArrayList<M>();
    result.addAll(myRepository.getModules(myBootstrapLibrariesOwner, cls));

    addGenerators(cls, result);

    return new HashSet<M>(result);
  }
  private <M extends IModule> void addGenerators(Class<M> cls, List<M> result) {
    for (M m : new ArrayList<M>(result)) {
      if (m instanceof Language) {
        if (cls.isAssignableFrom(Generator.class)) {
          result.addAll((List<? extends M>)((Language) m).getGenerators());
        }
      }
    }
  }

  private LibraryManagerPreferences getPreferences() {
    if (myPreferences == null) {
      myPreferences = new LibraryManagerPreferences(this);
    }
    return myPreferences;
  }

  @Nls
  public String getDisplayName() {
    return "MPS Library Manager";
  }

  @Nullable
  public Icon getIcon() {
    return getPreferences().getIcon();
  }

  @Nullable
  @NonNls
  public String getHelpTopic() {
    return null;
  }

  public JComponent createComponent() {
    return getPreferences().getComponent();
  }

  public boolean isModified() {
    return true;
  }

  public void apply() throws ConfigurationException {
    getPreferences().commit();
  }

  public void reset() {
  }

  public void disposeUIResources() {
  }

  public MyState getState() {
    return myState;
  }

  public void loadState(MyState state) {
    myState = state;
  }

  public static class MyState {
    private Map<String, Library> myLibraries = new HashMap<String, Library>();

    public Map<String, Library> getLibraries() {
      return myLibraries;
    }

    public void setLibraries(Map<String, Library> libraries) {
      myLibraries = libraries;
    }
  }
}
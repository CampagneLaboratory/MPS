package jetbrains.mps.reloading;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.IModule;
import jetbrains.mps.util.annotation.UseCarefully;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.Nullable;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class ClassPathFactory {
  private static final Logger LOG = Logger.getLogger(ClassPathFactory.class);
  private static final ClassPathFactory ourInstance = new ClassPathFactory();

  @UseCarefully
  //this is supposed to be used only on class reloading
  public void update() {
    for (RealClassPathItem p : myCache.values()) {
      p.invalidate();
    }
    myCache.clear();
  }

  @UseCarefully
  //this should be used only from modules to invalidate their classpaths
  public void invalidate(Set<String> paths) {
    for (String path : paths) {
      if (myCache.containsKey(path)) {
        myCache.remove(path).invalidate();
      }
    }
  }

  public static ClassPathFactory getInstance() {
    return ourInstance;
  }

  //--------------------------

  private Map<String, RealClassPathItem> myCache = new HashMap<String, RealClassPathItem>();

  private RealClassPathItem get(String path) {
    if (!myCache.containsKey(path)) {
      if (FileSystem.getFile(path).isDirectory()) {
        myCache.put(path, new FileClassPathItem(path));
      } else {
        myCache.put(path, new JarFileClassPathItem(path));
      }
    }

    return myCache.get(path);
  }

  //--------------------------

  public RealClassPathItem createFromPath(String path) {
    try {
      return createFromPath(path, null);
    } catch (IOException e) {
      LOG.error("Can't find classpath " + path);
      return null;
    }
  }

  public RealClassPathItem createFromPath(String path, @Nullable IModule module) throws IOException {
    IFile file = FileSystem.getFile(path);

    if (!file.exists()) {
      String moduleString = module == null ? "" : (" in " + module.toString());
      String message = "Can't load class path item " + path + moduleString + "." + (file.isDirectory() ? " Execute make in IDEA." : "");
      throw new IOException(message);
    }

    return getInstance().get(path);
  }
}

package jetbrains.mps.util;

import jetbrains.mps.util.NodeNameUtil;

import java.util.HashMap;
import java.util.Map;

public abstract class AbstractClassLoader extends ClassLoader {
  private Map<String, Class> myCache = new HashMap<String, Class>();

  public AbstractClassLoader(ClassLoader classLoader) {
    super(classLoader);
  }

  protected abstract byte[] findClassBytes(String name);

  protected abstract boolean isExcluded(String name);

  protected synchronized Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
    Class c = myCache.get(name);

    if (myCache.containsKey(name) && c == null) {
      throw new ClassNotFoundException(name);
    }

    if (c == null) {
      byte[] bytes = null;

      if (!isExcluded(name)) {
        bytes = findClassBytes(name);
      }
      
      if (bytes == null) {
        try {
          c = getParent().loadClass(name);
        } catch (ClassNotFoundException e) {
          myCache.put(name, null);
          throw e;
        }
        if (resolve) {
          resolveClass(c);
        }
      } else {
        definePackageIfNecessary(name);
        c = defineClass(name, bytes, 0, bytes.length);
      }
      myCache.put(name, c);
    }
    if (resolve) {
      resolveClass(c);
    }
    return c;
  }


  private void definePackageIfNecessary(String name) {
    String pack = NodeNameUtil.getNamespace(name);
    if (getPackage(pack) == null) {
      definePackage(pack, null, null, null, null, null, null, null);
    }
  }
                                

}

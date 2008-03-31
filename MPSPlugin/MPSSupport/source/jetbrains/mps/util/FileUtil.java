package jetbrains.mps.util;


import sun.misc.Launcher;

import java.io.*;
import java.util.jar.JarOutputStream;
import java.util.jar.Manifest;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import java.net.URL;
import java.net.URISyntaxException;

/**
 * @author Kostik
 */
public class FileUtil {
  public static File getJREHome() {
    return getRTJar().getParentFile().getParentFile();
  }

  public static File getRTJar() {
    for (URL url : Launcher.getBootstrapClassPath().getURLs()) {
      if (url.getPath().endsWith("rt.jar")) {
        try {
          return new File(url.toURI());
        } catch (URISyntaxException e) {
          e.printStackTrace();
        }
        return null;
      }
    }
    return null;
  }

  public static File createTmpDir() {
    File tmp = getTempDir();
    int i = 0;
    while (true) {

      if (!new File(tmp, "mpstemp" + i).exists()) {
        break;
      }
      i++;
    }

    File result = new File(tmp, "mpstemp" + i);
    result.mkdir();
    return result;
  }

  public static File createTmpFile() {
    File tmp = getTempDir();
    int i = 0;
    while (true) {

      if (!new File(tmp, "mpstemp" + i).exists()) {
        break;
      }
      i++;
    }

    File result = new File(tmp, "mpstemp" + i);
    try {
      result.createNewFile();
    } catch (IOException e) {
      e.printStackTrace();
    }
    return result;
  }
  
  public static File getTempDir() {
    return new File(System.getProperty("java.io.tmpdir"));
  }

  public static void jar(File dir, Manifest mf, File to) {
    try {
      FileOutputStream fos = new FileOutputStream(to);
      JarOutputStream out = new JarOutputStream(fos, mf);
      _zip(dir, "", out);
      out.close();
      fos.close();
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  @SuppressWarnings({"UnusedDeclaration"})
  public static void zip(File dir, File to) {
    try {
      FileOutputStream fos = new FileOutputStream(to);
      ZipOutputStream out = new ZipOutputStream(fos);
      _zip(dir, "", out);
      out.close();
      fos.close();
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  private static void _zip(File base, String prefix, ZipOutputStream out) throws IOException {
    File current = new File(base.getPath() + File.separator + prefix).getAbsoluteFile();

    if (prefix.length() > 0) {
      ZipEntry entry = new ZipEntry(prefix);
      entry.setTime(current.lastModified());
      out.putNextEntry(entry);
      if (current.isFile()) {
        byte[] bytes = new byte[(int) current.length()];
        FileInputStream is = new FileInputStream(current);
        ReadUtil.read(bytes, is);
        is.close();
        out.write(bytes);
      }
      out.closeEntry();
    }    

    if (current.isDirectory()) {
      for (File file : current.listFiles()) {
        if (file.isFile()) {
          _zip(base, prefix + file.getName(), out);
        }
        if (file.isDirectory()) {
          _zip(base, prefix + file.getName() + "/", out);
        }
      }
    }
  }

  public static void copyDir(File what, File to) {
    assert what.isDirectory();
    if (!to.exists()) {
      to.mkdir();
    }

    for (File f : what.listFiles()) {
      if (f.isDirectory()) {

        if (".svn".equals(f.getName())) continue;

        File fCopy = new File(to, f.getName());
        if (!fCopy.exists()) {
          fCopy.mkdir();
        }
        copyDir(f, fCopy);
      }

      if (f.isFile()) {
        copyFile(f, to);
      }
    }

  }

  public static void copyFile(File f, File to) {
    try {
      copyFileChecked(f, to);
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  public static void copyFileChecked(File f, File to) throws IOException {
    byte[] bytes = new byte[(int) f.length()];

    FileInputStream is = new FileInputStream(f);

    File target;
    if (to.isDirectory()) {
      target = new File(to, f.getName());
    } else {
      target = to;
    }

    if (!to.getParentFile().exists()) {
      to.getParentFile().mkdirs();
    }

    OutputStream os = new FileOutputStream(target);

    ReadUtil.read(bytes, is);
    os.write(bytes);

    is.close();
    os.close();
  }

  public static String getCanonicalPath(File file) {
    if (file == null) {
      return null;
    }
    try {
      return file.getCanonicalPath();
    } catch (IOException e) {
      return file.getAbsolutePath();
    }
  }

  public static String getCanonicalPath(String path) {
    if (path == null) return "";
    File file = new File(path);
    return getCanonicalPath(file);
  }

  public static boolean delete(File root) {
    boolean result = true;

    if (root.isDirectory()) {
      for (File child : root.listFiles()) {
        result = delete(child) && result;
      }
    }
    // !result means one of children was not deleted, hence you may not delete this directory
    return result && root.delete();
  }

  public static long getNewestFileTime(File dir) {
    return getNewestFileTime(dir, true);
  }

  public static long getNewestFileTime(File dir, boolean recursive) {
    File[] files = dir.listFiles();
    if (files == null) {
      return dir.lastModified();
    }
    long result = dir.lastModified();
    for (File file : files) {      
      if (file.getName().equals(".svn")) {
        continue;
      }

      if (recursive) {
        result = Math.max(result, getNewestFileTime(file));
      } else {
        result = Math.max(result, file.lastModified());
      }
    }
    return result;
  }


  public static void write(File file, String content) {
    try {
      PrintWriter writer = new PrintWriter(new FileWriter(file));
      writer.print(content);
      writer.flush();
      writer.close();
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }

  public static String read(File file) {
    try {
      BufferedReader r = null;
      try {
        r = new BufferedReader(new FileReader(file));

        StringBuilder result = new StringBuilder();
                
        String line = null;
        while ((line = r.readLine()) != null) {
          result.append(line).append("\n");
        }

        return result.toString();
      } finally {
        if (r != null) {
          r.close();
        }
      }
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }

  public static void main(String[] args) {
    zip(new File("C:/aaaaa"), new File("C:/temp/test.zip"));
  }
}

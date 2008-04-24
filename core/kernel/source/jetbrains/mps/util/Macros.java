package jetbrains.mps.util;

import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.pathVariables.PathVariableManager;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.logging.Logger;

import java.io.File;
import java.util.Map;

/**
 * Created by IntelliJ IDEA.
 * User: Igoor
 * Date: Aug 26, 2005
 * Time: 4:28:12 PM
 * To change this template use File | Settings | File Templates.
 */
public abstract class Macros {
  private static final Logger LOG = Logger.getLogger(Macros.class);

  public static final String MPS_HOME = "${mps_home}";
  public static final String LANGUAGE_DESCRIPTOR = "${language_descriptor}";
  public static final String SOLUTION_DESCRIPTOR = "${solution_descriptor}";
  public static final String DEVKIT_DESCRIPTOR = "${devkit_descriptor}";
  public static final String PROJECT = "${project}";

  public static Macros languageDescriptor() {
    return new LanguageDescriptorMacros();
  }

  public static Macros solutionDescriptor() {
    return new SolutionDescriptorMacros();
  }

  public static Macros devkitMacros() {
    return new DevKitDescriptorMacros();
  }

  public static Macros projectDescriptor() {
    return new ProjectDescriptorMacros();
  }

  public static Macros moduleDescriptor(IModule module) {
    if (module instanceof Language) {
      return Macros.languageDescriptor();
    } else
    if (module instanceof Solution) {
      return Macros.solutionDescriptor();
    } else
    if (module instanceof DevKit) {
      return Macros.devkitMacros();
    }
    return new Macros() {};
  }

  public final String expandPath(String path, File anchorFile) {
    return expandPath(path, FileSystem.getFile(anchorFile));
  }

  public final String expandPath(String path, IFile anchorFile) {
    if(path == null) return null;
    path = path.replace('\\', File.separatorChar);
    return expandPath_internal(path, anchorFile);
  }

  public final String shrinkPath(String path, File anchor) {
    return shrinkPath(path, FileSystem.getFile(anchor));
  }

  public final String shrinkPath(String absolutePath, IFile anchorFile) {
    if(absolutePath == null) return null;
    String fileName = shrinkPath_internal(absolutePath, anchorFile);
    return fileName.replace(File.separatorChar, '\\');
  }

  protected String expandPath_internal(String path, IFile anchorFile) {
    IFile result = null;
    if (path.startsWith(MPS_HOME)) {
      String relativePath = removePrefix(path, MPS_HOME);
      result = FileSystem.getFile(PathManager.getHomePath()).child(relativePath);
    } else {
      Map<String, String> pathMacros = PathVariableManager.getInstance().getPathVariables();
      for (String macro : pathMacros.keySet()) {
        String prefix = "${" + macro + "}";
        if (path.startsWith(prefix)) {
          String relativePath = removePrefix(path, prefix);
          result = FileSystem.getFile(pathMacros.get(macro)).child(relativePath);
          break;
        }
      }

      if (result == null) {
        if (path.startsWith("${")) {
          int end = path.indexOf("}");
          if (end != -1) {
            LOG.error("Wasn't able to expand path " + path);
            LOG.error("Please define path variable " + path.substring(2, end)+ " in path variables section of settings");
          }
          return path;
        }

        result = FileSystem.getFile(path);
      }
    }
    return result.getCanonicalPath();
  }

  protected String shrinkPath_internal(String absolutePath, IFile anchorFile) {
    String fileName;
    if (pathStartsWith(absolutePath, PathManager.getHomePath())) {
      String relationalPath = shrink(absolutePath, PathManager.getHomePath());
      fileName = MPS_HOME + relationalPath;
    } else {
      Map<String, String> pathMacros = PathVariableManager.getInstance().getPathVariables();
      for (String macro : pathMacros.keySet()){
        String path = pathMacros.get(macro);
        if (pathStartsWith(absolutePath, path)){
          String relationalPath = shrink(absolutePath, path);
          fileName = "${" + macro + "}" + relationalPath;
          return fileName;
        }
      }
      fileName = absolutePath;
    }
    return fileName;
  }

  protected String removePrefix(String path, String prefix) {
    String result = path.substring(prefix.length());
    if (result.startsWith(File.separator)) result = result.substring(1);
    return result;
  }

  private static class LanguageDescriptorMacros extends Macros {

    protected String expandPath_internal(String path, IFile languageDescriptor) {
      if (path.startsWith(LANGUAGE_DESCRIPTOR)) {
        String modelRelativePath = removePrefix(path, LANGUAGE_DESCRIPTOR);
        return languageDescriptor.getParent().child(modelRelativePath).getCanonicalPath();
      }
      return super.expandPath_internal(path, languageDescriptor);
    }

    protected String shrinkPath_internal(String absolutePath, IFile languageDescriptor) {
      String prefix = languageDescriptor.getParent().getCanonicalPath();
      if (pathStartsWith(absolutePath, prefix)) {
        String relationalPath = shrink(absolutePath, prefix);
        return LANGUAGE_DESCRIPTOR + relationalPath;
      }
      return super.shrinkPath_internal(absolutePath, languageDescriptor);
    }
  }

  private static class SolutionDescriptorMacros extends Macros {
    protected String expandPath_internal(String path, IFile solutionDescriptor) {
      if (path.startsWith(SOLUTION_DESCRIPTOR)) {
        String modelRelativePath = removePrefix(path, SOLUTION_DESCRIPTOR);
        return solutionDescriptor.getParent().child(modelRelativePath).getCanonicalPath();
      }
      return super.expandPath_internal(path, solutionDescriptor);
    }

    protected String shrinkPath_internal(String absolutePath, IFile solutionDescriptor) {
      String prefix = solutionDescriptor.getParent().getCanonicalPath();
      if (pathStartsWith(absolutePath, prefix)) {
        String relationalPath = shrink(absolutePath, prefix);
        return SOLUTION_DESCRIPTOR + relationalPath;
      }
      return super.shrinkPath_internal(absolutePath, solutionDescriptor);
    }
  }

  private static class DevKitDescriptorMacros extends Macros {
    protected String expandPath_internal(String path, IFile devkitDescriptor) {
      if (path.startsWith(DEVKIT_DESCRIPTOR)) {
        String modelRelativePath = removePrefix(path, DEVKIT_DESCRIPTOR);
        return devkitDescriptor.getParent().child(modelRelativePath).getCanonicalPath();
      }
      return super.expandPath_internal(path, devkitDescriptor);
    }

    protected String shrinkPath_internal(String absolutePath, IFile devkitDescriptor) {
      String prefix = devkitDescriptor.getParent().getCanonicalPath();
      if (pathStartsWith(absolutePath, prefix)) {
        String relationalPath = shrink(absolutePath, prefix);
        return DEVKIT_DESCRIPTOR + relationalPath;
      }
      return super.shrinkPath_internal(absolutePath, devkitDescriptor);
    }
  }

  private static class ProjectDescriptorMacros extends Macros {
    protected String expandPath_internal(String path, IFile projectDescriptor) {
      if (path.startsWith(PROJECT)) {
        String modelRelativePath = removePrefix(path, PROJECT);
        return projectDescriptor.getParent().child(modelRelativePath).getCanonicalPath();
      }
      return super.expandPath_internal(path, projectDescriptor);
    }

    protected String shrinkPath_internal(String absolutePath, IFile projectDescriptor) {
      String prefix;

      if (projectDescriptor.isFile()) {
        prefix = projectDescriptor.getParent().getCanonicalPath();
      } else {
        prefix = projectDescriptor.getCanonicalPath();
      }
        
      if (pathStartsWith(absolutePath, prefix)) {
        String relationalPath = shrink(absolutePath, prefix);
        return PROJECT + relationalPath;
      }
      return super.shrinkPath_internal(absolutePath, projectDescriptor);
    }
  }

  private static boolean pathStartsWith(String path, String with) {
    if (path.equals(with)) return true;
    return path.startsWith(with + ((with != null) && with.endsWith(File.separator) ? "" : File.separator));
  }

  private static String shrink(String path, String prefix) {
    assert path.startsWith(prefix);
    String result = path.substring(prefix.length());
    
    if (result.length() == 0) {
      return "\\";
    }

    return result;
  }
}

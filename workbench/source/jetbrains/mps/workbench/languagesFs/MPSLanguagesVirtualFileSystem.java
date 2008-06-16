package jetbrains.mps.workbench.languagesFs;

import com.intellij.openapi.vfs.DeprecatedVirtualFileSystem;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.components.ApplicationComponent;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.util.Computable;
import jetbrains.mps.smodel.*;
import jetbrains.mps.project.GlobalScope;

import java.util.WeakHashMap;
import java.io.IOException;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.Nullable;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 16.06.2008
 * Time: 15:07:16
 * To change this template use File | Settings | File Templates.
 */
public class MPSLanguagesVirtualFileSystem extends DeprecatedVirtualFileSystem implements ApplicationComponent {

  public static MPSLanguagesVirtualFileSystem getInstance() {
    return ApplicationManager.getApplication().getComponent(MPSLanguagesVirtualFileSystem.class);
  }

  private WeakHashMap<Language, MPSLanguageVirtualFile> myVirtualFiles = new WeakHashMap<Language, MPSLanguageVirtualFile>();

  public MPSLanguageVirtualFile getFileFor(@NotNull final Language language) {
        if (myVirtualFiles.containsKey(language)) {
          return myVirtualFiles.get(language);
        }
        MPSLanguageVirtualFile vf = new MPSLanguageVirtualFile(language);
        myVirtualFiles.put(language, vf);
        return vf;
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return "MPS Languages File System";
  }

  public void initComponent() {
  }

  public void disposeComponent() {
  }

  @NonNls
  public String getProtocol() {
    return "mpslang";
  }

  @Nullable
  public VirtualFile findFileByPath(final @NotNull @NonNls String path) {
    return ModelAccess.instance().runReadAction(new Computable<VirtualFile>() {
      public VirtualFile compute() {
        Language language = GlobalScope.getInstance().getLanguage(path);
        if (language != null) {
          return getFileFor(language);
        }
        return null;
      }
    });
  }

  public void refresh(boolean asynchronous) {
  }

  @Nullable
  public VirtualFile refreshAndFindFileByPath(String path) {
    return null;
  }

  protected void deleteFile(Object requestor, VirtualFile vFile) throws IOException {
    throw new UnsupportedOperationException();
  }

  protected void moveFile(Object requestor, VirtualFile vFile, VirtualFile newParent) throws IOException {
    throw new UnsupportedOperationException();
  }

  protected void renameFile(Object requestor, VirtualFile vFile, String newName) throws IOException {
    throw new UnsupportedOperationException();
  }

  protected VirtualFile createChildFile(Object requestor, VirtualFile vDir, String fileName) throws IOException {
    throw new UnsupportedOperationException();
  }

  protected VirtualFile createChildDirectory(Object requestor, VirtualFile vDir, String dirName) throws IOException {
    throw new UnsupportedOperationException();
  }

  protected VirtualFile copyFile(Object requestor, VirtualFile virtualFile, VirtualFile newParent, String copyName) throws IOException {
    throw new UnsupportedOperationException();
  }
}

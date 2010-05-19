package jetbrains.mps.project;

import com.intellij.openapi.module.Module;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.roots.ModuleRootModel;
import com.intellij.openapi.roots.impl.DirectoryIndexExcludePolicy;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.pointers.VirtualFilePointer;
import com.intellij.openapi.vfs.pointers.VirtualFilePointerManager;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;

public abstract class BaseDirectoryIndexExcludePolicy implements DirectoryIndexExcludePolicy {
  private Project myProject;

  protected BaseDirectoryIndexExcludePolicy(@NotNull Project project) {
    myProject = project;
  }

  @NotNull
  protected abstract Set<VirtualFile> getAllExcludeRoots();

  @Override
  public boolean isExcludeRoot(VirtualFile file) {
    return getAllExcludeRoots().contains(file);
  }

  @Override
  public boolean isExcludeRootForModule(Module module, VirtualFile file) {
    return getAllExcludeRoots().contains(file);
  }

  @Override
  public VirtualFile[] getExcludeRootsForProject() {
    final Collection<VirtualFile> roots = getAllExcludeRoots();
    return roots.toArray(new VirtualFile[roots.size()]);
  }

  @Override
  public VirtualFilePointer[] getExcludeRootsForModule(ModuleRootModel rootModel) {
    Set<VirtualFile> roots = getAllExcludeRoots();
    ArrayList<VirtualFilePointer> filePointers = new ArrayList<VirtualFilePointer>();
    for (VirtualFile root : roots) {
      filePointers.add(VirtualFilePointerManager.getInstance().create(root, myProject, null));
    }
    return filePointers.toArray(new VirtualFilePointer[filePointers.size()]);
  }
}

package jetbrains.mps.idea.java.psi;

import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiClass;
import com.intellij.psi.PsiCodeBlock;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiExpression;
import com.intellij.psi.PsiField;
import com.intellij.psi.PsiFile;
import com.intellij.psi.PsiFileSystemItem;
import com.intellij.psi.PsiJavaFile;
import com.intellij.psi.PsiMethod;
import com.intellij.psi.PsiModifier;
import com.intellij.psi.PsiModifierList;
import com.intellij.psi.PsiParameter;
import com.intellij.psi.PsiParameterList;
import com.intellij.psi.PsiReferenceList;
import com.intellij.psi.PsiTreeChangeEvent;
import com.intellij.psi.PsiTypeParameter;
import com.intellij.psi.PsiTypeParameterList;
import com.intellij.psi.PsiWhiteSpace;
import jetbrains.mps.ide.platform.watching.ReloadParticipant;
import jetbrains.mps.idea.java.psi.PsiListener.FSMove;
import jetbrains.mps.idea.java.psi.PsiListener.FSRename;
import jetbrains.mps.idea.java.psi.PsiListener.PsiEvent;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.ModelAccess;
import org.jetbrains.annotations.NotNull;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/**
 * danilla 5/25/13
 */
public class PsiChangeProcessor extends ReloadParticipant {

  // Per project change data
  // The thing is there's only one instance of reload participant for a given participant class,
  // whereas PsiChangesWatcher is a project component (as PsiManager)
  private Map<Project, PsiChangeData> changeData = new HashMap<Project, PsiChangeData>();

  public PsiChangeProcessor() {
  }

  // TODO look with what locks is it called
  @Override
  public void update(ProgressMonitor monitor) {

    Runnable notify = new Runnable() {
      @Override
      public void run() {
        try {
          for (Entry<Project, PsiChangeData> e : changeData.entrySet()) {
            final Project project = e.getKey();
            final PsiChangeData change = e.getValue();

            project.getComponent(PsiChangesWatcher.class).notifyListeners(change);
          }
        } finally {
          // clean-up
          changeData = new HashMap<Project, PsiChangeData>();
        }
      }

    };

    notify.run();

    // the following code shouldn't be needed any more, because update happens in reload session
    // let's leave it for now, and look how it works (including when from ReloadSession.flush())

//    if (ModelAccess.instance().isInsideCommand()) {
//      notify.run();
//    } else {
//      ModelAccess.instance().runUndoTransparentCommand(notify);
//    }
  }

  @Override
  public boolean isEmpty() {
    for (PsiChangeData data : changeData.values()) {
      if (data.isNotEmpty()) return false;
    }
    return true;
  }

  // The following methods are called by PsiChangesWatcher when it receives a PSI event
  // We're not PsiTreeChangeAdapter ourselves for a reason:
  // we're a ReloadParticipant => we can be instantiated by ReloadManager itself and there's only
  // one instance of us per application, whereas psi listeners exist per project (as well as PsiManager)

  // todo filter out changes not related to stub structure

  /*package*/ void childAdded(final PsiTreeChangeEvent event) {

    if (!filter(event.getChild())) return;
    PsiChangeData data = proj(event.getChild());

    PsiElement elem = event.getChild();
    if (elem instanceof PsiFileSystemItem) {
      data.created.add((PsiFileSystemItem) elem);
    } else {
      data.changed.add(elem.getContainingFile());
    }
  }

  /*package*/ void childRemoved(PsiTreeChangeEvent event) {

    // can't use getChild() here as it's not valid any longer
    if (!filter(event.getParent())) return;
    PsiChangeData data = proj(event.getParent());

    PsiElement elem = event.getChild();
    if (elem instanceof PsiFileSystemItem) {
      data.removed.add((PsiFileSystemItem) elem);
    } else {
      // todo fix is parent is a file itself
      data.changed.add(event.getParent().getContainingFile());
    }
  }

  /*package*/ void childReplaced(PsiTreeChangeEvent event) {
    // if both are uninteresting, only then ignore
    if (!filter(event.getOldChild()) && !filter(event.getNewChild())) return;

    PsiChangeData data = proj(event.getNewChild());
    // todo Q: should we check if it's PsiFile?
    data.changed.add(event.getNewChild().getContainingFile());
  }

  /*package*/ void childrenChanged(PsiTreeChangeEvent event) {
    if (!filter(event.getParent())) return;
    if (event.getParent() instanceof PsiFile) {
      // it's some generic notification, we don't need it
      // (don't remember already what that means)
      return;
    }

    PsiChangeData data = proj(event.getParent());
    data.changed.add(event.getParent().getContainingFile());
  }

  /*package*/ void childMoved(@NotNull PsiTreeChangeEvent event) {
    if (!filter(event.getChild())) return;
    PsiChangeData data = proj(event.getChild());

    PsiElement elem = event.getChild();
    if (elem instanceof PsiFileSystemItem) {
      // file moved;
      data.moved.add(new FSMove((PsiFileSystemItem) elem, (PsiFileSystemItem) event.getOldParent(), (PsiFileSystemItem) event.getNewParent()));
    } else {
      // todo what if old/new parent is PsiFileSystemItem ?
      data.changed.add(event.getOldParent().getContainingFile());
      data.changed.add(event.getNewParent().getContainingFile());
    }
  }

  /*package*/ void propertyChanged(@NotNull PsiTreeChangeEvent event) {
    if (!(event.getElement() instanceof PsiFileSystemItem
      && event.getPropertyName().equals(PsiTreeChangeEvent.PROP_FILE_NAME))) {
      return;
    }

    PsiChangeData data = proj(event.getElement());

    FSRename rename = new FSRename((PsiFileSystemItem) event.getElement(), (String) event.getOldValue());
    data.renamed.add(rename);
  }

  private PsiChangeData proj(PsiElement subject) {

    Project project = subject.getProject();
    PsiChangeData data = changeData.get(project);
    if (data == null) {
      data = new PsiChangeData();
      changeData.put(project, data);
    }
    return data;
  }

  private boolean filter(PsiElement elem) {
    if (elem == null || elem instanceof PsiWhiteSpace) {
      return false;
    }
    if (elem instanceof PsiJavaFile) {
      return true;
    }
    PsiElement e = elem;
    do {
      if (interesting(e)) {
        return true;
      }
      if (notInteresting(e)) {
        return false;
      }
      e = e.getParent();
    } while (e != null);
    return false;
  }

  private boolean interesting(PsiElement elem) {
    if (elem instanceof PsiClass
      || elem instanceof PsiMethod
      || elem instanceof PsiField
      || elem instanceof PsiParameterList
      || elem instanceof PsiParameter
      || elem instanceof PsiReferenceList //  but not PsiReference !
      || elem instanceof PsiModifierList
      || elem instanceof PsiModifier
      || elem instanceof PsiTypeParameterList
      || elem instanceof PsiTypeParameter) {

      return true;
    }
    return false;
  }

  private boolean notInteresting(PsiElement elem) {
    return elem instanceof PsiCodeBlock || elem instanceof PsiExpression;
  }
}

class PsiChangeData implements PsiEvent {
  Set<PsiFileSystemItem> created = new HashSet<PsiFileSystemItem>();
  Set<PsiFileSystemItem> removed = new HashSet<PsiFileSystemItem>();
  Set<FSMove> moved = new HashSet<FSMove>();
  Set<FSRename> renamed = new HashSet<FSRename>();
  Set<PsiFile> changed = new HashSet<PsiFile>();

  @Override
  public Iterable<PsiFileSystemItem> getCreated() {
    return created;
  }

  @Override
  public Iterable<PsiFileSystemItem> getRemoved() {
    return removed;
  }

  @Override
  public Iterable<FSMove> getMoved() {
    return moved;
  }

  @Override
  public Iterable<FSRename> getRenamed() {
    return renamed;
  }

  @Override
  public Set<PsiFile> getChanged() {
    return changed;
  }

  boolean isNotEmpty() {
    return !(changed.isEmpty() && created.isEmpty() && renamed.isEmpty() && moved.isEmpty() && removed.isEmpty());
  }
}

/*
 * Copyright 2003-2012 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package jetbrains.mps.idea.java.psi;

import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFile;
import com.intellij.psi.PsiFileSystemItem;
import jetbrains.mps.util.Triplet;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * danilla 11/12/12
 */

public interface PsiListener {

  void psiChanged(PsiEvent event);

  public static interface PsiEvent {
    Iterable<PsiFileSystemItem> getCreated();
    Iterable<PsiFileSystemItem> getRemoved();
    Iterable<FSMove> getMoved();
    Iterable<FSRename> getRenamed();
    Iterable<PsiFile> getChanged();
  }

  public static class FSMove {
    public final PsiFileSystemItem moved;
    public final PsiFileSystemItem from;
    public final PsiFileSystemItem to;

    public FSMove(PsiFileSystemItem moved, PsiFileSystemItem from, PsiFileSystemItem to) {
      this.moved = moved;
      this.from = from;
      this.to = to;
    }
  }

  public static class FSRename {
    public final PsiFileSystemItem item;
    public final String oldName;

    public FSRename(PsiFileSystemItem item, String oldName) {
      this.item = item;
      this.oldName = oldName;
    }
  }
}

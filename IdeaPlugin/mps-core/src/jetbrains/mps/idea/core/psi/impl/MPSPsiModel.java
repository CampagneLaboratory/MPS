/*
 * Copyright 2003-2013 JetBrains s.r.o.
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

package jetbrains.mps.idea.core.psi.impl;

import com.intellij.ide.impl.ProjectViewSelectInTarget;
import com.intellij.ide.projectView.impl.ProjectViewPane;
import com.intellij.lang.FileASTNode;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.PsiDirectory;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFile;
import com.intellij.psi.PsiFileSystemItem;
import com.intellij.psi.PsiManager;
import com.intellij.psi.search.PsiElementProcessor;
import com.intellij.util.ArrayUtil;
import com.intellij.util.IncorrectOperationException;
import jetbrains.mps.extapi.persistence.FileDataSource;
import jetbrains.mps.smodel.DynamicReference;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.StaticReference;
import jetbrains.mps.util.JavaNameUtil;
import jetbrains.mps.workbench.nodesFs.MPSNodesVirtualFileSystem;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SLink;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.persistence.DataSource;

import java.io.File;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * evgeny, 1/25/13
 */
public class MPSPsiModel extends MPSPsiNodeBase implements PsiDirectory {

  private Object LOCK = new Object();

  public static final PsiDirectory[] EMPTY_PSI_DIRECTORIES = new PsiDirectory[0];
  private final SModelReference myModelReference;
  private final Map<SNodeId, MPSPsiNode> myNodes = new HashMap<SNodeId, MPSPsiNode>();
  private final Map<MPSPsiNodeBase, Integer> myNodesOrder = new HashMap<MPSPsiNodeBase, Integer>();
  private VirtualFile mySourceVirtualFile;

  public MPSPsiModel(SModelReference reference, PsiManager manager) {
    super(manager);
    this.myModelReference = reference;
  }

  @NotNull
  @Override
  public String getName() {
    return JavaNameUtil.shortName(getQualifiedName());
  }

  public SModelReference getSModelReference() {
    return myModelReference;
  }

  @Override
  public boolean isValid() {
    return true;
  }

  @Override
  public boolean isPhysical() {
    return true;
  }


  @Override
  public String toString() {
    return "Model:" + myModelReference.toString();
  }

  public MPSPsiNode[] getRootNodes() {
    return getRootNodesOfType(MPSPsiNode.class);
  }

  public <T extends PsiElement> T[] getRootNodesOfType(Class<T> aClass) {
    PsiElement[] surrogateRoots = getChildren();
    List<T> result = new ArrayList<T>();
    for (PsiElement r : surrogateRoots) {
      assert r instanceof MPSPsiRootNode; // a layer between model and real root
      for (PsiElement c : r.getChildren()) {
        if (aClass.isInstance(c)) {
          result.add((T) c);
        }
      }
    }
    return ArrayUtil.toObjectArray(result, aClass);
  }

  @NotNull
  @Override
  public PsiElement[] getChildren() {
    synchronized (LOCK) {
      return super.getChildren();
    }
  }

  // todo: other reading routines (getFirstChild() etc) should also be guarded

  /* PsiFile */

  @Override
  public void checkSetName(String name) throws IncorrectOperationException {
    throw new IncorrectOperationException("Not implemented");
  }

  @NotNull
  @Override
  public VirtualFile getVirtualFile() {
    return MPSNodesVirtualFileSystem.getInstance().getFileFor((jetbrains.mps.smodel.SModelReference) myModelReference);
  }

  @Override
  public boolean processChildren(PsiElementProcessor<PsiFileSystemItem> processor) {
    return false;
  }

  @Override
  public boolean isDirectory() {
    return true;
  }

  @Nullable
  @Override
  public PsiDirectory getParent() {
    return null;
  }

  @NotNull
  @Override
  public PsiDirectory[] getSubdirectories() {
    return EMPTY_PSI_DIRECTORIES;  //To change body of implemented methods use File | Settings | File Templates.
  }

  @NotNull
  @Override
  public PsiFile[] getFiles() {
    return getChildren(PsiFile.class);
  }

  @Nullable
  @Override
  public PsiDirectory findSubdirectory(@NotNull String name) {
    return null;
  }

  @Nullable
  @Override
  public PsiFile findFile(@NotNull @NonNls String name) {
    throw new IncorrectOperationException("Not implemented");
  }

  @NotNull
  @Override
  public PsiDirectory createSubdirectory(@NotNull String name) throws IncorrectOperationException {
    throw new IncorrectOperationException("Not implemented");
  }

  @Override
  public void checkCreateSubdirectory(@NotNull String name) throws IncorrectOperationException {
    throw new IncorrectOperationException("Not implemented");
  }

  @NotNull
  @Override
  public PsiFile createFile(@NotNull @NonNls String name) throws IncorrectOperationException {
    throw new IncorrectOperationException("Not implemented");
  }

  @NotNull
  @Override
  public PsiFile copyFileFrom(@NotNull String newName, @NotNull PsiFile originalFile) throws IncorrectOperationException {
    throw new IncorrectOperationException("Not implemented");
  }

  @Override
  public void checkCreateFile(@NotNull String name) throws IncorrectOperationException {
    throw new IncorrectOperationException("Not implemented");
  }

  @Override
  public FileASTNode getNode() {
    return null;
  }

  @NotNull
  @Override
  public PsiElement setName(@NonNls @NotNull String name) throws IncorrectOperationException {
    throw new IncorrectOperationException("Not implemented");
  }

  @Nullable
  @Override
  public PsiDirectory getParentDirectory() {
    VirtualFile parentFile = getSourceVirtualFile().getParent();
    if (parentFile == null) return null;
    return myManager.findDirectory(parentFile);
  }

  @Override
  public boolean canNavigateToSource() {
    return false;
  }

  @Override
  public boolean canNavigate() {
    return true;
  }

  @Override
  public void navigate(boolean requestFocus) {
    ProjectViewSelectInTarget.select(getProject(), this, ProjectViewPane.ID, null, getSourceVirtualFile(), requestFocus);
  }

  public String getQualifiedName() {
    return myModelReference.getModelName();
  }

  public VirtualFile getSourceVirtualFile() {
    return mySourceVirtualFile;
  }

  @Override
  public PsiFile getContainingFile() {
    return null;
  }

  /* package */

  MPSPsiNode reload(SNodeId sNodeId) {
    ModelAccess.assertLegalWrite();
    MPSPsiNode mpsPsiNode = lookupNode(sNodeId);
    if (mpsPsiNode == null) return null;

    SNode sNode = mpsPsiNode.getSNodeReference().resolve(MPSModuleRepository.getInstance());
    MPSPsiNode replacement = convert(sNode);

    if (mpsPsiNode.getParent() instanceof MPSPsiRootNode) {
      MPSPsiRootNode rootNode = (MPSPsiRootNode) mpsPsiNode.getParent();
      assert rootNode.getParent() == this;

      MPSPsiRootNode replacementRoot = new MPSPsiRootNode(sNode.getNodeId(), extractName(sNode), getManager());
      replaceChild(rootNode, replacementRoot);
      replacementRoot.addChildLast(replacement);
    } else {
      ((MPSPsiNodeBase) mpsPsiNode.getParent()).replaceChild(mpsPsiNode, replacement);
    }

    enumerateNodes();

    return replacement;
  }

  void reloadAll() {
    ModelAccess.assertLegalWrite();
    SModel sModel = myModelReference.resolve(MPSModuleRepository.getInstance());
    for (SNode root : sModel.getRootNodes()) {
      MPSPsiNode mpsPsiNode = lookupNode(root.getNodeId());
      if (mpsPsiNode == null) continue;
      drop(mpsPsiNode);
    }
    reload(sModel);
  }

  void reload(SModel model) {
    // happens under Idea read-lock (via MPSPsiProvider.getPsi(SModel)), so we have to guard consistent state
    // as there may be multiple readers
    synchronized (LOCK) {
      clearChildren();
      for (SNode root : model.getRootNodes()) {
        String rootName = null;
        rootName = extractName(root);
        MPSPsiRootNode rootNode = new MPSPsiRootNode(root.getNodeId(), rootName, getManager());
        addChildLast(rootNode);
        rootNode.addChildLast(convert(root));
      }

      enumerateNodes();

      // TODO use ModelUtil
      DataSource source = model.getSource();
      if (source instanceof FileDataSource) {
        File file = new File(((FileDataSource) source).getFile().getPath());
        VirtualFile vfile = LocalFileSystem.getInstance().findFileByIoFile(file);
        this.mySourceVirtualFile = vfile;
      }
    }
  }

  private MPSPsiNode convert(SNode node) {

    MPSPsiNode psiNode = MPSPsiProvider.getInstance(getProject()).create(node.getNodeId(), node.getConcept(), node.getRoleInParent());
    myNodes.put(node.getNodeId(), psiNode);

    // properties
    for (String key : node.getPropertyNames()) {
      psiNode.setProperty(key, node.getProperty(key));
    }

    // refs
    for (SReference ref : node.getReferences()) {
      SLink link = ref.getLink();
      SAbstractConcept linkTargetConcept = null;
      if (link != null) {
        linkTargetConcept = link.getTargetConcept();
      }
      MPSPsiRef psiRef = null;
      if (ref instanceof StaticReference) {
        psiRef = MPSPsiProvider.getInstance(getProject()).createReferenceNode(ref.getRole(), linkTargetConcept, ref.getTargetSModelReference(), ref.getTargetNodeId());
      } else if (ref instanceof DynamicReference) {
        psiRef = MPSPsiProvider.getInstance(getProject()).createReferenceNode(ref.getRole(), linkTargetConcept, ((DynamicReference) ref).getResolveInfo());
      }
      if (psiRef != null) {
        psiNode.addChild(null, psiRef);
      }
    }

    // children
    MPSPsiNode last = null;
    for (SNode root : node.getChildren()) {
      MPSPsiNode psiChild = convert(root);
      psiNode.addChild(last, psiChild);
      last = psiChild;
    }
    return psiNode;
  }

  private void drop(MPSPsiNode psiNode) {
    myNodes.remove(psiNode.getId());

    for (MPSPsiNodeBase node : psiNode.children()) {
      if (node instanceof MPSPsiNode) {
        drop((MPSPsiNode) node);
      }
    }
  }

  MPSPsiNode lookupNode(SNodeId nodeId) {
    // bad: reads are also mutually exclusive
    synchronized (LOCK) {
      return myNodes.get(nodeId);
    }
  }

  Integer getNodePosition(MPSPsiNodeBase node) {
    synchronized (LOCK) {
      return myNodesOrder.get(node);
    }
  }

  private String extractName(SNode sNode) {
    String name = "";
    for (String key : sNode.getPropertyNames()) {
      if ("name".equals(key)) {
        name = sNode.getProperty(key);
      }
    }
    return name;
  }

  private void enumerateNodes() {
    myNodesOrder.clear();
    Deque<MPSPsiNodeBase> stack = new ArrayDeque<MPSPsiNodeBase>();
    stack.add(this);

    int k = 0;

    while (!stack.isEmpty()) {
      MPSPsiNodeBase curr = stack.pop();

      // remembering position
      myNodesOrder.put(curr, k++);

      PsiElement[] children = curr.getChildren();
      for (int i = children.length - 1; i >= 0; i--) {
        PsiElement c = children[i];
        if (c instanceof MPSPsiNodeBase) {
          stack.push((MPSPsiNodeBase) c);
        }
      }

    }
  }

}

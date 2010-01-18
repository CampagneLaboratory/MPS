/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
package jetbrains.mps.findUsages;

import com.intellij.ide.DataManager;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.module.Module;
import com.intellij.psi.impl.cache.impl.id.FileTypeIdIndexer;
import com.intellij.psi.impl.cache.impl.id.IdIndex;
import com.intellij.psi.impl.cache.impl.id.IdIndexEntry;
import com.intellij.psi.impl.cache.impl.id.IdTableBuilding;
import com.intellij.psi.search.GlobalSearchScope;
import com.intellij.util.indexing.FileBasedIndex;
import com.intellij.util.indexing.FileContent;
import com.intellij.util.text.CharArrayUtil;
import jetbrains.mps.fileTypes.MPSFileTypeFactory;
import jetbrains.mps.ide.progress.IAdaptiveProgressMonitor;
import jetbrains.mps.ide.progress.util.ModelsProgressUtil;
import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.VFileSystem;
import jetbrains.mps.kernel.model.SModelUtil;
import jetbrains.mps.workbench.MPSDataKeys;
import org.jetbrains.annotations.NotNull;
import org.apache.commons.lang.StringEscapeUtils;

import java.util.*;

class FastFindUsagesManager extends FindUsagesManager {
  private static final String TARGET_NODE_ID_PREFIX = "targetNodeId=\"";
  private static final String TYPE_PREFIX = "type=\"";

  @NotNull
  public String getComponentName() {
    return "MPS Fast Find Usages Manager";
  }

  public void initComponent() {
    IdTableBuilding.registerIdIndexer(MPSFileTypeFactory.MODEL_FILE_TYPE, new FileTypeIdIndexer() {
      @NotNull
      public Map<IdIndexEntry, Integer> map(FileContent inputData) {
        CharSequence data = inputData.getContentAsText();
        char[] charsArray = CharArrayUtil.fromSequenceWithoutCopying(data);
        int len = data.length();
        if (charsArray == null) {
          charsArray = CharArrayUtil.fromSequence(data);
        }

        Map<IdIndexEntry, Integer> result = new HashMap<IdIndexEntry, Integer>();
        int wordStart = -1;
        for (int i = 0; i < len; i++) {
          char c = charsArray[i];
          if (c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z') {
            if (wordStart == -1) {
              wordStart = i;
            }
          } else if (wordStart >= 0) {
            processWord(result, charsArray, len, wordStart, i - wordStart);
            wordStart = -1;
          }
        }
        return result;
      }

      private void processWord(Map<IdIndexEntry, Integer> result, char[] chars, int charsLength, int offset, int len) {
        if (chars[offset + len] != '=' || chars[offset] != 't') {
          return; // optimization: ignore
        }

        if (contains(chars, charsLength, offset, TARGET_NODE_ID_PREFIX)) {
          // check pattern "targetNodeId=\"(?:[0-9]+v?\\.)?(.+?)\""
          offset += TARGET_NODE_ID_PREFIX.length();
          int end = indexOfQuoteAndVersionColon(chars, charsLength, offset)[0];
          if (end > offset) {
            int e = offset;
            while (e < end && chars[e] >= '0' && chars[e] <= '9') {
              e++;
            }
            if (e > offset) {
              if (e < end && chars[e] == 'v') {
                e++;
              }
              if (e + 1 < end && chars[e] == '.') {
                offset = e + 1;
              }
            }
            result.put(new IdIndexEntry(unescape(new String(chars, offset, end - offset)), true), offset);
          }
        } else if (contains(chars, charsLength, offset, TYPE_PREFIX)) {
          // check pattern "type=\"(.+?)\" id=\".+?\""
          offset += TYPE_PREFIX.length();
          int[] indices = indexOfQuoteAndVersionColon(chars, charsLength, offset);
          int end = indices[0];
          int qend = indices[1];
          if (end > offset && contains(chars, charsLength, qend + 1, " id=\"")) {
            // report
            result.put(new IdIndexEntry(unescape(new String(chars, offset, end - offset)), true), offset);
          }
        }
      }

      private int indexOfQuoteOrVersionColon(char[] chars, int charsLength, int start) {
        for (int i = start; i < charsLength; i++) {
          if (chars[i] == '"') {
            return i;
          }
          if (chars[i] == ':' && (i+1 < charsLength) && chars[i+1] >= '0' && chars[i+1] <= '9') {
            return i;
          }
          if (chars[i] == '\n') {
            return -1;
          }
        }
        return -1;
      }

      // result[0] - first index; result[1] - index of quote
      private int[] indexOfQuoteAndVersionColon(char[] chars, int charsLength, int start) {
        int[] result = {-1, -1};
        for (int i = start; i < charsLength; i++) {
          if (chars[i] == '"') {
            if (result[0] == -1) result[0] = i;
            result[1] = i;
            return result;
          }
          if (chars[i] == ':' && (i+1 < charsLength) && chars[i+1] >= '0' && chars[i+1] <= '9') {
            result[0] = i;
          }
          if (chars[i] == '\n') {
            return new int[]{-1, -1};
          }
        }
        return new int[]{-1, -1};
      }

      private boolean contains(char[] chars, int charsLength, int offset, String s) {
        if (offset + s.length() >= charsLength) {
          return false;
        }
        for (int i = 0; i < s.length(); i++) {
          if (chars[offset + i] != s.charAt(i)) {
            return false;
          }
        }
        return true;
      }

      private String unescape(String s) {
        return StringEscapeUtils.unescapeXml(s);
      }
    });
  }

  public void disposeComponent() {
  }

  @Override
  public Set<SNode> findInstances(AbstractConceptDeclaration concept, IScope scope, IAdaptiveProgressMonitor progress, boolean manageTasks) {
    Set<SNode> result = new HashSet<SNode>();
    if (progress == null) progress = IAdaptiveProgressMonitor.NULL_PROGRESS_MONITOR;
    progressTasks(manageTasks, ModelsProgressUtil.TASK_KIND_FIND_INSTANCES, "Finding instances...", progress, scope);

    result.addAll(findInstancesOfNodeInCache(concept, scope, false));

    for (SModelDescriptor model : scope.getModelDescriptors()) {
      String taskName = ModelsProgressUtil.findInstancesModelTaskName(model);
      if (manageTasks) progress.startLeafTask(taskName, ModelsProgressUtil.TASK_KIND_FIND_INSTANCES);
      if (SModelRepository.getInstance().isChanged(model)) {
        result.addAll(model.findInstances(concept, scope));
      }
      if (progress.isCanceled()) {
        if (manageTasks) progress.finishAnyway();
        return result;
      } else {
        if (manageTasks) progress.finishTask(taskName);
      }
    }
    return result;
  }

  @Override
  public Set<SNode> findExactInstances(AbstractConceptDeclaration concept, IScope scope, IAdaptiveProgressMonitor progress, boolean manageTasks) {
    Set<SNode> result = new HashSet<SNode>();
    if (progress == null) progress = IAdaptiveProgressMonitor.NULL_PROGRESS_MONITOR;
    progressTasks(manageTasks, ModelsProgressUtil.TASK_KIND_FIND_EXACT_INSTANCES, "Finding exact instances...", progress, scope);

    result.addAll(findInstancesOfNodeInCache(concept, scope, true));

    for (SModelDescriptor model : scope.getModelDescriptors()) {
      String taskName = ModelsProgressUtil.findExactInstancesModelTaskName(model);
      if (manageTasks) progress.startLeafTask(taskName, ModelsProgressUtil.TASK_KIND_FIND_EXACT_INSTANCES);
      if (SModelRepository.getInstance().isChanged(model)) {
        result.addAll(model.findExactInstances(concept, scope));
      }
      if (progress.isCanceled()) {
        if (manageTasks) progress.finishAnyway();
        return result;
      } else {
        if (manageTasks) progress.finishTask(taskName);
      }
    }
    return result;
  }

  public Set<AbstractConceptDeclaration> findDescendants(AbstractConceptDeclaration node, IScope scope) {
    Set<String> fqNames = LanguageHierarchyCache.getInstance().getDescendantsOfConcept(NameUtil.nodeFQName(node));
    Set<AbstractConceptDeclaration> result = new HashSet<AbstractConceptDeclaration>();
    for (String fqName : fqNames) {
      SNode foundNode = SModelUtil.findNodeByFQName(fqName, node.getNode(), scope);
      if (foundNode == null) continue;
      result.add((AbstractConceptDeclaration) foundNode.getAdapter());
    }
    return result;
  }

  public Set<SReference> findUsages(SNode node, IScope scope) {
    return findUsages(node, scope, (IAdaptiveProgressMonitor) null);
  }

  public Set<SReference> findUsages(SNode node, IScope scope, IAdaptiveProgressMonitor progress) {
    return findUsages(CollectionUtil.set(node), scope, progress, true);
  }

  public Set<SReference> findUsages(Set<SNode> nodes, final IScope scope, IAdaptiveProgressMonitor progress, boolean manageTasks) {
    Set<SReference> result = new HashSet<SReference>();
    if (progress == null) progress = IAdaptiveProgressMonitor.NULL_PROGRESS_MONITOR;
    progressTasks(manageTasks, ModelsProgressUtil.TASK_KIND_FIND_NODE_USAGES, "Finding usages...", progress, scope);

    for (SNode node : nodes) {
      result.addAll(findUsagesOfNodeInCache(node, scope));
    }
    for (SModelDescriptor sm : scope.getModelDescriptors()) {
      if (SModelRepository.getInstance().isChanged(sm)) {
        IFile modelFile = sm.getModelFile();
        if (modelFile == null) continue;
        sm.getSModel();
        result.addAll(sm.findUsages(nodes));
      }
    }
    return result;
  }

  public List<SNode> findInstances(SNode conceptDeclaration, IScope scope) {
    Set<SNode> set = findInstances((AbstractConceptDeclaration) BaseAdapter.fromNode(conceptDeclaration), scope, null, true);
    return new ArrayList<SNode>(set);
  }

  public List<SNode> findInstances(SNode conceptDeclaration, IScope scope, IAdaptiveProgressMonitor monitor) {
    Set<SNode> set = findInstances((AbstractConceptDeclaration) BaseAdapter.fromNode(conceptDeclaration), scope, monitor, true);
    return new ArrayList<SNode>(set);
  }

  private void progressTasks(boolean manageTasks, String task, String text, IAdaptiveProgressMonitor progress, IScope scope) {
    if (manageTasks) {
      long estimatedTime = ModelsProgressUtil.estimateFindNodeUsagesTimeMillis(scope.getModelDescriptors());
      progress.startTaskAnyway(task, null, estimatedTime);
      progress.addText(text);
    }
  }

  private Set<VirtualFile> getScopeFiles(IScope scope) {
    final Set<VirtualFile> scopeFiles = new HashSet<VirtualFile>();
    for (SModelDescriptor sm : scope.getModelDescriptors()) {
      IFile modelFile = sm.getModelFile();
      if (modelFile == null) continue;
      scopeFiles.add(modelFile.toVirtualFile());
    }
    return scopeFiles;
  }

  private Set<VirtualFile> getCandidates(final Set<VirtualFile> scopeFiles, final String nodeId) {
    final Set<VirtualFile> candidates = new HashSet<VirtualFile>();
    FileBasedIndex.getInstance().processValues(IdIndex.NAME, new IdIndexEntry(nodeId, true), null,
      new FileBasedIndex.ValueProcessor<Integer>() {
        public boolean process(final VirtualFile file, final Integer value) {
          candidates.add(file);
          return true;
        }
      }, new GlobalSearchScope(MPSDataKeys.PROJECT.getData(DataManager.getInstance().getDataContext())) {
        public boolean contains(VirtualFile file) {
          return scopeFiles.contains(file);
        }

        public int compare(VirtualFile file1, VirtualFile file2) {
          return file1.getPath().compareTo(file2.getPath());
        }

        public boolean isSearchInModuleContent(@NotNull Module aModule) {
          return true;
        }

        public boolean isSearchInLibraries() {
          return false;
        }
      }
    );
    return candidates;
  }

  private Set<SNode> findInstancesOfNodeInCache(AbstractConceptDeclaration concept, final IScope scope, boolean isExact) {
    Set<VirtualFile> candidates = new HashSet<VirtualFile>();
    final Set<VirtualFile> scopeFiles = getScopeFiles(scope);
    candidates.addAll(getCandidates(scopeFiles, NameUtil.nodeFQName(concept)));
    if (!isExact) {
      Set<String> fqNames = LanguageHierarchyCache.getInstance().getAllDescendantsOfConcept(NameUtil.nodeFQName(concept));
      for (String fqName : fqNames) {
        candidates.addAll(getCandidates(scopeFiles, fqName));
      }
    }
    Set<SNode> result = new HashSet<SNode>();
    for (VirtualFile file : candidates) {
      SModelDescriptor sm = SModelRepository.getInstance().findModel(VFileSystem.toIFile(file));
      if (sm == null) continue;
      sm.getSModel();
      if (isExact) {
        result.addAll(sm.findExactInstances(concept, scope));
      } else {
        result.addAll(sm.findInstances(concept, scope));
      }
    }
    return result;
  }

  private Set<SReference> findUsagesOfNodeInCache(SNode node, final IScope scope) {
    final Set<VirtualFile> scopeFiles = getScopeFiles(scope);
    String nodeId = node.getId();
    final Set<VirtualFile> candidates = getCandidates(scopeFiles, nodeId);
    Set<SReference> result = new HashSet<SReference>();
    for (VirtualFile file : candidates) {
      SModelDescriptor sm = SModelRepository.getInstance().findModel(VFileSystem.toIFile(file));
      if (sm == null) continue;
      sm.getSModel();
      result.addAll(sm.findUsages(node));
    }
    return result;
  }
}

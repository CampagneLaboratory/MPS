/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.cellMenu;

import jetbrains.mps.nodeEditor.SubstituteActionUtil;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import jetbrains.mps.openapi.editor.cells.SubstituteInfo;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.smodel.SModelInternal;
import jetbrains.mps.smodel.SModelOperations;
import jetbrains.mps.smodel.tempmodel.TempModuleOptions;
import jetbrains.mps.smodel.tempmodel.TemporaryModels;
import jetbrains.mps.typesystem.inference.InequalitySystem;
import jetbrains.mps.util.Computable;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Author: Sergey Dmitriev.
 * Time: Oct 29, 2003 2:17:38 PM
 */
public abstract class AbstractNodeSubstituteInfo implements SubstituteInfo {
  private static final Logger LOG = LogManager.getLogger(AbstractNodeSubstituteInfo.class);

  private static SModel ourModelForTypechecking = null;

  public static SModel getModelForTypechecking() {
    return ourModelForTypechecking;
  }

  private List<SubstituteAction> myCachedActionList;
  private Map<String, List<SubstituteAction>> myPatternsToActionListsCache = new HashMap<String, List<SubstituteAction>>();
  private Map<String, List<SubstituteAction>> myStrictPatternsToActionListsCache = new HashMap<String, List<SubstituteAction>>();
  private String myOriginalText;
  private EditorContext myEditorContext;

    public AbstractNodeSubstituteInfo(EditorContext editorContext) {
    myEditorContext = editorContext;
  }

  public EditorContext getEditorContext() {
    return myEditorContext;
  }

  public IOperationContext getOperationContext() {
    return myEditorContext.getOperationContext();
  }

  @Override
  public void setOriginalText(String text) {
    myOriginalText = text;
  }

  @Override
  public String getOriginalText() {
    return myOriginalText;
  }

  protected abstract List<SubstituteAction> createActions();

  @Override
  public void invalidateActions() {
    myCachedActionList = null;
    myPatternsToActionListsCache.clear();
    myStrictPatternsToActionListsCache.clear();
  }

  @Override
  public boolean hasExactlyNActions(final String pattern, final boolean strictMatching, final int n) {
    return new ModelAccessHelper(myEditorContext.getRepository()).runReadAction(new Computable<Boolean>() {
      @Override
      public Boolean compute() {
        int count = 0;
        for (SubstituteAction action : getActionsFromCache(pattern, strictMatching)) {
          if (strictMatching ? action.canSubstituteStrictly(pattern) : action.canSubstitute(pattern)) {
            if (!action.isFluentEntry()) {
              // do not count fluent entries
              count++;
            }
          }

          if (count > n) return false;
        }

        return n == count;
      }
    });
  }

  protected InequalitySystem getInequalitiesSystem(EditorCell contextCell) {
    return null;
  }

  @Override
  public List<SubstituteAction> getSmartMatchingActions(final String pattern, final boolean strictMatching, EditorCell contextCell) {
    // TODO make this thread local maybe?
    ourModelForTypechecking = TemporaryModels.getInstance().create(false, false, TempModuleOptions.forDefaultModule());
    for (SLanguage l : SModelOperations.getAllLanguageImports(getEditorContext().getModel())) {
      ((SModelInternal) ourModelForTypechecking).addLanguage(l);
    }

    try {
      final InequalitySystem inequalitiesSystem = getInequalitiesSystem(contextCell);

      List<SubstituteAction> substituteActionList = getMatchingActions(pattern, strictMatching);
      if (inequalitiesSystem == null) return substituteActionList;

      List<SubstituteAction> result = new ArrayList<SubstituteAction>();
      for (SubstituteAction nodeSubstituteAction : substituteActionList) {
        try {
          SNode type = nodeSubstituteAction.getActionType(pattern);
          if (type != null && inequalitiesSystem.satisfies(type)) {
            result.add(nodeSubstituteAction);
          }
        } catch (Throwable th) {
          LOG.error("Exception on checking smart matching conditions for action: " + (nodeSubstituteAction == null ? "null" : nodeSubstituteAction.getClass()),
              th);
        }
      }
      return result;
    } catch (RuntimeException rte) {
      LOG.error("Exception while building SmartMatchingActions list", rte);
      return new ArrayList<SubstituteAction>();
    } finally {
      TemporaryModels.getInstance().dispose(ourModelForTypechecking);
      ourModelForTypechecking = null;
    }
  }

  @Override
  public List<SubstituteAction> getMatchingActions(final String pattern, final boolean strictMatching) {
    return new ModelAccessHelper(myEditorContext.getRepository()).runReadAction(new Computable<List<SubstituteAction>>() {
      @Override
      public List<SubstituteAction> compute() {
        boolean hasSomeFluentEntries = false;
        List<SubstituteAction> actionsFromCache = getActionsFromCache(pattern, strictMatching);
        ArrayList<SubstituteAction> result = new ArrayList<SubstituteAction>(actionsFromCache.size());
        for (SubstituteAction item : actionsFromCache) {
          try {
            if (strictMatching ? item.canSubstituteStrictly(pattern) : SubstituteActionUtil.canSubstitute(item, pattern)) {
              hasSomeFluentEntries |= item.isFluentEntry();
              result.add(item);
            }
          } catch (Throwable th) {
            LOG.error("Exception on calling canSubstitute on a substitute action " + (item == null ? "null" : item.getClass()), th);
          }
        }
        // put all actions in cache, whether they are fluent entries or not:
        putActionsToCache(pattern, strictMatching, new ArrayList<SubstituteAction>(result));
        if (hasSomeFluentEntries) {
          // but remove fluent entry actions if any are present
          List<SubstituteAction> fluent = new ArrayList<SubstituteAction>();

          for (SubstituteAction action : result) {
            if (action.isFluentEntry()) fluent.add(action);
          }
          result.removeAll(fluent);
        }
        result.trimToSize();
        return result;
      }
    });
  }

  public List<SubstituteAction> getFluentActions(final String pattern, final boolean strictMatching) {
    return new ModelAccessHelper(myEditorContext.getRepository()).runReadAction(new Computable<List<SubstituteAction>>() {
      @Override
      public List<SubstituteAction> compute() {
        List<SubstituteAction> actionsFromCache = getActionsFromCache(pattern, strictMatching);
        ArrayList<SubstituteAction> result = new ArrayList<SubstituteAction>(actionsFromCache.size());
        for (SubstituteAction item : actionsFromCache) {
          try {
            if (strictMatching ? item.canSubstituteStrictly(pattern) : SubstituteActionUtil.canSubstitute(item, pattern)) {
              //return only fluent entry actions:
              if (item.isFluentEntry()) {
                result.add(item);
              }
            }
          } catch (Throwable th) {
            LOG.error("Exception on calling canSubstitute on a substitute action " + (item == null ? "null" : item.getClass()), th);
          }
        }
// do not update the cache.
        result.trimToSize();
        return result;
      }
    });
  }

  private List<SubstituteAction> getActions() {
    if (myCachedActionList == null) {
      try {
        myCachedActionList = createActions();
      } catch (Throwable th) {
        LOG.error("Exception while creating substitute actions in " + this.getClass(), th);
        return new LinkedList<SubstituteAction>();
      }
    }
    return myCachedActionList;
  }

  private void putActionsToCache(String pattern, boolean strictMatching, List<SubstituteAction> actions) {
    List<SubstituteAction> actionsCopy = new ArrayList<SubstituteAction>(actions);
    if (strictMatching) {
      myStrictPatternsToActionListsCache.put(pattern, actionsCopy);
    } else {
      myPatternsToActionListsCache.put(pattern, actionsCopy);
    }
  }

  private List<SubstituteAction> getActionsFromCache(String pattern, boolean strictMatching) {
    if (pattern == null) {
      return Collections.unmodifiableList(getActions());
    }
    if (!strictMatching) {
      if (pattern.isEmpty()) {
        if (myPatternsToActionListsCache.containsKey(pattern)) {
          return Collections.unmodifiableList(myPatternsToActionListsCache.get(pattern));
        }
      } else {
        for (; pattern.length() > 0; pattern = pattern.substring(0, pattern.length() - 1)) {
          if (myPatternsToActionListsCache.containsKey(pattern)) {
            return Collections.unmodifiableList(myPatternsToActionListsCache.get(pattern));
          }
        }
      }
    } else {
      if (myStrictPatternsToActionListsCache.containsKey(pattern)) {
        return Collections.unmodifiableList(myStrictPatternsToActionListsCache.get(pattern));
      } else if (myPatternsToActionListsCache.containsKey(pattern)) {
        return Collections.unmodifiableList(myPatternsToActionListsCache.get(pattern));
      }
    }
    return Collections.unmodifiableList(getActions());
  }
}

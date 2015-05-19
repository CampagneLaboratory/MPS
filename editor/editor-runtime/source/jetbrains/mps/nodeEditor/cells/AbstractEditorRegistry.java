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
package jetbrains.mps.nodeEditor.cells;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.openapi.editor.cells.EditorCellFactory;
import jetbrains.mps.openapi.editor.descriptor.BaseConceptEditor;
import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.util.NameUtil;
import org.apache.log4j.LogManager;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/**
 * User: shatalin
 * Date: 5/14/13
 */
abstract class AbstractEditorRegistry<T extends BaseConceptEditor> {
  private static final Logger LOG = Logger.wrap(LogManager.getLogger(AbstractEditorRegistry.class));

  private final EditorCellFactory myCellFactory;
  private Comparator<BaseConceptEditor> myEditorComparator;

  protected AbstractEditorRegistry(EditorCellFactory cellFactory) {
    myCellFactory = cellFactory;
  }

  T getEditor(ConceptDescriptor conceptDescriptor) {
    Queue<ConceptDescriptor> queue = new LinkedList<ConceptDescriptor>();
    Set<SConceptId> processedConcepts = new HashSet<SConceptId>();
    queue.add(conceptDescriptor);
    processedConcepts.add(conceptDescriptor.getId());
    while (!queue.isEmpty()) {
      ConceptDescriptor nextConcept = queue.remove();
      T conceptEditor = getEditorForConcept(nextConcept);
      if (conceptEditor != null) {
        return conceptEditor;
      }
      for (SConceptId ancestorId : nextConcept.getParentsIds()) {
        if (processedConcepts.contains(ancestorId)) {
          continue;
        }
        processedConcepts.add(ancestorId);
        queue.add(ConceptRegistry.getInstance().getConceptDescriptor(ancestorId));
      }
    }
    return null;
  }

  private T getEditorForConcept(ConceptDescriptor conceptDescriptor) {
    List<T> conceptEditors = collectApplicableEditors(conceptDescriptor);
    if (conceptEditors.isEmpty()) {
      return null;
    }
    if (conceptEditors.size() == 1) {
      return conceptEditors.get(0);
    }
    Collections.sort(conceptEditors, getEditorComparator());
    T result = null;
    for (T conceptEditor : conceptEditors) {
      if (result == null) {
        result = conceptEditor;
      } else if (conceptEditor.getContextHints().size() == result.getContextHints().size()) {
        LOG.error(getErrorMessage(conceptEditor, result));
      } else {
        break;
      }
    }
    return result;
  }

  private List<T> collectApplicableEditors(ConceptDescriptor conceptDescriptor) {
    List<T> result = new ArrayList<T>();
    LanguageRuntime languageRuntime = LanguageRegistry.getInstance().getLanguage(NameUtil.namespaceFromConceptFQName(conceptDescriptor.getConceptFqName()));
    for (Iterator<LanguageRuntime> extendingLanguagesIterator = null; languageRuntime != null; ) {
      EditorAspectDescriptor aspectDescriptor = languageRuntime.getAspect(EditorAspectDescriptor.class);
      if (aspectDescriptor != null) {
        for (T conceptEditor : getEditors(aspectDescriptor, conceptDescriptor)) {
          if (isApplicableInCurrentContext(conceptEditor)) {
            result.add(conceptEditor);
          }
        }
      }
      if (extendingLanguagesIterator == null) {
        // initializing iterator for first language only
        extendingLanguagesIterator = languageRuntime.getExtendingLanguages().iterator();
      }
      languageRuntime = extendingLanguagesIterator.hasNext() ? extendingLanguagesIterator.next() : null;
    }
    return result;
  }

  private boolean isApplicableInCurrentContext(BaseConceptEditor editor) {
    for (String hint : editor.getContextHints()) {
      if (!myCellFactory.getCellContext().hasContextHint(hint)) {
        return false;
      }
    }
    return true;
  }

  private String getErrorMessage(T additionalEditor, T mainEditor) {
    String context = "";
    for (String contextHint : myCellFactory.getCellContext().getHints()) {
      if (!context.isEmpty()) {
        context += ", ";
      }
      context += contextHint;
    }
    return "Additional editor " + additionalEditor.getClass() + " is applicable to the current context (" + context + "). Skipping this editor , using " +
        mainEditor.getClass() + ".";
  }

  private Comparator<BaseConceptEditor> getEditorComparator() {
    if (myEditorComparator == null) {
      myEditorComparator = new Comparator<BaseConceptEditor>() {
        @Override
        public int compare(BaseConceptEditor editor1, BaseConceptEditor editor2) {
          if (editor1.getContextHints().size() == editor2.getContextHints().size()) {
            return editor1.getClass().getName().compareTo(editor2.getClass().getName());
          }
          return editor2.getContextHints().size() - editor1.getContextHints().size();
        }
      };
    }
    return myEditorComparator;
  }

  protected abstract Collection<T> getEditors(EditorAspectDescriptor aspectDescriptor, ConceptDescriptor conceptDescriptor);
}

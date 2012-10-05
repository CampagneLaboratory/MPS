/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.openapi.editor;

import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.util.Computable;

/**
 * evgeny, 11/17/11
 */
public interface EditorContext {

  SNode getSelectedNode();

  /**
   * same as selectWRTFocusPolicy(node, true);
   */
  void selectWRTFocusPolicy(SNode node);

  /**
   * Select one of available EditorCells representing passes SNode in the associated editor.
   * If multiple EditorCells are representing same SNode in this editor then most applicable
   * will be selected based on FocusPolicies specified on EditorCells.
   *
   * @param node  one of EditorCells representing this SNode should be selected
   * @param force change selection even if getSelectedNode() == node
   */
  void selectWRTFocusPolicy(SNode node, boolean force);

  EditorCell getSelectedCell();

  EditorInspector getInspector();

  EditorComponent getEditorComponent();

  void executeCommand(Runnable r);

  <T> T executeCommand(Computable<T> c);

  boolean isInsideCommand();

  void flushEvents();

  IScope getScope();

  EditorCell createNodeCell(SNode node);

  EditorCell createReferentCell(SNode sourceNode, SNode targetNode, String role);
}

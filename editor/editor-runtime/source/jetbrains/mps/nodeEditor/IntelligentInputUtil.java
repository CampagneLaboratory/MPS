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
package jetbrains.mps.nodeEditor;

import jetbrains.mps.editor.runtime.SideTransformInfoUtil;
import jetbrains.mps.editor.runtime.commands.EditorComputable;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cellMenu.AbstractNodeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.NullSubstituteInfo;
import jetbrains.mps.nodeEditor.cells.CellFinderUtil;
import jetbrains.mps.nodeEditor.cells.CellFinderUtil.Finder;
import jetbrains.mps.nodeEditor.cells.CellInfo;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.cells.EditorCell_Label;
import jetbrains.mps.nodeEditor.sidetransform.EditorCell_STHint;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellAction;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.openapi.editor.cells.CellTraversalUtil;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import jetbrains.mps.openapi.editor.cells.SubstituteInfo;
import jetbrains.mps.smodel.action.SideTransformHintSubstituteActionsHelper;
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.typesystem.inference.ITypechecking.Computation;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.typesystem.inference.TypeContextManager;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.List;

public class IntelligentInputUtil {

  public static boolean processCell(final EditorCell_Label cell, final EditorContext editorContext, final String pattern,
      final CellSide side) {
    if (pattern == null || pattern.equals("")) {
      return false;
    }

    EditorComputable<Boolean> sideTransformCommand = new EditorComputable<Boolean>(editorContext) {
      @Override
      protected Boolean doCompute() {
        return TypeContextManager.getInstance().runTypeCheckingComputation(
            ((EditorComponent) editorContext.getEditorComponent()).getTypecheckingContextOwner(),
            editorContext.getEditorComponent().getEditedNode(),
            new Computation<Boolean>() {
              @Override
              public Boolean compute(TypeCheckingContext context) {
                if (cell instanceof EditorCell_STHint) {
                  EditorCell_STHint rtHintCell = (EditorCell_STHint) cell;
                  return processSTHintCell(rtHintCell, editorContext, pattern);
                }

                if (side == CellSide.LEFT) {
                  String head = "" + pattern.charAt(0);
                  String smallPattern = pattern.substring(1);
                  return processCellAtStart(cell, editorContext, head, smallPattern);
                } else {
                  String smallPattern = pattern.substring(0, pattern.length() - 1);
                  String tail = pattern.substring(pattern.length() - 1, pattern.length());
                  return processCellAtEnd(cell, editorContext, smallPattern, tail);
                }
              }
            });
      }
    };
    editorContext.getRepository().getModelAccess().executeCommand(sideTransformCommand);
    return sideTransformCommand.getResult();
  }

  private static boolean processSTHintCell(EditorCell_STHint cell, EditorContext editorContext, String pattern) {
    SubstituteInfo info = cell.getSubstituteInfo();
    String smallPattern = pattern.substring(0, pattern.length() - 1);
    String tail = "" + pattern.charAt(pattern.length() - 1);
    EditorCell nextCell = CellTraversalUtil.getNextLeaf(cell);
    while (nextCell != null && !nextCell.isSelectable()) {
      nextCell = CellTraversalUtil.getNextLeaf(nextCell);
    }

    if (canCompleteSmallPatternImmediately(info, pattern, "") ||
        canCompleteSmallPatternImmediately(info, trimLeft(pattern), "")) {

      if (!canCompleteSmallPatternImmediately(info, pattern, "")) {
        pattern = trimLeft(pattern);
      }

      info.getMatchingActions(pattern, true).get(0).substitute(editorContext, pattern);
      return true;
    } else if (pattern.length() > 0 && (canCompleteSmallPatternImmediately(info, smallPattern, tail) ||
        canCompleteSmallPatternImmediately(info, trimLeft(smallPattern), tail))) {

      if (!canCompleteSmallPatternImmediately(info, smallPattern, tail)) {
        smallPattern = trimLeft(smallPattern);
      }

      List<SubstituteAction> matchingActions = info.getMatchingActions(smallPattern, true);
      SubstituteAction item = matchingActions.get(0);
      SNode newNode = item.substitute(editorContext, smallPattern);
      editorContext.flushEvents();
      EditorCell cellForNewNode = editorContext.getEditorComponent().findNodeCell(newNode);
      if (cellForNewNode != null) {
        EditorCell_Label target = null;
        EditorCell errorOrEditable =
            CellFinderUtil.findChildByManyFinders(cellForNewNode, true, Finder.FIRST_ERROR, Finder.LAST_EDITABLE);
        if (errorOrEditable instanceof EditorCell_Label) {
          target = (EditorCell_Label) errorOrEditable;
        }

        if (target != null) {
          target.changeText(tail);
          target.end();

          if (target.isErrorState()) {
            target.validate(true, false);
          }

          editorContext.flushEvents();

          if (editorContext.getSelectedCell() instanceof EditorCell_Label) {
            EditorCell_Label label = (EditorCell_Label) editorContext.getSelectedCell();
            label.end();
          }
        }
      }
      return true;
    } else if (info.getMatchingActions(pattern, false).isEmpty() &&
        info.getMatchingActions(trimLeft(pattern), false).isEmpty() &&
        nextCell != null && nextCell.isErrorState() && nextCell instanceof EditorCell_Label && ((EditorCell_Label) nextCell).isEditable()) {

      SideTransformInfoUtil.removeTransformInfo(cell.getSNode());

      EditorCell_Label label = (EditorCell_Label) nextCell;
      label.changeText(pattern);
      label.end();
      editorContext.getEditorComponent().changeSelection(label);
      return true;
    } else if (isInOneStepAmbigousPosition(info, smallPattern + tail)) {
      activateNodeSubstituteChooser(editorContext, cell, info);
    }
    return false;
  }

  private static boolean processCellAtEnd(EditorCell_Label cell, final EditorContext editorContext, String smallPattern,
      final String tail) {
    SubstituteInfo substituteInfo = cell.getSubstituteInfo();
    if (substituteInfo == null) {
      substituteInfo = new NullSubstituteInfo();
    }

    EditorCell cellForNewNode;
    final SNode newNode;
    if (cell.isValidText(smallPattern) && !"".equals(smallPattern)
        && substituteInfo.hasExactlyNActions(smallPattern + tail, false, 0)) {
      newNode = cell.getSNode();
      cellForNewNode = cell;
      return applyRigthTransform(editorContext, smallPattern, tail, cellForNewNode, newNode);
    } else if (canCompleteSmallPatternImmediately(substituteInfo, smallPattern, tail) ||
        canCompleteSmallPatternImmediately(substituteInfo, trimLeft(smallPattern), tail)) {

      if (!canCompleteSmallPatternImmediately(substituteInfo, smallPattern, tail) &&
          canCompleteSmallPatternImmediately(substituteInfo, trimLeft(smallPattern), tail)) {
        smallPattern = trimLeft(smallPattern);
      }

      List<SubstituteAction> matchingActions = substituteInfo.getMatchingActions(smallPattern, true);
      SubstituteAction item = matchingActions.get(0);
      item.substitute(editorContext, smallPattern);

      newNode = editorContext.getSelectedCell().getSNode();

      if (newNode == null) return true;

      cellForNewNode = editorContext.getEditorComponent().findNodeCell(newNode);
      EditorCell_Label errorCell = CellFinderUtil.findFirstError(cellForNewNode, true);

      if (errorCell != null) {
        editorContext.flushEvents();
        EditorCell cellForNewNode1 = editorContext.getEditorComponent().findNodeCell(newNode);
        EditorCell_Label errorCell1 = CellFinderUtil.findFirstError(cellForNewNode1, true);
        errorCell1.changeText(tail);
        errorCell1.setCaretPosition(tail.length());
        return true;
      }

      return applyRigthTransform(editorContext, smallPattern, tail, cellForNewNode, newNode);
    } else if (canCompleteTheWholeStringImmediately(substituteInfo, smallPattern + tail) ||
        canCompleteTheWholeStringImmediately(substituteInfo, trimLeft(smallPattern) + tail)) {

      if (!canCompleteTheWholeStringImmediately(substituteInfo, smallPattern + tail) &&
          canCompleteTheWholeStringImmediately(substituteInfo, trimLeft(smallPattern) + tail)) {
        smallPattern = trimLeft(smallPattern);
      }

      List<SubstituteAction> matchingActions = substituteInfo.getMatchingActions(smallPattern + tail, true);
      SubstituteAction item = matchingActions.get(0);
      item.substitute(editorContext, smallPattern + tail);
      return true;
    } else if (hasMatchingFluentEntries(substituteInfo, smallPattern + tail)) {
      List<SubstituteAction> matchingActions = substituteInfo.getFluentActions(smallPattern + tail, false);
      SubstituteAction item = matchingActions.get(0);
      item.substitute(editorContext, smallPattern + tail);
      return true;
    } else {

      if (isInOneStepAmbigousPosition(substituteInfo, smallPattern + tail)) {
        if (tryToSubstituteFirstSuitable(editorContext, smallPattern + tail, substituteInfo)) {
          return true;
        }
        activateNodeSubstituteChooser(editorContext, cell, substituteInfo);
      } else if (isInAmbigousPosition(substituteInfo, smallPattern, tail)) {
        if (tryToSubstituteFirstSuitable(editorContext, smallPattern, substituteInfo)) {
          return true;
        }
        cell.setText(smallPattern);
        activateNodeSubstituteChooser(editorContext, cell, substituteInfo);
      }
    }
    return false;
  }

  private static boolean applyRigthTransform(EditorContext editorContext, String smallPattern, final String tail,
      final EditorCell cellForNewNode, SNode newNode) {
    EditorCell selectableChild = CellFinderUtil.findLastSelectableLeaf(cellForNewNode, true);
    CellAction rtAction = selectableChild != null ?
        editorContext.getEditorComponent().getActionHandler().getApplicableCellAction(selectableChild, CellActionType.RIGHT_TRANSFORM) : null;

    boolean hasSideActions = hasSideActions(cellForNewNode, CellSide.RIGHT, tail);

    if (rtAction == null || !hasSideActions) {
      final CellInfo cellInfo = ((jetbrains.mps.nodeEditor.cells.EditorCell) cellForNewNode).getCellInfo();
      return putTextInErrorChild(cellInfo, smallPattern + tail, editorContext);
    }

    if (cellForNewNode instanceof EditorCell_Label) {
      ((EditorCell_Label) cellForNewNode).changeText(smallPattern);
    }

    rtAction.execute(editorContext);

    EditorCell rtHintCell = prepareSTCell(editorContext, newNode, tail);
    if (rtHintCell != null) {
      final SubstituteInfo rtSubstituteInfo = rtHintCell.getSubstituteInfo();
      assert rtSubstituteInfo != null;
      List<SubstituteAction> rtMatchingActions = rtSubstituteInfo.getMatchingActions(tail, true);

      if (!canCompleteSmallPatternImmediately(rtSubstituteInfo, tail, "")) { //don't execute non-unique action on RT hint cell
        editorContext.flushEvents();

        EditorCell_Label foundCell = prepareRTCell(editorContext, newNode, tail);
        if (foundCell != null) {
          editorContext.getEditorComponent().changeSelection(foundCell);
          processCell(foundCell, editorContext, tail, CellSide.RIGHT);
        }
        return true;
      }

      SubstituteAction rtItem = rtMatchingActions.get(0);
      final SNode yetNewNode = rtItem.substitute(editorContext, tail);

      editorContext.flushEvents();

      if (yetNewNode != null) {
        EditorCell yetNewNodeCell = findNodeCell(editorContext, yetNewNode);
        assert yetNewNodeCell != null : "Unable to find editor cell for the node " + yetNewNode.toString() + ", created by RT: " + rtItem.toString();
        EditorCell errorCell = CellFinderUtil.findFirstError(yetNewNodeCell, true);
        if (errorCell != null) {
          editorContext.selectWRTFocusPolicy(errorCell);
        } else {
          editorContext.selectWRTFocusPolicy(yetNewNodeCell);
        }
      }
    } else {
      editorContext.flushEvents();
      EditorCell_Label rtCell = prepareRTCell(editorContext, newNode, tail);
      if (rtCell != null) {
        processCell(rtCell, editorContext, tail, CellSide.RIGHT);
      }
    }
    return true;
  }

  private static boolean tryToSubstituteFirstSuitable(EditorContext editorContext, String text, SubstituteInfo substituteInfo) {
    SNode concept = substituteInfo.getMatchingActions(text, true).get(0).getOutputConcept();
    if (concept == null) {
      return false;
    }
    boolean property = BehaviorReflection.invokeVirtualStatic(Boolean.TYPE, MetaAdapterByDeclaration.getConcept(concept),
        "virtual_substituteInAmbigousPosition_1262430001741498020", new Object[]{});
    if (property) {
      SNode outputConcept = substituteInfo.getMatchingActions(text, true).get(0).getOutputConcept();
      for (SubstituteAction action : substituteInfo.getMatchingActions(text, true)) {
        if (outputConcept != action.getOutputConcept()) {
          return false;
        }
      }
      SubstituteAction action = substituteInfo.getMatchingActions(text, true).get(0);
      action.substitute(editorContext, text);
      return true;
    }
    return false;
  }

  private static boolean processCellAtStart(EditorCell_Label cell, final EditorContext editorContext, String head,
      String smallPattern) {
    SubstituteInfo info = cell.getSubstituteInfo();
    if (info == null) {
      info = new NullSubstituteInfo();
    }
    EditorCell cellForNewNode;
    SNode newNode;

    if (cell.isValidText(smallPattern) && (!"".equals(smallPattern) || cell instanceof EditorCell_Constant)
        && info.hasExactlyNActions(head + smallPattern, false, 0)) {
      newNode = cell.getSNode();
      cellForNewNode = cell;
      return applyLeftTransform(editorContext, head, smallPattern, cellForNewNode, newNode, true);
    } else if (canCompleteSmallPatternImmediatelyLeft(info, head, smallPattern) &&
        !canCompleteTheWholeStringImmediately(info, head + smallPattern)) {
      newNode = info.getMatchingActions(smallPattern, true).get(0).substitute(editorContext, smallPattern);
      if (newNode == null) return true;

      cellForNewNode = findNodeCell(editorContext, newNode);
      return applyLeftTransform(editorContext, head, smallPattern, cellForNewNode, newNode, false);
    } else if (canCompleteTheWholeStringImmediately(info, head + smallPattern)) {

      List<SubstituteAction> matchingActions = info.getMatchingActions(head + smallPattern, true);
      SubstituteAction item = matchingActions.get(0);
      item.substitute(editorContext, head + smallPattern);
      return true;
    }
    return false;
  }

  private static boolean applyLeftTransform(EditorContext editorContext, final String head, String smallPattern, final EditorCell cellForNewNode, SNode newNode,
      boolean sourceCellRemains) {
    CellAction ltAction =
        editorContext.getEditorComponent().getActionHandler().getApplicableCellAction(CellFinderUtil.findFirstSelectableLeaf(cellForNewNode, true),
            CellActionType.LEFT_TRANSFORM);
    boolean hasSideActions = hasSideActions(cellForNewNode, CellSide.LEFT, head);

    if (ltAction == null || !hasSideActions) {
      CellInfo cellInfo = ((jetbrains.mps.nodeEditor.cells.EditorCell) cellForNewNode).getCellInfo();
      if (!sourceCellRemains) {
        return putTextInErrorChild(cellInfo, head + smallPattern, editorContext);
      } else {
        return false;
      }
    }

    if (sourceCellRemains) {
      ((EditorCell_Label) cellForNewNode).changeText(smallPattern);
    }

    ltAction.execute(editorContext);

    final EditorCell_Label ltCell = prepareSTCell(editorContext, newNode, head);
    if (ltCell instanceof EditorCell_STHint && canCompleteSmallPatternImmediately(ltCell.getSubstituteInfo(), head, "")) {
      ltCell.getSubstituteInfo().getMatchingActions(head, true).get(0).substitute(editorContext, head);
    }
    return true;
  }

  public static String trimLeft(String text) {
    for (int i = 0; i < text.length(); i++) {
      if (!Character.isWhitespace(text.charAt(i))) {
        return text.substring(i);
      }
    }
    return "";
  }

  private static boolean canCompleteSmallPatternImmediatelyLeft(SubstituteInfo info, String head, String smallPattern) {
    return info.hasExactlyNActions(smallPattern, true, 1) && info.hasExactlyNActions(head + smallPattern, false, 0);
  }

  private static boolean canCompleteSmallPatternImmediately(SubstituteInfo info, String smallPattern, String tail) {
    if ("".equals(tail)) {
      return info.hasExactlyNActions(smallPattern, true, 1) && info.hasExactlyNActions(smallPattern, false, 1);
    }

    // * has special meaning in completion patterns but we often want to complete multiplication
    // operations
    return info.hasExactlyNActions(smallPattern, true, 1) && (tail.equals("*") || info.hasExactlyNActions(smallPattern + tail, false, 0));
  }

  private static boolean canCompleteTheWholeStringImmediately(SubstituteInfo info, String pattern) {
    return info.hasExactlyNActions(pattern, true, 1) && info.hasExactlyNActions(pattern, false, 1);
  }

  private static boolean hasMatchingFluentEntries(SubstituteInfo info, String pattern) {
    return info.getFluentActions(pattern, true).size() == 1 || info.getFluentActions(pattern, false).size() == 1 ;
  }

  private static boolean isInAmbigousPosition(SubstituteInfo info, String smallPattern, String tail) {
    return info.getMatchingActions(smallPattern, true).size() > 1 && info.getMatchingActions(smallPattern + tail, false).isEmpty();
  }

  private static boolean isInOneStepAmbigousPosition(SubstituteInfo info, String smallPattern) {
    return info.getMatchingActions(smallPattern, true).size() > 1 &&
        info.getMatchingActions(smallPattern, true).size() == info.getMatchingActions(smallPattern, false).size();
  }

  private static EditorCell_Label prepareSTCell(EditorContext context, SNode transformingNode, String textToSet) {
    EditorCell_Label rtCell = EditorCell_STHint.getSTHintCell(transformingNode, context.getEditorComponent());
    if (rtCell == null) {
      EditorCell selectedCell = context.getSelectedCell();
      if (selectedCell instanceof EditorCell_Label && selectedCell.isErrorState()) {
        rtCell = (EditorCell_Label) selectedCell;
      } else {
        return null;
      }
    }
    rtCell.changeText(textToSet);
    rtCell.end();

    return rtCell;
  }

  private static EditorCell_Label prepareRTCell(EditorContext context, SNode node, String textToSet) {
    EditorCell root = findNodeCell(context, node);
    if (root == null) {
      return null;
    }
    return prepareSTCell(context, node, textToSet);
  }

  private static boolean putTextInErrorChild(CellInfo cellInfo, String textToSet, EditorContext editorContext) {
    editorContext.flushEvents();
    EditorComponent component = (EditorComponent) editorContext.getEditorComponent();
    EditorCell cellToSelect = cellInfo.findCell(component);
    if (cellToSelect != null) {
      EditorCell_Label label = CellFinderUtil.findFirstError(cellToSelect, true);
      if (label != null && label != cellToSelect && label.isEditable() && !(label instanceof EditorCell_Constant)) {
        label.changeText(textToSet);
        label.end();
        return true;
      }
    }
    return false;
  }

  private static boolean hasSideActions(EditorCell cell, CellSide side, String prefix) {
    final SideTransformHintSubstituteActionsHelper helper =
        new SideTransformHintSubstituteActionsHelper(cell.getSNode(), side, cell.getStyle().get(StyleAttributes.RT_ANCHOR_TAG),
            cell.getContext().getOperationContext());
    SubstituteInfo info = new AbstractNodeSubstituteInfo(cell.getContext()) {
      @Override
      protected List<SubstituteAction> createActions() {
        return helper.createActions();
      }
    };
    return !info.hasExactlyNActions(prefix, false, 0);
  }

  private static void activateNodeSubstituteChooser(EditorContext editorContext, EditorCell cell, SubstituteInfo info) {
    ((EditorComponent) editorContext.getEditorComponent()).activateNodeSubstituteChooser(cell, info, false);
  }

  private static EditorCell findNodeCell(EditorContext editorContext, SNode newNode) {
    return editorContext.getEditorComponent().findNodeCell(newNode);
  }
}

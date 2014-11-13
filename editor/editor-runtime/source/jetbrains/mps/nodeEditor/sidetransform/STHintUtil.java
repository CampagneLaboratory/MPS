/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.sidetransform;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * User: shatalin
 * Date: 27/02/14
 */
public class STHintUtil {
  /**
   * M.Muhin: Todo
   * This class is a dirty hack. It should be re-implemented via user objects since we don't have the used
   * property declared and MUST NOT declare it in concept structure.
   * We use property here just to call read/write listeners in editor to rebuild it.
   */
  private static final String RIGHT_TRANSFORM_HINT = "right_transform_hint";
  private static final String LEFT_TRANSFORM_HINT = "left_transform_hint";

  private static final String SIDE_TRANSFORM_HINT_ANCHOR_CELL_ID = "st-hint-anchor-cell-id";
  private static final String SIDE_TRANSFORM_HINT_ANCHOR_TAG = "st-hint-anchor-tag";

  public static void addRightTransformHint(@NotNull SNode node, @NotNull String cellId, String anchorTag) {
    node.setProperty(RIGHT_TRANSFORM_HINT, "true");
    node.putUserObject(SIDE_TRANSFORM_HINT_ANCHOR_CELL_ID, cellId);
    node.putUserObject(SIDE_TRANSFORM_HINT_ANCHOR_TAG, anchorTag);
  }

  public static void addLeftTransformHint(@NotNull SNode node, @NotNull String cellId, String anchorTag) {
    node.setProperty(LEFT_TRANSFORM_HINT, "true");
    node.putUserObject(SIDE_TRANSFORM_HINT_ANCHOR_CELL_ID, cellId);
    node.putUserObject(SIDE_TRANSFORM_HINT_ANCHOR_TAG, anchorTag);
  }

  public static boolean hasRightTransformHint(SNode node) {
    return node.getProperty(RIGHT_TRANSFORM_HINT) != null;
  }

  public static boolean hasLeftTransformHint(SNode node) {
    return node.getProperty(LEFT_TRANSFORM_HINT) != null;
  }

  public static void removeTransformHints(SNode node) {
    node.setProperty(LEFT_TRANSFORM_HINT, null);
    node.setProperty(RIGHT_TRANSFORM_HINT, null);
    node.putUserObject(SIDE_TRANSFORM_HINT_ANCHOR_CELL_ID, null);
    node.putUserObject(SIDE_TRANSFORM_HINT_ANCHOR_TAG, null);
  }

  public static String getTransformHintAnchorCellId(SNode node) {
    return (String) node.getUserObject(SIDE_TRANSFORM_HINT_ANCHOR_CELL_ID);
  }

  public static String getTransformHintAnchorTag(SNode node) {
    return (String) node.getUserObject(SIDE_TRANSFORM_HINT_ANCHOR_TAG);
  }
}

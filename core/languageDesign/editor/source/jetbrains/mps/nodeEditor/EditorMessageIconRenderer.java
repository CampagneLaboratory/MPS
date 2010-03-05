package jetbrains.mps.nodeEditor;

import com.intellij.openapi.actionSystem.AnAction;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.smodel.SNode;

import javax.swing.Icon;
import java.awt.Cursor;

/**
 * Created by IntelliJ IDEA.
 * User: Alexander Shatalin
 *
 * @see com.intellij.openapi.editor.markup.GutterIconRenderer was used as prototype
 */
public interface EditorMessageIconRenderer {

  Icon getIcon();

  String getTooltipText();

  SNode getNode();

  IconRendererType getType();

  EditorCell getAnchorCell(EditorCell bigCell);

  Cursor getMouseOwerCursor();

  AnAction getClickAction();

  public class IconRendererType {

    private final int myWeight;

    public IconRendererType(int weight) {
      myWeight = weight;
    }

    public int getWeight() {
      return myWeight;
    }
  }
}
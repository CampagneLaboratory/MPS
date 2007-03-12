package jetbrains.mps.ide;

import jetbrains.mps.ide.navigation.EditorInfo;
import jetbrains.mps.ide.navigation.IHistoryItem;
import jetbrains.mps.nodeEditor.AbstractEditorComponent;
import jetbrains.mps.nodeEditor.EditorCell;
import jetbrains.mps.nodeEditor.EditorContext;
import jetbrains.mps.nodeEditor.ICellSelectionListener;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SNodeProxy;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.JComponent;
import javax.swing.event.ChangeListener;
import java.util.Set;

public interface IEditor {
  JComponent getComponent();

  void rebuildEditorContent();
  void relayout();

  void addCellSelectionListener(@NotNull ICellSelectionListener listener);
  void removeCellSelectionListener(@NotNull ICellSelectionListener listener);

  void addChangeListener(@NotNull ChangeListener listener);
  void removeChangeListener(@NotNull ChangeListener listener);

  @NotNull IOperationContext getOperationContext();

  @Nullable EditorContext getEditorContext();

  @Nullable EditorCell  getSelectedCell();

  @Nullable EditorCell getRootCell();

  @Nullable SNode getEditedNode();

  @Nullable SNodeProxy getEditedNodeProxy();

  //for those types of editors which do not contain node: to find them in another way 
  @Nullable EditorInfo getEditorInfo();

  void selectNode(SNode node);

  @Nullable IHistoryItem getHistoryItemFromEditor();

  void requestFocus();

  void dispose();

  void repaint();

  @Nullable AbstractEditorComponent getCurrentEditorComponent();

  boolean removeFromRecentEditorsOnClose();
}

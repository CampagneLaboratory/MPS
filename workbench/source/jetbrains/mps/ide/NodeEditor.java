package jetbrains.mps.ide;

import jetbrains.mps.ide.action.IActionDataProvider;
import jetbrains.mps.nodeEditor.*;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.util.EqualUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jdom.Element;

import javax.swing.JComponent;
import javax.swing.JPanel;
import javax.swing.event.ChangeListener;
import java.awt.BorderLayout;

import com.intellij.openapi.fileEditor.FileEditorState;
import com.intellij.openapi.fileEditor.FileEditorStateLevel;

public class NodeEditor implements IEditor {

  protected AbstractEditorComponent myEditorComponent;
  private JPanel myComponent = new MyPanel();

  public NodeEditor(IOperationContext context, SNode node) {
    myEditorComponent = new NodeEditorComponent(context);
    myEditorComponent.editNode(node, context);

    myComponent.add(myEditorComponent.getExternalComponent(), BorderLayout.CENTER);
  }

  protected NodeEditor() {

  }

  public JComponent getComponent() {
    return myComponent;
  }

  public void rebuildEditorContent() {
    myEditorComponent.rebuildEditorContent();
  }

  public void relayout() {
    myEditorComponent.relayout();
  }

  public void addChangeListener(@NotNull ChangeListener listener) {
  }

  public void removeChangeListener(@NotNull ChangeListener listener) {
  }

  public boolean removeFromRecentEditorsOnClose() {
    return false;  //To change body of implemented methods use File | Settings | File Templates.
  }

  public void addCellSelectionListener(@NotNull ICellSelectionListener listener) {
    myEditorComponent.addCellSelectionListener(listener);
  }

  public void removeCellSelectionListener(@NotNull ICellSelectionListener listener) {
    myEditorComponent.removeCellSelectionListener(listener);
  }

  @NotNull
  public IOperationContext getOperationContext() {
    return myEditorComponent.getOperationContext();
  }

  public EditorCell getSelectedCell() {
    return myEditorComponent.getSelectedCell();
  }

  public EditorCell getRootCell() {
    return myEditorComponent.getRootCell();
  }

  public SNode getEditedNode() {
    return myEditorComponent.getEditedNode();
  }

  public SNodePointer getEditedNodePointer() {
    return myEditorComponent.getEditedNodePointer();
  }

  public void selectNode(SNode node) {
    myEditorComponent.selectNode(node);
  }

  public void dispose() {
    myEditorComponent.dispose();
  }

  public void repaint() {
    myEditorComponent.repaint();
  }

  public AbstractEditorComponent getCurrentEditorComponent() {
    return myEditorComponent;
  }

  public EditorContext getEditorContext() {
    return myEditorComponent.getEditorContext();
  }

  public void requestFocus() {
    myEditorComponent.requestFocus();
  }

  public MPSEditorState saveState(@NotNull FileEditorStateLevel level) {
    MyFileEditorState result = new MyFileEditorState();
    result.myMemento = getEditorContext().createMemento();
    return result;
  }

  public void loadState(@NotNull MPSEditorState state) {
    if (!(state instanceof MyFileEditorState)) {
      return;
    }

    MyFileEditorState s = (MyFileEditorState) state;
    getEditorContext().setMemento(s.myMemento);
  }

  public static class MyFileEditorState implements MPSEditorState {
    private Object myMemento;

    public void save(Element e) {
    }

    public void load(Element e) {
    }

    public int hashCode() {
      return myMemento.hashCode();
    }

    public boolean equals(Object obj) {
      if (!(obj instanceof MyFileEditorState)) {
        return false;
      }

      MyFileEditorState state = (MyFileEditorState) obj;
      return EqualUtil.equals(state.myMemento, myMemento);
    }
  }

  private class MyPanel extends JPanel implements IActionDataProvider {
    private MyPanel() {
      setLayout(new BorderLayout());
    }

    public <T> T get(Class<T> cls) {
      if (cls == IEditor.class) {
        return (T) NodeEditor.this;
      }
      return null;
    }
  }
}

package jetbrains.mps.nodeEditor;

import jetbrains.mps.components.DefaultExternalizableComponent;
import jetbrains.mps.components.Externalizable;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.util.WeakSet;
import com.intellij.openapi.application.ApplicationManager;

public class CaretBlinker extends DefaultExternalizableComponent {
  private static final Logger LOG = Logger.getLogger(CaretBlinker.class);

  public static CaretBlinker getInstance() {
    return ApplicationManager.getApplication().getComponent(CaretBlinker.class);
  }

  public static final int MIN_BLINKING_PERIOD = 100; //millis
  public static final int MAX_BLINKING_PERIOD = 1000;
  public static final int DEFAULT_BLINKING_PERIOD = 500;

  private boolean myStarted = false;
  private @Externalizable int myCaretBlinkingRateMillis = -1;

  private final Object myRegistrationLock = new Object();

  private WeakSet<AbstractEditorComponent> myEditors = new WeakSet<AbstractEditorComponent>();


  public CaretBlinker() {
  }

  public void launch() {
    if (myStarted) return;
    Thread t = new Thread(new MyRunnable(), "caret blinker daemon");
    t.setDaemon(true);
    t.setPriority(3);
    t.start();
    myStarted = true;
  }

  public int getCaretBlinkingRateTimeMillis() {
    return myCaretBlinkingRateMillis == -1 ? DEFAULT_BLINKING_PERIOD : myCaretBlinkingRateMillis;
  }

  public void setCaretBlinkingRateTimeMillis(int timeMillis) {
    myCaretBlinkingRateMillis = timeMillis;
  }
                                                                  
  public void registerEditor(AbstractEditorComponent editorComponent) {
    synchronized(myRegistrationLock) {
      myEditors.add(editorComponent);
    }
  }

  public void unregisterEditor(AbstractEditorComponent editorComponent) {
    synchronized(myRegistrationLock) {
      myEditors.remove(editorComponent);
    }
  }


  private class MyRunnable implements Runnable {
    @SuppressWarnings({"InfiniteLoopStatement"})
    public void run() {
      while (true) {
        synchronized(myRegistrationLock) {
          for (AbstractEditorComponent editor : myEditors) {
            if (editor.hasFocus()) {
              EditorCell selectedCell = editor.getDeepestSelectedCell();
              if (selectedCell == null) continue;
              selectedCell.switchCaretVisible();
              editor.repaint(selectedCell.getX(), selectedCell.getY(), selectedCell.getWidth()+1, selectedCell.getHeight()+1);
              break;
            }
          }
        }
        try {
          synchronized(this) {
            wait(getCaretBlinkingRateTimeMillis());
          }
        } catch (Throwable t) {
          LOG.error(t);
        }
      }
    }
  }
}

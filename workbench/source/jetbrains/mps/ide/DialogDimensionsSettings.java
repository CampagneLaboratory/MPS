package jetbrains.mps.ide;

import jetbrains.mps.components.DefaultExternalizableComponent;
import jetbrains.mps.components.Externalizable;

import java.util.HashMap;
import java.awt.Dimension;

import com.intellij.openapi.application.ApplicationManager;

public class DialogDimensionsSettings extends DefaultExternalizableComponent {
  public static DialogDimensionsSettings getInstance() {
    return ApplicationManager.getApplication().getComponent(DialogDimensionsSettings.class);
  }

  private @Externalizable HashMap<String, DialogDimensions> myDialogsDimensions = new HashMap<String, DialogDimensions>();

  protected DialogDimensions getDimensionSettings(Class<? extends BaseDialog> cls) {
    return myDialogsDimensions.get(cls.getName());
  }

  protected void saveDimensionSettings(int left, int top, int width, int height, Class<? extends BaseDialog> cls) {
    DialogDimensions dialogDimensions = new DialogDimensions(left, top, width, height);
    myDialogsDimensions.put(cls.getName(), dialogDimensions);
  }

  public static class DialogDimensions {
    public int myTop;
    public int myLeft;
    public int myWidth;
    public int myHeight;

    public DialogDimensions(int left, int top, int width, int height) {
      myHeight = height;
      myWidth = width;
      myLeft = left;
      myTop = top;
    }

    public Dimension getDimensions() {
      return new Dimension(myWidth, myHeight);
    }
  }
}

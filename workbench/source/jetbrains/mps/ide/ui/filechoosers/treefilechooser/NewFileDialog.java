package jetbrains.mps.ide.ui.filechoosers.treefilechooser;

import jetbrains.mps.ide.BaseDialog;
import jetbrains.mps.ide.DialogDimensionsSettings.DialogDimensions;
import org.jetbrains.annotations.Nullable;

import javax.swing.JComponent;
import javax.swing.JPanel;
import javax.swing.JTextField;
import java.awt.BorderLayout;
import java.awt.Frame;
import java.awt.HeadlessException;

public class NewFileDialog extends BaseDialog {
  private JPanel myPanel;
  private JTextField myTextArea;
  @Nullable
  private String myResult = null;

  public NewFileDialog(Frame mainFrame) throws HeadlessException {
    super(mainFrame, "Select name");

    myPanel = new JPanel(new BorderLayout());

    myTextArea = new JTextField("New Folder", 20);

    myPanel.add(myTextArea, BorderLayout.CENTER);

    setPreferredSize(getDefaultDimensionSettings().getDimensions());
    setSize(getDefaultDimensionSettings().getDimensions());
    setModal(true);
  }


  @BaseDialog.Button(position = 0, name = "Create", defaultButton = true)
  public void createButton() {
    myResult = myTextArea.getText();
    dispose();
  }

  @BaseDialog.Button(position = 1, name = "Cancel")
  public void cancelButton() {
    dispose();
  }

  @Nullable
  public String getResult() {
    return myResult;
  }

  public DialogDimensions getDefaultDimensionSettings() {
    int w = (int) Math.round(myTextArea.getPreferredSize().getWidth());
    int h = (int) Math.round(myTextArea.getPreferredSize().getHeight());
    return new DialogDimensions(300, 300, w + 50, h + 90);
  }

  protected JComponent getMainComponent() {
    return myPanel;
  }
}

package jetbrains.mps.workbench.dialogs;

import com.intellij.openapi.ui.DialogWrapper;
import com.intellij.openapi.project.Project;
import com.intellij.ui.IdeBorderFactory;

import javax.swing.*;
import java.awt.*;

import jetbrains.mps.ide.dialogs.BaseDialog;

public class RenameFileDialog extends DialogWrapper {
  private JLabel myLabel;
  private JTextField myTextField;

  public RenameFileDialog(Project project, String initialText, boolean isDirectory) {
    super(project);
    setTitle("Rename");
    myTextField = new JTextField(initialText);
    String type = (isDirectory)? "directory" : "file";
    myLabel = new JLabel("Rename " + type + " " + initialText + " to:");
    init();
  }

  @Override
  protected JComponent createCenterPanel() {
    JPanel centralPanel = new JPanel(new BorderLayout());
    JPanel panel = new JPanel(new GridBagLayout());
    GridBagConstraints gbConstraints = new GridBagConstraints();

    panel.setBorder(IdeBorderFactory.createBorder());

    gbConstraints.insets = new Insets(4, 8, 4, 8);
    gbConstraints.weighty = 0;
    gbConstraints.weightx = 1;
    gbConstraints.gridwidth = GridBagConstraints.REMAINDER;
    gbConstraints.fill = GridBagConstraints.BOTH;
    panel.add(myLabel, gbConstraints);

    gbConstraints.insets = new Insets(4, 8, 4, 8);
    gbConstraints.gridwidth = 2;
    gbConstraints.fill = GridBagConstraints.BOTH;
    gbConstraints.weightx = 1;
    gbConstraints.gridx = 0;
    gbConstraints.weighty = 1;
    panel.add(myTextField, gbConstraints);

    centralPanel.add(panel, BorderLayout.NORTH);
    return centralPanel;
  }

  public String getResult() {
    return myTextField.getText();
  }
}

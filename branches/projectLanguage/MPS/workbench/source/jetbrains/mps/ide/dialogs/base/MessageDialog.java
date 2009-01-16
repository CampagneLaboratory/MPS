/*
 * Copyright 2003-2008 JetBrains s.r.o.
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
package jetbrains.mps.ide.dialogs.base;

import jetbrains.mps.ide.dialogs.DialogDimensionsSettings.DialogDimensions;
import jetbrains.mps.ide.dialogs.base.BaseDialog;

import javax.swing.JComponent;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import java.awt.*;

public class MessageDialog extends BaseDialog {
  private JScrollPane myScrollPane;

  public MessageDialog(Frame mainFrame, String text) throws HeadlessException {
    super(mainFrame, "Message");

    JLabel label = new JLabel("<html>" + text.replaceAll("\n", "<br>") + "</html>");
    JPanel innerPanel = new JPanel(new BorderLayout());
    innerPanel.add(label, BorderLayout.NORTH);

    myScrollPane = new JScrollPane(
      innerPanel
    );

    Dimension d = myScrollPane.getPreferredSize();
    d.height = Math.min(d.height + 100, Toolkit.getDefaultToolkit().getScreenSize().height - 200);
    d.width = Math.min(d.width + 50, Toolkit.getDefaultToolkit().getScreenSize().width - 200);

    setPreferredSize(d);
    setSize(d);
  }

  @BaseDialog.Button(position = 0, name = "Close", defaultButton = true)
  public void closeButton() {
    dispose();
  }

  public DialogDimensions getDefaultDimensionSettings() {
    return new DialogDimensions(100, 100, 400, 600);
  }

  protected JComponent getMainComponent() {
    return myScrollPane;
  }
}

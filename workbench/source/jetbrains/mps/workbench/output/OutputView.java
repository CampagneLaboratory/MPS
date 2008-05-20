package jetbrains.mps.workbench.output;

import jetbrains.mps.ide.IDEProjectFrame;
import jetbrains.mps.ide.AbstractActionWithEmptyIcon;
import jetbrains.mps.ide.toolsPane.DefaultTool;
import jetbrains.mps.ide.toolsPane.ToolsPane;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.components.IExternalizableComponent;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.util.IntegerValueDocumentFilter;
import jetbrains.mps.util.CollectionUtil;

import javax.swing.*;
import javax.swing.text.AbstractDocument;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.ActionEvent;
import java.util.List;

import org.jdom.Element;

public class OutputView extends DefaultTool {

  private JPanel myComponent = new JPanel();
  private JTextArea myTextArea = new JTextArea();
  private MPSProject myProject;
  private String myLastSearchPattern = null;
  private AbstractAction myFindAction;
  private AbstractAction myFindNextAction;
  private int myFontSize = 12;

  public OutputView(MPSProject project) {
    myProject = project;

    myTextArea.setEditable(false);

    myFindAction = new AbstractActionWithEmptyIcon("Find") {
      {
        putValue(Action.ACCELERATOR_KEY, KeyStroke.getKeyStroke("control F"));
      }

      public void actionPerformed(ActionEvent e) {
        String pattern = JOptionPane.showInputDialog(myProject.getComponent(Frame.class), "Enter pattern to find", myLastSearchPattern);
        if (pattern == null) return;
        find(pattern);
      }
    };
    myFindNextAction = new AbstractActionWithEmptyIcon("Find Next") {
      {
        putValue(Action.ACCELERATOR_KEY, KeyStroke.getKeyStroke("F3"));
      }

      public void actionPerformed(ActionEvent e) {
        if (myLastSearchPattern != null) {
          find(myLastSearchPattern);
        }
      }
    };

    myComponent.registerKeyboardAction(myFindAction, KeyStroke.getKeyStroke("control F"), JComponent.WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);
    myComponent.registerKeyboardAction(myFindNextAction, KeyStroke.getKeyStroke("F3"), JComponent.WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);


    updateComponent();

    myTextArea.addMouseListener(new MouseAdapter() {
      public void mouseReleased(MouseEvent e) {
        processMouseEvent(e);
      }

      public void mousePressed(MouseEvent e) {
        processMouseEvent(e);
      }

      private void processMouseEvent(MouseEvent e) {
        if (e.isPopupTrigger()) {
          JPopupMenu menu = new JPopupMenu();
          menu.add(new AbstractActionWithEmptyIcon("Clear") {
            public void actionPerformed(ActionEvent event) {
              clear();
            }
          });
          menu.addSeparator();
          menu.add(myFindAction);
          menu.add(myFindNextAction);

          menu.show(myTextArea, e.getX(), e.getY());
        }
      }
    });

    myComponent.setLayout(new BorderLayout());
    myComponent.add(new JScrollPane(myTextArea), BorderLayout.CENTER);

    if (getTopComponent() != null) {
      myComponent.add(getTopComponent(), BorderLayout.NORTH);      
    }
  }

  protected JComponent getTopComponent() {
    return null;
  }

  private void updateComponent() {
    myTextArea.setFont(new Font("Monospaced", 0, myFontSize));
    myTextArea.repaint();
  }

  private void find(String pattern) {
    int startIndex = 0;
    if (myTextArea.getSelectedText() != null && myTextArea.getSelectedText().length() > 0) {
      startIndex = myTextArea.getSelectionEnd();
    }
    int start = myTextArea.getText().indexOf(pattern, startIndex);
    myLastSearchPattern = pattern;
    if (start == -1) {
      myTextArea.setSelectionStart(0);
      myTextArea.setSelectionEnd(0);
      return;
    }
    myTextArea.setSelectionStart(start);
    myTextArea.setSelectionEnd(start + pattern.length());
  }

  public void append(String text) {
    myTextArea.append(text);
  }

  public void clear() {
    myTextArea.setText("");
  }

  public void activate() {
    myProject.getComponentSafe(ToolsPane.class).selectTool(this);
  }

  public JComponent getComponent() {
    return myComponent;
  }

  public String getName() {
    return "Output View";
  }

  public Icon getIcon() {
    return Icons.OUTPUT_VIEW_ICON;
  }

  public int getNumber() {
    return 4;
  }
}

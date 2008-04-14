package jetbrains.mps.ide;

import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.ide.preferences.IPreferencesPage;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.nodeEditor.UIEditorComponent;
import jetbrains.mps.nodeEditor.inspector.InspectorEditorComponentFactory;
import jetbrains.mps.nodeEditor.inspector.InspectorEditorComponent;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.util.JSplitPaneWithoutBorders;
import jetbrains.mps.util.Calculable;
import jetbrains.mps.logging.Logger;

import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.JOptionPane;
import javax.swing.JSplitPane;
import java.awt.HeadlessException;

/**
 * @author Kostik
 */
public abstract class BaseNodeDialog extends BaseDialog {
  private static Logger LOG = Logger.getLogger(BaseNodeDialog.class);

  private IOperationContext myOperationContext;
  private UIEditorComponent myEditorComponent;
  private JSplitPane mySplitter;

  protected BaseNodeDialog(AbstractProjectFrame ide, String text, IOperationContext operationContext) throws HeadlessException {
    super(ide.getMainFrame(), text);
    myOperationContext = operationContext;
    InspectorEditorComponent inspector = new InspectorEditorComponent();
    myEditorComponent = new UIEditorComponent(getOperationContext(), inspector);

    mySplitter = new JSplitPaneWithoutBorders(JSplitPane.VERTICAL_SPLIT, myEditorComponent.getExternalComponent(), inspector.getExternalComponent());
    mySplitter.setDividerSize(6);
    mySplitter.setResizeWeight(0.8);
  }

  //todo temporary solution :-)
  public IPreferencesPage createPreferencesPage() {
    myEditorComponent.editNode(getNode());
    return new IPreferencesPage() {
      public String getName() {
        return getTitle();
      }

      public Icon getIcon() {
        return BaseNodeDialog.this.getIcon();
      }

      public JComponent getComponent() {
        return getMainComponent();
      }

      public boolean validate() {
        return validateNode();
      }

      public void commit() {
        buttonOK();
      }
    };
  }

  protected Icon getIcon() {
    return Icons.DEFAULT_ICON;
  }

  protected IOperationContext getOperationContext() {
    return myOperationContext;
  }

  protected IScope getScope() {
    return myOperationContext.getScope();
  }

  protected abstract void saveChanges();

  protected abstract SNode getNode();

  public void showDialog() {
    myEditorComponent.editNode(getNode());
    super.showDialog();
  }

  protected JComponent getMainComponent() {
    return mySplitter;
  }

  protected String getErrorString() {
    return null;
  }

  private boolean validateNode() {
    return CommandProcessor.instance().executeLightweightCommand(new Calculable<Boolean>() {
      public Boolean calculate() {
        String errorString = getErrorString();
        if (errorString != null) {
          setErrorText(errorString);
          String optionsText = errorString + "\n\n" +
            "Apply changes anyway?";
          int option = JOptionPane.showConfirmDialog(
            BaseNodeDialog.this,
            optionsText,
            "Errors in " + BaseNodeDialog.this.getTitle(),
            JOptionPane.OK_CANCEL_OPTION, JOptionPane.WARNING_MESSAGE);
          if (option != JOptionPane.OK_OPTION) {
            return false;
          }
        }
        return true;
      }
    });
  }

  @BaseDialog.Button(position = 0, name = "OK", defaultButton = true)
  public void buttonOK() {
    if (saveChanges_internal()) return;
    BaseNodeDialog.this.dispose();
  }

  private boolean saveChanges_internal() {
    if (!validateNode()) return true;
    CommandProcessor.instance().executeCommand(new Runnable() {
      public void run() {
        myEditorComponent.dispose();
        try {
          saveChanges();
        } catch (Throwable t) {
          JOptionPane.showInputDialog(BaseNodeDialog.this, "Exception during save");
          LOG.error(t);
        }
      }
    });
    return false;
  }

  @BaseDialog.Button(position = 1, name = "Cancel")
  public void buttonCancel() {
    BaseNodeDialog.this.dispose();
  }

  @BaseDialog.Button(position = 2, name = "Apply")
  public void buttonApply() {
    saveChanges_internal();
  }
}

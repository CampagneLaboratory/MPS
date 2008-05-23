package jetbrains.mps.ide;

import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.ide.progress.IAdaptiveProgressMonitor;
import jetbrains.mps.ide.progress.TaskProgressSettings;
import jetbrains.mps.ide.progress.AdaptiveProgressMonitorFactory;
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

import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.Task.Modal;
import com.intellij.openapi.project.Project;
import org.jetbrains.annotations.NotNull;

public abstract class BaseNodeDialog extends BaseDialog {
  private static Logger LOG = Logger.getLogger(BaseNodeDialog.class);

  private IOperationContext myOperationContext;
  private UIEditorComponent myEditorComponent;
  private JSplitPane mySplitter;

  protected BaseNodeDialog(String text, IOperationContext operationContext) throws HeadlessException {
    super(operationContext.getMainFrame(), text);
    myOperationContext = operationContext;
    InspectorEditorComponent inspector = new InspectorEditorComponent();
    myEditorComponent = new UIEditorComponent(getOperationContext(), inspector);

    mySplitter = new JSplitPaneWithoutBorders(JSplitPane.VERTICAL_SPLIT, myEditorComponent.getExternalComponent(), inspector.getExternalComponent());
    mySplitter.setDividerSize(6);
    mySplitter.setResizeWeight(0.8);
  }

  public MyPreferencesPage createPreferencesPage() {
    myEditorComponent.editNode(getNode());
    return new MyPreferencesPage();
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
    ProgressManager.getInstance().run(new Modal(getOperationContext().getComponent(Project.class), "Applying changes", false) {
      public void run(@NotNull ProgressIndicator indicator) {
        indicator.setIndeterminate(true);
        try {
          CommandProcessor.instance().executeCommand(new Runnable() {
            public void run() {
              saveChanges();
            }
          });
        } catch (Throwable t) {
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

  public class MyPreferencesPage {
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
  }
}

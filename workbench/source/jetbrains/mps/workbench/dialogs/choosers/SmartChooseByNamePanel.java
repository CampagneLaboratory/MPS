package jetbrains.mps.workbench.dialogs.choosers;

import com.intellij.ide.DataManager;
import com.intellij.ide.util.gotoByName.ChooseByNameBase;
import com.intellij.ide.util.gotoByName.ChooseByNameModel;
import com.intellij.ide.util.gotoByName.ChooseByNamePopupComponent.Callback;
import com.intellij.openapi.application.ModalityState;
import jetbrains.mps.workbench.MPSDataKeys;
import jetbrains.mps.workbench.choose.base.FakePsiContext;

import javax.swing.JComponent;
import javax.swing.JPanel;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;

public class SmartChooseByNamePanel extends ChooseByNameBase {
  private JPanel myPanel;
  private boolean myCheckboxVisible = false;

  public SmartChooseByNamePanel(ChooseByNameModel model,boolean checkboxVisible) {
    super(MPSDataKeys.PROJECT.getData(DataManager.getInstance().getDataContext()), model, "", new FakePsiContext());
    myCheckboxVisible = checkboxVisible;
  }

  protected int getVisibleItemsCount() {
    return 500;
  }

  protected void initUI(Callback callback, ModalityState modalityState, boolean allowMultipleSelection) {
    super.initUI(callback, modalityState, allowMultipleSelection);

    myTextFieldPanel.setBorder(null);

    myPanel = new JPanel(new GridBagLayout());

    myPanel.add(myTextFieldPanel, new GridBagConstraints(0, 0, 1, 1, 1, 0, GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(0, 0, 0, 0), 0, 0));
    myPanel.add(myListScrollPane, new GridBagConstraints(0, 1, 1, 1, 1, 1, GridBagConstraints.WEST, GridBagConstraints.BOTH, new Insets(0, 0, 0, 0), 0, 0));
    myPanel.add(new JPanel(), new GridBagConstraints(0, 2, 1, 1, 1, 0.001, GridBagConstraints.WEST, GridBagConstraints.BOTH, new Insets(0, 0, 0, 0), 0, 0));

    myTextFieldPanel.setOpaque(false);
  }

  public JComponent getPreferredFocusedComponent() {
    return myTextField;
  }

  protected void showList() {
  }

  protected void hideList() {
  }

  protected void close(boolean isOk) {
    for (Object element : getChosenElements()) {
      myActionListener.elementChosen(element);
    }
  }

  protected boolean isShowListForEmptyPattern() {
    return true;
  }

  protected boolean isCloseByFocusLost() {
    return false;
  }

  protected boolean isCheckboxVisible() {
    return myCheckboxVisible;
  }

  protected void showTextFieldPanel() {
    return;
  }

  public JPanel getPanel() {
    return myPanel;
  }
}

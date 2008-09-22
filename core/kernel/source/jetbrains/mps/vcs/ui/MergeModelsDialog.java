package jetbrains.mps.vcs.ui;

import jetbrains.mps.ide.dialogs.BaseDialog;
import jetbrains.mps.ide.dialogs.DialogDimensionsSettings;
import jetbrains.mps.smodel.SModel;

import javax.swing.JComponent;
import java.awt.Frame;
import java.awt.HeadlessException;

public class MergeModelsDialog extends BaseDialog {
  private MergeView myMergeView;
  private boolean myCanceled;


  public MergeModelsDialog(Frame mainFrame, SModel base, SModel mineModel, SModel repoModel) throws HeadlessException {
    super(mainFrame, "Merge Model Changes : " + base.getSModelReference());
    myMergeView = new MergeView(base, mineModel, repoModel);
  }


  public DialogDimensionsSettings.DialogDimensions getDefaultDimensionSettings() {
    return new DialogDimensionsSettings.DialogDimensions(10, 10, 1000, 900);
  }

  protected JComponent getMainComponent() {
    return myMergeView;
  }

  @BaseDialog.Button(position = 0, name = "OK", defaultButton = true)
  public void ok() {
    dispose();
  }

  @BaseDialog.Button(position = 1, name = "Cancel")
  public void cancel() {
    dispose();
    myCanceled = true;
  }

  public SModel getResultModel() {
    if (myCanceled) {
      return null;
    }
    return myMergeView.getResultModel();
  }
}

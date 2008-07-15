package jetbrains.mps.refactoring;

import jetbrains.mps.ide.action.ActionContext;
import jetbrains.mps.ide.findusages.findalgorithm.finders.specific.ConstantFinder;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.ide.findusages.view.FindUtils;
import jetbrains.mps.ide.findusages.view.UsagesView;
import jetbrains.mps.ide.findusages.view.UsagesView.ButtonConfiguration;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.ViewOptions;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.ModelAccess;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 08.06.2008
 * Time: 17:34:19
 * To change this template use File | Settings | File Templates.
 */
public class RefactoringViewItem {
  private RefactoringViewAction myRefactoringViewAction;
  private ActionContext myActionContext;
  private SearchResults mySearchResults;
  private UsagesView myUsagesView;
  private JPanel myPanel;
  private JPanel myButtonsPanel;
  private JButton myDoRefactorButton;
  private JButton myCancelButton;
  private NewRefactoringView myNewRefactoringView;

  public RefactoringViewItem(@NotNull ActionContext actionContext,
                             @NotNull RefactoringViewAction refactoringViewAction,
                             SearchResults searchResults,
                             NewRefactoringView refactoringView) {
    myNewRefactoringView = refactoringView;
    myRefactoringViewAction = refactoringViewAction;
    mySearchResults = searchResults;
    if (mySearchResults == null) {
      throw new IllegalArgumentException("search result is null");
    }
    myActionContext = actionContext;
    myPanel = new JPanel(new BorderLayout());
    myUsagesView = new UsagesView(actionContext.getMPSProject(), new ViewOptions()) {
      public void close() {
        cancel();
      }

      public String getCaption() {
        return "";
      }

      public Icon getIcon() {
        return null;
      }

      public void read(Element element, MPSProject project) {
      }

      public void write(Element element, MPSProject project) {
      }
    };
    myButtonsPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
    myDoRefactorButton = new JButton(new AbstractAction("Do Refactor") {
      public void actionPerformed(ActionEvent e) {
        doRefactor();
      }
    });
    myCancelButton = new JButton(new AbstractAction("Cancel") {
      public void actionPerformed(ActionEvent e) {
        cancel();
      }
    });
    myButtonsPanel.add(myDoRefactorButton);
    myButtonsPanel.add(myCancelButton);

    myPanel.add(myUsagesView.getComponent(), BorderLayout.CENTER);
    myPanel.add(myButtonsPanel, BorderLayout.SOUTH);
  }

  public JComponent getComponent() {
    return myPanel;
  }

  /*package*/ void initUsagesView() {
    Thread thread = new Thread() {
      public void run() {
        ModelAccess.instance().runReadAction(new Runnable() {
          public void run() {
            myUsagesView.setRunOptions(FindUtils.makeProvider(new ConstantFinder(mySearchResults.getSearchResults())),
              null,
              new ButtonConfiguration(false, false, true),
              mySearchResults);
          }
        });
      }
    };
    thread.start();
  }

  private void cancel() {
    myNewRefactoringView.closeRefactoringView();
  }

  private void doRefactor() {
    myRefactoringViewAction.performAction(myActionContext, myNewRefactoringView);
  }

}

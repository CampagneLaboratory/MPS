package jetbrains.mps.library;

import jetbrains.mps.ide.preferences.IPreferencesPage;
import jetbrains.mps.ide.ui.filechoosers.treefilechooser.TreeFileChooser;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.util.ToStringComparator;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.reloading.ClassLoaderManager;

import javax.swing.*;
import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.intellij.openapi.progress.EmptyProgressIndicator;

public class LibraryManagerPreferences {
  private LibraryManager myManager;
  private JPanel myMainPanel = new JPanel(new BorderLayout());
  private DefaultListModel myListModel = new DefaultListModel();
  private JList myLibrariesList = new JList(myListModel);

  private boolean myChanged;

  public LibraryManagerPreferences(LibraryManager manager) {
    myManager = manager;

    myMainPanel.add(new JScrollPane(myLibrariesList), BorderLayout.CENTER);

    myLibrariesList.setCellRenderer(new DefaultListCellRenderer() {
      public Component getListCellRendererComponent(JList list, Object value, int index, boolean isSelected, boolean cellHasFocus) {
        super.getListCellRendererComponent(list, value, index, isSelected, cellHasFocus);
        Library library = (Library) value;
        setText("<html><b>" + library.getName() + "</b> (" + library.getPath() + ")");
        return this;
      }
    });

    JPanel buttonsPanel = new JPanel(new BorderLayout());
    JPanel innerButtonsPanel = new JPanel(new GridLayout(1, 0));

    buttonsPanel.add(new JPanel(), BorderLayout.CENTER);
    buttonsPanel.add(innerButtonsPanel, BorderLayout.WEST);

    innerButtonsPanel.add(new JButton(new AbstractAction("Add") {
      public void actionPerformed(ActionEvent e) {
        add();
      }
    }));
    innerButtonsPanel.add(new JButton(new AbstractAction("Remove") {
      public void actionPerformed(ActionEvent e) {
        remove();
      }
    }));
    innerButtonsPanel.add(new JButton(new AbstractAction("Edit") {
      public void actionPerformed(ActionEvent e) {
        edit();
      }
    }));
    myMainPanel.add(buttonsPanel, BorderLayout.SOUTH);

    updateModel();
  }


  private void updateModel() {
    Library oldSelection = (Library) myLibrariesList.getSelectedValue();
    List<Library> libraries = new ArrayList<Library>(myManager.getLibraries());
    Collections.sort(libraries, new ToStringComparator());
    myListModel.clear();
    for (Library l : libraries) {
      myListModel.addElement(l);
    }

    if (oldSelection != null) {
      myLibrariesList.setSelectedValue(oldSelection, true);
    }

    myManager.update();
  }

  private void remove() {
    int index = myLibrariesList.getSelectedIndex();
    if (index == -1) {
      return;
    }
    myManager.remove((Library) myListModel.get(index));
    updateModel();
    myChanged = true;
  }


  private void edit() {
    int index = myLibrariesList.getSelectedIndex();
    if (index == -1) {
      return;
    }

    Library l = (Library) myListModel.get(index);

    if (!l.canSetPath()) {
      JOptionPane.showMessageDialog(myMainPanel, "You can't edit a predefined library", "Error", JOptionPane.ERROR_MESSAGE);
      return;
    }

    String path;
    TreeFileChooser chooser = new TreeFileChooser();
    chooser.setMode(TreeFileChooser.MODE_DIRECTORIES);
    IFile result = chooser.showDialog(myMainPanel);

    if (result == null) return;
    path = result.getAbsolutePath();

    l.setPath(path);

    updateModel();
    myChanged = true;
  }

  private void add() {
    String name = JOptionPane.showInputDialog(myMainPanel, "Enter a Library name", "New Library", JOptionPane.PLAIN_MESSAGE);

    if (name == null) {
      return;
    }

    String path;
    TreeFileChooser chooser = new TreeFileChooser();
    chooser.setMode(TreeFileChooser.MODE_DIRECTORIES);

    IFile result = chooser.showDialog(myMainPanel);

    if (result == null) return;
    path = result.getAbsolutePath();

    myManager.newLibrary(name).setPath(path);
    updateModel();

    myChanged = true;
  }

  public String getName() {
    return "Libraries";
  }

  public Icon getIcon() {
    return null;
  }

  public JComponent getComponent() {
    return myMainPanel;
  }

  public boolean validate() {
    return true;
  }

  public void commit() {
    CommandProcessor.instance().executeLightweightCommand(new Runnable() {
      public void run() {
        if (myChanged) {
          ClassLoaderManager.getInstance().reloadAll(new EmptyProgressIndicator());
        }
      }
    });
  }
}

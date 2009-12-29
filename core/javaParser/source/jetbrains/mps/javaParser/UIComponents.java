package jetbrains.mps.javaParser;

import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.workbench.dialogs.project.IBindedDialog;
import jetbrains.mps.workbench.dialogs.project.BaseBindedDialog;
import jetbrains.mps.workbench.dialogs.project.components.parts.UiListsFactory;
import jetbrains.mps.workbench.MPSDataKeys;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.reloading.FileClassPathItem;
import jetbrains.mps.reloading.JarFileClassPathItem;
import jetbrains.mps.ide.dialogs.DialogDimensionsSettings.DialogDimensions;
import jetbrains.mps.ide.ui.filechoosers.treefilechooser.TreeFileChooser;
import jetbrains.mps.vfs.FileSystemFile;
import jetbrains.mps.vfs.IFile;

import javax.swing.*;
import java.util.*;
import java.util.List;
import java.io.File;
import java.io.IOException;
import java.awt.*;
import java.awt.event.ActionEvent;

import com.intellij.openapi.util.Computable;
import com.intellij.ide.DataManager;
import com.intellij.util.containers.HashMap;
import org.jdesktop.observablecollections.ObservableCollections;
import org.jdesktop.observablecollections.ObservableList;
import org.jdesktop.observablecollections.ObservableListListener;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 18.11.2009
 * Time: 18:03:58
 * To change this template use File | Settings | File Templates.
 */
public class UIComponents {
  private static final Logger LOG = Logger.getLogger(UIComponents.class);

  public static MyDialog createClasspathsDialog(final File sourceDir, List<String> classFqNames) {
    IOperationContext data = MPSDataKeys.OPERATION_CONTEXT.getData(DataManager.getInstance().getDataContext());
    MyDialog dialog = new MyDialog(data, sourceDir, classFqNames);
    return dialog;
  }

  public static class MyDialog extends BaseBindedDialog {
    private File mySourceDir;
    private List<IClassPathItem> myAdditionalClasspaths = new ArrayList<IClassPathItem>();
    private ObservableList<String> myUnresolvedFQNames;

    private Map<IClassPathItem, Set<String>> myClasspathsToClasses = new HashMap<IClassPathItem, Set<String>>();
    private ObservableListListener myListListener = new MyObservableListListener();

    protected MyDialog(IOperationContext operationContext, final File sourceDir, List<String> classFqNames) throws HeadlessException {
      super("Classpaths", operationContext);
      mySourceDir = sourceDir;
      myUnresolvedFQNames = ObservableCollections.observableList(new ArrayList<String>(classFqNames));

      Computable<IClassPathItem> chooser = new Computable<IClassPathItem>() {
        public IClassPathItem compute() {
          return chooseClasspath(mySourceDir);
        }
      };
      ClassPathListCellRenderer classPathListCellRenderer = new ClassPathListCellRenderer();
      ObservableList<IClassPathItem> observable = ObservableCollections.observableList(myAdditionalClasspaths);
      observable.addObservableListListener(myListListener);
      JPanel panel = UiListsFactory.createBoundListPanel(this, "Classpaths", observable, classPathListCellRenderer, null, chooser);

      DefaultListCellRenderer renderer = new DefaultListCellRenderer();
      JPanel classesList = UiListsFactory.createBoundListPanel(this, "Unresolved Names",
        myUnresolvedFQNames, renderer, null, null);
      JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, panel, classesList);
      splitPane.setResizeWeight(0.5);

      this.setLayout(new BorderLayout());
      this.add(splitPane, BorderLayout.CENTER);
      JPanel buttonsPanel = new JPanel();
      buttonsPanel.setLayout(new FlowLayout());
      buttonsPanel.add(new JButton(new AbstractAction("OK") {
        public void actionPerformed(ActionEvent e) {
          MyDialog.this.dispose();
        }
      }), FlowLayout.LEFT);
      buttonsPanel.add(new JButton(new AbstractAction("Cancel") {
        public void actionPerformed(ActionEvent e) {
          MyDialog.this.dispose();
          myAdditionalClasspaths.clear();
        }
      }), FlowLayout.LEFT);
      this.add(buttonsPanel, BorderLayout.SOUTH);
      this.setModal(true);
    }

    @Override
    public DialogDimensions getDefaultDimensionSettings() {
      Frame mainFrame = getOperationContext().getMainFrame();
      return new DialogDimensions(mainFrame.getX() + mainFrame.getWidth()/2, mainFrame.getY() + mainFrame.getHeight()/2, 600, 300);
    }

    private IClassPathItem chooseClasspath(File sourceDir) {
      TreeFileChooser treeFileChooser = new TreeFileChooser();
      treeFileChooser.setExtensionFileFilter(".jar");
      treeFileChooser.setMode(TreeFileChooser.MODE_FILES_AND_DIRECTORIES);
      treeFileChooser.setInitialFile(new FileSystemFile(sourceDir));
      treeFileChooser.setTitle("Select Classpath");
      IFile iFile = treeFileChooser.showDialog(this.getMainComponent());

      if (iFile == null) {
        return null;
      }
      if (iFile.isDirectory()) {
        return new FileClassPathItem(iFile.getAbsolutePath());
      } else if (iFile.getName().endsWith(".jar")) {
        try {
          return new JarFileClassPathItem(iFile);
        } catch (IOException ex) {
          LOG.error(ex);
          return null;
        }
      }
      return null;
    }

    public JComponent getMainComponent() {
      return this.getRootPane();
    }

    private void classPathAdded(IClassPathItem classPath) {
      for (String unresolvedFQName : new ArrayList<String>(myUnresolvedFQNames)) {
        if (classPath.getClass(unresolvedFQName) != null ||
          !classPath.getAvailableClasses(unresolvedFQName).isEmpty() ||
          !classPath.getSubpackages(unresolvedFQName).isEmpty()) {
          addClassInClassPath(classPath, unresolvedFQName);
        }
      }
      //list should be repainted automatically
    }

    private void addClassInClassPath(IClassPathItem classPath, String fqName) {
      Set<String> fqNames = myClasspathsToClasses.get(classPath);
      if (fqNames == null) {
        fqNames = new LinkedHashSet<String>();
        myClasspathsToClasses.put(classPath, fqNames);
      }
      fqNames.add(fqName);
      myUnresolvedFQNames.remove(fqName);
    }

    private void classPathRemoved(IClassPathItem classPath) {
      Set<String> unresolvedNames = myClasspathsToClasses.remove(classPath);
      if (unresolvedNames != null) {
        myUnresolvedFQNames.addAll(unresolvedNames);
      }
      //list will be repainted automatically
    }

    public List<IClassPathItem> getChosenClassPaths() {
      return new ArrayList<IClassPathItem>(myAdditionalClasspaths);
    }

    private class MyObservableListListener implements ObservableListListener {
      public void listElementsAdded(ObservableList list, int index, int length) {
        for (int i = 0; i < length; i++) {
          IClassPathItem addedClasspath = (IClassPathItem) list.get(index + i);
          classPathAdded(addedClasspath);
        }
      }

      public void listElementsRemoved(ObservableList list, int index, List oldElements) {
        for (Object oldElement : oldElements) {
          classPathRemoved((IClassPathItem) oldElement);
        }
      }

      public void listElementReplaced(ObservableList list, int index, Object oldElement) {
      }

      public void listElementPropertyChanged(ObservableList list, int index) {
      }
    }
  }

  public static class ClassPathListCellRenderer extends DefaultListCellRenderer {
    public Component getListCellRendererComponent(JList list, Object value, int index, boolean isSelected, boolean cellHasFocus) {
      String stringValue;
      boolean jar = false;
      if (value instanceof FileClassPathItem) {
        stringValue = ((FileClassPathItem) value).getClassPath();
      } else if (value instanceof JarFileClassPathItem) {
        jar = true;
        stringValue = ((JarFileClassPathItem) value).getFile().getAbsolutePath();
      } else {
        stringValue = "";
      }
      Component listCellRendererComponent = super.getListCellRendererComponent(list, stringValue, index, isSelected, cellHasFocus);
      if (jar) {
        setForeground(MPSColors.DARK_GRAY);
      }
      return listCellRendererComponent;
    }
  }
}

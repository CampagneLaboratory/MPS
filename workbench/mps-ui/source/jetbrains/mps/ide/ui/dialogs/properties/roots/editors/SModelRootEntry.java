/*
 * Copyright 2003-2012 JetBrains s.r.o.
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
package jetbrains.mps.ide.ui.dialogs.properties.roots.editors;

import com.intellij.ide.util.treeView.AbstractTreeUi;
import com.intellij.openapi.fileChooser.FileChooserDescriptor;
import com.intellij.openapi.fileChooser.FileSystemTree.Listener;
import com.intellij.openapi.fileChooser.ex.FileSystemTreeImpl;
import com.intellij.openapi.ui.ComboBox;
import com.intellij.openapi.util.Disposer;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.VirtualFileManager;
import com.intellij.ui.ScrollPaneFactory;
import com.intellij.uiDesigner.core.GridConstraints;
import com.intellij.uiDesigner.core.GridLayoutManager;
import com.intellij.util.EventDispatcher;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.SModelRoot;
import jetbrains.mps.project.structure.model.ModelRootManager;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.ide.ui.dialogs.properties.editors.ManagerTableCellEditor;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.jetbrains.mps.openapi.ui.persistence.ModelRootEntry;
import org.jetbrains.mps.openapi.ui.persistence.ModelRootEntryEditor;

import javax.swing.DefaultListCellRenderer;
import javax.swing.JComponent;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.util.List;

public class SModelRootEntry implements ModelRootEntry {

  private SModelRoot myModelRoot;
  private EventDispatcher<ModelRootEntryListener> myEventDispatcher = EventDispatcher.create(ModelRootEntryListener.class);

  public SModelRootEntry(ModelRoot modelRoot) {
    if (!(modelRoot instanceof SModelRoot))
      throw new ClassCastException("Can't convert " + modelRoot.getClass().getCanonicalName() + " to " + SModelRoot.class.getCanonicalName());
    myModelRoot = (SModelRoot) modelRoot;
  }

  @Override
  public ModelRoot getModelRoot() {
    return myModelRoot;
  }

  @Override
  public String getDetailsText() {
    final StringBuilder messageText = new StringBuilder();
    messageText.append("<html>");
    messageText.append("Type : ").append(myModelRoot.getType()).append("<br>");
    messageText.append("Manager : ").append(
        myModelRoot.getModelRoot().getManager() != null ? myModelRoot.getModelRoot().getManager().getClassName() : "Default").append("<br>");
    messageText.append("Path : ").append(myModelRoot.getPath()).append("<br>");
    return messageText.toString();
  }

  @Override
  public boolean isValid() {
    String path = myModelRoot.getPath();
    return (new java.io.File(path != null ? path : "")).exists();
  }

  @Override
  public ModelRootEntryEditor getEditor() {
    return new SModelRootEntryEditor(myModelRoot);
  }

  @Override
  public void addModelRootEntryListener(ModelRootEntryListener listener) {
    myEventDispatcher.addListener(listener);
  }

  @Override
  public void dispose() {
    //To change body of implemented methods use File | Settings | File Templates.
  }

  private class SModelRootEntryEditor implements ModelRootEntryEditor {
    private JPanel myTreePanel;
    private ComboBox myComboBox;
    private SModelRoot myModelRoot;
    private FileSystemTreeImpl myFileSystemTree;

    public SModelRootEntryEditor(SModelRoot modelRoot) {
      myModelRoot = modelRoot;
    }

    @Override
    public JComponent createComponent() {
      JPanel panel = new JPanel(new GridLayoutManager(2, 1));

      List<ModelRootManager> managers = ManagerTableCellEditor.getManagers();
      managers.remove(null);
      final ModelRootManager empty = new ModelRootManager("", "Default");
      managers.add(empty);
      myComboBox = new ComboBox(managers.toArray(), 10);
      myComboBox.setRenderer(new DefaultListCellRenderer() {
        @Override
        public Component getListCellRendererComponent(JList list, Object value, int index, boolean selected, boolean focus) {
          ModelRootManager manager = ((ModelRootManager) value);
          String managerName = NameUtil.shortNameFromLongName(manager.getClassName());
          return super.getListCellRendererComponent(list, managerName, index, selected, focus);
        }
      });
      panel.add(myComboBox,
          new GridConstraints(0, 0, 1, 1, GridConstraints.ANCHOR_NORTHWEST, GridConstraints.FILL_HORIZONTAL,
              GridConstraints.SIZEPOLICY_CAN_GROW | GridConstraints.SIZEPOLICY_CAN_SHRINK, GridConstraints.SIZEPOLICY_FIXED, null, null, null));
      myComboBox.setSelectedItem(myModelRoot.getModelRoot().getManager() == null ? empty : myModelRoot.getModelRoot().getManager());
      myComboBox.addItemListener(new ItemListener() {
        @Override
        public void itemStateChanged(ItemEvent e) {
          if (e.getStateChange() == ItemEvent.SELECTED) {
            ModelRootManager manager = (ModelRootManager) e.getItem();
            myModelRoot.getModelRoot().setManager(
                manager.equals(empty) ? null : manager
            );
            myEventDispatcher.getMulticaster().fireDataChanged();
          }
        }
      });

      myTreePanel = new JPanel(new BorderLayout());
      updateTree();
      final JScrollPane scrollPane = ScrollPaneFactory.createScrollPane(myTreePanel);
      panel.add(scrollPane,
          new GridConstraints(1, 0, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_BOTH,
              GridConstraints.SIZEPOLICY_CAN_GROW | GridConstraints.SIZEPOLICY_CAN_SHRINK,
              GridConstraints.SIZEPOLICY_CAN_GROW | GridConstraints.SIZEPOLICY_CAN_SHRINK, null, null, null));

      return panel;
    }

    private void updateTree() {
      if(myFileSystemTree != null) {
        Disposer.dispose(myFileSystemTree);
        myFileSystemTree = null;
      }

      myFileSystemTree = new FileSystemTreeImpl(null, new FileChooserDescriptor(true, true, true, true, true, false));
      AbstractTreeUi ui = myFileSystemTree.getTreeBuilder().getUi();

      String path = myModelRoot.getPath() == null ? "" : myModelRoot.getPath();
      VirtualFile virtualFile = VirtualFileManager.getInstance().findFileByUrl(
          VirtualFileManager.constructUrl("file", path)
      );
      if (myModelRoot.getModule() != null && (virtualFile == null || path.isEmpty())) {
        if (myModelRoot.getModule() instanceof AbstractModule) {
          virtualFile = VirtualFileManager.getInstance().findFileByUrl(
              VirtualFileManager.constructUrl(
                  "file",
                  ((AbstractModule) myModelRoot.getModule()).getModuleSourceDir().getPath()
              )
          );
        }
      }

      if (virtualFile != null)
        myFileSystemTree.select(virtualFile, null);

      myFileSystemTree.addListener(
          new Listener() {
            @Override
            public void selectionChanged(List<VirtualFile> selection) {
              if (selection.size() > 0) {
                myModelRoot.setPath(FileUtil.getCanonicalPath(selection.get(0).getPath()));
                myEventDispatcher.getMulticaster().fireDataChanged();
              }
            }
          }, SModelRootEntry.this
      );

      Disposer.register(SModelRootEntry.this, myFileSystemTree);

      myTreePanel.removeAll();
      myTreePanel.add(ui.getTree(), BorderLayout.CENTER);
      ui.scrollSelectionToVisible(null, true);
    }
  }
}

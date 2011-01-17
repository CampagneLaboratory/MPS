/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
package jetbrains.mps.ide.editorTabs.tabs;

import com.intellij.openapi.actionSystem.*;
import jetbrains.mps.ide.editorTabs.EditorTabDescriptor;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SNodePointer;

import javax.swing.JComponent;
import javax.swing.KeyStroke;
import java.awt.Component;
import java.util.List;

public class EditorTab {
  public static DataKey<Component> COMPONENT_KEY = DataKey.create("Component");

  private TabsComponent myTabComponent;
  private EditorTabDescriptor myDescriptor;
  private SNodePointer myBaseNode;

  public EditorTab(TabsComponent tabComponent, EditorTabDescriptor descriptor, SNodePointer baseNode) {
    myTabComponent = tabComponent;
    myDescriptor = descriptor;
    myBaseNode = baseNode;
  }

  public EditorTabDescriptor getDescriptor() {
    return myDescriptor;
  }

  public AnAction getAction(JComponent shortcutComponent) {
    AnAction action = new SelectTabAction();

    if (myDescriptor.getShortcutChar() != null) {
      KeyStroke keystroke = KeyStroke.getKeyStroke("alt shift " + myDescriptor.getShortcutChar());
      KeyboardShortcut shortcut = new KeyboardShortcut(keystroke, null);
      action.registerCustomShortcutSet(new CustomShortcutSet(shortcut), shortcutComponent);
    }

    return action;
  }

  private ActionGroup getGotoGroup() {
    List<SNode> nodes = myDescriptor.getNodes(myBaseNode.getNode());
    if (nodes.isEmpty()) return null;

    DefaultActionGroup result = new DefaultActionGroup();
    for (final SNode node : nodes) {
      result.add(new NavigateNodeAction(node));
    }
    return result;
  }

  private class NavigateNodeAction extends AnAction {
    private final SNode myNode;

    public NavigateNodeAction(SNode node) {
      super(node.getName() != null ? node.getName() : "<no name>", "", IconManager.getIconFor(node));
      myNode = node;
    }

    public void actionPerformed(AnActionEvent e) {
      ModelAccess.instance().runReadAction(new Runnable() {
        public void run() {
          myTabComponent.onNodeChange(myNode);
        }
      });
    }
  }

  private class SelectTabAction extends AnAction {
    public SelectTabAction() {
      super(myDescriptor.getTitle());
    }

    public boolean displayTextInToolbar() {
      return true;
    }

    public void actionPerformed(final AnActionEvent e) {
      ModelAccess.instance().runReadAction(new Runnable() {
        public void run() {
          List<SNode> nodes = myDescriptor.getNodes(myBaseNode.getNode());
          if (nodes.size() == 1) {
            myTabComponent.onNodeChange(nodes.get(0));
            return;
          }

          Component component = e.getInputEvent() == null ? null : e.getInputEvent().getComponent();
          if (component == null) {
            component = COMPONENT_KEY.getData(e.getDataContext());
          }

          ActionGroup group = getGotoGroup();
          assert group != null : "no nodes to go, but tab is visible";
          ActionPopupMenu popup = ActionManager.getInstance().createActionPopupMenu(ActionPlaces.UNKNOWN, group);
          popup.getComponent().show(component, 0, 0);
        }
      });
    }
  }
}

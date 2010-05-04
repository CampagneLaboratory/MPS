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
package jetbrains.mps.ide.messages;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.project.Project;

import jetbrains.mps.ide.messages.navigation.*;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.IModule;
import jetbrains.mps.smodel.INodeAdapter;
import jetbrains.mps.smodel.SNode;

import java.util.HashMap;
import java.util.Map;

public class NavigationManager {
  private static final Logger LOG = Logger.getLogger(NavigationManager.class);

  public static NavigationManager getInstance() {
    return ApplicationManager.getApplication().getComponent(NavigationManager.class);
  }

  private Map<Class, INavigationHandler> myHandlers = new HashMap<Class, INavigationHandler>();

  public NavigationManager() {
    myHandlers.put(NodeWithContext.class, new NodeWithContextINavigationHandler());
    myHandlers.put(SNode.class, new SNodeINavigationHandler());
    myHandlers.put(IModule.class, new IModuleINavigationHandler());
    myHandlers.put(INodeAdapter.class, new INodeAdapterINavigationHandler());
    myHandlers.put(FileWithPosition.class, new FileWithPositionINavigationHandler());
  }

  public void navigateTo(Project project, Object o, boolean focus, boolean select) {
    Class cls = o.getClass();

    for (Class c : myHandlers.keySet()) {
      if (c.isInstance(o)) {
        myHandlers.get(c).navigate(project, o, focus, select);
        return;
      }
    }

    if (cls.getSuperclass() == null) {
      LOG.warning("Can't navigate to " + o + ". There is no navigation handler for it.");
      return;
    }
  }
}

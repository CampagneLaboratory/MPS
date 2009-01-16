/*
 * Copyright 2003-2008 JetBrains s.r.o.
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
package jetbrains.mps.plugin;

import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Computable;
import jetbrains.mps.MPSProjectHolder;
import jetbrains.mps.baseLanguage.findUsages.BaseMethodUsages_Finder;
import jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration;
import jetbrains.mps.baseLanguage.structure.Classifier;
import jetbrains.mps.ide.IdeMain;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.findusages.findalgorithm.finders.BaseFinder;
import jetbrains.mps.ide.findusages.findalgorithm.finders.specific.AspectMethodsFinder;
import jetbrains.mps.ide.findusages.model.SearchQuery;
import jetbrains.mps.ide.findusages.view.FindUtils;
import jetbrains.mps.ide.findusages.view.UsagesViewTool;
import jetbrains.mps.lang.structure.findUsages.NodeUsages_Finder;
import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.FrameUtil;
import jetbrains.mps.workbench.editors.MPSEditorOpener;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

import java.awt.Frame;
import java.rmi.NoSuchObjectException;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;
import java.util.ArrayList;
import java.util.List;

public class MPSProjectIDEHandler extends UnicastRemoteObject implements IMPSIDEHandler, ProjectComponent {
  private static final Logger LOG = Logger.getLogger(MPSProjectIDEHandler.class);

  private Project myProject;

  public MPSProjectIDEHandler(Project project) throws RemoteException {
    myProject = project;
  }

  private MPSProject getProject() {
    return myProject.getComponent(MPSProjectHolder.class).getMPSProject();
  }

  public void projectOpened() {
    if (IdeMain.isTestMode()) return;

    try {
      IProjectHandler handler = getProject().getProjectHandler();
      if (handler == null) {
        return;
      }
      handler.addIdeHandler(this);
    } catch (RemoteException e) {
      e.printStackTrace();
    }
  }

  public void projectClosed() {
    IProjectHandler handler = getProject().getProjectHandler();
    if (handler != null) {
      try {
        handler.removeIdeHandler(this);
      } catch (RemoteException e) {
        LOG.error(e);
      }
    }

    try {
      unexportObject(this, true);
    } catch (NoSuchObjectException e) {
      throw new RuntimeException(e);
    }
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return "MPS Project IDE Handler";
  }

  public void initComponent() {

  }

  public void disposeComponent() {

  }

  private Frame getMainFrame() {
    return getProject().getComponent(Frame.class);
  }

  public void showNode(final String namespace, final String id) throws RemoteException {
    ThreadUtils.runInUIThreadNoWait(new Runnable() {
      public void run() {
        ModelAccess.instance().runReadAction(new Runnable() {
          public void run() {
            for (SModelDescriptor descriptor : GlobalScope.getInstance().getModelDescriptors()) {
              if (!namespace.equals(descriptor.getSModelReference().getLongName())) continue;
              if (descriptor.getStereotype().equals(SModelStereotype.JAVA_STUB)) continue;

              SNode node = descriptor.getSModel().getNodeById(id);
              if (node != null) {
                myProject.getComponent(MPSEditorOpener.class).openNode(node);
              }
            }

            FrameUtil.activateFrame(getMainFrame());
          }
        });
      }
    });
  }

  public void showAspectMethodUsages(final String namespace, final String name) throws RemoteException {
    final List<SModel> applicableModelDescriptors = new ArrayList<SModel>();
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        for (final SModelDescriptor descriptor : GlobalScope.getInstance().getModelDescriptors()) {
          if (!namespace.equals(descriptor.getSModelReference().getLongName())) continue;
          if (!descriptor.getStereotype().equals(SModelStereotype.JAVA_STUB)) {
            applicableModelDescriptors.add(descriptor.getSModel());
          }
        }
      }
    });

    SearchQuery searchQuery = new SearchQuery(GlobalScope.getInstance());
    BaseFinder finder = new AspectMethodsFinder(applicableModelDescriptors, name);
    BaseFinder[] finders = new BaseFinder[]{finder};
    myProject.getComponent(UsagesViewTool.class).findUsages(FindUtils.makeProvider(finders), searchQuery, false, true, false, "No usages for that method");
  }

  public void showConceptNode(final String fqName) throws RemoteException {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        AbstractConceptDeclaration concept = SModelUtil_new.findConceptDeclaration(fqName, GlobalScope.getInstance());
        myProject.getComponent(MPSEditorOpener.class).openNode(concept.getNode());
        FrameUtil.activateFrame(getMainFrame());
      }
    });
  }

  public void showClassUsages(final String fqName) throws RemoteException {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        Classifier cls = SModelUtil_new.findNodeByFQName(fqName, Classifier.class, GlobalScope.getInstance());
        if (cls == null) {
          LOG.error("Can't find a class " + fqName);
          return;
        }
        FrameUtil.activateFrame(getMainFrame());

        findUsages(cls.getNode(), GlobalScope.getInstance(), new NodeUsages_Finder());
      }
    });
  }

  public void showMethodUsages(final String classFqName, final String methodName, final int parameterCount) throws RemoteException {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        Classifier cls = SModelUtil_new.findNodeByFQName(classFqName, Classifier.class, GlobalScope.getInstance());
        if (cls == null) {
          LOG.error("Can't find a class " + classFqName);
          return;
        }
        BaseMethodDeclaration m = null;
        for (BaseMethodDeclaration method : cls.getChildren(BaseMethodDeclaration.class)) {
          if (methodName.equals(method.getName()) && method.getParametersCount() == parameterCount) {
            m = method;
            break;
          }
        }

        if (m == null) {
          LOG.error("Can't find a method " + classFqName + "." + methodName);
          return;
        }
        FrameUtil.activateFrame(getMainFrame());

        findUsages(m.getNode(), GlobalScope.getInstance(), new BaseMethodUsages_Finder());
      }
    });
  }

  private void findUsages(final @NotNull SNode node, final IScope scope, final BaseFinder finder) {
    new Thread() {
      public void run() {
        SearchQuery query = ModelAccess.instance().runReadAction(new Computable<SearchQuery>() {
          public SearchQuery compute() {
            return new SearchQuery(node, scope);
          }
        });

        BaseFinder[] finders = new BaseFinder[]{finder};
        myProject.getComponent(UsagesViewTool.class).findUsages(FindUtils.makeProvider(finders), query, true, true, false, "No usages for that node");
      }
    }.start();
  }
}

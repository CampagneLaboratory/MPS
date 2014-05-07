/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.ide.findusages.view;

import com.intellij.icons.AllIcons;
import com.intellij.icons.AllIcons.Actions;
import com.intellij.icons.AllIcons.Toolwindows;
import com.intellij.ide.OccurenceNavigator;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.ActionPlaces;
import com.intellij.openapi.actionSystem.ActionToolbar;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.DataKey;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.progress.Task.Modal;
import com.intellij.openapi.project.Project;
import com.intellij.ui.content.tabs.PinToolwindowTabAction;
import jetbrains.mps.generator.GenerationFacade;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.actions.MPSActions;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.ide.findusages.CantLoadSomethingException;
import jetbrains.mps.ide.findusages.CantSaveSomethingException;
import jetbrains.mps.ide.findusages.IExternalizeable;
import jetbrains.mps.ide.findusages.model.IResultProvider;
import jetbrains.mps.ide.findusages.model.SearchQuery;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.ide.findusages.model.holders.IHolder;
import jetbrains.mps.ide.findusages.model.holders.VoidHolder;
import jetbrains.mps.ide.findusages.view.icons.IconManager;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.INodeRepresentator;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.UsagesTreeComponent;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.ViewOptions;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.make.IMakeService;
import jetbrains.mps.make.MakeSession;
import jetbrains.mps.progress.ProgressMonitorAdapter;
import jetbrains.mps.project.ProjectOperationContext;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.resources.ModelsToResources;
import jetbrains.mps.util.Computable;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.JPanel;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public abstract class UsagesView implements IExternalizeable {
  //read/write constants
  private static final String QUERY = "query";
  private static final String RESULT_PROVIDER = "result_provider";
  private static final String CLASS_NAME = "class_name";
  private static final String BUTTONS = "buttons";
  private static final String TREE_WRAPPER = "tree_wrapper";

  private Project myProject;

  //my components
  private JPanel myPanel;
  private UsagesTreeComponent myTreeComponent;

  //model components
  private IResultProvider myResultProvider;
  private SearchQuery mySearchQuery;
  private ButtonConfiguration myButtonConfiguration;

  // note: this field is not restored from XML
  private SearchResults myLastResults;

  //for assertions - check invariant - constructor -> read|setRunOpts
  private boolean myIsInitialized = false;
  private AtomicReference<MakeSession> myMakeSession = new AtomicReference<MakeSession>();
  private OccurenceNavigator myOccurenceNavigator;

  public UsagesView(Project project, ViewOptions defaultOptions) {
    myProject = project;

    myPanel = new RootPanel();
    myTreeComponent = new UsagesTreeComponent(defaultOptions) {
      @Override
      public Project getProject() {
        return myProject;
      }
    };
    myOccurenceNavigator = myTreeComponent.getOccurenceNavigator();

    JPanel treeWrapperPanel = new JPanel(new BorderLayout());
    JPanel treeToolbarPanel = new JPanel(new BorderLayout());
    treeToolbarPanel.add(myTreeComponent.getViewToolbar(), BorderLayout.NORTH);
    treeWrapperPanel.add(treeToolbarPanel, BorderLayout.WEST);
    treeWrapperPanel.add(myTreeComponent, BorderLayout.CENTER);
    myPanel.add(treeWrapperPanel, BorderLayout.CENTER);

    myPanel.setMinimumSize(new Dimension());
  }

  public void dispose() {
    myTreeComponent.dispose();
    myOccurenceNavigator = null;
  }

  //----RUN STUFF----

  public void setRunOptions(IResultProvider resultProvider, SearchQuery searchQuery, ButtonConfiguration buttonConfiguration) {
    assert ThreadUtils.isEventDispatchThread() : "must be called from EDT";
    assert !myIsInitialized;
    myIsInitialized = true;
    myResultProvider = resultProvider;
    mySearchQuery = searchQuery;
    myButtonConfiguration = buttonConfiguration;
    myPanel.add(new ActionsToolbar(buttonConfiguration), BorderLayout.WEST);
  }

  public void setRunOptions(IResultProvider resultProvider, SearchQuery searchQuery, ButtonConfiguration buttonConfiguration, SearchResults results) {
    setRunOptions(resultProvider, searchQuery, buttonConfiguration);
    setContents(results);
  }

  public void setContents(SearchResults results) {
    myTreeComponent.setContents(results);
  }

  public void setCustomNodeRepresentator(INodeRepresentator nodeRepresentator) {
    myTreeComponent.setCustomRepresentator(nodeRepresentator);
  }

  public void run(ProgressIndicator indicator) {
    assert myIsInitialized;
    myLastResults = FindUtils.getSearchResults(new ProgressMonitorAdapter(indicator), mySearchQuery, myResultProvider);
    myLastResults.removeDuplicates();
    setContents(myLastResults);
  }

  private void regenerate() {
    List<SModel> models = new ArrayList<SModel>();
    for (SModel modelDescriptor : myTreeComponent.getIncludedModels()) {
      if (!GenerationFacade.canGenerate(modelDescriptor)) continue;
      models.add(modelDescriptor);
    }

    ProjectOperationContext context = new ProjectOperationContext(ProjectHelper.toMPSProject(myProject));
    if (myMakeSession.compareAndSet(null, new MakeSession(context))) {
      try {
        if (IMakeService.INSTANCE.get().openNewSession(myMakeSession.get())) {
          IMakeService.INSTANCE.get().make(myMakeSession.get(), new ModelsToResources(context, models).resources(false));
        }
      } finally {
        myMakeSession.set(null);
      }
    }
//    GeneratorUIFacade.getInstance().generateModels(context, models, GeneratorUIFacade.getInstance().getDefaultGenerationHandler(), true, false);
  }

  //----COMPONENT STUFF----

  public JComponent getComponent() {
    return myPanel;
  }

  public String getCaption() {
    return mySearchQuery == null ? "Usages" : mySearchQuery.getCaption();
  }

  public Icon getIcon() {
    if (mySearchQuery == null || mySearchQuery.getObjectHolder() == null) return Toolwindows.ToolWindowFind;
    return IconManager.getIconForIHolder(mySearchQuery.getObjectHolder());
  }

  public abstract void close();

  //----RESULTS MANIPUALTION STUFF----

  public Set<SModel> getIncludedModels() {
    return myTreeComponent.getIncludedModels();
  }

  public Set<SModel> getAllModels() {
    return myTreeComponent.getAllModels();
  }

  public List<SNodeReference> getIncludedResultNodes() {
    return myTreeComponent.getIncludedResultNodes();
  }

  public List<SNodeReference> getAllResultNodes() {
    return myTreeComponent.getAllResultNodes();
  }

  public SearchResults getSearchResults() {
    return myLastResults;
  }

  public UsagesTreeComponent getTreeComponent() {
    return myTreeComponent;
  }

  //----SAVE/LOAD STUFF----

  @Override
  public void read(Element element, jetbrains.mps.project.Project project) throws CantLoadSomethingException {
    assert !myIsInitialized;
    myIsInitialized = true;

    Element optionsXML = element.getChild(BUTTONS);
    myButtonConfiguration = new ButtonConfiguration(optionsXML, project);
    myPanel.add(new ActionsToolbar(myButtonConfiguration), BorderLayout.WEST);

    Element resultProviderXML = element.getChild(RESULT_PROVIDER);
    String className = resultProviderXML.getAttributeValue(CLASS_NAME);
    try {
      myResultProvider = (IResultProvider) Class.forName(className).newInstance();
    } catch (Throwable t) {
      throw new CantLoadSomethingException("Can't instantiate result provider: " + className, t);
    }
    myResultProvider.read(resultProviderXML, project);

    Element queryXML = element.getChild(QUERY);
    mySearchQuery = new SearchQuery(queryXML, project);

    Element treeWrapperXML = element.getChild(TREE_WRAPPER);
    myTreeComponent.read(treeWrapperXML, project);
  }

  @Override
  public void write(Element element, jetbrains.mps.project.Project project) throws CantSaveSomethingException {
    Element optionsXML = new Element(BUTTONS);
    myButtonConfiguration.write(optionsXML, project);
    element.addContent(optionsXML);

    //todo replace this with show-only tabs
    if (myResultProvider == null) throw new CantSaveSomethingException();
    Element resultProviderXML = new Element(RESULT_PROVIDER);
    resultProviderXML.setAttribute(CLASS_NAME, myResultProvider.getClass().getName());
    myResultProvider.write(resultProviderXML, project);
    element.addContent(resultProviderXML);

    if (mySearchQuery == null) throw new CantSaveSomethingException();
    Element queryXML = new Element(QUERY);
    mySearchQuery.write(queryXML, project);
    element.addContent(queryXML);

    Element treeWrapperXML = new Element(TREE_WRAPPER);
    myTreeComponent.write(treeWrapperXML, project);
    element.addContent(treeWrapperXML);
  }

  public static class ButtonConfiguration implements IExternalizeable {
    private static final String SETTINGS = "settings";
    private static final String RERUN = "rerun";
    private static final String CLOSE = "close";
    private static final String PIN = "pin";
    private static final String REGENERATE = "rebuild";

    private boolean myShowSettingsButton;
    private boolean myShowRerunButton;
    private boolean myShowCloseButton;
    private boolean myShowPinButton;
    private boolean myShowRegenerateButton;

    public ButtonConfiguration(boolean showRerun, boolean showRegenerate, boolean showClose) {
      myShowRerunButton = showRerun;
      myShowRegenerateButton = showRegenerate;
      myShowCloseButton = showClose;
      myShowPinButton = true;
      myShowSettingsButton = false;
    }

    public ButtonConfiguration(boolean showRerun) {
      myShowRerunButton = showRerun;
      myShowRegenerateButton = true;
      myShowCloseButton = true;
      myShowPinButton = true;
    }

    public ButtonConfiguration(Element optionsXML, jetbrains.mps.project.Project project) {
      read(optionsXML, project);
    }

    public ButtonConfiguration showSettingsButton(boolean flag) {
      myShowSettingsButton = flag;
      return this;
    }

    public boolean isShowSettingsButton() {
      return myShowSettingsButton;
    }

    public ButtonConfiguration showRerunButton(boolean flag) {
      myShowRerunButton = flag;
      return this;
    }

    public boolean isShowRerunButton() {
      return myShowRerunButton;
    }

    public ButtonConfiguration showCloseButton(boolean flag) {
      myShowCloseButton = flag;
      return this;
    }

    public boolean isShowCloseButton() {
      return myShowCloseButton;
    }

    public ButtonConfiguration showPinButton(boolean flag) {
      myShowPinButton = flag;
      return this;
    }

    public boolean isShowPinButton() {
      return myShowPinButton;
    }

    public ButtonConfiguration showRegenerateButton(boolean flag) {
      myShowRegenerateButton = flag;
      return this;
    }

    public boolean isShowRegenerateButton() {
      return myShowRegenerateButton;
    }

    @Override
    public void read(Element element, jetbrains.mps.project.Project project) {
      myShowRerunButton = Boolean.parseBoolean(element.getAttributeValue(RERUN));
      myShowRegenerateButton = Boolean.parseBoolean(element.getAttributeValue(REGENERATE));
      myShowCloseButton = Boolean.parseBoolean(element.getAttributeValue(CLOSE));
    }

    @Override
    public void write(Element element, jetbrains.mps.project.Project project) {
      element.setAttribute(RERUN, Boolean.toString(myShowRerunButton));
      element.setAttribute(REGENERATE, Boolean.toString(myShowRegenerateButton));
      element.setAttribute(CLOSE, Boolean.toString(myShowCloseButton));
    }
  }

  private class RootPanel extends JPanel implements OccurenceNavigator {
    public RootPanel() {
      super(new BorderLayout());
    }

    @Override
    public boolean hasNextOccurence() {
      return myOccurenceNavigator != null && myOccurenceNavigator.hasNextOccurence();
    }

    @Override
    public boolean hasPreviousOccurence() {
      return myOccurenceNavigator != null && myOccurenceNavigator.hasPreviousOccurence();
    }

    @Override
    public OccurenceInfo goNextOccurence() {
      return myOccurenceNavigator != null ? myOccurenceNavigator.goNextOccurence() : null;
    }

    @Override
    public OccurenceInfo goPreviousOccurence() {
      return myOccurenceNavigator != null ? myOccurenceNavigator.goPreviousOccurence() : null;
    }

    @Override
    public String getNextOccurenceActionName() {
      return myOccurenceNavigator != null ? myOccurenceNavigator.getNextOccurenceActionName() : "";
    }

    @Override
    public String getPreviousOccurenceActionName() {
      return myOccurenceNavigator != null ? myOccurenceNavigator.getPreviousOccurenceActionName() : "";
    }
  }

  private class ActionsToolbar extends JPanel {
    private ActionsToolbar(ButtonConfiguration buttonConfiguration) {
      super();
      createButtons(buttonConfiguration);
    }

    private void createButtons(ButtonConfiguration buttonConfiguration) {
      DefaultActionGroup actionGroup = new DefaultActionGroup();

      if (buttonConfiguration.isShowSettingsButton() && ActionManager.getInstance().getAction(MPSActions.FIND_USAGES_WITH_DIALOG_ACTION) != null) {
        actionGroup.addAction(new AnAction("Settings...", "Show find usages settings dialog", AllIcons.General.ProjectSettings) {
          @Override
          public void update(AnActionEvent e) {
            super.update(e);    //To change body of overridden methods use File | Settings | File Templates.
          }

          @Override
          public void actionPerformed(AnActionEvent e) {
            assert mySearchQuery != null;
            if (mySearchQuery.getScope() == null) return;
            final IHolder holder = mySearchQuery.getObjectHolder();
            if (!(holder instanceof VoidHolder)) {
              Object o = ModelAccess.instance().runReadAction(new Computable<Object>() {
                @Override
                public Object compute() {
                  return holder.getObject();
                }
              });
              if (o == null) return; //object was deleted
            }

            AnActionEvent event =
                new AnActionEvent(e.getInputEvent(), e.getDataContext(), e.getPlace(), e.getPresentation(), e.getActionManager(),
                    e.getModifiers()) {
                  @Nullable
                  @Override
                  public <T> T getData(@NotNull DataKey<T> key) {
                    if (key == MPSCommonDataKeys.CONTEXT_MODEL) {
                      return (T) ((SNode) ModelAccess.instance().runReadAction(new Computable<Object>() {
                        @Override
                        public Object compute() {
                          return holder.getObject();
                        }
                      })).getModel();
                    }
                    if (key == MPSCommonDataKeys.NODE) {
                      return (T) ModelAccess.instance().runReadAction(new Computable<Object>() {
                        @Override
                        public Object compute() {
                          return holder.getObject();
                        }
                      });
                    }
                    return super.getData(key);
                  }
                };

            AnAction action = ActionManager.getInstance().getAction(MPSActions.FIND_USAGES_WITH_DIALOG_ACTION);
            action.actionPerformed(event);
          }
        });
      }

      if (buttonConfiguration.isShowRerunButton()) {
        actionGroup.addAction(new AnAction(getRerunSearchTooltip(), "", Actions.Rerun) {
          @Override
          public void actionPerformed(AnActionEvent e) {
            assert mySearchQuery != null;
            if (mySearchQuery.getScope() == null) return;
            final IHolder holder = mySearchQuery.getObjectHolder();
            if (!(holder instanceof VoidHolder)) {
              Object o = ModelAccess.instance().runReadAction(new Computable<Object>() {
                @Override
                public Object compute() {
                  return holder.getObject();
                }
              });
              if (o == null) return; //object was deleted
            }
            ProgressManager.getInstance().run(new Modal(myProject, getSearchProgressTitle(), true) {
              @Override
              public void run(@NotNull final ProgressIndicator indicator) {
                indicator.setIndeterminate(true);
                UsagesView.this.run(indicator);
              }
            });
          }
        });
      }

      if (buttonConfiguration.isShowCloseButton()) {
        AnAction action = new AnAction("Close", "", Actions.Cancel) {
          @Override
          public void actionPerformed(AnActionEvent e) {
            close();
          }
        };
        actionGroup.addAction(action);
      }

      if (buttonConfiguration.isShowPinButton()) {
        actionGroup.addAction(new PinToolwindowTabAction() {

          @Override
          public void update(AnActionEvent event) {
            super.update(event);

            event.getPresentation().setIcon(AllIcons.General.Pin_tab);
            event.getPresentation().setEnabledAndVisible(true);
          }
        });
      }

      actionGroup.addAll(myTreeComponent.getActionsToolbar());

      if (buttonConfiguration.isShowRegenerateButton()) {
        actionGroup.addAction(new AnAction("Rebuild models", "", Actions.Compile) {
          @Override
          public void actionPerformed(AnActionEvent e) {
            regenerate();
          }

          @Override
          public void update(AnActionEvent e) {
            e.getPresentation().setEnabled(myMakeSession.get() == null && !IMakeService.INSTANCE.isSessionActive());
          }
        });
      }


      ActionToolbar actionToolbar = ActionManager.getInstance().createActionToolbar(ActionPlaces.UNKNOWN, actionGroup, false);
      actionToolbar.setOrientation(SwingConstants.VERTICAL);
      add(actionToolbar.getComponent());
    }

    protected EmptyBorder createBorder() {
      return new EmptyBorder(2, 1, 2, 1);
    }
  }

  protected String getRerunSearchTooltip() {
    return "Rerun search";
  }

  protected String getSearchProgressTitle() {
    return "Searching";
  }
}

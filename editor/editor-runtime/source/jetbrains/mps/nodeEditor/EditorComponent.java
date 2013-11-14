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
package jetbrains.mps.nodeEditor;

import com.intellij.ide.CopyProvider;
import com.intellij.ide.CutProvider;
import com.intellij.ide.DataManager;
import com.intellij.ide.PasteProvider;
import com.intellij.ide.SelectInContext;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.ActionPlaces;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.actionSystem.DataProvider;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import com.intellij.openapi.actionSystem.KeyboardShortcut;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.actionSystem.Separator;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.editor.colors.EditorColors;
import com.intellij.openapi.editor.colors.EditorColorsManager;
import com.intellij.openapi.keymap.KeymapManager;
import com.intellij.openapi.project.DumbAware;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.wm.IdeFrame;
import com.intellij.openapi.wm.IdeGlassPane;
import com.intellij.openapi.wm.WindowManager;
import com.intellij.openapi.wm.ex.StatusBarEx;
import com.intellij.ui.ScrollPaneFactory;
import com.intellij.ui.components.JBScrollBar;
import com.intellij.ui.components.JBScrollPane;
import com.intellij.util.ui.ButtonlessScrollBarUI;
import jetbrains.mps.MPSCore;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.ide.IdeMain;
import jetbrains.mps.ide.IdeMain.TestMode;
import jetbrains.mps.ide.actions.MPSActions;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.ide.editor.MPSEditorDataKeys;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.projectView.ProjectViewSelectInProvider;
import jetbrains.mps.ide.tooltips.MPSToolTipManager;
import jetbrains.mps.ide.tooltips.TooltipComponent;
import jetbrains.mps.intentions.Intention;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.EditorManager.EditorCell_STHint;
import jetbrains.mps.nodeEditor.NodeEditorActions.CompleteSmart;
import jetbrains.mps.nodeEditor.NodeEditorActions.ShowMessage;
import jetbrains.mps.nodeEditor.actions.ActionHandlerImpl;
import jetbrains.mps.nodeEditor.actions.CursorPositionTracker;
import jetbrains.mps.nodeEditor.cellActions.CellAction_CopyNode;
import jetbrains.mps.nodeEditor.cellActions.CellAction_CutNode;
import jetbrains.mps.nodeEditor.cellActions.CellAction_PasteNode;
import jetbrains.mps.nodeEditor.cellActions.CellAction_PasteNodeRelative;
import jetbrains.mps.nodeEditor.cellActions.CellAction_SideTransform;
import jetbrains.mps.nodeEditor.cellMenu.NodeSubstituteChooser;
import jetbrains.mps.nodeEditor.cellMenu.NodeSubstitutePatternEditor;
import jetbrains.mps.nodeEditor.cells.APICellAdapter;
import jetbrains.mps.nodeEditor.cells.CellConditions;
import jetbrains.mps.nodeEditor.cells.CellFinderUtil;
import jetbrains.mps.nodeEditor.cells.CellFinderUtil.Finder;
import jetbrains.mps.nodeEditor.cells.CellInfo;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Basic;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Component;
import jetbrains.mps.nodeEditor.cells.EditorCell_Label;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.ParentSettings;
import jetbrains.mps.nodeEditor.folding.CallAction_ToggleCellFolding;
import jetbrains.mps.nodeEditor.folding.CellAction_FoldAll;
import jetbrains.mps.nodeEditor.folding.CellAction_FoldCell;
import jetbrains.mps.nodeEditor.folding.CellAction_UnfoldAll;
import jetbrains.mps.nodeEditor.folding.CellAction_UnfoldCell;
import jetbrains.mps.nodeEditor.highlighter.EditorComponentCreateListener;
import jetbrains.mps.nodeEditor.keymaps.AWTKeymapHandler;
import jetbrains.mps.nodeEditor.keymaps.KeymapHandler;
import jetbrains.mps.nodeEditor.leftHighlighter.LeftEditorHighlighter;
import jetbrains.mps.nodeEditor.selection.SelectionInternal;
import jetbrains.mps.nodeEditor.selection.SelectionManagerImpl;
import jetbrains.mps.openapi.editor.ActionHandler;
import jetbrains.mps.openapi.editor.cells.CellAction;
import jetbrains.mps.openapi.editor.cells.CellTraversalUtil;
import jetbrains.mps.openapi.editor.cells.KeyMapAction;
import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import jetbrains.mps.openapi.editor.cells.SubstituteInfo;
import jetbrains.mps.openapi.editor.message.EditorMessageOwner;
import jetbrains.mps.openapi.editor.message.SimpleEditorMessage;
import jetbrains.mps.openapi.editor.selection.MultipleSelection;
import jetbrains.mps.openapi.editor.selection.Selection;
import jetbrains.mps.openapi.editor.selection.SelectionListener;
import jetbrains.mps.openapi.editor.selection.SelectionManager;
import jetbrains.mps.openapi.editor.selection.SingularSelection;
import jetbrains.mps.openapi.editor.style.StyleRegistry;
import jetbrains.mps.project.ProjectOperationContext;
import jetbrains.mps.reloading.ReloadAdapter;
import jetbrains.mps.reloading.ReloadListener;
import jetbrains.mps.smodel.EventsCollector;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.smodel.SModelRepositoryAdapter;
import jetbrains.mps.smodel.event.EventUtil;
import jetbrains.mps.smodel.event.SModelChildEvent;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.smodel.event.SModelEventVisitorAdapter;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import jetbrains.mps.smodel.event.SModelReferenceEvent;
import jetbrains.mps.typesystem.inference.DefaultTypecheckingContextOwner;
import jetbrains.mps.typesystem.inference.ITypeContextOwner;
import jetbrains.mps.typesystem.inference.ITypechecking.Computation;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.typesystem.inference.TypeContextManager;
import jetbrains.mps.typesystem.inference.util.SubtypingCache;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.NodesParetoFrontier;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.WeakSet;
import jetbrains.mps.util.annotation.UseCarefully;
import jetbrains.mps.workbench.ActionPlace;
import jetbrains.mps.workbench.action.ActionUtils;
import jetbrains.mps.workbench.action.BaseAction;
import jetbrains.mps.workbench.nodesFs.MPSNodeVirtualFile;
import jetbrains.mps.workbench.nodesFs.MPSNodesVirtualFileSystem;
import org.apache.log4j.LogManager;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.SRepository;

import javax.swing.AbstractAction;
import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JPanel;
import javax.swing.JPopupMenu;
import javax.swing.JScrollPane;
import javax.swing.JViewport;
import javax.swing.KeyStroke;
import javax.swing.Scrollable;
import javax.swing.SwingConstants;
import javax.swing.SwingUtilities;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.plaf.ScrollBarUI;
import javax.swing.plaf.basic.BasicScrollBarUI;
import java.awt.Adjustable;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.ComponentOrientation;
import java.awt.Container;
import java.awt.Cursor;
import java.awt.Dimension;
import java.awt.FocusTraversalPolicy;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.GridLayout;
import java.awt.Insets;
import java.awt.KeyboardFocusManager;
import java.awt.Point;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.FocusAdapter;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.TreeSet;
import java.util.WeakHashMap;

public abstract class EditorComponent extends JComponent implements Scrollable, DataProvider, ITypeContextOwner, TooltipComponent,
    jetbrains.mps.openapi.editor.EditorComponent {
  private static final Logger LOG = Logger.wrap(LogManager.getLogger(EditorComponent.class));
  private static final boolean TRACE_ENABLED = false;
  public static final String EDITOR_POPUP_MENU_ACTIONS = MPSActions.EDITOR_POPUP_GROUP;

  private static final int SCROLL_GAP = 15;

  private final Object myAdditionalPaintersLock = new Object();

  public static void turnOnAliasingIfPossible(Graphics2D g) {
    if (EditorSettings.getInstance().isUseAntialiasing()) {
      Toolkit tk = Toolkit.getDefaultToolkit();
      //noinspection HardCodedStringLiteral
      Map map = (Map) tk.getDesktopProperty("awt.font.desktophints");
      if (map != null) {
        g.addRenderingHints(map);
      } else {
        g.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
        g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        g.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
      }
    }
  }

  private WeakHashMap<jetbrains.mps.openapi.editor.cells.EditorCell, Set<SNode>> myCellsToNodesToDependOnMap =
      new WeakHashMap<jetbrains.mps.openapi.editor.cells.EditorCell, Set<SNode>>();

  private WeakHashMap<SNode, WeakReference<jetbrains.mps.openapi.editor.cells.EditorCell>> myNodesToBigCellsMap =
      new WeakHashMap<SNode, WeakReference<jetbrains.mps.openapi.editor.cells.EditorCell>>();

  private WeakHashMap<jetbrains.mps.openapi.editor.cells.EditorCell, Set<SNodeReference>> myCellsToRefTargetsToDependOnMap =
      new WeakHashMap<jetbrains.mps.openapi.editor.cells.EditorCell, Set<SNodeReference>>();
  private HashMap<Pair<SNodeReference, String>, WeakSet<EditorCell>> myNodePropertiesAccessedCleanlyToDependentCellsMap =
      new HashMap<Pair<SNodeReference, String>, WeakSet<EditorCell>>();
  private HashMap<Pair<SNodeReference, String>, WeakSet<jetbrains.mps.openapi.editor.cells.EditorCell>> myNodePropertiesAccessedDirtilyToDependentCellsMap =
      new HashMap<Pair<SNodeReference, String>, WeakSet<jetbrains.mps.openapi.editor.cells.EditorCell>>();
  private HashMap<Pair<SNodeReference, String>, WeakSet<jetbrains.mps.openapi.editor.cells.EditorCell>>
      myNodePropertiesWhichExistenceWasCheckedToDependentCellsMap =
      new HashMap<Pair<SNodeReference, String>, WeakSet<jetbrains.mps.openapi.editor.cells.EditorCell>>();

  private Set<EditorCell> myFoldedCells = new HashSet<EditorCell>();
  private Set<EditorCell> myBracesEnabledCells = new HashSet<EditorCell>();

  private CellTracker myCellTracker = new CellTracker();

  private boolean myDisposed = false;
  // additional debugging field
  private StackTraceElement[] myModelDisposedStackTrace = null;
  private Throwable myDisposedTrace = null;

  private Set<AdditionalPainter> myAdditionalPainters = new TreeSet<AdditionalPainter>(new Comparator<AdditionalPainter>() {
    @Override
    public int compare(AdditionalPainter o1, AdditionalPainter o2) {
      if (o1.isAbove(o2, EditorComponent.this)) {
        return 1;
      }
      if (o2.isAbove(o1, EditorComponent.this)) {
        return -1;
      }
      return o1.equals(o2) ? 0 : Integer.signum(System.identityHashCode(o1) - System.identityHashCode(o2));
    }
  });
  private Map<Object, AdditionalPainter> myItemsToAdditionalPainters = new HashMap<Object, AdditionalPainter>();

  private final List<LeftMarginMouseListener> myLeftMarginPressListeners = new ArrayList<LeftMarginMouseListener>(0);

  private EditorSettingsListener mySettingsListener = new EditorSettingsListener() {
    @Override
    public void settingsChanged() {
      rebuildEditorContent();
    }
  };
  private ReloadListener myReloadListener = new ReloadAdapter() {
    @Override
    public void onAfterReload() {
      getModelAccess().runReadInEDT(new Runnable() {
        @Override
        public void run() {
          if (isModuleDisposed() || isProjectDisposed() || isNodeDisposed()) return;
          rebuildEditorContent();
          myNodeSubstituteChooser.clearContent();
        }
      });
    }
  };

  private boolean myReadOnly = false;
  private String myLastWrittenStatus = "";

  @NotNull
  private final SRepository myRepository;
  @NotNull
  private JScrollPane myScrollPane;
  @NotNull
  private MyScrollBar myVerticalScrollBar = new MyScrollBar(Adjustable.VERTICAL);
  @NotNull
  private JComponent myContainer;
  protected EditorCell myRootCell;
  private boolean myCellSwapInProgress;
  private int myShiftX = 15;
  private int myShiftY = 10;

  private SelectionManagerImpl mySelectionManager = new SelectionManagerImpl(this);

  private Stack<KeyboardHandler> myKbdHandlersStack;
  private MouseListener myMouseEventHandler;
  private HashMap<jetbrains.mps.openapi.editor.cells.CellActionType, CellAction> myActionMap;

  private NodeSubstituteChooser myNodeSubstituteChooser;
  private NodeInformationDialog myNodeInformationDialog;
  private HashMap<Object, Object> myUserDataMap = new HashMap<Object, Object>();

  private MyEventsCollector myEventsCollector = new MyEventsCollector();
  private MySimpleModelListener mySimpleModelListener = new MySimpleModelListener();
  private Set<SModel> mySModelsWithListener = new HashSet<SModel>();

  private List<RebuildListener> myRebuildListeners = new ArrayList<RebuildListener>();
  private List<EditorDisposeListener> myDisposeListeners = new ArrayList<EditorDisposeListener>();
  private PropertyChangeListener myFocusListener;
  private NodeHighlightManager myHighlightManager = new NodeHighlightManager(this);

  private MessagesGutter myMessagesGutter;
  private LeftEditorHighlighter myLeftHighlighter;
  @Nullable
  protected SNode myNode;
  @Nullable
  private MPSNodeVirtualFile myVirtualFile;
  private boolean myNoVirtualFile;

  @Nullable
  protected SNodeReference myNodePointer;
  private EditorContext myEditorContext;
  private List<CellSynchronizationWithModelListener> myCellSynchronizationListeners = new ArrayList<CellSynchronizationWithModelListener>();
  private CellInfo myRecentlySelectedCellInfo = null;
  private final EditorMessageOwner myOwner = new EditorMessageOwner() {
  };

  private boolean myInsideOfCommand = false;

  private IntentionsSupport myIntentionsSupport;
  @SuppressWarnings({"UnusedDeclaration"})
  private AutoValidator myAutoValidator;
  private SearchPanel mySearchPanel = null;
  private JPanel myUpperPanel = null;
  private Map<String, JComponent> myUpperComponents = new HashMap<String, JComponent>();
  @SuppressWarnings({"UnusedDeclaration"})
  private ReferenceUnderliner myReferenceUnderliner = new ReferenceUnderliner();
  private BracesHighlighter myBracesHighlighter = new BracesHighlighter(this);
  private boolean myPopupMenuEnabled = true;
  private boolean myIsInFiguresHierarchy = false;

  private Set<SModel> myLastDeps = new HashSet<SModel>();

  private KeymapHandler<KeyEvent> myKeymapHandler = new AWTKeymapHandler();
  private ActionHandler myActionHandler = new ActionHandlerImpl(this);

  private Set<String> myEnabledHints = new HashSet<String>();
  private boolean myUseCustomHints = false;

  public EditorComponent(@NotNull SRepository repository) {
    this(repository, false, false);
  }

  public EditorComponent(@NotNull SRepository repository, boolean showErrorsGutter, boolean rightToLeft) {
    myRepository = repository;
    setEditorContext(new EditorContext(this, null, repository));

    //TODO: fix problem with NPE
    setBackground(StyleRegistry.getInstance() == null ? Color.white : StyleRegistry.getInstance().getEditorBackground());

    setFocusCycleRoot(true);
    setFocusTraversalPolicy(new FocusTraversalPolicy() {
      @Override
      public Component getComponentAfter(Container aContainer, Component aComponent) {
        if (myIsInFiguresHierarchy) {
          executeComponentAction(jetbrains.mps.openapi.editor.cells.CellActionType.NEXT);
        }
        return myIsInFiguresHierarchy ? aContainer : null;
      }

      @Override
      public Component getComponentBefore(Container aContainer, Component aComponent) {
        if (myIsInFiguresHierarchy) {
          executeComponentAction(jetbrains.mps.openapi.editor.cells.CellActionType.PREV);
        }
        return myIsInFiguresHierarchy ? aContainer : null;
      }

      @Override
      public Component getFirstComponent(Container aContainer) {
        return myIsInFiguresHierarchy ? aContainer : null;
      }

      @Override
      public Component getLastComponent(Container aContainer) {
        return myIsInFiguresHierarchy ? aContainer : null;
      }

      @Override
      public Component getDefaultComponent(Container aContainer) {
        return myIsInFiguresHierarchy ? aContainer : null;
      }
    });
    setFocusTraversalKeysEnabled(false);

    setDoubleBuffered(true);
    myScrollPane = ScrollPaneFactory.createScrollPane();
    if (rightToLeft) {
      myScrollPane.setComponentOrientation(ComponentOrientation.RIGHT_TO_LEFT);
    }
    myScrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
    myScrollPane.setVerticalScrollBar(myVerticalScrollBar);
    myScrollPane.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
    myScrollPane.setViewportView(this);
    myScrollPane.getViewport().addChangeListener(new ChangeListener() {

      @Override
      public void stateChanged(ChangeEvent e) {
        deactivateSubstituteChooser();
      }
    });

    myContainer = new JPanel() {
      @Override
      public void addNotify() {
        super.addNotify();
        myIsInFiguresHierarchy = true;
      }

      @Override
      public void removeNotify() {
        myIsInFiguresHierarchy = false;
        super.removeNotify();
      }
    };
    myContainer.setMinimumSize(new Dimension(0, 0));
    myContainer.setLayout(new BorderLayout());
    myContainer.add(myScrollPane, BorderLayout.CENTER);


    if (showErrorsGutter) {
      getVerticalScrollBar().setPersistentUI(myMessagesGutter);
    }

    myNodeSubstituteChooser = new NodeSubstituteChooser(this);

    // --- keyboard handling ---
    myKbdHandlersStack = new Stack<KeyboardHandler>();
    myKbdHandlersStack.push(new EditorComponentKeyboardHandler(myKeymapHandler));

    // --- init action map --
    myActionMap = new HashMap<jetbrains.mps.openapi.editor.cells.CellActionType, CellAction>();
    // -- navigation
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.LEFT, new NodeEditorActions.MoveLeft());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.RIGHT, new NodeEditorActions.MoveRight());
    CursorPositionTracker cursorPositionTracker = new CursorPositionTracker(getEditorContext());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.UP, new NodeEditorActions.MoveUp(cursorPositionTracker));
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.DOWN, new NodeEditorActions.MoveDown(cursorPositionTracker));
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.NEXT, new NodeEditorActions.MoveNext());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.PREV, new NodeEditorActions.MovePrev());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.LOCAL_HOME, new NodeEditorActions.MoveLocal(true));
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.LOCAL_END, new NodeEditorActions.MoveLocal(false));

    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.ROOT_HOME, new NodeEditorActions.MoveToRoot(true));
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.ROOT_END, new NodeEditorActions.MoveToRoot(false));
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.HOME, new NodeEditorActions.MoveHome());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.END, new NodeEditorActions.MoveEnd());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.PAGE_DOWN, new NodeEditorActions.MovePageUp());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.PAGE_UP, new NodeEditorActions.MovePageDown());

    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.SELECT_UP, new NodeEditorActions.SelectUp());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.SELECT_DOWN, new NodeEditorActions.SelectDown());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.SELECT_RIGHT, new NodeEditorActions.SideSelect(CellSide.RIGHT));
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.SELECT_LEFT, new NodeEditorActions.SideSelect(CellSide.LEFT));
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.SELECT_NEXT, new NodeEditorActions.EnlargeSelection(true));
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.SELECT_PREVIOUS, new NodeEditorActions.EnlargeSelection(false));

    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.COPY, new CellAction_CopyNode());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.CUT, new CellAction_CutNode());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.PASTE, new CellAction_PasteNode());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.PASTE_BEFORE, new CellAction_PasteNodeRelative(true));
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.PASTE_AFTER, new CellAction_PasteNodeRelative(false));

    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.FOLD, new CellAction_FoldCell());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.UNFOLD, new CellAction_UnfoldCell());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.FOLD_ALL, new CellAction_FoldAll());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.UNFOLD_ALL, new CellAction_UnfoldAll());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.TOGGLE_FOLDING, new CallAction_ToggleCellFolding());

    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.RIGHT_TRANSFORM, new CellAction_SideTransform(CellSide.RIGHT));
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.LEFT_TRANSFORM, new CellAction_SideTransform(CellSide.LEFT));

    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.COMPLETE, new NodeEditorActions.Complete());
    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.COMPLETE_SMART, new CompleteSmart());

    myActionMap.put(jetbrains.mps.openapi.editor.cells.CellActionType.SHOW_MESSAGE, new ShowMessage());

    registerKeyboardAction(new AbstractAction() {
      @Override
      public void actionPerformed(ActionEvent e) {
        goToNextErrorCell(false);
      }
    }, KeyStroke.getKeyStroke("F2"), WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);

    registerKeyboardAction(new AbstractAction() {
      @Override
      public void actionPerformed(ActionEvent e) {
        goToNextErrorCell(true);
      }
    }, KeyStroke.getKeyStroke("shift F2"), WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);

    registerKeyboardAction(new AbstractAction() {
      @Override
      public void actionPerformed(ActionEvent e) {
        goToNextHighlightedCell(false);
      }
    }, KeyStroke.getKeyStroke("F3"), WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);

    registerKeyboardAction(new AbstractAction() {
      @Override
      public void actionPerformed(ActionEvent e) {
        goToNextHighlightedCell(true);
      }
    }, KeyStroke.getKeyStroke("shift F3"), WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);

    registerKeyboardAction(new AbstractAction() {
      @Override
      public void actionPerformed(ActionEvent e) {
        final jetbrains.mps.openapi.editor.cells.EditorCell cell = getSelectedCell();
        if (cell == null) return;
        getModelAccess().runReadAction(new Runnable() {
          @Override
          public void run() {
            showPopupMenu(cell.getX(), cell.getY());
          }
        });
      }
    }, KeyStroke.getKeyStroke("CONTEXT_MENU"), WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);

    addMouseListener(new MouseAdapter() {
      @Override
      public void mousePressed(final MouseEvent e) {
        if (areMouseEventsBlocked()) {
          return;
        }
        if (e.isPopupTrigger()) {
          processPopupMenu(e);
        } else {
          processMousePressed(e);
        }
      }

      @Override
      public void mouseClicked(MouseEvent e) {
        if (areMouseEventsBlocked()) {
          return;
        }
        jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
        if (e.getClickCount() == 2 && myRootCell.findLeaf(e.getX(), e.getY()) == selectedCell &&
            selectedCell instanceof EditorCell_Label) {
          ((EditorCell_Label) selectedCell).selectWordOrAll();
          repaint();
        }
      }

      @Override
      public void mouseReleased(MouseEvent e) {
        if (areMouseEventsBlocked()) {
          return;
        }
        if (e.isPopupTrigger()) {
          processPopupMenu(e);
        }
        super.mouseReleased(e);
      }
    });

    addKeyListener(new KeyAdapter() {
      @Override
      public void keyPressed(final KeyEvent e) {
        processKeyPressed(e);
      }

      @Override
      public void keyTyped(KeyEvent e) {
        processKeyTyped(e);
      }

      @Override
      public void keyReleased(final KeyEvent e) {
        processKeyReleased(e);
      }
    });

    myMessagesGutter = new MessagesGutter(this, rightToLeft);

    myLeftHighlighter = new LeftEditorHighlighter(this, rightToLeft);
    myLeftHighlighter.addMouseListener(new MouseAdapter() {
      @Override
      public void mousePressed(MouseEvent e) {
        for (LeftMarginMouseListener listener : new ArrayList<LeftMarginMouseListener>(myLeftMarginPressListeners)) {
          listener.mousePressed(e, EditorComponent.this);
        }
      }

      @Override
      public void mouseReleased(MouseEvent e) {
        for (LeftMarginMouseListener listener : new ArrayList<LeftMarginMouseListener>(myLeftMarginPressListeners)) {
          listener.mouseReleased(e, EditorComponent.this);
        }
      }

      @Override
      public void mouseClicked(MouseEvent e) {
        for (LeftMarginMouseListener listener : new ArrayList<LeftMarginMouseListener>(myLeftMarginPressListeners)) {
          listener.mouseClicked(e, EditorComponent.this);
        }
      }
    });
    myScrollPane.setRowHeaderView(myLeftHighlighter);

    addFocusListener(new FocusListener() {
      @Override
      public void focusGained(FocusEvent e) {
        if (isDisposed()) {
          return;
        }
        if (getSelectionManager().getSelection() == null) {
          EditorCell rootCell = getRootCell();
          if (rootCell instanceof EditorCell_Collection) {
            jetbrains.mps.openapi.editor.cells.EditorCell focusPolicyCell = FocusPolicyUtil.findCellToSelectDueToFocusPolicy(rootCell);
            jetbrains.mps.openapi.editor.cells.EditorCell toSelect;
            if (focusPolicyCell == null || (focusPolicyCell == rootCell && !FocusPolicyUtil.hasFocusPolicy(focusPolicyCell))) {
              toSelect = CellFinderUtil.findChildByManyFinders(rootCell, Finder.FIRST_EDITABLE, Finder.FIRST_SELECTABLE_LEAF);
            } else {
              toSelect = focusPolicyCell;
            }
            if (toSelect == null) toSelect = rootCell;
            changeSelection(toSelect);
            repaint();
            return;
          }
          if (rootCell != null && rootCell.isSelectable()) {
            changeSelection(rootCell);
          }
        }
        repaint();
      }

      @Override
      public void focusLost(FocusEvent e) {
        repaint();
        if (myNodeSubstituteChooser.getWindow() != null &&
            (myNodeSubstituteChooser.getWindow().isAncestorOf(
                e.getOppositeComponent()) || myNodeSubstituteChooser.getWindow() == e.getOppositeComponent()))
          return;
        deactivateSubstituteChooser();
      }
    });

    myIntentionsSupport = new IntentionsSupport(this);
    myAutoValidator = new AutoValidator(this);

    if (MPSToolTipManager.getInstance() != null) {
      MPSToolTipManager.getInstance().registerComponent(this);
    }

    if (CaretBlinker.getInstance() != null) {
      CaretBlinker.getInstance().registerEditor(this);
    }

    KeyboardFocusManager.getCurrentKeyboardFocusManager().addPropertyChangeListener("focusOwner", myFocusListener = new PropertyChangeListener() {
      @Override
      public void propertyChange(PropertyChangeEvent evt) {
        Component focusOwner = KeyboardFocusManager.getCurrentKeyboardFocusManager().getFocusOwner();
        if (EditorComponent.this.isAncestorOf(focusOwner)) {
          Component current = focusOwner;
          while (current.getParent() != EditorComponent.this) {
            current = current.getParent();
          }
          selectComponentCell(current);
        }
      }
    });
    EditorSettings.getInstance().addEditorSettingsListener(mySettingsListener);
    ClassLoaderManager.getInstance().addReloadHandler(myReloadListener);

    addFocusListener(new FocusAdapter() {
      @Override
      public void focusLost(FocusEvent e) {
        commitAll();
      }
    });

    getSelectionManager().addSelectionListener(new SelectionListener() {
      @Override
      public void selectionChanged(jetbrains.mps.openapi.editor.EditorComponent editorComponent, Selection oldSelection, Selection newSelection) {
        if (oldSelection == newSelection) {
          return;
        }
        deactivateSubstituteChooser();
        updateStatusBarMessage();
      }
    });

    SModelRepository.getInstance().addModelRepositoryListener(mySimpleModelListener);
  }

  protected void notifyCreation() {
    jetbrains.mps.project.Project project = ProjectHelper.getProject(myRepository);
    if (project == null) {
      return;
    }
    Project ideaProject = ProjectHelper.toIdeaProject(project);
    if (ideaProject == null) {
      return;
    }
    EditorComponentCreateListener listener = ideaProject.getMessageBus().syncPublisher(EditorComponentCreateListener.EDITOR_COMPONENT_CREATION);
    listener.editorComponentCreated(EditorComponent.this);
  }

  protected void notifyDisposal() {
    jetbrains.mps.project.Project project = ProjectHelper.getProject(myRepository);
    if (project == null) {
      return;
    }
    if (project.isDisposed()) {
      LOG.error("Trying to notify disposal of EditorComponent related to disposed project. This may cause memory leaks.");
      return;
    }
    Project ideaProject = ProjectHelper.toIdeaProject(project);
    if (ideaProject == null) {
      return;
    }
    EditorComponentCreateListener listener = ideaProject.getMessageBus().syncPublisher(EditorComponentCreateListener.EDITOR_COMPONENT_CREATION);
    listener.editorComponentDisposed(this);
  }

  public boolean onEscape() {
    return false;
  }

  public void setNoVirtualFile(boolean noVirtualFile) {
    myNoVirtualFile = noVirtualFile;
  }

  public int getShiftX() {
    return myShiftX;
  }

  public JViewport getViewport() {
    return myScrollPane.getViewport();
  }

  @NotNull
  public MyScrollBar getVerticalScrollBar() {
    return myVerticalScrollBar;
  }

  @Override
  public SNode getSelectedNode() {
    jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
    if (selectedCell == null) {
      return null;
    }
    return selectedCell.getSNode();
  }

  @Override
  public List<SNode> getSelectedNodes() {
    Selection selection = mySelectionManager.getSelection();
    return selection != null ? selection.getSelectedNodes() : Collections.<SNode>emptyList();
  }

  public EditorMessageOwner getHighlightMessagesOwner() {
    return myOwner;
  }

  public void moveCurrentUp() {
    Selection selection = getSelectionManager().getSelection();
    if (selection instanceof SingularSelection || selection instanceof MultipleSelection) {
      new IntelligentNodeMover(this, false).move();
    }
  }

  public void moveCurrentDown() {
    Selection selection = getSelectionManager().getSelection();
    if (selection instanceof SingularSelection || selection instanceof MultipleSelection) {
      new IntelligentNodeMover(this, true).move();
    }
  }

  private void goToNextErrorCell(boolean backwards) {
    if (getSelectedCell() == null) {
      return;
    }
    new CellNavigator(this) {
      @Override
      boolean isSuitableCell(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
        if (APICellAdapter.hasErrorMessages(cell)) {
          return true;
        }
        return false;

      }
    }.goToNextCell(backwards);
  }

  private void goToNextHighlightedCell(boolean backwards) {
    if (getSelectedCell() == null) {
      return;
    }
    new CellNavigator(this) {
      @Override
      boolean isSuitableCell(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
        for (SimpleEditorMessage m : getHighlightManager().getMessagesFor(cell.getSNode())) {
          if (m.getOwner() == getHighlightMessagesOwner()) {
            return true;
          }
        }
        return false;
      }
    }.goToNextCell(backwards);
  }

  @Override
  public SNode getEditedNode() {
    return myNode;
  }

  @Nullable
  public MPSNodeVirtualFile getVirtualFile() {
    return myVirtualFile;
  }

  @Override
  public SNodeReference getEditedNodePointer() {
    return myNodePointer;
  }

  @Override
  public String getMPSTooltipText(final MouseEvent event) {
    return ModelAccess.instance().tryRead(new Computable<String>() {
      @Override
      public String compute() {
        if (myRootCell == null) {
          return null;
        }

        jetbrains.mps.openapi.editor.cells.EditorCell cell = myRootCell.findLeaf(event.getX(), event.getY());
        if (cell == null) {
          return null;
        }
        return getMessagesTextFor(cell);
      }
    });
  }

  @Override
  public Point getToolTipLocation(final MouseEvent event) {
    return ModelAccess.instance().tryRead(new Computable<Point>() {
      @Override
      public Point compute() {
        if (myRootCell == null) {
          return null;
        }

        jetbrains.mps.openapi.editor.cells.EditorCell cell = myRootCell.findLeaf(event.getX(), event.getY());
        if (cell == null) {
          return null;
        }
        if (getMessagesTextFor(cell) != null) {
          return new Point(event.getX(), event.getY());
        } else {
          return null;
        }
      }
    });
  }

  public void updateStatusBarMessage() {
    getModelAccess().runReadInEDT(new Runnable() {
      @Override
      public void run() {
        if (!isFocusOwner()) return;
        if (getOperationContext() == null || getOperationContext().getProject() == null) return;
        if (isProjectDisposed()) return;

        jetbrains.mps.openapi.editor.cells.EditorCell selection = getSelectedCell();
        String info = "";
        if (selection != null) {
          List<HighlighterMessage> messages = getHighlighterMessagesFor(selection);
          if (!messages.isEmpty()) {
            info = messages.get(0).getMessage();
          }
        }

        jetbrains.mps.project.Project project = getOperationContext().getProject();
        IdeFrame ideFrame = WindowManager.getInstance().getIdeFrame(ProjectHelper.toIdeaProject(project));
        StatusBarEx statusBar = (StatusBarEx) ideFrame.getStatusBar();

        //current info is significant or the editor removes its own message
        if (!info.equals("") || myLastWrittenStatus.equals(statusBar.getInfo())) {
          statusBar.setInfo(info);
          if (!info.equals("")) {
            myLastWrittenStatus = info;
          }
        }
      }
    });
  }

  @Override
  public TypeCheckingContext createTypecheckingContext(SNode sNode, TypeContextManager typeContextManager) {
    return (new DefaultTypecheckingContextOwner()).createTypecheckingContext(sNode, typeContextManager);
  }

  @Override
  public boolean reuseTypecheckingContext() {
    return true;
  }

  @Override
  public SubtypingCache createSubtypingCache() {
    return null;
  }

  private String getMessagesTextFor(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    List<HighlighterMessage> messages = getHighlighterMessagesFor(cell);
    if (messages.isEmpty()) {
      return null;
    }
    StringBuilder result = new StringBuilder();
    for (HighlighterMessage message : messages) {
      if (result.length() != 0) {
        result.append("\n");
      }
      result.append(message.getMessage());
    }
    return result.toString();
  }

  private List<HighlighterMessage> getHighlighterMessagesFor(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    jetbrains.mps.openapi.editor.cells.EditorCell parent = cell;
    while (parent != null) {
      if (cell.getBottom() < parent.getBottom() && parent.getSNode() != cell.getSNode()) {
        return Collections.emptyList();
      }
      List<HighlighterMessage> messages = APICellAdapter.getMessages(parent, HighlighterMessage.class);
      if (!messages.isEmpty()) {
        return messages;
      }
      parent = parent.getParent();
    }

    return Collections.emptyList();
  }

  // TODO: remove this method and use getHighlighterMessagesFor(EditorCell cell) instead
  private HighlighterMessage getHighlighterMessageFor(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    List<HighlighterMessage> highlighterMessages = getHighlighterMessagesFor(cell);
    return highlighterMessages.isEmpty() ? null : highlighterMessages.get(0);
  }

  public IErrorReporter getErrorReporterFor(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    HighlighterMessage message = getHighlighterMessageFor(cell);
    if (message == null) return null;
    return message.getErrorReporter();
  }

  public void showMessageTooltip() {
    jetbrains.mps.openapi.editor.cells.EditorCell cell = getSelectedCell();
    if (cell == null) {
      return;
    }
    String text = getMessagesTextFor(cell);
    Point point = new Point(cell.getX(), cell.getY() + cell.getHeight());
    if (MPSToolTipManager.getInstance() != null) {
      MPSToolTipManager.getInstance().showToolTip(text, this, point);
    }
  }

  public void hideMessageToolTip() {
    if (MPSToolTipManager.getInstance() != null) {
      MPSToolTipManager.getInstance().hideToolTip();
    }
  }

  protected boolean notifiesCreation() {
    return false;
  }

  @Deprecated
  public void editNode(final SNode node, final IOperationContext operationContext) {
    editNode(node);
  }

  public void editNode(final SNode node) {
    if (isDisposed()) return;
    clearModelDisposedTrace();

    getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        if (node != null) {
          assert node.getModel() != null : "Can't edit a node that is not registered in a model";
          assert SNodeUtil.isAccessible(node, myRepository) :
              "editNode() accepts nodes from its own repository only (model = " + node.getModel() + ", repository = " + node.getModel().getRepository() + ")";
        }

        if (myNode != null && notifiesCreation()) {
          notifyDisposal();
        }

        final boolean needNewTypecheckingContext = getNodeForTypechecking(node) != getNodeForTypechecking(myNode);
        if (needNewTypecheckingContext) {
          disposeTypeCheckingContext();
        }

        myNode = node;
        if (myNode != null) {
          myNodePointer = new jetbrains.mps.smodel.SNodePointer(myNode);
          myVirtualFile = !myNoVirtualFile ? MPSNodesVirtualFileSystem.getInstance().getFileFor(node) : null;
          SModel model = node.getModel();
          assert model != null : "Can't edit a node that is not registered in a model";
          setEditorContext(new EditorContext(EditorComponent.this, model, myRepository));
          myReadOnly = model.isReadOnly();
        } else {
          myNodePointer = null;
          myVirtualFile = null;
          setEditorContext(new EditorContext(EditorComponent.this, null, myRepository));
          myReadOnly = true;
        }

        if (needNewTypecheckingContext) {
          obtainTypeCheckingContext();
        }

        rebuildEditorContent();

        if (myNode != null && notifiesCreation()) {
          notifyCreation();
        }
      }
    });
  }

  public void addAdditionalPainter(AdditionalPainter additionalPainter) {
    synchronized (myAdditionalPaintersLock) {
      if (!myAdditionalPainters.contains(additionalPainter)) {
        myAdditionalPainters.add(additionalPainter);
        myItemsToAdditionalPainters.put(additionalPainter.getItem(), additionalPainter);
        additionalPainter.afterAdding(this);
      }
    }
  }

  public void removeAdditionalPainter(AdditionalPainter additionalPainter) {
    synchronized (myAdditionalPaintersLock) {
      if (myAdditionalPainters.contains(additionalPainter)) {
        additionalPainter.beforeRemoval(this);
        myAdditionalPainters.remove(additionalPainter);
        myItemsToAdditionalPainters.remove(additionalPainter.getItem());
      }
    }
  }

  public void removeAdditionalPainterByItem(Object item) {
    synchronized (myAdditionalPaintersLock) {
      AdditionalPainter additionalPainter = myItemsToAdditionalPainters.get(item);
      if (additionalPainter != null) {
        additionalPainter.beforeRemoval(this);
        myItemsToAdditionalPainters.remove(item);
        myAdditionalPainters.remove(additionalPainter);
      }
    }
  }

  public Color getAdditionalCellFontColor(@NotNull EditorCell_Label cell) {
    synchronized (myAdditionalPaintersLock) {
      for (AdditionalPainter additionalPainter : myAdditionalPainters) {
        Rectangle coverageArea = additionalPainter.getCoverageArea(this);
        if (coverageArea != null) {
          if (coverageArea.contains(cell.getX(), cell.getY(), cell.getWidth(), cell.getHeight())) {
            Color color = additionalPainter.getCellsFontColor(cell);
            if (color != null) return color;
          }
        }
      }
      return null;
    }
  }

  public AdditionalPainter getAdditionalPainterByItem(Object item) {
    synchronized (myAdditionalPaintersLock) {
      AdditionalPainter additionalPainter = myItemsToAdditionalPainters.get(item);
      return additionalPainter;
    }
  }

  public List<AdditionalPainter> getAdditionalPainters() {
    List<AdditionalPainter> result;
    synchronized (myAdditionalPaintersLock) {
      result = new ArrayList<AdditionalPainter>(myAdditionalPainters);
    }
    return result;
  }

  // TODO pool this method up to NodeEditorComponent
  @NotNull
  public MessagesGutter getMessagesGutter() {
    return myMessagesGutter;
  }

  @NotNull
  public LeftEditorHighlighter getLeftEditorHighlighter() {
    return myLeftHighlighter;
  }

  @NotNull
  public SearchPanel getSearchPanel() {
    if (mySearchPanel == null) {
      mySearchPanel = new SearchPanel(this);
    }
    return mySearchPanel;
  }

  public boolean isSearchPanelVisible() {
    return mySearchPanel != null && mySearchPanel.isVisible();
  }

  public JPanel getUpperPanel() {
    if (myUpperPanel == null) {
      myUpperPanel = new JPanel();
      myUpperPanel.setLayout(new GridLayout(0, 1));
      myContainer.add(myUpperPanel, BorderLayout.NORTH);
    }
    return myUpperPanel;
  }

  public void addUpperComponent(JComponent component) {
    getUpperPanel().add(component);
  }

  public void addUpperComponent(JComponent component, String id) {
    getUpperPanel().add(component);
    myUpperComponents.put(id, component);
  }

  public void removeUpperComponent(JComponent component) {
    if (myUpperPanel == null) return;
    getUpperPanel().remove(component);
    for (String key : new HashSet<String>(myUpperComponents.keySet())) {
      if (component == myUpperComponents) {
        myUpperComponents.remove(key);
      }
    }
  }

  public void removeUpperComponent(String id) {
    JComponent component = myUpperComponents.get(id);
    if (component != null) {
      removeUpperComponent(component);
    }
  }

  public void updateMessages() {

    //todo remove
    getExternalComponent().repaint();
  }

  protected Set<SimpleEditorMessage> getMessages() {
    return new LinkedHashSet<SimpleEditorMessage>(myHighlightManager.getMessages());
  }

  @Override
  public IOperationContext getOperationContext() {
    EditorContext editorContext = getEditorContext();
    if (editorContext != null) return editorContext.getOperationContext();

    jetbrains.mps.project.Project p = ProjectHelper.getProject(myRepository);
    return p == null ? null : new ProjectOperationContext(p);
  }

  private EditorCell_WithComponent findCellForComponent(Component component, jetbrains.mps.openapi.editor.cells.EditorCell root) {
    if (root instanceof EditorCell_WithComponent && ((EditorCell_WithComponent) root).getComponent() == component) {
      return (EditorCell_WithComponent) root;
    }

    if (root instanceof EditorCell_Collection) {
      EditorCell_Collection collection = (EditorCell_Collection) root;
      for (jetbrains.mps.openapi.editor.cells.EditorCell cell : collection) {
        EditorCell_WithComponent result = findCellForComponent(component, cell);
        if (result != null) return result;
      }
    }

    return null;
  }

  private void processPopupMenu(final MouseEvent e) {
    getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        showPopupMenu(e);
      }
    });
  }

  private void showPopupMenu(MouseEvent e) {
    showPopupMenu(e.getX(), e.getY());
  }

  private void showPopupMenu(int x, int y) {
    if (!myPopupMenuEnabled) {
      return;
    }
    DefaultActionGroup baseGroup = ActionUtils.getDefaultGroup(EDITOR_POPUP_MENU_ACTIONS);
    if (baseGroup == null) return;

    baseGroup.setPopup(false);

    DefaultActionGroup group = ActionUtils.groupFromActions(
        baseGroup,
        new Separator(),
        getCellActionsGroup()
    );

    JPopupMenu popupMenu = ActionManager.getInstance().createActionPopupMenu(ActionPlaces.EDITOR_POPUP, group).getComponent();
    popupMenu.show(EditorComponent.this, x, y);
  }

  public void executeIntention(final Intention intention, final SNode node, final jetbrains.mps.openapi.editor.EditorContext context) {
    context.executeCommand(new Runnable() {
      @Override
      public void run() {
        try {
          intention.execute(node, context);
        } catch (Throwable t) {
          LOG.error("Intention execution failed: " + t.getMessage(), t);
        }
      }
    });
  }

  private DefaultActionGroup getCellActionsGroup() {
    DefaultActionGroup result = new DefaultActionGroup("Cell actions", true);
    result.setPopup(false);
    jetbrains.mps.openapi.editor.cells.EditorCell cell = getSelectedCell();

    final EditorContext editorContext = createEditorContextForActions();
    for (final KeyMapAction action : myKeymapHandler.getAllRegisteredActions(cell, editorContext)) {
      try {
        if (!(action.isShownInPopupMenu() && action.canExecute(editorContext)))
          continue;
        BaseAction mpsAction = new MyBaseAction(action, editorContext);
        mpsAction.addPlace(ActionPlace.EDITOR);
        result.add(mpsAction);
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
    return result;
  }

  private EditorContext createEditorContextForActions() {
    return new EditorContext(this, getEditedNode() != null ? getEditedNode().getModel() : null, myRepository);
  }

  private void selectComponentCell(Component component) {
    EditorCell_WithComponent cell = findCellForComponent(component, myRootCell);
    if (cell == null) return;
    changeSelection(cell);
  }

  @NotNull
  public JComponent getExternalComponent() {
    return myContainer;
  }

  @Override
  public EditorContext getEditorContext() {
    return myEditorContext;
  }

  protected SRepository getRepository() {
    return myRepository;
  }

  public EditorCell createRootCell() {
    return createRootCell(null);
  }

  protected abstract EditorCell createRootCell(List<SModelEvent> events);

  public void setFolded(EditorCell cell, boolean folded) {
    if (folded) {
      myFoldedCells.add(cell);
    } else {
      myFoldedCells.remove(cell);
    }
  }

  public Set<EditorCell> getFoldedCells() {
    return new HashSet<EditorCell>(myFoldedCells);
  }

  void clearFoldedCells() {
    myFoldedCells.clear();
  }

  public void setBracesEnabled(EditorCell cell, boolean enabled) {
    if (enabled) {
      myBracesEnabledCells.add(cell);
    } else {
      myBracesEnabledCells.remove(cell);
    }
  }

  public Set<EditorCell> getBracesEnabledCells() {
    return new HashSet<EditorCell>(myBracesEnabledCells);
  }

  void clearBracesEnabledCells() {
    myBracesEnabledCells.clear();
  }

  public void flushEvents() {
    myEventsCollector.flush();
  }

  @Override
  public void dispose() {
    if (myDisposed) throw new IllegalStateException(myDisposedTrace);
    fireEditorWillBeDisposed();
    myDisposed = true;
    myDisposedTrace = new Throwable("Editor was disposed by: ");
    if (!MPSCore.getInstance().isTestMode()) {
      hideMessageToolTip();
    }

    disposeTypeCheckingContext();
    myHighlightManager.dispose();

    removeOurListeners();
    SModelRepository.getInstance().removeModelRepositoryListener(mySimpleModelListener);

    EditorSettings.getInstance().removeEditorSettingsListener(mySettingsListener);
    ClassLoaderManager.getInstance().removeReloadHandler(myReloadListener);
    KeyboardFocusManager.getCurrentKeyboardFocusManager().removePropertyChangeListener("focusOwner", myFocusListener);

    clearCaches();

    myEventsCollector.dispose();
    myLeftHighlighter.dispose();
    myMessagesGutter.dispose();

    setEditorContext(null);

    if (myNodeSubstituteChooser != null) {
      myNodeSubstituteChooser.dispose();
    }
    if (myRootCell != null) {
      ((EditorCell_Basic) myRootCell).onRemove();
      myRootCell = null;
    }
    mySelectionManager.dispose();

    myLeftMarginPressListeners.clear();
  }

  public boolean hasValidSelectedNode() {
    SNode selectedNode = getSelectedNode();
    return selectedNode != null && !((jetbrains.mps.smodel.SNode) selectedNode).isDisposed() && selectedNode.getModel() != null;
  }

  @Override
  public boolean isDisposed() {
    return myDisposed;
  }

  public void assertModelNotDisposed() {
    boolean old = ModelAccess.instance().setReadEnabledFlag(true);
    try {
      assert myModelDisposedStackTrace == null : getModelDisposedMessage();
      if (myNode == null) return;
      SModel model = myNode.getModel();
      if (model == null) return;
      assert !jetbrains.mps.util.SNodeOperations.isModelDisposed(model) : getNodeDisposedMessage(model);
    } finally {
      ModelAccess.instance().setReadEnabledFlag(old);
    }
  }

  private String getNodeDisposedMessage(SModel model) {
    StringBuilder sb = new StringBuilder("editor (" + this + ") is invalid");
    if (myNode != null) {
      sb.append(", myNode is disposed");
      StackTraceElement[] modelDisposedTrace = ((jetbrains.mps.smodel.SModelInternal) model).getDisposedStacktrace();
      if (modelDisposedTrace != null) {
        for (StackTraceElement element : modelDisposedTrace) {
          sb.append("\nat ");
          sb.append(element);
        }
      }
    } else {
      sb.append(", myNode == null");
    }
    sb.append("____________________________");
    return sb.toString();
  }

  private String getModelDisposedMessage() {
    StringBuilder sb = new StringBuilder("Model was disposed through:");
    for (StackTraceElement element : myModelDisposedStackTrace) {
      sb.append("\nat ");
      sb.append(element);
    }
    sb.append("\n");
    sb.append("EditorComponent.myDisposed == ");
    sb.append(myDisposed);
    sb.append("\n");
    return sb.toString();
  }

  // This method should be called each time we set new node for and editor
  protected void clearModelDisposedTrace() {
    myModelDisposedStackTrace = null;
  }

  /*
    Can be used to check if editor is in valid state or not.
    Editor can be in invalid state then corresponding model
    was reloaded, but current editor instance was not
    updated yet.
   */
  private boolean isInvalid() {
    return isInvalidLightweight() || !SNodeUtil.isAccessible(getEditedNode(), myRepository);
  }

  /*
    Lightweight check for editor validity state. Similar to isInvalid,
    but can be called outside of read action.
   */
  private boolean isInvalidLightweight() {
    return getEditorContext() == null ||
        getEditedNode() == null ||
        jetbrains.mps.util.SNodeOperations.isDisposed(getEditedNode());
  }

  private void addOurListeners(@NotNull SModel sm) {
    myEventsCollector.add(sm);
    mySModelsWithListener.add(sm);
  }

  private void removeOurListeners(@NotNull SModel sm) {
    myEventsCollector.remove(sm);
    mySModelsWithListener.remove(sm);
  }

  private void removeOurListeners() {
    for (SModel sm : mySModelsWithListener.toArray(new SModel[mySModelsWithListener.size()])) {
      removeOurListeners(sm);
    }
    myLastDeps = new HashSet<SModel>();
  }

  private void clearCaches() {
    myCellsToNodesToDependOnMap.clear();
    removeOurListeners();
    myCellsToRefTargetsToDependOnMap.clear();
    myNodesToBigCellsMap.clear();
    myNodePropertiesAccessedCleanlyToDependentCellsMap.clear();
    myNodePropertiesAccessedDirtilyToDependentCellsMap.clear();
    myNodePropertiesWhichExistenceWasCheckedToDependentCellsMap.clear();
  }

  private void setRootCell(EditorCell rootCell) {
    getEditorContext().pushTracerTask("setting root cell", true);

    if (myRootCell != null) {
      ((EditorCell_Basic) myRootCell).onRemove();
    }

    myRootCell = rootCell;

    if (myRootCell != null) {
      ((EditorCell_Basic) myRootCell).onAdd();
    }

    Set<SModel> oldDeps = myLastDeps;

    myLastDeps = getModels(myCellsToNodesToDependOnMap.get(myRootCell));
    myLastDeps.addAll(getModelsAndPurgeOrphaned(myCellsToRefTargetsToDependOnMap.get(myRootCell)));

    for (SModel newDep : myLastDeps) {
      if (!oldDeps.contains(newDep)) {
        addOurListeners(newDep);
      }
    }
    for (SModel oldDep : oldDeps) {
      if (!myLastDeps.contains(oldDep)) {
        removeOurListeners(oldDep);
      }
    }
    // Sometimes EditorComponent doesn't react on ModelReplaced notifications.
    // Adding this assertion to ensure the reason is not in incorrectly removed listener (dependencies collection logic)
    if (myNode != null && SNodeUtil.isAccessible(myNode, myRepository) && !mySModelsWithListener.contains(myNode.getModel())) {
      String message = "Listener was not added to a containing model of current node. Editor: " + EditorComponent.this;
      message += "\n modelId: " + myNode.getModel().getModelId().toString();
      message += "\n" + "models with listeners:";
      for (SModel model : mySModelsWithListener) {
        message += "\n\t" + model.getModelId().toString();
      }
      assert false : message;
    }

    revalidate();
    repaint();
    getEditorContext().popTracerTask();
  }

  private Set<SModel> getModelsAndPurgeOrphaned(Set<SNodeReference> nodePointers) {
    if (nodePointers == null) {
      return Collections.emptySet();
    }
    Set<SModel> modelDescriptors = new HashSet<SModel>();
    Set<SNodeReference> nodeProxiesToDelete = new HashSet<SNodeReference>();
    for (SNodeReference nodeProxy : nodePointers) {
      SModel model = nodeProxy.getModelReference() == null ? null : SModelRepository.getInstance().getModelDescriptor(nodeProxy.getModelReference());
      if (model == null) {
        nodeProxiesToDelete.add(nodeProxy);
      } else {
        modelDescriptors.add(model);
      }
    }
    nodePointers.removeAll(nodeProxiesToDelete);
    return modelDescriptors;
  }

  private Set<SModel> getModels(@Nullable Set<SNode> nodes) {
    if (nodes == null) {
      return new HashSet<SModel>();
    }
    Set<SModel> result = new HashSet<SModel>();
    for (SNode node : nodes) {
      SModel model = node.getModel();
      if (model == null) continue;

      // Getting modelDescriptor via SModelRepository because sometimes
      // node.getModel().getModelDescriptor() == null while reloading models from disk.
      SModel modelDescriptor = SModelRepository.getInstance().getModelDescriptor(model.getReference());
      if (modelDescriptor != null) {
        result.add(modelDescriptor);
      }
    }
    return result;
  }

  @Override
  public EditorCell getRootCell() {
    return myRootCell;
  }

  @NotNull
  public NodeHighlightManager getHighlightManager() {
    return myHighlightManager;
  }

  public jetbrains.mps.openapi.editor.cells.CellActionType getActionType(KeyEvent keyEvent, EditorContext editorContext) {
    if (keyEvent.getKeyCode() == KeyEvent.VK_HOME && shiftDown(keyEvent)) {
      return jetbrains.mps.openapi.editor.cells.CellActionType.SELECT_HOME;
    }
    if (keyEvent.getKeyCode() == KeyEvent.VK_END && shiftDown(keyEvent)) {
      return jetbrains.mps.openapi.editor.cells.CellActionType.SELECT_END;
    }
    if (keyEvent.getKeyCode() == KeyEvent.VK_PAGE_DOWN && noKeysDown(keyEvent)) {
      return jetbrains.mps.openapi.editor.cells.CellActionType.PAGE_DOWN;
    }
    if (keyEvent.getKeyCode() == KeyEvent.VK_PAGE_UP && noKeysDown(keyEvent)) {
      return jetbrains.mps.openapi.editor.cells.CellActionType.PAGE_UP;
    }
    if (keyEvent.getKeyCode() == KeyEvent.VK_TAB && noKeysDown(keyEvent)) {
      return jetbrains.mps.openapi.editor.cells.CellActionType.NEXT;
    }
    if (keyEvent.getKeyCode() == KeyEvent.VK_TAB && shiftDown(keyEvent)) {
      return jetbrains.mps.openapi.editor.cells.CellActionType.PREV;
    }
    if (keyEvent.getKeyCode() == KeyEvent.VK_SPACE && ctrlDown(keyEvent)) {
      return jetbrains.mps.openapi.editor.cells.CellActionType.COMPLETE;
    }
    if (keyEvent.getKeyCode() == KeyEvent.VK_SPACE && ctrlShiftDown(keyEvent)) {
      return jetbrains.mps.openapi.editor.cells.CellActionType.COMPLETE_SMART;
    }
    if (keyEvent.getModifiers() == KeyEvent.CTRL_MASK && keyEvent.getKeyCode() == KeyEvent.VK_F1) {
      return jetbrains.mps.openapi.editor.cells.CellActionType.SHOW_MESSAGE;
    }

    // ---
    if (keyTyped(keyEvent) && keyEvent.getKeyChar() == ' ' && noKeysDown(keyEvent)) {
      jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = editorContext.getNodeEditorComponent().getSelectedCell();

      if (!(selectedCell instanceof EditorCell_STHint)) {
        if (!(selectedCell instanceof EditorCell_Label)) {
          return jetbrains.mps.openapi.editor.cells.CellActionType.RIGHT_TRANSFORM;
        }
        EditorCell_Label labelCell = (EditorCell_Label) selectedCell;

        // caret at the end of text ?
        String text = labelCell.getText();
        int caretPosition = labelCell.getCaretPosition();
        //System.out.println("text:" + text + " len:" + text.length() + "caret at:" + caretPosition);
        if (caretPosition == text.length()) {
          return jetbrains.mps.openapi.editor.cells.CellActionType.RIGHT_TRANSFORM;
        }

        if (caretPosition == 0) {
          return jetbrains.mps.openapi.editor.cells.CellActionType.LEFT_TRANSFORM;
        }
      }
    }
    return null;
  }

  private boolean ctrlShiftDown(KeyEvent keyEvent) {
    return keyEvent.getModifiers() == (KeyEvent.CTRL_MASK + KeyEvent.SHIFT_MASK);
  }

  private boolean shiftDown(KeyEvent keyEvent) {
    return keyEvent.getModifiers() == KeyEvent.SHIFT_MASK;
  }

  private boolean noKeysDown(KeyEvent keyEvent) {
    return keyEvent.getModifiers() == 0;
  }

  private boolean keyTyped(KeyEvent keyEvent) {
    return keyEvent.getID() == KeyEvent.KEY_TYPED;
  }

  private boolean ctrlDown(KeyEvent keyEvent) {
    return keyEvent.getModifiers() == KeyEvent.CTRL_MASK;
  }

  boolean executeComponentAction(jetbrains.mps.openapi.editor.cells.CellActionType type) {
    final CellAction action = getComponentAction(type);
    if (action != null && action.executeInCommand()) {
      executeCommand(new Runnable() {
        @Override
        public void run() {
          jetbrains.mps.openapi.editor.EditorContext editorContext = getEditorContext();
          if (!editorContext.getOperationContext().isValid()) return;
          action.execute(editorContext);
        }
      });

      return true;
    }
    return false;
  }

  @Override
  public CellAction getComponentAction(final jetbrains.mps.openapi.editor.cells.CellActionType type) {
    return runRead(new Computable<CellAction>() {
      @Override
      public CellAction compute() {
        CellAction action = myActionMap.get(type);
        if (action != null && action.canExecute(getEditorContext())) {
          return action;
        }
        return null;
      }
    });
  }

  public void relayout() {
    if (getEditorContext() != null) {
      getEditorContext().pushTracerTask("Relayouting", true);
    }
    doRelayout();
    revalidate();
    repaint();
    getVerticalScrollBar().repaint();
    if (getEditorContext() != null) {
      getEditorContext().popTracerTask();
    }
  }

  public void revalidateAndRepaint() {
    myLeftHighlighter.relayout(false);
    repaint();
  }

  private void doRelayout() {
    if (myRootCell == null) return;

    myRootCell.setX(myShiftX);
    myRootCell.setY(myShiftY);
    myRootCell.relayout();
    myLeftHighlighter.relayout(true);
    if (mySearchPanel != null && mySearchPanel.isVisible()) {
      mySearchPanel.search(false);
    }
  }

  public void leftHighlightCell(EditorCell cell, Color c) {
    myLeftHighlighter.highlight(cell, cell, c);
  }

  public void leftHighlightCells(EditorCell cell, EditorCell cell2, Color c) {
    myLeftHighlighter.highlight(cell, cell2, c);
  }

  public void leftUnhighlightCell(EditorCell cell) {
    myLeftHighlighter.unHighlight(cell);
  }

  @Override
  public void selectNode(final SNode node) {
    getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        EditorCell nodeCell = findNodeCell(node);
        if (nodeCell != null) {
          changeSelection(nodeCell);
        }
      }
    });
  }

  public void selectNode(final SNode node, final String cellId) {
    getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        EditorCell nodeCell = findCellWithId(node, cellId);
        if (nodeCell != null) {
          changeSelection(nodeCell);
        }
      }
    });
  }

  public void selectRefCell(SReference reference) {
    SNode sourceNode = reference.getSourceNode();
    String role = reference.getRole();
    EditorCell cell;
    if (role == null) {
      cell = findNodeCell(sourceNode);
    } else {
      cell = findNodeCellWithRole(sourceNode, role);
      if (cell == null) cell = findNodeCell(sourceNode);
    }
    if (cell == null) {
      return;
    }
    changeSelection(cell.getLastLeaf(CellConditions.SELECTABLE));
  }

  @Override
  @Nullable
  public EditorCell findNodeCell(final SNode node) {
    return findNodeCell(node, false);
  }

  @Override
  @Nullable
  public EditorCell findNodeCell(final SNode node, boolean findUnderFolded) {
    WeakReference<jetbrains.mps.openapi.editor.cells.EditorCell> weakReference = myNodesToBigCellsMap.get(node);
    if (weakReference == null) return null;
    EditorCell result = (EditorCell) weakReference.get();
    if (result != null && (result.getRootParent() != getRootCell() || (!findUnderFolded && CellTraversalUtil.getFoldedParent(result) != null))) {
      return null;
    }
    return result;
  }

  public EditorCell findNodeCellWithRole(SNode node, String role) {
    EditorCell rootCell = findNodeCell(node);
    if (rootCell == null) return null;
    return (EditorCell) findNodeCellWithRole(rootCell, role, node);
  }

  private jetbrains.mps.openapi.editor.cells.EditorCell findNodeCellWithRole(jetbrains.mps.openapi.editor.cells.EditorCell rootCell, String role,
      SNode node) {
    if (role == null) return null;
    if (role.equals(rootCell.getRole()) && node == rootCell.getSNode()) {
      return rootCell;
    }
    if (rootCell instanceof EditorCell_Collection) {
      EditorCell_Collection collection = (EditorCell_Collection) rootCell;
      for (jetbrains.mps.openapi.editor.cells.EditorCell child : collection) {
        jetbrains.mps.openapi.editor.cells.EditorCell result = findNodeCellWithRole(child, role, node);
        if (result != null) return result;
      }
    }
    return null;
  }

  @Override
  public EditorCell findCellWithId(final SNode node, final @NotNull String id) {
    final EditorCell bigCell = findNodeCell(node);

    if (bigCell == null) {
      return null;
    }

    final jetbrains.mps.openapi.editor.cells.EditorCell[] result = new jetbrains.mps.openapi.editor.cells.EditorCell[]{null};
    myRepository.getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        result[0] = findCellWithIdWithingBigCell(bigCell, id, node);
      }
    });

    return (EditorCell) result[0];
  }

  private jetbrains.mps.openapi.editor.cells.EditorCell findCellWithIdWithingBigCell(jetbrains.mps.openapi.editor.cells.EditorCell root, String id,
      SNode node) {
    if (id == null) {
      return null;
    }

    if (id.equals(root.getCellId()) && root.getSNode() == node) {
      return root;
    }

    if (root instanceof jetbrains.mps.openapi.editor.cells.EditorCell_Collection) {
      for (jetbrains.mps.openapi.editor.cells.EditorCell child : ((jetbrains.mps.openapi.editor.cells.EditorCell_Collection) root)) {
        SNode childNode = child.getSNode();
        if (childNode == node || (childNode != null && AttributeOperations.isAttribute(childNode) && childNode.getParent() == node)) {
          jetbrains.mps.openapi.editor.cells.EditorCell result = findCellWithIdWithingBigCell(child, id, node);
          if (result != null) {
            return result;
          }
        }
      }
    }

    return null;
  }

  @Override
  public void rebuildEditorContent() {
    LOG.assertLog(ModelAccess.instance().isInEDT() || SwingUtilities.isEventDispatchThread(), "You should do this in EDT");

    clearCaches();
    clearUserData();
    rebuildEditorContent(null);

    relayout();
  }

  public void rebuildEditorContent(final List<SModelEvent> events) {
    //i.e. we are disposed. it's too late to rebuild
    if (getEditorContext() == null) {
      return;
    }
    getEditorContext().pushTracerTask("Rebuilding Editor Content", true);
    getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        if (getComponents().length > 0) {
          removeAll();
        }

        if (events != null) {
          revertErrorCells(events);
        }

        getEditorContext().pushTracerTask("Running swap editor cell action", true);
        boolean pushContext = myUseCustomHints;
        if (pushContext) {
          getEditorContext().getCellFactory().pushCellContext();
          Object[] hints = myEnabledHints.toArray();
          getEditorContext().getCellFactory().addCellContextHints(Arrays.copyOf(hints, hints.length, String[].class));
        }
        runSwapCellsActions(new Runnable() {
          @Override
          public void run() {

            setRootCell(createRootCell(events));
          }
        });
        if (pushContext) {
          getEditorContext().getCellFactory().popCellContext();
        }
        getEditorContext().popTracerTask();

        for (EditorCell_WithComponent component : getCellTracker().getComponentCells()) {
          EditorComponent.this.add(component.getComponent());
        }

        getEditorContext().pushTracerTask("Executing rebuild liteners", true);
        for (RebuildListener listener : myRebuildListeners) {
          listener.editorRebuilt(EditorComponent.this);
        }
        getEditorContext().popTracerTask();

        updateMessages();
      }
    });
    getEditorContext().popTracerTask();
  }

  private void fireEditorWillBeDisposed() {
    for (EditorDisposeListener listener : new ArrayList<EditorDisposeListener>(myDisposeListeners)) {
      listener.editorWillBeDisposed(this);
    }
  }

  public void addDisposeListener(EditorDisposeListener listener) {
    if (!myDisposeListeners.contains(listener)) {
      myDisposeListeners.add(listener);
    }
  }

  public void removeDisposeListener(EditorDisposeListener listener) {
    myDisposeListeners.remove(listener);
  }

  public void addRebuildListener(RebuildListener listener) {
    myRebuildListeners.add(listener);
  }

  public void removeRebuildListener(RebuildListener listener) {
    myRebuildListeners.remove(listener);
  }

  public void addSynchronizationListener(CellSynchronizationWithModelListener listener) {
    myCellSynchronizationListeners.add(listener);
  }

  public void removeSynchronizationListener(CellSynchronizationWithModelListener listener) {
    myCellSynchronizationListeners.remove(listener);
  }

  private void fireCellSynchronized(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    for (CellSynchronizationWithModelListener listener : myCellSynchronizationListeners) {
      listener.cellSynchronizedWithModel(cell);
    }
  }

  public jetbrains.mps.openapi.editor.cells.EditorCell findCellWeak(int x, int y) {
    jetbrains.mps.openapi.editor.cells.EditorCell cell = myRootCell.findLeaf(x, y);
    if (cell == null) {
      cell = myRootCell.findCellWeak(x, y);
    }
    return cell;
  }

  private void processMousePressed(MouseEvent mouseEvent) {
    requestFocus();
    processCoordSelection(mouseEvent);

    if (mouseEvent.getButton() == MouseEvent.BUTTON2) {
      goByCurrentReference();
    }

    boolean ctrlDown = com.intellij.openapi.util.SystemInfo.isMac ? mouseEvent.isMetaDown() : mouseEvent.isControlDown();
    if (ctrlDown) {
      if (mouseEvent.isAltDown()) {
        showCellError();
      } else {
        goByCurrentReference();
      }
    }
  }

  private void goByCurrentReference() {
    final DataContext dataContext = DataManager.getInstance().getDataContext(this);
    getModelAccess().executeCommand(new Runnable() {
      @Override
      public void run() {
        AnAction action = ActionManager.getInstance().getAction(MPSActions.EDITOR_GOTO_DECLARATION);
        if (action != null) {
          AnActionEvent event = ActionUtils.createEvent(ActionPlaces.EDITOR_POPUP, dataContext);
          ActionUtils.updateAndPerformAction(action, event);
        }
      }
    });
  }

  @NotNull
  private org.jetbrains.mps.openapi.module.ModelAccess getModelAccess() {
    return myRepository.getModelAccess();
  }

  private void showCellError() {
    final jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
    if (selectedCell != null) {
      getModelAccess().runReadAction(new Runnable() {
        @Override
        public void run() {
          final HighlighterMessage message = getHighlighterMessageFor(selectedCell);
          if (message == null) return;
          final IErrorReporter herror = message.getErrorReporter();
          SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
              String s = message.getMessage();
              final MPSErrorDialog dialog = new MPSErrorDialog(myEditorContext.getMainFrame(), s, message.getStatus().getPresentation(), false);
              if (herror.getRuleModel() != null && herror.getRuleId() != null) {
                final boolean hasAdditionalRuleIds = !herror.getAdditionalRulesIds().isEmpty();
                final JButton button = new JButton();
                AbstractAction action = new AbstractAction("Go To Rule") {
                  @Override
                  public void actionPerformed(ActionEvent e) {
                    if (hasAdditionalRuleIds) {
                      JPopupMenu popupMenu = new JPopupMenu();
                      for (final Pair<String, String> id : herror.getAdditionalRulesIds()) {
                        popupMenu.add(new AbstractAction("Go To Rule " + id.o2) {
                          @Override
                          public void actionPerformed(ActionEvent e) {
                            getModelAccess().runWriteInEDT(new Runnable() {
                              @Override
                              public void run() {
                                GoToTypeErrorRuleUtil.goToRuleById(getCurrentProject(), id);
                                dialog.dispose();
                              }
                            });
                          }
                        });
                      }
                      popupMenu.add(new AbstractAction("Go To Immediate Rule") {
                        @Override
                        public void actionPerformed(ActionEvent e) {
                          getModelAccess().runWriteInEDT(new Runnable() {
                            @Override
                            public void run() {
                              GoToTypeErrorRuleUtil.goToRuleById(getCurrentProject(),
                                  new Pair<String, String>(herror.getRuleModel(),
                                      herror.getRuleId()));
                              dialog.dispose();
                            }
                          });
                        }
                      });
                      popupMenu.show(dialog, button.getX(), button.getY() + button.getHeight());
                    } else {
                      getModelAccess().runWriteInEDT(new Runnable() {
                        @Override
                        public void run() {
                          GoToTypeErrorRuleUtil.goToRuleById(getCurrentProject(), new Pair<String, String>(herror.getRuleModel(),
                              herror.getRuleId()));
                          dialog.dispose();
                        }
                      });
                    }
                  }
                };
                button.setAction(action);
                dialog.addButton(button);
              }
              dialog.initializeUI();
              dialog.setVisible(true);
            }
          });
          return;
        }
      });
    }
  }

  public void addLeftMarginPressListener(LeftMarginMouseListener listener) {
    myLeftMarginPressListeners.add(listener);
  }

  public void removeLeftMarginPressListener(LeftMarginMouseListener listener) {
    myLeftMarginPressListeners.remove(listener);
  }

  public List<LeftMarginMouseListener> getLeftMarginPressListeners() {
    return Collections.unmodifiableList(myLeftMarginPressListeners);
  }

  public void clearLeftMarginListeners() {
    myLeftMarginPressListeners.clear();
  }

  private void processCoordSelection(MouseEvent mouseEvent) {
    EditorCell newSelectedCell = myRootCell.findLeaf(mouseEvent.getX(), mouseEvent.getY(), CellConditions.SELECTABLE);
    if (newSelectedCell != null && CellTraversalUtil.getFoldedParent(newSelectedCell) != null) {
      // mouse was pressed on a cell representing folded collection
      return;
    }
    if (newSelectedCell == null || !newSelectedCell.isSelectable()) {
      newSelectedCell = myRootCell.findCellWeak(mouseEvent.getX(), mouseEvent.getY(), CellConditions.SELECTABLE);
    }

    jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
    if (newSelectedCell != null && (mouseEvent.getButton() != MouseEvent.BUTTON3 || selectedCell == null || !CellTraversalUtil.isAncestor(selectedCell,
        newSelectedCell))) {
      mySelectionManager.setSelection(newSelectedCell);
      newSelectedCell.processMousePressed(mouseEvent);
      revalidateAndRepaint();
    }
  }

  public void clearSelectionStack() {
    getSelectionManager().clearSelection();
  }

  public void pushSelection(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    getSelectionManager().pushSelection(getSelectionManager().createSelection(cell));
  }

//  public EditorCell popSelection() {
//    Selection selection = getSelectionManager().popSelection();
//    return selection instanceof SingularSelection ? ((SingularSelection) selection).getEditorCell() : null;
//  }

  public jetbrains.mps.openapi.editor.cells.EditorCell peekSelection() {
    return getSelectedCell();
  }

  public boolean selectionStackContains(EditorCell cell) {
    for (Selection nextSelection : getSelectionManager().getSelectionStackIterable()) {
      if (nextSelection instanceof SingularSelection) {
        if (((SingularSelection) nextSelection).getEditorCell().equals(cell)) {
          return true;
        }
      }
    }
    return false;
  }

  @Override
  public final void changeSelection(@NotNull jetbrains.mps.openapi.editor.cells.EditorCell newSelectedCell) {
    mySelectionManager.setSelection(newSelectedCell);
    showCellInViewPort(newSelectedCell);
    repaint();
  }

  /**
   * @deprecated seems not used anymore. Remove this method after MPS 3.0
   */
  @UseCarefully
  @Deprecated
  public void setSelectionDontClearStack(EditorCell newSelectedCell, boolean resetLastCaretX) {
    if (getSelectedCell() != newSelectedCell) {
      mySelectionManager.pushSelection(mySelectionManager.createSelection(newSelectedCell));
    }

    if (newSelectedCell != null) {
      showCellInViewPort(newSelectedCell);
    }
    repaint();
  }

  // TODO: think about replacing this method with one of ensureVisible()/scrollToCell()
  private void showCellInViewPort(@NotNull jetbrains.mps.openapi.editor.cells.EditorCell newSelectedCell) {
    if (getVisibleRect().isEmpty()) {
      final JViewport viewport = getViewport();
      viewport.addChangeListener(new ChangeListener() {
        @Override
        public void stateChanged(ChangeEvent e) {
          if (!getVisibleRect().isEmpty()) {
            if (getSelectedCell() != null) {
              scrollToCell(getSelectedCell());
            }
            viewport.removeChangeListener(this);
          }
        }
      });
    } else {
      scrollToCell(newSelectedCell);
    }
  }

  @Override
  public void scrollToNode(SNode node) {
    EditorCell cell = findNodeCell(node);
    if (cell != null) {
      scrollToCell(cell);
    }
  }

  public void ensureSelectionVisible() {
    if (getSelectedCell() == null) {
      return;
    }
    scrollToCell(getSelectedCell());
  }

  @Override
  public void scrollToCell(@NotNull jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    if (getVisibleRect().isEmpty()) {
      return;
    }

    jetbrains.mps.openapi.editor.cells.EditorCell largestVerticalBigCell = cell;

    int viewportWidth = getViewport().getWidth();

    int x0;
    int width;

    if (cell instanceof EditorCell_Label) {
      EditorCell_Label cellLabel = (EditorCell_Label) cell;
      int caretX = cellLabel.getCaretX();
      int charWidth = cellLabel.getCharWidth();
      width = 4 * charWidth;
      x0 = caretX - 2 * charWidth;
    } else if (getDeepestSelectedCell() instanceof EditorCell_Label && cell.getWidth() > viewportWidth) {
      EditorCell_Label cellLabel = (EditorCell_Label) getDeepestSelectedCell();
      int caretX = cellLabel.getCaretX();
      int charWidth = cellLabel.getCharWidth();
      x0 = Math.max(cell.getX(), caretX + 2 * charWidth - viewportWidth);
      width = viewportWidth;
    } else {
      x0 = cell.getX();
      width = cell.getWidth();
    }

    Rectangle visibleRect = getVisibleRect();
    Rectangle rectangle = new Rectangle(x0, visibleRect.y, width, visibleRect.height);
    if (!rectangle.isEmpty()) {
      boolean adjustHorizontally = !visibleRect.contains(rectangle);
      if (adjustHorizontally) {
        if (width <= viewportWidth) {
          int x1 = Math.max(0, x0 + width - viewportWidth);
          scrollToRectIfNotVisible(
              expandRectangleOneLine(
                  new Rectangle(
                      x1, largestVerticalBigCell.getY(),
                      x0 - x1 + width, largestVerticalBigCell.getHeight()
                  )));
        } else {
          scrollToRectIfNotVisible(
              expandRectangleOneLine(
                  new Rectangle(
                      x0 - SCROLL_GAP, largestVerticalBigCell.getY(),
                      viewportWidth + SCROLL_GAP, largestVerticalBigCell.getHeight()
                  )));
        }
      } else {
        scrollToRectIfNotVisible(
            expandRectangleOneLine(
                new Rectangle(
                    x0, largestVerticalBigCell.getY(),
                    width, largestVerticalBigCell.getHeight()
                )));
      }
    }
  }

  private void scrollToRectIfNotVisible(Rectangle rect) {
    if (getVisibleRect().contains(rect)) return;

    scrollRectToVisible(rect);
  }

  private Rectangle expandRectangleOneLine(Rectangle r) {
    Font defaultFont = EditorSettings.getInstance().getDefaultEditorFont();
    FontMetrics fontMetrics = getFontMetrics(defaultFont);
    int height = fontMetrics.getHeight();
    Rectangle rectangle = new Rectangle(r.x, r.y - height, r.width, r.height + 2 * height);
    return rectangle;
  }

  @Override
  protected void paintComponent(Graphics gg) {
    EditorSettings setting = EditorSettings.getInstance();
    Graphics2D g = (Graphics2D) gg;

    turnOnAliasingIfPossible(g);

    g.setColor(getBackground());
    Rectangle bounds = g.getClipBounds();

    g.fillRect(bounds.x, bounds.y, bounds.width, bounds.height);

    jetbrains.mps.openapi.editor.cells.EditorCell deepestCell = getDeepestSelectedCell();
    if (deepestCell instanceof EditorCell_Label && g.hitClip(deepestCell.getX(), deepestCell.getY(), deepestCell.getWidth(), deepestCell.getHeight())) {
      EditorCell_Label label = (EditorCell_Label) deepestCell;

      g.setColor(setting.getCaretRowColor());
      g.fillRect(0, deepestCell.getY(), getWidth(),
          deepestCell.getHeight() - deepestCell.getTopInset() - deepestCell.getBottomInset());

      g.setColor(EditorColorsManager.getInstance().getGlobalScheme().getAttributes(EditorColors.IDENTIFIER_UNDER_CARET_ATTRIBUTES).getBackgroundColor());
      g.fillRect(deepestCell.getX() + label.getLeftInset(),
          deepestCell.getY(),
          deepestCell.getWidth() - label.getLeftInset() - label.getRightInset(),
          deepestCell.getHeight() - deepestCell.getTopInset() - deepestCell.getBottomInset());
    }

    List<AdditionalPainter> additionalPainters = getAdditionalPainters();
    for (AdditionalPainter additionalPainter : additionalPainters) {
      if (additionalPainter.paintsBackground()) {
        additionalPainter.paintBackground(g, this);
      }
    }

    if (myRootCell != null && g.hitClip(myRootCell.getX(), myRootCell.getY(), myRootCell.getWidth(), myRootCell.getHeight())) {
      g.setColor(EditorColorsManager.getInstance().getGlobalScheme().getColor(EditorColors.RIGHT_MARGIN_COLOR));
      int boundPosition = myRootCell.getX() + setting.getVerticalBoundWidth();
      g.drawLine(boundPosition, 0, boundPosition, getHeight());

      myRootCell.paint(g, ParentSettings.createDefaultSetting());
    }

    for (AdditionalPainter additionalPainter : additionalPainters) {
      if (additionalPainter.paintsAbove()) {
        additionalPainter.paint(g, this);
      }
    }

  }

  @Override
  public Dimension getPreferredSize() {
    if (myRootCell == null) {
      JViewport viewport = myScrollPane.getViewport();
      Rectangle viewRect = viewport.getViewRect();
      return new Dimension(viewRect.width, viewRect.height);
    }
    return new Dimension(myRootCell.getWidth() + myShiftX + 10, myRootCell.getHeight() + myShiftY + 10);
  }

  @Override
  public Dimension getPreferredScrollableViewportSize() {
    return getPreferredSize();
  }

  @Override
  public int getScrollableUnitIncrement(Rectangle visibleRect, int orientation, int direction) {
    if (orientation == SwingConstants.VERTICAL) {
      return 20;
    } else { // if orientation == SwingConstants.HORIZONTAL
      return 20;
    }
  }

  @Override
  public int getScrollableBlockIncrement(Rectangle visibleRect, int orientation, int direction) {
    return visibleRect.height;
  }

  @Override
  public boolean getScrollableTracksViewportWidth() {
    return myScrollPane.getViewport().getWidth() > getPreferredSize().width;
  }

  @Override
  public boolean getScrollableTracksViewportHeight() {
    return myScrollPane.getViewport().getHeight() > getPreferredSize().height;
  }

  @Override
  public jetbrains.mps.openapi.editor.cells.EditorCell getDeepestSelectedCell() {
    if (isDisposed()) {
      return null;
    }
    Selection deepestSelection = getSelectionManager().getDeepestSelection();
    return deepestSelection instanceof SingularSelection ? ((SingularSelection) deepestSelection).getEditorCell() : null;
  }

  @Nullable
  public jetbrains.mps.openapi.editor.cells.EditorCell getSelectedCell() {
    if (isDisposed()) {
      return null;
    }
    Selection currentSelection = getSelectionManager().getSelection();
    return currentSelection instanceof SingularSelection ? ((SingularSelection) currentSelection).getEditorCell() : null;
  }

  @NotNull
  public SelectionManager getSelectionManager() {
    return mySelectionManager;
  }

  public KeyboardHandler peekKeyboardHandler() {
    return myKbdHandlersStack.peek();
  }

  public KeyboardHandler popKeyboardHandler() {
    return myKbdHandlersStack.pop();
  }

  public void pushKeyboardHandler(KeyboardHandler kbdHandler) {
    myKbdHandlersStack.push(kbdHandler);
  }

  public void setMouseEventHandler(MouseListener l) {
    assert myMouseEventHandler == null : "Mouse event handler was already specified";
    addMouseListener(myMouseEventHandler = l);
  }

  public void removeMouseEventHandler() {
    assert myMouseEventHandler != null : "Mouse event handler was was not specified";
    removeMouseListener(myMouseEventHandler);
    myMouseEventHandler = null;
  }

  private boolean areMouseEventsBlocked() {
    return myMouseEventHandler != null;
  }

  public Object getUserData(Object key) {
    return myUserDataMap.get(key);
  }

  public void putUserData(Object key, Object data) {
    myUserDataMap.put(key, data);
  }

  public void clearUserData() {
    myUserDataMap.clear();
  }

  public TypeCheckingContext getTypeCheckingContext() {
    TypeCheckingContext context = TypeContextManager.getInstance().lookupTypecheckingContext(getNodeForTypechecking(myNode), this);
    return context != null ? context : TypeContextManager.getInstance().acquireTypecheckingContext(getNodeForTypechecking(myNode), this);
  }

  public ITypeContextOwner getTypecheckingContextOwner() {
    return this;
  }

  protected void obtainTypeCheckingContext() {
    getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        TypeContextManager.getInstance().acquireTypecheckingContext(getNodeForTypechecking(myNode), EditorComponent.this);
      }
    });
  }

  protected void disposeTypeCheckingContext() {
    getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        TypeContextManager.getInstance().releaseTypecheckingContext(getNodeForTypechecking(myNode), EditorComponent.this);
      }
    });
  }

  protected SNode getNodeForTypechecking(SNode editedNode) {
    return editedNode;
  }

  public void sendKeyEvent(KeyEvent keyEvent) {
    if (keyEvent.getID() == KeyEvent.KEY_PRESSED) {
      processKeyPressed(keyEvent);
    } else if (keyEvent.getID() == KeyEvent.KEY_RELEASED) {
      processKeyReleased(keyEvent);
    }
  }

  @Override
  public void update() {
    Highlighter.runUpdateMessagesAction(new Runnable() {
      @Override
      public void run() {
        getModelAccess().runReadAction(new Runnable() {
          @Override
          public void run() {
            SNode sNode = getRootCell().getSNode();
            if (sNode == null) {
              return;
            }
            TypeCheckingContext typeCheckingContext = getTypeCheckingContext();
            typeCheckingContext.clear();
            Highlighter highlighter = getOperationContext().getComponent(Highlighter.class);
            if (highlighter != null) {
              highlighter.resetCheckedState(EditorComponent.this);
            } else {
              typeCheckingContext.checkRoot();
            }
            rebuildEditorContent();
          }
        });
      }
    });
  }

  public void processKeyPressed(final KeyEvent keyEvent) {
    if (keyEvent.isConsumed()) return;

    // hardcoded "update" action
    if (keyEvent.getKeyCode() == KeyEvent.VK_F5 && noKeysDown(keyEvent)) {
      //this lock should be obtained before the following read action to avoid deadlock
      update();
      keyEvent.consume();
      return;
    }

    if (keyEvent.getKeyCode() == KeyEvent.VK_F11 && noKeysDown(keyEvent)) {
      relayout();
      keyEvent.consume();
      return;
    }

    // all other processing should be performed inside command
    EditorContext editorContext = getEditorContext();
    if (editorContext == null) {
      return; //i.e. editor is disposed
    }

    if (isKeyboardHandlerProcessingEnabled(keyEvent) && peekKeyboardHandler().processKeyPressed(editorContext, keyEvent)) {
      keyEvent.consume();
    }
    revalidateAndRepaint();
  }

  public void processKeyReleased(final KeyEvent keyEvent) {
    if (keyEvent.isConsumed()) return;

    if (isKeyboardHandlerProcessingEnabled(keyEvent) && peekKeyboardHandler().processKeyReleased(getEditorContext(), keyEvent)) {
      keyEvent.consume();
    }

    revalidateAndRepaint();
  }

  public void processKeyTyped(final KeyEvent keyEvent) {
    if (keyEvent.isConsumed()) return;

    if (isKeyboardHandlerProcessingEnabled(keyEvent) && peekKeyboardHandler().processKeyTyped(getEditorContext(), keyEvent)) {
      keyEvent.consume();
    }

    revalidateAndRepaint();
  }

  private boolean isKeyboardHandlerProcessingEnabled(KeyEvent keyEvent) {
    if (!isReadOnly()) {
      return true;
    }
    jetbrains.mps.openapi.editor.cells.CellActionType actionType = getActionType(keyEvent, getEditorContext());
    if (actionType != null) {
      switch (actionType) {
        case SELECT_LEFT:
        case SELECT_RIGHT:
        case SELECT_HOME:
        case SELECT_END:
        case PAGE_UP:
        case PAGE_DOWN:
        case NEXT:
        case PREV:
          return true;
      }
    }
    return false;
  }

  void executeCommand(final Runnable r) {
    if (myInsideOfCommand) {
      r.run();
      return;
    }
    myInsideOfCommand = true;
    try {
      getModelAccess().executeCommand(new Runnable() {
        @Override
        public void run() {
          r.run();
        }
      });
    } finally {
      myInsideOfCommand = false;
    }

    relayout();
  }

  <T> T executeCommand(final Computable<T> c) {
    if (myInsideOfCommand) {
      return c.compute();
    }
    myInsideOfCommand = true;
    try {
      final Object[] result = new Object[1];
      getModelAccess().executeCommand(new Runnable() {
        @Override
        public void run() {
          result[0] = c.compute();
        }
      });
      return (T) result[0];
    } finally {
      myInsideOfCommand = false;
    }
  }

  <T> T runRead(final Computable<T> c) {
    final Object[] result = new Object[1];
    getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        result[0] = c.compute();
      }
    });
    return (T) result[0];
  }


  private jetbrains.mps.project.Project getCurrentProject() {
    return ProjectHelper.getProject(myRepository);
  }

  boolean isForcedFocusChangeEnabled() {
    return myInsideOfCommand;
  }

  public boolean activateNodeSubstituteChooser(jetbrains.mps.openapi.editor.cells.EditorCell editorCell, boolean resetPattern) {
    return activateNodeSubstituteChooser(editorCell, resetPattern, false);
  }

  public boolean activateNodeSubstituteChooser(jetbrains.mps.openapi.editor.cells.EditorCell editorCell, boolean resetPattern, boolean isSmart) {
    if (myNodeSubstituteChooser.isVisible()) {
      return true;
      //todo: rebuild menu if smartness changed
    }

    // try to obtain substitute info
    SubstituteInfo substituteInfo = null;
    if (editorCell != null) {
      substituteInfo = editorCell.getSubstituteInfo();
    }

    return activateNodeSubstituteChooser(editorCell, substituteInfo, resetPattern, isSmart);
  }

  public boolean activateNodeSubstituteChooser(jetbrains.mps.openapi.editor.cells.EditorCell editorCell, SubstituteInfo substituteInfo,
      boolean resetPattern) {
    return activateNodeSubstituteChooser(editorCell, substituteInfo, resetPattern, false);
  }

  public boolean activateNodeSubstituteChooser(jetbrains.mps.openapi.editor.cells.EditorCell editorCell, SubstituteInfo substituteInfo, boolean resetPattern,
      boolean isSmart) {
    if (substituteInfo == null) {
      return false;
    }

    // do substitute...
    LOG.debug("substitute info : " + substituteInfo);
    NodeSubstitutePatternEditor patternEditor = ((EditorCell) editorCell).createSubstitutePatternEditor();
    if (resetPattern) {
      patternEditor.toggleReplaceMode();
    }
    String pattern = patternEditor.getPattern();
    boolean trySubstituteNow =
        !patternEditor.getText().equals(substituteInfo.getOriginalText()) || // user changed text or cell has no text
            pattern.equals(patternEditor.getText()); // caret at the end


    // 1st - try to do substitution with current pattern (if cursor at the end of text)
    if (trySubstituteNow) {
      List<SubstituteAction> matchingActions = getMatchingActions(editorCell, substituteInfo, isSmart, pattern);
      if (matchingActions.size() == 1 && pattern.length() > 0) {
        matchingActions.get(0).substitute(this.getEditorContext(), pattern);
        return true;
      }
    }

    myNodeSubstituteChooser.setNodeSubstituteInfo(substituteInfo);
    myNodeSubstituteChooser.setPatternEditor(patternEditor);
    myNodeSubstituteChooser.setLocationRelative(editorCell);
    myNodeSubstituteChooser.setIsSmart(isSmart);
    myNodeSubstituteChooser.setContextCell(editorCell);
    myNodeSubstituteChooser.setVisible(true);
    return true;
  }

  private List<SubstituteAction> getMatchingActions(final jetbrains.mps.openapi.editor.cells.EditorCell editorCell, final SubstituteInfo substituteInfo,
      final boolean isSmart, final String pattern) {
    return runRead(new Computable<List<SubstituteAction>>() {
      @Override
      public List<SubstituteAction> compute() {
        return TypeContextManager.getInstance().runTypeCheckingComputation(getTypecheckingContextOwner(), myNode,
            new Computation<List<SubstituteAction>>() {
              @Override
              public List<SubstituteAction> compute(TypeCheckingContext context) {
                return isSmart ? substituteInfo.getSmartMatchingActions(pattern, false, editorCell) :
                    substituteInfo.getMatchingActions(pattern, false);
              }
            });
      }
    });
  }

  private void deactivateSubstituteChooser() {
    myNodeSubstituteChooser.setVisible(false);
  }

  public NodeSubstituteChooser getNodeSubstituteChooser() {
    return myNodeSubstituteChooser;
  }

  void setNodeInformationDialog(NodeInformationDialog dialog) {
    myNodeInformationDialog = dialog;
  }

  public boolean hasNodeInformationDialog() {
    return myNodeInformationDialog != null;
  }

  @Override
  public void paint(Graphics g) {
    super.paint(g);
    Selection selection = getSelectionManager().getSelection();
    if (selection != null) {
      ((SelectionInternal) selection).paintSelection((Graphics2D) g);
    }
  }

  public void addCellDependentOnNodeProperty(EditorCell cell, Pair<SNodeReference, String> pair) {
    WeakSet<EditorCell> dependentCells = myNodePropertiesAccessedCleanlyToDependentCellsMap.get(pair);
    if (dependentCells == null) {
      dependentCells = new WeakSet<EditorCell>();
      myNodePropertiesAccessedCleanlyToDependentCellsMap.put(pair, dependentCells);
    }
    dependentCells.add(cell);
  }

  public void addCellDependentOnNodePropertyWhichWasAccessedDirtily(jetbrains.mps.openapi.editor.cells.EditorCell cell, Pair<SNodeReference, String> pair) {
    WeakSet<jetbrains.mps.openapi.editor.cells.EditorCell> dependentCells = myNodePropertiesAccessedDirtilyToDependentCellsMap.get(pair);
    if (dependentCells == null) {
      dependentCells = new WeakSet<jetbrains.mps.openapi.editor.cells.EditorCell>();
      myNodePropertiesAccessedDirtilyToDependentCellsMap.put(pair, dependentCells);
    }
  }

  public void addCellDependentOnNodePropertyWhichExistenceWasChecked(jetbrains.mps.openapi.editor.cells.EditorCell cell, Pair<SNodeReference, String> pair) {
    WeakSet<jetbrains.mps.openapi.editor.cells.EditorCell> dependentCells = myNodePropertiesWhichExistenceWasCheckedToDependentCellsMap.get(pair);
    if (dependentCells == null) {
      dependentCells = new WeakSet<jetbrains.mps.openapi.editor.cells.EditorCell>();
      myNodePropertiesWhichExistenceWasCheckedToDependentCellsMap.put(pair, dependentCells);
    }
    dependentCells.add(cell);
  }

  public void putCellAndNodesToDependOn(jetbrains.mps.openapi.editor.cells.EditorCell cell, Set<SNode> nodes, Set<SNodeReference> refTargets) {
    assert !nodes.contains(null);
    myCellsToNodesToDependOnMap.put(cell, nodes);
    myCellsToRefTargetsToDependOnMap.put(cell, refTargets);
  }

  public Set<SNode> getNodesCellDependOn(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    Set<SNode> nodes = myCellsToNodesToDependOnMap.get(cell);
    if (nodes == null) return null;
    return Collections.unmodifiableSet(nodes);
  }

  public Set<SNodeReference> getCopyOfRefTargetsCellDependsOn(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    Set<SNodeReference> nodeProxies = myCellsToRefTargetsToDependOnMap.get(cell);
    if (nodeProxies == null) return null;
    return Collections.unmodifiableSet(nodeProxies);
  }

  public boolean doesCellDependOnNode(jetbrains.mps.openapi.editor.cells.EditorCell cell, SNode node, @NotNull SNodeReference nodePointer) {
    if (cell == null && node != null) return true;

    Set<SNode> sNodes = myCellsToNodesToDependOnMap.get(cell);
    Set<SNodeReference> nodeProxies = myCellsToRefTargetsToDependOnMap.get(cell);

    if (sNodes != null && sNodes.contains(node)) return true;
    return nodeProxies != null && nodeProxies.contains(nodePointer);
  }

  public void clearNodesCellDependsOn(jetbrains.mps.openapi.editor.cells.EditorCell cell, EditorManager editorManager) {
    if (editorManager == EditorManager.getInstanceFromContext(getCurrentProject())) {
      myCellsToNodesToDependOnMap.remove(cell);
      myCellsToRefTargetsToDependOnMap.remove(cell);
      if (myRootCell == cell) {
        removeOurListeners();
      }
    }
  }

  void registerAsBigCell(jetbrains.mps.openapi.editor.cells.EditorCell cell, EditorManager manager) {
    if (manager == EditorManager.getInstanceFromContext(getCurrentProject())) {
      myNodesToBigCellsMap.put(cell.getSNode(), new WeakReference<jetbrains.mps.openapi.editor.cells.EditorCell>(cell));
    }
  }

  @Nullable
  public EditorCell getBigValidCellForNode(SNode node) {
    EditorCell result = findNodeCell(node);
    if (isValid(result)) return result;
    return null;
  }

  public boolean isValid(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    if (cell == null) return false;
    return ((EditorCell_Basic) cell).isInTree() && cell.getEditorComponent() == this;
  }

  public jetbrains.mps.openapi.editor.cells.EditorCell changeSelectionWRTFocusPolicy(@NotNull EditorCell cell) {
    jetbrains.mps.openapi.editor.cells.EditorCell focusPolicyCell = FocusPolicyUtil.findCellToSelectDueToFocusPolicy(cell);
    jetbrains.mps.openapi.editor.cells.EditorCell toSelect;
    if (focusPolicyCell == null || (focusPolicyCell == cell && !FocusPolicyUtil.hasFocusPolicy(focusPolicyCell))) {
      toSelect = CellFinderUtil.findChildByManyFinders(cell, Finder.FIRST_ERROR, Finder.FIRST_EDITABLE, Finder.FIRST_SELECTABLE_LEAF);
    } else {
      toSelect = focusPolicyCell;
    }
    if (toSelect == null) toSelect = cell;
    changeSelection(toSelect);

    if (toSelect instanceof EditorCell_Label) {
      EditorCell_Label label = (EditorCell_Label) toSelect;
      jetbrains.mps.editor.runtime.style.CaretPosition defaultCaretPosition = label.getStyle().get(StyleAttributes.DEFAULT_CARET_POSITION);
      if (defaultCaretPosition != null) {
        if (defaultCaretPosition == jetbrains.mps.editor.runtime.style.CaretPosition.FIRST) {
          label.home();
        }
        if (defaultCaretPosition == jetbrains.mps.editor.runtime.style.CaretPosition.LAST) {
          label.end();
        }
      } else if (!toSelect.isErrorState()) {
        label.end();
      }
    }

    return toSelect;
  }

  protected void setEditorContext(EditorContext editorContext) {
    assert editorContext == null || myRepository == editorContext.getRepository();
    myEditorContext = editorContext;
  }

  private void runSwapCellsActions(Runnable action) {
    try {
      myCellSwapInProgress = true;
      EditorContext ec = getEditorContext();

      boolean needsSavingState = ec != null;
      if (getRootCell() != null && getRootCell().getSNode() != null && ((jetbrains.mps.smodel.SNode) getRootCell().getSNode()).isDisposed()) {
        needsSavingState = false;
      }

      if (needsSavingState) {
        jetbrains.mps.openapi.editor.cells.EditorCell sc = getSelectedCell();
        if (sc != null) {
          myRecentlySelectedCellInfo = APICellAdapter.getCellInfo(sc);
        }
        Object memento = ec.createMemento();
        action.run();
        ec.pushTracerTask("restoring memento", true);
        ec.setMemento(memento);
        ec.popTracerTask();
      } else {
        action.run();
      }
      myRecentlySelectedCellInfo = null;
    } finally {
      myCellSwapInProgress = false;
    }
  }

  boolean isCellSwapInProgress() {
    return myCellSwapInProgress;
  }

  CellInfo getRecentlySelectedCellInfo() {
    return myRecentlySelectedCellInfo;
  }

  @Override
  public boolean isReadOnly() {
    return myReadOnly;
  }

  public void setPopupMenuEnabled(boolean popupMenuEnabled) {
    myPopupMenuEnabled = popupMenuEnabled;
  }

  @Override
  @Nullable
  public Object getData(@NonNls String dataId) {
    //MPSDK
    if (dataId.equals(MPSCommonDataKeys.NODE.getName())) return getSelectedNode();
    if (dataId.equals(MPSCommonDataKeys.NODES.getName())) return getSelectedNodes();
    if (dataId.equals(MPSEditorDataKeys.CONTEXT_MODEL.getName())) {
      return runRead(new Computable() {
        @Override
        public Object compute() {
          SNode node = getRootCell().getSNode();
          if (node == null) return null;
          SModel model = node.getModel();
          if (model == null) return null; //removed model
          return model;
        }
      });
    }
    if (dataId.equals(MPSEditorDataKeys.CONTEXT_MODULE.getName())) {
      // todo: copy-paste
      return runRead(new Computable() {
        @Override
        public Object compute() {
          SNode node = getRootCell().getSNode();
          if (node == null) return null;
          SModel model = node.getModel();
          if (model == null) return null; //removed model
          return model.getModule();
        }
      });
    }
    if (dataId.equals(MPSEditorDataKeys.OPERATION_CONTEXT.getName())) return getOperationContext();
    if (dataId.equals(MPSEditorDataKeys.EDITOR_CONTEXT.getName())) return createEditorContextForActions();
    if (dataId.equals(MPSEditorDataKeys.EDITOR_CELL.getName())) return getSelectedCell();
    if (dataId.equals(MPSEditorDataKeys.EDITOR_COMPONENT.getName())) return this;
    if (dataId.equals(MPSCommonDataKeys.PLACE.getName())) return ActionPlace.EDITOR;

    //PDK
    if (dataId.equals(PlatformDataKeys.CUT_PROVIDER.getName())) return new MyCutProvider();
    if (dataId.equals(PlatformDataKeys.COPY_PROVIDER.getName())) return new MyCopyProvider();
    if (dataId.equals(PlatformDataKeys.PASTE_PROVIDER.getName()) && (isFocusOwner() || IdeMain.getTestMode() == TestMode.CORE_TEST))
      return new MyPasteProvider();
    if (dataId.equals(PlatformDataKeys.VIRTUAL_FILE_ARRAY.getName())) {
      return getVirtualFile() != null ? new VirtualFile[]{getVirtualFile()} : new VirtualFile[0];
    }

    if (dataId.equals(SelectInContext.DATA_KEY.getName())) {
      ProjectViewSelectInProvider selectInHelper =
          ApplicationManager.getApplication() == null ? null : ApplicationManager.getApplication().getComponent(ProjectViewSelectInProvider.class);
      if (selectInHelper == null) return null;
      return selectInHelper.getContext(getCurrentProject(), myNodePointer);
    }

    //not found
    return null;
  }

  private void handleEvents(List<SModelEvent> events) {
    boolean rootTrace = !getEditorContext().isTracing() && TRACE_ENABLED;
    if (rootTrace) {
      getEditorContext().startTracing("========= Handling events =========");
    } else {
      getEditorContext().pushTracerTask("Hanlding events", true);
    }
    try {
      if (EventUtil.isDetachedOnlyChange(events)) {
        return;
      }

      SNode lastSelectedNode = getSelectedNode();

      if (!EventUtil.isDramaticalChange(events)) {
        if (EventUtil.isPropertyChange(events)) {
          String propertyName = ((SModelPropertyEvent) events.get(0)).getPropertyName();
          SNodeReference nodeProxy = new jetbrains.mps.smodel.SNodePointer(((SModelPropertyEvent) events.get(0)).getNode());
          Pair<SNodeReference, String> pair = new Pair<SNodeReference, String>(nodeProxy, propertyName);
          Set<EditorCell> editorCell_properties = myNodePropertiesAccessedCleanlyToDependentCellsMap.get(pair);
          Set<jetbrains.mps.openapi.editor.cells.EditorCell> editorCells = myNodePropertiesAccessedDirtilyToDependentCellsMap.get(pair);
          Set<jetbrains.mps.openapi.editor.cells.EditorCell> editorCellsDependentOnExistence = myNodePropertiesWhichExistenceWasCheckedToDependentCellsMap.get(
              pair);
          if (editorCellsDependentOnExistence != null) {
            if (EventUtil.isPropertyAddedOrRemoved(events.get(0))) {
              rebuildEditorContent(events);
            } else {
              for (jetbrains.mps.openapi.editor.cells.EditorCell cell : editorCellsDependentOnExistence) {
                APICellAdapter.synchronizeViewWithModel(cell);
                fireCellSynchronized(cell);
              }
              if (editorCell_properties != null) {
                for (EditorCell cell : editorCell_properties) {
                  cell.synchronizeViewWithModel();
                  fireCellSynchronized(cell);
                }
              }
            }
            relayout();
            return;
          }
          if (editorCells != null) {
            rebuildEditorContent(events);
            relayout();
            updateSelection(events, lastSelectedNode);
          } else if (editorCell_properties != null) {
            for (EditorCell cell : editorCell_properties) {
              cell.synchronizeViewWithModel();
              fireCellSynchronized(cell);
            }
            revertErrorCells(events);
          }
        } else {
          rebuildEditorContent(events);
        }
      } else {// "dramatical" change
        rebuildEditorContent(events);

        if (!hasFocus() && !myIntentionsSupport.isLightBulbVisible()) {
          return;
        }

        revertErrorCells(events);
        relayout();
        updateSelection(events, lastSelectedNode);
      }

      if (!myInsideOfCommand) {
        relayout();
      }
    } finally {
      if (rootTrace) {
        System.out.println(getEditorContext().stopTracing());
      } else {
        getEditorContext().popTracerTask();
      }
    }
  }

  private void updateSelection(List<SModelEvent> events, SNode lastSelectedNode) {
    SModelEvent lastAdd = null;
    SModelEvent lastRemove = null;

    List<SNode> childAddedEventNodes = new ArrayList<SNode>();

    for (SModelEvent e : events) {
      if (e instanceof SModelChildEvent) {
        SModelChildEvent ce = (SModelChildEvent) e;
        if (jetbrains.mps.util.SNodeOperations.isAncestor(getEditedNode(), ce.getParent())) {
          if (ce.isAdded()) {
            lastAdd = ce;
            childAddedEventNodes.add(ce.getChild());
          }
          if (ce.isRemoved()) {
            lastRemove = ce;
          }
        }
      }

      if (e instanceof SModelReferenceEvent) {
        SModelReferenceEvent re = (SModelReferenceEvent) e;
        if (re.isAdded()) lastAdd = re;
        if (re.isRemoved()) lastRemove = re;
      }
    }

    if (lastAdd != null && isForcedFocusChangeEnabled()) {
      if (lastAdd instanceof SModelChildEvent) {
        List<NodesParetoFrontier.NodeBox> frontier = NodesParetoFrontier.findParetoFrontier(childAddedEventNodes);
        SNode addedChild = frontier.get(frontier.size() - 1).getNode();
        EditorCell cell = findNodeCell(addedChild);
        if (cell != null) {
          // similar to: IntellijentInputUtil.applyRigthTransform() logic
          EditorCell errorCell = CellFinderUtil.findFirstError(cell, true);
          if (errorCell != null) {
            changeSelectionWRTFocusPolicy(errorCell);
          } else {
            changeSelectionWRTFocusPolicy(cell);
          }
        }
        return;
      } else {
        //noinspection ConstantConditions
        if (lastAdd instanceof SModelReferenceEvent) {
          SModelReferenceEvent re = (SModelReferenceEvent) lastAdd;
          selectRefCell(re.getReference());
          return;
        } else {
          //
        }
      }
    }

    if (lastRemove != null) {
      if (lastRemove instanceof SModelChildEvent && (lastSelectedNode == null || lastSelectedNode.getModel() == null)) {
        SModelChildEvent ce = (SModelChildEvent) lastRemove;
        int childIndex = ce.getChildIndex();
        String role = ce.getChildRole();
        SNode parent = ce.getParent();

        List<? extends SNode> siblings = IterableUtil.asList(parent.getChildren(role));
        if (siblings.isEmpty()) {
          EditorCell nullCell = findNodeCellWithRole(parent, role);
          if (nullCell == null) {
            EditorCell cell = findNodeCell(parent);
            if (cell != null) {
              EditorCell lastLeaf = cell.getLastLeaf(CellConditions.SELECTABLE);
              if (lastLeaf == null) {
                return;
              }
              changeSelection(lastLeaf);
              lastLeaf.end();
              return;
            }
          } else {
            changeSelectionWRTFocusPolicy(nullCell);
          }
        } else {
          SNode target = null;
          int index = 0;
          for (SNode child : parent.getChildren()) {
            if (index >= childIndex) {
              break;
            }
            if (role.equals(child.getRoleInParent())) {
              target = child;
            }
            index++;
          }

          if (target != null) {
            EditorCell cell = findNodeCell(target);
            if (cell != null) {
              EditorCell lastLeaf = cell.getLastLeaf(CellConditions.SELECTABLE);
              if (lastLeaf == null) {
                return;
              }
              changeSelection(lastLeaf);
              lastLeaf.end();
              return;
            }
          } else {
            EditorCell cell = findNodeCell(siblings.get(0));
            if (cell != null) {
              EditorCell lastLeaf = cell.getFirstLeaf(CellConditions.SELECTABLE);
              if (lastLeaf == null) {
                return;
              }
              changeSelection(lastLeaf);
              lastLeaf.home();
              return;
            }
          }
        }
      }

      //noinspection ConstantConditions
      if (lastRemove instanceof SModelReferenceEvent && isForcedFocusChangeEnabled()) {
        SModelReferenceEvent re = (SModelReferenceEvent) lastRemove;
        SReference ref = re.getReference();
        SNode sourceNode = ref.getSourceNode();
        String role = ref.getRole();
        EditorCell nullCell = findNodeCellWithRole(sourceNode, role);
        if (nullCell == null) {
          EditorCell cell = findNodeCell(sourceNode);
          if (cell != null) {
            changeSelectionWRTFocusPolicy(cell);
          }
        } else {
          changeSelectionWRTFocusPolicy(nullCell);
        }
      }
    }

    if (getSelectedNode() == null) {
      EditorCell lastSelectedNodeCell = findNodeCell(lastSelectedNode);
      if (lastSelectedNodeCell != null) {
        jetbrains.mps.openapi.editor.cells.EditorCell child = CellFinderUtil.findFirstSelectableLeaf(lastSelectedNodeCell);
        if (child != null) {
          changeSelection(child);
        }
      }
    }
  }

  private void revertErrorCells(List<SModelEvent> events) {
    final boolean[] wereReverted = new boolean[1];
    for (SModelEvent e : events) {
      e.accept(new SModelEventVisitorAdapter() {
        @Override
        public void visitPropertyEvent(SModelPropertyEvent event) {
          EditorCell cell = findNodeCell(event.getNode());
          if (cell != null && isErrorWithinBigCell(cell)) {
            synchronizeWithModelWithinBigCell(cell);
            wereReverted[0] = true;
          }
        }

        @Override
        public void visitReferenceEvent(SModelReferenceEvent event) {
          EditorCell cell = findNodeCell(event.getReference().getSourceNode());
          if (cell != null && isErrorWithinBigCell(cell)) {
            synchronizeWithModelWithinBigCell(cell);
            wereReverted[0] = true;
          }
        }

        private boolean isErrorWithinBigCell(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
          if (cell.isErrorState()) return true;

          if (cell instanceof jetbrains.mps.openapi.editor.cells.EditorCell_Collection) {
            jetbrains.mps.openapi.editor.cells.EditorCell_Collection collection = (jetbrains.mps.openapi.editor.cells.EditorCell_Collection) cell;

            for (jetbrains.mps.openapi.editor.cells.EditorCell child : collection) {
              if (child.isBig()) continue;
              if (isErrorWithinBigCell(child)) return true;
            }
          }

          return false;
        }
      });
    }
  }

  private void synchronizeWithModelWithinBigCell(jetbrains.mps.openapi.editor.cells.EditorCell cell) {
    if (cell instanceof jetbrains.mps.openapi.editor.cells.EditorCell_Collection) {
      jetbrains.mps.openapi.editor.cells.EditorCell_Collection collection = (jetbrains.mps.openapi.editor.cells.EditorCell_Collection) cell;
      for (jetbrains.mps.openapi.editor.cells.EditorCell child : collection) {
        if (child.getSNode() == cell.getSNode()) {
          synchronizeWithModelWithinBigCell(child);
        }
      }
    } else {
      APICellAdapter.synchronizeViewWithModel(cell);
    }
  }


  private void commitAll() {
    getModelAccess().executeCommandInEDT(new Runnable() {
      @Override
      public void run() {
        doCommitAll(getRootCell());
      }
    });
  }

  private void doCommitAll(jetbrains.mps.openapi.editor.cells.EditorCell current) {
    if (current instanceof EditorCell_Property) {
      ((EditorCell_Property) current).commit();
    }
    if (current instanceof jetbrains.mps.openapi.editor.cells.EditorCell_Collection) {
      jetbrains.mps.openapi.editor.cells.EditorCell_Collection collection = (jetbrains.mps.openapi.editor.cells.EditorCell_Collection) current;
      for (jetbrains.mps.openapi.editor.cells.EditorCell cell : collection) {
        doCommitAll(cell);
      }
    }
  }

  /**
   * It's possible that associated module was already removed from MPSModuleRepository (for example - transient models
   * modules are currently removed from MPSModuleRepository before next code generation session). In this case currently
   * open editor should be closed as a result of another notification processing. We need to suppress editor update
   * process in this case because an editor is not in valid state right now.
   */
  private boolean isModuleDisposed() {
    // TODO review
    return false; // myOperationContext != null && myOperationContext.getModule() == null;
  }

  private boolean isProjectDisposed() {
    return getOperationContext() != null && getOperationContext().getProject() != null && getOperationContext().getProject().isDisposed();
  }

  private boolean isNodeDisposed() {
    return getEditedNode() != null && jetbrains.mps.util.SNodeOperations.isDisposed(getEditedNode());
  }

  public CellTracker getCellTracker() {
    return myCellTracker;
  }

  public BracesHighlighter getBracesHighlighter() {
    return myBracesHighlighter;
  }

  private static class MyBaseAction extends BaseAction implements DumbAware {
    private final KeyMapAction myAction;
    private final EditorContext myEditorContext;

    public MyBaseAction(KeyMapAction action, EditorContext editorContext) {
      super("" + action.getDescriptionText());
      myAction = action;
      myEditorContext = editorContext;
      String keyStroke = action.getKeyStroke();
      if (keyStroke != null && keyStroke.length() != 0) {
        KeyboardShortcut shortcut = new KeyboardShortcut(KeyStroke.getKeyStroke(keyStroke), null);
        KeymapManager.getInstance().getKeymap(KeymapManager.DEFAULT_IDEA_KEYMAP).addShortcut(getActionId(), shortcut);
      }
    }

    @Override
    protected void doExecute(AnActionEvent e, Map<String, Object> _params) {
      try {
        myAction.execute(myEditorContext);
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
  }

  private class MySimpleModelListener extends SModelRepositoryAdapter {
    @Override
    public void modelsReplaced(Set<SModel> replacedModels) {
      assert SwingUtilities.isEventDispatchThread() : "Model reloaded notification expected in EventDispatchThread";

      boolean needToRebuild = false;
      SModelReference currentModelReference = getCurrentModelReference();
      for (SModel model : replacedModels) {
        needToRebuild = needToRebuild || mySModelsWithListener.contains(model);

        if (myNode != null && model.getReference().equals(currentModelReference)) {
          assertModelNotDisposed();
          SNode newNode = model.getNode(myNode.getNodeId());
          if (newNode != null && newNode != myNode) {
            myNode = newNode;
            needToRebuild = true;
          }
        }
      }

      if (needToRebuild) {
        rebuildEditorContent();
      }
    }

    @Override
    public void beforeModelRemoved(SModel model) {
      if (!mySModelsWithListener.contains(model)) return;
      if (model.getReference().equals(getCurrentModelReference())) {
        myModelDisposedStackTrace = Thread.currentThread().getStackTrace();
      }
    }

    private SModelReference getCurrentModelReference() {
      return getEditorContext() != null && getEditorContext().getModel() != null ? getEditorContext().getModel().getReference() : null;
    }
  }

  private class MyEventsCollector extends EventsCollector {
    @Override
    protected void eventsHappened(List<SModelEvent> events) {
      handleEvents(events);
    }
  }

  public static interface RebuildListener {
    public void editorRebuilt(EditorComponent editor);
  }

  public static interface CellSynchronizationWithModelListener {
    public void cellSynchronizedWithModel(jetbrains.mps.openapi.editor.cells.EditorCell cell);
  }

  public static interface EditorDisposeListener {
    public void editorWillBeDisposed(EditorComponent component);
  }

  @Override
  public void repaint() {
    super.repaint();
    if (myLeftHighlighter != null) {
      myLeftHighlighter.repaint();
    }
  }

  @Override
  public ActionHandler getActionHandler() {
    return myActionHandler;
  }

  public synchronized void setEnabledHints(@NotNull Set<String> enabledHints) {
    myEnabledHints = enabledHints;
  }

  @NotNull
  public synchronized Set<String> getEnabledHints() {
    return myEnabledHints;
  }

  public void setUseCustomHints(boolean useDefaultsHints) {
    myUseCustomHints = useDefaultsHints;
  }
  public boolean getUseCustomHints() {
    return myUseCustomHints;
  }

  private class ReferenceUnderliner {
    private EditorCell myLastReferenceCell;

    private ReferenceUnderliner() {
      addKeyListener(new KeyAdapter() {
        @Override
        public void keyPressed(KeyEvent e) {
          if (e.getKeyCode() == getKeyCode()) {
            setControlOver();
          }
        }

        @Override
        public void keyReleased(KeyEvent e) {
          if (e.getKeyCode() == getKeyCode()) {
            clearControlOver();
          }
        }

        private int getKeyCode() {
          return com.intellij.openapi.util.SystemInfo.isMac ? KeyEvent.VK_META : KeyEvent.VK_CONTROL;
        }
      });
      addMouseMotionListener(new MouseMotionListener() {
        @Override
        public void mouseDragged(MouseEvent e) {
        }

        @Override
        public void mouseMoved(MouseEvent e) {
          if (!myEditorContext.getNodeEditorComponent().isFocusOwner()) return;

          clearControlOver();
          if (!(com.intellij.openapi.util.SystemInfo.isMac ? e.isMetaDown() : e.isControlDown())) {
            myLastReferenceCell = null;
            return;
          }

          if (myRootCell == null) {
            myLastReferenceCell = null;
            return;
          }
          final jetbrains.mps.openapi.editor.cells.EditorCell editorCell = myRootCell.findLeaf(e.getX(), e.getY());
          if (editorCell == null) {
            myLastReferenceCell = null;
            return;
          }
          SNode snodeWRTReference = runRead(new Computable<SNode>() {
            @Override
            public SNode compute() {
              return isInvalid() ? null : APICellAdapter.getSNodeWRTReference(editorCell);
            }
          });
          if (editorCell.getSNode() == snodeWRTReference) {
            myLastReferenceCell = null;
            return;
          }
          myLastReferenceCell = (EditorCell) editorCell;

          setControlOver();
        }
      });
      addFocusListener(new FocusListener() {
        @Override
        public void focusGained(FocusEvent e) {
        }

        @Override
        public void focusLost(FocusEvent e) {
          clearControlOver();
          myLastReferenceCell = null;
        }
      });
    }

    private void clearControlOver() {
      if (myLastReferenceCell != null) {
        myLastReferenceCell.getStyle().set(StyleAttributes.CONTROL_OVERED_REFERENCE, false);
        setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
        repaint();
      }
    }

    private void setControlOver() {
      if (myLastReferenceCell != null) {
        myLastReferenceCell.getStyle().set(StyleAttributes.CONTROL_OVERED_REFERENCE, true);
        setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
        repaint();
      }
    }
  }


  private class MyCutProvider implements CutProvider {
    @Override
    public void performCut(@NotNull DataContext dataContext) {
      getModelAccess().executeCommandInEDT(new Runnable() {
        @Override
        public void run() {
          if (isDisposed() || isInvalid() || isReadOnly()) {
            return;
          }
          jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
          if (selectedCell != null) {
            myActionHandler.executeAction(selectedCell, jetbrains.mps.openapi.editor.cells.CellActionType.CUT);
          } else {
            getSelectionManager().getSelection().executeAction(jetbrains.mps.openapi.editor.cells.CellActionType.CUT);
          }
        }
      });
    }

    @Override
    public boolean isCutEnabled(@NotNull DataContext dataContext) {
      return !isDisposed() &&
          !isInvalidLightweight() &&
          !isReadOnly() &&
          getSelectionManager().getSelection() != null;
    }

    @Override
    public boolean isCutVisible(@NotNull DataContext dataContext) {
      return true;
    }
  }

  private class MyCopyProvider implements CopyProvider {
    @Override
    public void performCopy(@NotNull DataContext dataContext) {
      getModelAccess().executeCommandInEDT(new Runnable() {
        @Override
        public void run() {
          if (isDisposed() || isInvalid()) {
            return;
          }
          jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
          if (selectedCell != null) {
            myActionHandler.executeAction(selectedCell, jetbrains.mps.openapi.editor.cells.CellActionType.COPY);
          } else {
            getSelectionManager().getSelection().executeAction(jetbrains.mps.openapi.editor.cells.CellActionType.COPY);
          }
        }
      });
    }

    @Override
    public boolean isCopyEnabled(@NotNull DataContext dataContext) {
      return !isDisposed() &&
          !isInvalidLightweight() &&
          getSelectionManager().getSelection() != null;
    }

    @Override
    public boolean isCopyVisible(@NotNull DataContext dataContext) {
      return true;
    }
  }

  private class MyPasteProvider implements PasteProvider {
    @Override
    public void performPaste(@NotNull DataContext dataContext) {
      getModelAccess().executeCommandInEDT(new Runnable() {
        @Override
        public void run() {
          if (isDisposed() || isInvalid() || isReadOnly()) {
            return;
          }
          jetbrains.mps.openapi.editor.cells.EditorCell selectedCell = getSelectedCell();
          if (selectedCell != null) {
            myActionHandler.executeAction(selectedCell, jetbrains.mps.openapi.editor.cells.CellActionType.PASTE);
          } else {
            getSelectionManager().getSelection().executeAction(jetbrains.mps.openapi.editor.cells.CellActionType.PASTE);
          }
        }
      });
    }

    @Override
    public boolean isPastePossible(@NotNull DataContext dataContext) {
      return !isDisposed() &&
          !isInvalidLightweight() &&
          !isReadOnly() &&
          getSelectionManager().getSelection() != null;
    }

    @Override
    public boolean isPasteEnabled(@NotNull DataContext dataContext) {
      return true;
    }
  }

  /**
   * This is a copy of com.intellij.openapi.editor.impl.EditorImpl.MyScrollBar classwith some additional code
   */
  private static final Field decrButtonField;
  private static final Field incrButtonField;

  static {
    try {
      decrButtonField = BasicScrollBarUI.class.getDeclaredField("decrButton");
      decrButtonField.setAccessible(true);

      incrButtonField = BasicScrollBarUI.class.getDeclaredField("incrButton");
      incrButtonField.setAccessible(true);
    } catch (NoSuchFieldException e) {
      throw new IllegalStateException(e);
    }
  }

  class MyScrollBar extends JBScrollBar implements IdeGlassPane.TopComponent, TooltipComponent {
    @NonNls
    private static final String APPLE_LAF_AQUA_SCROLL_BAR_UI_CLASS = "apple.laf.AquaScrollBarUI";
    private ScrollBarUI myPersistentUI;

    MyScrollBar(int orientation) {
      super(orientation);
    }

    void setPersistentUI(ScrollBarUI ui) {
      myPersistentUI = ui;
      setUI(ui);
    }

    @Override
    public boolean canBePreprocessed(MouseEvent e) {
      return JBScrollPane.canBePreprocessed(e, this);
    }

    @Override
    public void setUI(ScrollBarUI ui) {
      if (myPersistentUI == null) myPersistentUI = ui;
      super.setUI(myPersistentUI);
    }

    /**
     * This is helper method. It returns height of the top (decrease) scroll bar
     * button. Please note, that it's possible to return real height only if scroll bar
     * is instance of BasicScrollBarUI. Otherwise it returns fake (but good enough :) )
     * value.
     */
    int getDecScrollButtonHeight() {
      ScrollBarUI barUI = getUI();
      Insets insets = getInsets();
      if (barUI instanceof ButtonlessScrollBarUI) {
        return insets.top + ((ButtonlessScrollBarUI) barUI).getDecrementButtonHeight();
      } else if (barUI instanceof BasicScrollBarUI) {
        try {
          JButton decrButtonValue = (JButton) decrButtonField.get(barUI);
          LOG.assertLog(decrButtonValue != null);
          return insets.top + decrButtonValue.getHeight();
        } catch (Exception exc) {
          throw new IllegalStateException(exc);
        }
      } else {
        return insets.top + 15;
      }
    }

    /**
     * This is helper method. It returns height of the bottom (increase) scroll bar
     * button. Please note, that it's possible to return real height only if scroll bar
     * is instance of BasicScrollBarUI. Otherwise it returns fake (but good enough :) )
     * value.
     */
    int getIncScrollButtonHeight() {
      ScrollBarUI barUI = getUI();
      Insets insets = getInsets();
      if (barUI instanceof ButtonlessScrollBarUI) {
        return insets.top + ((ButtonlessScrollBarUI) barUI).getIncrementButtonHeight();
      } else if (barUI instanceof BasicScrollBarUI) {
        try {
          JButton incrButtonValue = (JButton) incrButtonField.get(barUI);
          LOG.assertLog(incrButtonValue != null);
          return insets.bottom + incrButtonValue.getHeight();
        } catch (Exception exc) {
          throw new IllegalStateException(exc.getMessage());
        }
      } else if (APPLE_LAF_AQUA_SCROLL_BAR_UI_CLASS.equals(barUI.getClass().getName())) {
        return insets.bottom + 30;
      } else {
        return insets.bottom + 15;
      }
    }

    @Override
    public int getUnitIncrement(int direction) {
      JViewport vp = myScrollPane.getViewport();
      Rectangle vr = vp.getViewRect();
      return getScrollableUnitIncrement(vr, SwingConstants.VERTICAL, direction);
    }

    @Override
    public int getBlockIncrement(int direction) {
      JViewport vp = myScrollPane.getViewport();
      Rectangle vr = vp.getViewRect();
      return getScrollableBlockIncrement(vr, SwingConstants.VERTICAL, direction);
    }

    @Override
    public String getMPSTooltipText(MouseEvent mouseEvent) {
      if (getUI() instanceof TooltipComponent) {
        return ((TooltipComponent) getUI()).getMPSTooltipText(mouseEvent);
      }
      return null;
    }
  }
}

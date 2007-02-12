package jetbrains.mps.ide.actions.nodes;

import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.core.structure.BaseConcept;
import jetbrains.mps.helgins.structure.*;
import jetbrains.mps.ide.EditorsPane;
import jetbrains.mps.ide.IEditor;
import jetbrains.mps.ide.action.ActionContext;
import jetbrains.mps.ide.action.MPSAction;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.navigation.EditorNavigationCommand;
import jetbrains.mps.ide.navigation.NavigationActionProcessor;
import jetbrains.mps.nodeEditor.EditorCell;
import jetbrains.mps.patterns.structure.PatternExpression;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.Condition;
import jetbrains.mpswiki.queryLanguage.structure.ConceptReference;
import jetbrains.mpswiki.queryLanguage.structure.QueryPattern;
import jetbrains.mpswiki.queryLanguage.structure.VariableCondition;
import org.jetbrains.annotations.NotNull;

import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.JLabel;
import javax.swing.JPopupMenu;
import javax.swing.border.EmptyBorder;
import java.awt.Color;
import java.awt.Component;
import java.awt.event.ActionEvent;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 15.11.2006
 * Time: 13:30:35
 * To change this template use File | Settings | File Templates.
 */
public class GoToRulesAction extends MPSAction {

  public GoToRulesAction() {
    super("Go To Typesystem Rules");
  }

  @NotNull
  public String getKeyStroke() {
    return "control shift R";
  }


  public void update(@NotNull ActionContext context) {
    boolean enabled = BaseAdapter.fromNode(context.getNode()) instanceof ConceptDeclaration;
    setEnabled(enabled);
    setVisible(enabled);
  }


  public void execute(@NotNull ActionContext context) {
    final ConceptDeclaration conceptDeclaration = (ConceptDeclaration) BaseAdapter.fromNode(context.getNode());
    final IOperationContext operationContext = context.getOperationContext();
    Language language = SModelUtil_new.getDeclaringLanguage(conceptDeclaration, operationContext.getScope());
    List<SNode> rules = new ArrayList<SNode>();
    if (language != null && language.getHelginsTypesystemModelDescriptor() != null) {
      SModelDescriptor helginsDescriptor = language.getHelginsTypesystemModelDescriptor();
      if (helginsDescriptor != null) {
        rules.addAll(helginsDescriptor.getSModel().getRoots(new Condition<SNode>() {
          public boolean met(SNode n) {
            BaseAdapter object = BaseAdapter.fromNode(n);
            AnalyzedTermDeclaration analyzedTermDeclaration = null;
            if (object instanceof Rule) {
              analyzedTermDeclaration = ((Rule)object).getApplicableNodes().get(0);
            }
            if (object instanceof SubtypingRule) {
              analyzedTermDeclaration = ((SubtypingRule)object).getApplicableNode();
            }
            if (object instanceof SubtypingVarianceRule) {
              return SModelUtil_new.isAssignableConcept(conceptDeclaration, ((SubtypingVarianceRule)object).getConceptDeclaration());
            }
            if (object instanceof TypeAdaptationRule) {
              analyzedTermDeclaration = ((TypeAdaptationRule)object).getApplicableNodes().get(0);
            }
            return maybeApplicable(conceptDeclaration, analyzedTermDeclaration, operationContext.getScope());
          }
        }));
      }
    }
    EditorsPane editorsPane = operationContext.getComponent(EditorsPane.class);
    IEditor currentEditor = editorsPane.getCurrentEditor();
    
    if (rules.size() == 1) {// single rule
      NavigationActionProcessor.executeNavigationAction(new EditorNavigationCommand(rules.get(0), currentEditor, editorsPane), operationContext);
      return;
    }

    // multiple rules
    MyMenu m = new MyMenu(rules, operationContext);
    int x = 0;
    int y = 0;
    EditorCell cell = context.get(EditorCell.class);
    if (cell != null) {
      x = cell.getX();
      y = cell.getY();
    }
    Component invoker;
    if (currentEditor == null) {
      invoker = context.getFrame();
    } else {
      invoker = currentEditor.getCurrentEditorComponent();
    }
    m.show(invoker, x, y);
  }

  private static boolean maybeApplicable(ConceptDeclaration conceptDeclaration, AnalyzedTermDeclaration analyzedTermDeclaration, IScope scope) {
    if (analyzedTermDeclaration == null) return false;
    VariableCondition condition = analyzedTermDeclaration.getCondition();
    if (condition instanceof ConceptReference) {
      ConceptReference conceptReference = (ConceptReference)condition;
      return SModelUtil_new.isAssignableConcept(conceptDeclaration, conceptReference.getConcept());
    } else if (condition instanceof QueryPattern) {
      QueryPattern queryPattern = (QueryPattern)condition;
      PatternExpression expression = queryPattern.getPattern();
      if (expression == null) return false;
      BaseConcept baseConcept = expression.getPatternNode();
      if (baseConcept == null) return false;
      return SModelUtil_new.isAssignableConcept(conceptDeclaration, baseConcept.getNodeConcept());
    }
    return false;
  }

  private class MyMenu extends JPopupMenu {

    public MyMenu(List<SNode> list, final IOperationContext operationContext) {
      setBackground(Color.WHITE);

      String caption = list.isEmpty() ? "No Rules" : "Rules :";
      JLabel label = new JLabel(caption, JLabel.CENTER);
      label.setBorder(new EmptyBorder(0, 20, 0, 0));
      label.setBackground(Color.LIGHT_GRAY);
      add(label);
      final EditorsPane editorsPane = operationContext.getComponent(EditorsPane.class);
      final IEditor currentEditor = editorsPane.getCurrentEditor();
      for (final SNode node : list) {
        if(node == null) continue;
        String nodeName = node.getName();
        if (nodeName == null || nodeName.equals("")) nodeName = node.getConceptName();
        add(new AbstractAction(nodeName + " (" + node.getModel() + ")") {
          {
            putValue(Action.SMALL_ICON, IconManager.getIconFor(node));
          }

          public void actionPerformed(ActionEvent e) {
            NavigationActionProcessor.executeNavigationAction(new EditorNavigationCommand(node, currentEditor, editorsPane), operationContext);
          }
        }).setBackground(Color.WHITE);
      }
    }
  }
}

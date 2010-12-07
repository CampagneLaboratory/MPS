package jetbrains.mps.typesystem.util;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.util.Pair;
import java.util.List;
import javax.swing.JPopupMenu;
import javax.swing.AbstractAction;
import java.awt.event.ActionEvent;
import jetbrains.mps.smodel.SModelReference;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SModelRepository;
import com.intellij.openapi.util.Computable;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.workbench.editors.MPSEditorOpener;

public class GoToTypeErrorRuleUtil {
  private static Logger LOG = Logger.getLogger(GoToTypeErrorRuleUtil.class);

  public GoToTypeErrorRuleUtil() {
  }

  public static void goToTypeErrorRule(final IOperationContext context, IErrorReporter error) {
    final Pair<String, String> ruleModelAndId = new Pair<String, String>(error.getRuleModel(), error.getRuleId());
    List<Pair<String, String>> additionalRulesIds = error.getAdditionalRulesIds();
    if (additionalRulesIds.isEmpty()) {
      goToRuleById(context, ruleModelAndId);
    } else {
      JPopupMenu menu = new JPopupMenu();
      menu.add(new AbstractAction("Go To Immediate Rule ") {
        public void actionPerformed(ActionEvent p0) {
          goToRuleById(context, ruleModelAndId);
        }
      });
      for (final Pair<String, String> pair : additionalRulesIds) {
        menu.add(new AbstractAction("Go To Rule Which Led To Immediate Rule: " + pair.o2) {
          public void actionPerformed(ActionEvent p0) {
            goToRuleById(context, pair);
          }
        });
      }
      menu.setVisible(true);
    }
  }

  public static void goToRuleById(IOperationContext context, Pair<String, String> ruleModelAndId) {
    String ruleModel = ruleModelAndId.o1;
    final String ruleID = ruleModelAndId.o2;
    SModelReference modelUID = SModelReference.fromString(ruleModel);
    modelUID = SModelReference.fromString(modelUID.getLongName());
    final SModelDescriptor modelDescriptor = SModelRepository.getInstance().getModelDescriptor(modelUID);
    if (modelDescriptor == null) {
      LOG.error("can't find rule's model " + ruleModel);
      return;
    }
    Computable<SNode> c = new Computable<SNode>() {
      public SNode compute() {
        return modelDescriptor.getSModel().getNodeById(ruleID);
      }
    };
    SNode rule = (ModelAccess.instance().canRead() ?
      c.compute() :
      ModelAccess.instance().runReadAction(c)
    );
    if (rule == null) {
      LOG.error("can't find rule with id " + ruleID + " in the model " + modelDescriptor);
      return;
    }
    context.getComponent(MPSEditorOpener.class).openNode(rule);
  }
}

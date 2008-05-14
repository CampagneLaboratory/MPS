package jetbrains.mps.helgins.inference;

import jetbrains.mps.intentions.IntentionProvider;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 18.03.2007
 * Time: 13:41:43
 * To change this template use File | Settings | File Templates.
 */
public class SimpleErrorReporter implements IErrorReporter {
  private String myErrorString;
  private String myRuleModel;
  private String myRuleId;
  private IntentionProvider myIntentionProvider;
  private boolean myIsWarning = false;

  public SimpleErrorReporter(String s, String ruleModel, String ruleId) {
    myErrorString = s;
    myRuleModel = ruleModel;
    myRuleId = ruleId;
  }

  public SimpleErrorReporter(String s, String ruleModel, String ruleId, boolean isWarning) {
    this(s, ruleModel, ruleId);
    myIsWarning = isWarning;
  }

  public String reportError() {
    return myErrorString;
  }

  public String getRuleId() {
    return myRuleId;
  }

  public String getRuleModel() {
    return myRuleModel;
  }

  public boolean isWarning() {
    return myIsWarning;
  }

  public void setIntentionProvider(IntentionProvider intentionProvider) {
    myIntentionProvider = intentionProvider;
  }

  public IntentionProvider getIntentionProvider() {
    return myIntentionProvider;
  }
}

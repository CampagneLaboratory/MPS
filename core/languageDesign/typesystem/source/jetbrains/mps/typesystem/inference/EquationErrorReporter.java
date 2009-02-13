/*
 * Copyright 2003-2009 JetBrains s.r.o.
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
package jetbrains.mps.typesystem.inference;

import jetbrains.mps.typesystem.uiActions.PresentationManager;
import jetbrains.mps.typesystem.inference.IWrapper;
import jetbrains.mps.intentions.IntentionProvider;
import jetbrains.mps.nodeEditor.MessageStatus;
import jetbrains.mps.nodeEditor.IErrorReporter;
import jetbrains.mps.smodel.SNode;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 18.03.2007
 * Time: 13:42:42
 * To change this template use File | Settings | File Templates.
 */
public class EquationErrorReporter implements IErrorReporter {
  private EquationManager myEquationManager;
  private String myBefore;
  private String myBetween;
  private String myAfter;
  private IWrapper myWrapper1;
  private IWrapper myWrapper2;
  private String myRuleId;
  private String myRuleModel;
  private IntentionProvider myIntentionProvider;

  private SNode mySNode;

  public EquationErrorReporter(SNode node, EquationManager equationManager, String before,
                               IWrapper wrapper1, String between, IWrapper wrapper2, String after, String ruleModel, String ruleId) {
    myEquationManager = equationManager;
    myBefore = before;
    myAfter = after;
    myBetween = between;
    myWrapper1 = wrapper1;
    myWrapper2 = wrapper2;
    myRuleId = ruleId;
    myRuleModel = ruleModel;
    mySNode = node;
  }

  public void setIntentionProvider(IntentionProvider intentionProvider) {
    myIntentionProvider = intentionProvider;
  }

  public String reportError() {
    IWrapper representator1 = myWrapper1;
    if (representator1 != null && representator1.isVariable()) {
      representator1 = myEquationManager.getRepresentatorWrapper(myWrapper1);
    }
    IWrapper representator2 = myWrapper2;
    if (representator2 != null && representator2.isVariable()) {
      representator2 = myEquationManager.getRepresentatorWrapper(myWrapper2);
    }
    return myBefore + PresentationManager.toString(representator1) +
            myBetween + PresentationManager.toString(representator2) + myAfter;
  }

  public String getRuleId() {
    return myRuleId;
  }

  public String getRuleModel() {
    return myRuleModel;
  }

  public MessageStatus getMessageStatus() {
    return MessageStatus.ERROR;
  }

  public IntentionProvider getIntentionProvider() {
    return myIntentionProvider;
  }

  public IErrorTarget getErrorTarget() {
    return new NodeErrorTarget();
  }

  public SNode getSNode() {
    return mySNode;
  }
}

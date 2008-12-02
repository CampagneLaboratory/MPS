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
package jetbrains.mps.generator.template;

import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SNode;

public class SourceSubstituteMacroNodesContext extends TemplateQueryContext {
  private SNode myRule;
  private SNode myMacro;

  /**
   * actually this parameter is passed not only to 'sourceNodesQuery' in macros but also to similar queries in rules
   */
  public SourceSubstituteMacroNodesContext(SNode node, SNode ruleNode, SNode macroNode, ITemplateGenerator generator) {
    super(node, macroNode != null ? macroNode.getParent() : null, generator);
    myRule = ruleNode;
    myMacro = macroNode;
  }

  public SNode getRuleNodeForLogging() {
    return myRule;
  }

  public SNode getTemplateNodeForLogging() {
    return myMacro;
  }
}

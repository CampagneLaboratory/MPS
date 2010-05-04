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
package jetbrains.mps.generator.generationTypes;

import jetbrains.mps.debug.info.PositionInfo;
import jetbrains.mps.debug.info.ScopePositionInfo;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.textGen.TextGenManager;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TextGenerationUtil {
  public static TextGenerationResult generateText(IOperationContext context, SNode node) {
    String nodeText;
    boolean containsErrors = false;
    Map<SNode, PositionInfo> positions = null;
    Map<SNode, ScopePositionInfo> scopePositions = null;
    Map<String, List<String>> dependencies = null;
    if (TextGenManager.instance().canGenerateTextFor(node)) {
      TextGenManager.TextGenerationResult generationResult = TextGenManager.instance().generateText(context, node);
      containsErrors = generationResult.hasErrors();
      nodeText = generationResult.getText();
      positions = generationResult.getPositions();
      scopePositions = generationResult.getScopePositions();
      dependencies = generationResult.getDependencies();
    } else {
      nodeText = "Can't generate text from " + node;
    }
    return new TextGenerationResult(nodeText, containsErrors, positions, scopePositions, dependencies);
  }

  public static class TextGenerationResult {
    private boolean myContainsErrors;
    private String myText;
    private Map<SNode, PositionInfo> myPositions;
    private Map<SNode, ScopePositionInfo> myScopePositions;
    private Map<String, List<String>> myDependencies;

    public TextGenerationResult(String text,
                                boolean containsErrors,
                                Map<SNode, PositionInfo> positions,
                                Map<SNode, ScopePositionInfo> scopePositions,
                                Map<String, List<String>> dependencies) {
      myContainsErrors = containsErrors;
      myText = text;
      myPositions = positions;
      myScopePositions = scopePositions;
      myDependencies = dependencies;
    }

    public boolean hasErrors() {
      return myContainsErrors;
    }

    public String getText() {
      return myText;
    }

    public Map<SNode, PositionInfo> getPositions() {
      return myPositions;
    }

    public Map<SNode, ScopePositionInfo> getScopePositions() {
      return myScopePositions;
    }

    public List<String> getDependencies(String value) {
      return myDependencies != null ? myDependencies.get(value) : null;
    }

    public boolean hasDependencies() {
      return myDependencies != null;
    }
  }

}
                                                            

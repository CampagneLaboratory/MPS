/*
 * Copyright 2003-2013 JetBrains s.r.o.
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

import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.annotations.NotNull;

public class MapSrcMacroContext extends TemplateQueryContextWithMacro {
  private SNode myParentOutputNode;

  public MapSrcMacroContext(SNode node, SNode macroNode, SNode parentOutputNode, TemplateContext context, ITemplateGenerator generator) {
    super(node, macroNode, context, generator);
    myParentOutputNode = parentOutputNode;
  }

  /**
   * @deprecated use {@link #MapSrcMacroContext(TemplateContext, SNode, SNodeReference, ITemplateGenerator)} instead. This constructor
   * will be removed after 3.1
   */
  @Deprecated
  @ToRemove(version=3.1)
  public MapSrcMacroContext(SNode node, @NotNull SNodeReference macroNode, SNode parentOutputNode, TemplateContext context, @NotNull ITemplateGenerator generator) {
    super(node, macroNode, context, generator);
    myParentOutputNode = parentOutputNode;
  }

  /**
   * @since 3.1
   */
  public MapSrcMacroContext(@NotNull TemplateContext context, SNode parentOutputNode, @NotNull SNodeReference macroNode, @NotNull ITemplateGenerator generator) {
    super(context, macroNode, generator);
    myParentOutputNode = parentOutputNode;
  }

  /**
   * 'parentOutputNode' mapping
   */
  public SNode getParentOutputNode() {
    return myParentOutputNode;
  }
}

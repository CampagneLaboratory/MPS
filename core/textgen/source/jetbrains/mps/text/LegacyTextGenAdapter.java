/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.text;

import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.rt.TextGenDescriptor;
import jetbrains.mps.textGen.SNodeTextGen;
import jetbrains.mps.util.SNodeOperations;
import org.jetbrains.annotations.NotNull;

/**
 * Adapt existing generated {@link SNodeTextGen} class to contemporary API of {@link TextGenDescriptor}
 * @author Artem Tikhomirov
 */
public class LegacyTextGenAdapter implements TextGenDescriptor {
  private final Class<? extends SNodeTextGen> myTextGenClass;

  public LegacyTextGenAdapter(@NotNull Class<? extends SNodeTextGen> textGenClass) {
    myTextGenClass = textGenClass;
  }

  @Override
  public void generateText(TextGenContext context) {
    TextGenTransitionContext tc = (TextGenTransitionContext) context;
    final SNodeTextGen textGen = getInstance();
    textGen.setBuffer(tc.getBuffer());
    try {
      textGen.setSNode(tc.getPrimaryInput());
      textGen.doGenerateText(tc.getPrimaryInput());
    } catch (Exception e) {
      tc.getBuffer().foundError("failed to generate text for " + SNodeOperations.getDebugText(tc.getPrimaryInput()), tc.getPrimaryInput(), e);
    }
  }

  private SNodeTextGen getInstance() {
    try {
      return myTextGenClass.newInstance();
    } catch (RuntimeException ex) {
      throw ex;
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }
}

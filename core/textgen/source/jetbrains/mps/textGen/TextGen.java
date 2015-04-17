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
package jetbrains.mps.textGen;

import jetbrains.mps.messages.IMessage;
import jetbrains.mps.messages.Message;
import jetbrains.mps.messages.MessageKind;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.structure.DescriptorUtils;
import jetbrains.mps.text.MissingTextGenDescriptor;
import jetbrains.mps.text.TextGenTransitionContext;
import jetbrains.mps.text.rt.TextGenDescriptor;
import jetbrains.mps.textgen.trace.PositionInfo;
import jetbrains.mps.textgen.trace.ScopePositionInfo;
import jetbrains.mps.textgen.trace.TraceablePositionInfo;
import jetbrains.mps.textgen.trace.UnitPositionInfo;
import jetbrains.mps.util.EncodingUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.SNodeOperations;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.util.ImmediateParentConceptIterator;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class TextGen {
  public static final String PACKAGE_NAME = "PACKAGE_NAME";
  public static final String DEPENDENCY = "DEPENDENCY";
  public static final String EXTENDS = "EXTENDS";
  public static final String OUTPUT_ENCODING = "OUTPUT_ENCODING";
  public static final String ROOT_NODE = "ROOT_NODE";

  public static final String NO_TEXTGEN = "\33\33NO TEXTGEN\33\33";

  // api
  public static TextGenerationResult generateText(SNode node) {
    return generateText(node, false, false, null);
  }

  public static boolean canGenerateTextFor(SNode node) {
    return !(getTextGenForNode(node) instanceof MissingTextGenDescriptor);
  }

  public static String getExtension(@NotNull SNode node) {
    return getLegacyTextGen(node).getExtension(node);
  }

  public static String getFileName(@NotNull SNode node) {
    final SNodeTextGen tg = getLegacyTextGen(node);
    String fname = tg.getFilename(node);
    String extension = tg.getExtension(node);
    return (extension == null) ? fname : fname + '.' + extension;
  }

  public static TextGenerationResult generateText(SNode node, boolean failIfNoTextgen, boolean withDebugInfo, @Nullable StringBuilder[] buffers) {
    if (canGenerateTextFor(node)) {
      return generateText(node, withDebugInfo, buffers);
    } else if (failIfNoTextgen) {
      String error = "Can't generate text from " + node;
      Message m = new Message(MessageKind.ERROR, error);
      if (node != null) {
        m.setHintObject(node.getReference());
      }
      return new TextGenerationResult(node, NO_TEXTGEN, true, Collections.<IMessage>singleton(m), null, null, null, null);
    } else {
      return new TextGenerationResult(node, NO_TEXTGEN, false, Collections.<IMessage>emptyList(), null, null, null, null);
    }
  }

  public static TextGenerationResult generateText(SNode node, boolean withDebugInfo, @Nullable StringBuilder[] buffers) {
    TextGenBuffer buffer = new TextGenBuffer(withDebugInfo, buffers);
    buffer.putUserObject(PACKAGE_NAME, jetbrains.mps.util.SNodeOperations.getModelLongName(node.getModel()));
    buffer.putUserObject(ROOT_NODE, node);
    appendNodeText(buffer, node, null);

    // position info
    Map<SNode, TraceablePositionInfo> positionInfo = null;
    Map<SNode, ScopePositionInfo> scopeInfo = null;
    Map<SNode, UnitPositionInfo> unitInfo = null;
    if (withDebugInfo) {
      positionInfo = TraceInfoGenerationUtil.getUserObjects(buffer, TraceInfoGenerationUtil.POSITION_INFO);
      scopeInfo = TraceInfoGenerationUtil.getUserObjects(buffer, TraceInfoGenerationUtil.SCOPE_INFO);
      unitInfo = TraceInfoGenerationUtil.getUserObjects(buffer, TraceInfoGenerationUtil.UNIT_INFO);
      int topLength = buffer.getTopBufferLineCount();
      topLength++; // human-friendly line numbers (not 0-based)
      adjustPositions(topLength, positionInfo);
      adjustPositions(topLength, scopeInfo);
      adjustPositions(topLength, unitInfo);
    }

    // dependencies
    List<String> dependencies = getUserObjectCollection(DEPENDENCY, node, buffer, (Set<String>) buffer.getUserObject(EXTENDS));
    List<String> extend = getUserObjectCollection(EXTENDS, node, buffer, null);

    Map<String, List<String>> deps = new HashMap<String, List<String>>(2);
    deps.put(DEPENDENCY, dependencies);
    deps.put(EXTENDS, extend);

    Object result = buffer.getText();
    String outputEncoding = (String) buffer.getUserObject(OUTPUT_ENCODING);
    if (outputEncoding != null) {
      if (outputEncoding.equals("binary")) {
        result = EncodingUtil.decodeBase64((String) result);
      } else {
        try {
          result = EncodingUtil.encode((String) result, outputEncoding);
        } catch (IOException ex) {
          buffer.foundError("cannot encode the output stream", null, ex);
        }
      }
    }
    return new TextGenerationResult(node, result, buffer.hasErrors(), buffer.problems(), positionInfo, scopeInfo, unitInfo, deps);
  }

  /* package */ static void appendNodeText(TextGenBuffer buffer, SNode node, @Nullable SNode contextNode) {
    if (node == null) {
      buffer.append("???");

      if (contextNode != null) {
        buffer.foundError("possible broken reference in " + SNodeOperations.getDebugText(contextNode), contextNode, null);
      }

      return;
    }

    getTextGenForNode(node).generateText(new TextGenTransitionContext(node, buffer));
  }

  // helper stuff
  @NotNull
  private static TextGenDescriptor getTextGenForNode(@NotNull SNode node) {
    return TextGenRegistry.getInstance().getTextGenDescriptor(node);
  }

  // compatibility code until TextUnit and code to break input model into these units, with filename assigned, are introduced.
  private static SNodeTextGen getLegacyTextGen(@NotNull SNode node) {
    try {
      for (SConcept next : new ImmediateParentConceptIterator(node.getConcept(), SNodeUtil.concept_BaseConcept)) {
        String languageName = next.getLanguage().getQualifiedName();
        Language l = ModuleRepositoryFacade.getInstance().getModule(languageName, Language.class);
        String textgenClassname = LanguageAspect.TEXT_GEN.getAspectQualifiedClassName(next) + "_TextGen";
        Class<SNodeTextGen> textgenClass = DescriptorUtils.getClassFromLanguage(textgenClassname, l);
        if (textgenClass != null) {
          return textgenClass.newInstance();
        }
      }
    } catch (InstantiationException ex) {
      Logger.getLogger(TextGen.class).error("Failed to instantiate textgen", ex);
      // fall-through
    } catch (IllegalAccessException ex) {
      Logger.getLogger(TextGen.class).error("Failed to instantiate textgen", ex);
      // fall-through
    }
    return new DefaultTextGen();
  }

  private static void adjustPositions(int delta, Map<SNode, ? extends PositionInfo> positionInfo) {
    for (PositionInfo position : positionInfo.values()) {
      position.setStartLine(position.getStartLine() + delta);
      position.setEndLine(position.getEndLine() + delta);
    }
  }

  private static List<String> getUserObjectCollection(String key, SNode node, TextGenBuffer buffer, Set<String> skipSet) {
    Set<String> dependenciesObject = (Set<String>) buffer.getUserObject(key);
    final String nodeFQName = NameUtil.nodeFQName(node);
    if (dependenciesObject != null) {
      List<String> dependencies = new ArrayList<String>(dependenciesObject.size());
      for (String dependObj : dependenciesObject) {
        if (dependObj == null || nodeFQName.equals(dependObj)) {
          continue;
        }
        if (skipSet != null && skipSet.contains(dependObj)) {
          continue;
        }
        dependencies.add(dependObj);
      }
      Collections.sort(dependencies);
      return dependencies;
    }
    return Collections.emptyList();
  }
}

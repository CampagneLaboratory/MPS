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
package jetbrains.mps.textGen;

import jetbrains.mps.internal.collections.runtime.SetSequence;
import jetbrains.mps.kernel.model.SModelUtil;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.traceInfo.PositionInfo;
import jetbrains.mps.traceInfo.ScopePositionInfo;
import jetbrains.mps.traceInfo.UnitPositionInfo;
import jetbrains.mps.util.NameUtil;

import java.util.*;

/**
 * User: Dmitriev.
 * Date: Dec 22, 2003
 */
public class TextGenManager {
  private static final Logger LOG = Logger.getLogger(TextGenManager.class);
  private static TextGenManager ourInstance;
  public static final String PACKAGE_NAME = "PACKAGE_NAME";
  public static final String DEPENDENCY = "DEPENDENCY";
  public static final String EXTENDS = "EXTENDS";
  public static final String IMPORT = "IMPORT";
  //temp hack
  public static final String ADDED_IMPORT = "ADDED_IMPORT";

  public static void reset() {
    ourInstance = null;
  }

  public static TextGenManager instance() {
    if (ourInstance == null) {
      ourInstance = new TextGenManager();
    }
    return ourInstance;
  }

  private Map<String, Class<SNodeTextGen>> myClassesCache;

  /*package*/ TextGenerationResult generateText(IOperationContext context, SNode node) {
    myClassesCache = new HashMap<String, Class<SNodeTextGen>>();

    TextGenBuffer buffer = new TextGenBuffer();
    buffer.putUserObject(PACKAGE_NAME, node.getModel().getLongName());
    appendNodeText(context, buffer, node, null);
    myClassesCache = null;
    String topBufferText = buffer.getTopBufferText();
    int topLength = topBufferText.isEmpty() ? 1 : topBufferText.split(buffer.getLineSeparator(), -1).length + 2;

    // position info
    Map<SNode, PositionInfo> positionInfo = TraceInfoGenerationUtil.getUserObjects(buffer, TraceInfoGenerationUtil.POSITION_INFO);
    Map<SNode, ScopePositionInfo> scopeInfo = TraceInfoGenerationUtil.getUserObjects(buffer, TraceInfoGenerationUtil.SCOPE_INFO);
    Map<SNode, UnitPositionInfo> unitInfo = TraceInfoGenerationUtil.getUserObjects(buffer, TraceInfoGenerationUtil.UNIT_INFO);
    for (PositionInfo position : positionInfo.values()) {
      position.setStartLine(position.getStartLine() + topLength);
      position.setEndLine(position.getEndLine() + topLength);
    }
    for (ScopePositionInfo position : scopeInfo.values()) {
      position.setStartLine(position.getStartLine() + topLength);
      position.setEndLine(position.getEndLine() + topLength);
    }
    for (UnitPositionInfo position : unitInfo.values()) {
      position.setStartLine(position.getStartLine() + topLength);
      position.setEndLine(position.getEndLine() + topLength);
    }

    // dependencies
    List<String> dependencies = getUserObjectCollection(DEPENDENCY, node, buffer, (Set<String>) buffer.getUserObject(EXTENDS));
    List<String> extend = getUserObjectCollection(EXTENDS, node, buffer, null);

    Map<String, List<String>> deps = new HashMap<String, List<String>>(2);
    deps.put(TextGenManager.DEPENDENCY, dependencies);
    deps.put(TextGenManager.EXTENDS, extend);

    return new TextGenerationResult(buffer.getText(), buffer.hasErrors(), positionInfo, scopeInfo, unitInfo, deps);
  }

  public boolean canGenerateTextFor(SNode node) {
    return !(loadNodeTextGen(null, node) instanceof DefaultTextGen);
  }

  public String getExtension(SNode node) {
    return loadNodeTextGen(null, node).getExtension(node);
  }


  public void appendNodeText(IOperationContext context, TextGenBuffer buffer, SNode node, SNode contextNode) {
    if (node == null) {
      buffer.append("???");

      if (contextNode != null) {
        LOG.error("possible broken reference", contextNode);
      }

      return;
    }

    SNodeTextGen nodeTextGen = loadNodeTextGen(context, node);
    if (nodeTextGen == null) {
      LOG.error("couldn't find text generator for " + node.getDebugText(), node);
    }
    assert nodeTextGen != null;

    nodeTextGen.setBuffer(buffer);
    try {
      nodeTextGen.setSNode(node);
      nodeTextGen.doGenerateText(node);
      nodeTextGen.setSNode(null);
    } catch (Exception e) {
      buffer.foundError();
      LOG.error("failed to generate text for " + node.getDebugText(), e, node);
    }
  }

  private Class loadTextGenClass(SNode cd) {
    assert cd != null;
    SNode baseConcept = SModelUtil.getBaseConcept();
    while (cd != baseConcept) {
      Language l = SModelUtil.getDeclaringLanguage(cd);

      String packageName = NameUtil.namespaceFromConceptFQName(NameUtil.nodeFQName(cd));
      String className = cd.getName();
      String textgenClassname = packageName + ".textGen." + className + "_TextGen";
      Class textgenClass = l.getClass(textgenClassname);
      if (textgenClass != null) {
        return textgenClass;
      }

      cd = SNodeUtil.getConceptDeclaration_Extends(cd);
      if (cd == null) cd = baseConcept;
    }
    return DefaultTextGen.class;
  }

  private SNodeTextGen loadNodeTextGen(IOperationContext context, SNode node) {
    String nodeConcept = node.getConceptFqName();

    Class<SNodeTextGen> textgenClass;

    if (myClassesCache != null) {
      textgenClass = myClassesCache.get(nodeConcept);
      if (textgenClass == null) {
        textgenClass = textGenForNode(node);
        myClassesCache.put(nodeConcept, textgenClass);
      }
    } else {
      textgenClass = textGenForNode(node);
    }

    try {
      SNodeTextGen result = textgenClass.newInstance();
      result.setContext(context);
      return result;
    } catch (Throwable t) {
      LOG.error(t, node);
    }

    DefaultTextGen result = new DefaultTextGen();
    result.setContext(context);
    return result;
  }

  private Class textGenForNode(SNode node) {
    SNode concept = node.getConceptDeclarationNode();
    if (concept == null) {
      LOG.error("Can't find concept node for concept: " + node.getConceptFqName());
      return null;
    }
    return loadTextGenClass(concept);
  }

  private List<String> getUserObjectCollection(String key, SNode node, TextGenBuffer buffer, Set<String> skipSet) {
    SetSequence<String> dependenciesObject = (SetSequence<String>) buffer.getUserObject(key);
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

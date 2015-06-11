/*
 * Copyright 2003-2011 JetBrains s.r.o.
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

import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.text.TextMark;
import jetbrains.mps.text.impl.TraceInfoCollector;
import jetbrains.mps.textgen.trace.PositionInfo;
import jetbrains.mps.textgen.trace.ScopePositionInfo;
import jetbrains.mps.textgen.trace.TraceablePositionInfo;
import jetbrains.mps.textgen.trace.UnitPositionInfo;
import jetbrains.mps.util.annotation.ToRemove;
import org.apache.log4j.LogManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @deprecated This class shall not be used externally, from generated code.
 * Though it's not public API, it's left to provide compile-time compatibility with TextGen classes generated in MPS 3.2
 * MPS own implementation methods may access this class to support legacy code.
 * There's no direct replacement for functionality of this class, check {@link TraceInfoCollector} and {@link jetbrains.mps.text.TextUnit} for
 * present API.
 */
@Deprecated
@ToRemove(version = 3.3)
// FIXME revisit public constants with user objects instead of named accessors, really?!
public class TraceInfoGenerationUtil {
  private static final Logger LOG = Logger.wrap(LogManager.getLogger(TraceInfoGenerationUtil.class));
  public static final String POSITION_INFO = "POSITION_INFO";
  public static final String SCOPE_INFO = "SCOPE_INFO";
  public static final String UNIT_INFO = "UNIT_INFO";

  private static TextMark ourMark = new TextMark() {};

  public static <T> void putUserObject(TextGenBuffer buffer, String type, SNode node, T object) {
    TraceInfoGenerationUtil.<T>getUserObjects(buffer, type).put(node, object);
  }

  @NotNull
  public static <T> Map<SNode, T> getUserObjects(TextGenBuffer buffer, String type) {
    Map<SNode, T> userObjects = (Map<SNode, T>) buffer.getUserObject(type);
    if (userObjects == null) {
      userObjects = new HashMap<SNode, T>();
      buffer.putUserObject(type, userObjects);
    }
    return userObjects;
  }

  public static <T> T getUserObject(TextGenBuffer buffer, String type, SNode node) {
    Map<SNode, T> userObjects = getUserObjects(buffer, type);
    return userObjects.get(node);
  }

  public static void createPositionInfo(SNodeTextGen nodeTextGen, SNode node) {
    TextGenBuffer buffer = nodeTextGen.getBuffer();
    final TraceInfoCollector tic = getTraceInfoCollector(buffer);
    if (tic == null) {
      return;
    }

    TraceablePositionInfo info = tic.createTracePosition(ourMark, node);
    info.setStartLine(buffer.getLineNumber());
    info.setStartPosition(buffer.getPosition());
  }

  public static void fillPositionInfo(SNodeTextGen nodeTextGen, SNode node, String propertyString) {
    TextGenBuffer buffer = nodeTextGen.getBuffer();
    final TraceInfoCollector tic = getTraceInfoCollector(buffer);
    if (tic == null) {
      return;
    }

    TraceablePositionInfo info = tic.getTracePositions().get(node);
    info.setEndLine(buffer.getLineNumber());
    info.setEndPosition(buffer.getPosition());
    info.setConceptFqName(node.getConcept().getQualifiedName());
    info.setPropertyString(propertyString);
  }

  public static void createScopeInfo(SNodeTextGen nodeTextGen, SNode node) {
    TextGenBuffer buffer = nodeTextGen.getBuffer();
    final TraceInfoCollector tic = getTraceInfoCollector(buffer);
    if (tic == null) {
      return;
    }

    ScopePositionInfo info = tic.createScopePosition(ourMark, node);
    info.setStartLine(buffer.getLineNumber());
    info.setStartPosition(buffer.getPosition());
  }

  public static void fillScopeInfo(SNodeTextGen nodeTextGen, SNode node, List<SNode> vars) {
    TextGenBuffer buffer = nodeTextGen.getBuffer();
    final TraceInfoCollector tic = getTraceInfoCollector(buffer);
    if (tic == null) {
      return;
    }

    ScopePositionInfo info = tic.getScopePositions().get(node);
    info.setEndLine(buffer.getLineNumber());
    info.setEndPosition(buffer.getPosition());
    for (SNode var : vars) {
      if (var != null) {
        info.addVarInfo(var);
      }
    }
  }

  public static void createUnitInfo(SNodeTextGen nodeTextGen, SNode node) {
    TextGenBuffer buffer = nodeTextGen.getBuffer();
    final TraceInfoCollector tic = getTraceInfoCollector(buffer);
    if (tic == null) {
      return;
    }

    UnitPositionInfo info = tic.createUnitPosition(ourMark, node);
    info.setStartLine(buffer.getLineNumber());
    info.setStartPosition(buffer.getPosition());
  }

  public static void fillUnitInfo(SNodeTextGen nodeTextGen, SNode node, String unitName) {
    TextGenBuffer buffer = nodeTextGen.getBuffer();
    final TraceInfoCollector tic = getTraceInfoCollector(buffer);
    if (tic == null) {
      return;
    }

    UnitPositionInfo info = tic.getUnitPositions().get(node);
    info.setEndLine(buffer.getLineNumber());
    info.setEndPosition(buffer.getPosition());
    info.setUnitName(unitName);

    warnIfUnitNameInvalid(unitName, node);
  }

  private static void warnIfUnitNameInvalid(String unitName, SNode node) {
    String longName = SModelStereotype.withoutStereotype(node.getModel().getReference().getModelName());
    if (!(unitName.startsWith(longName))) {
      LOG.warning("Unit name has to start with model fqName. Fix " + unitName + " in " + longName + ".", node);
    } else if (unitName.length() <= longName.length() + 1 || !(unitName.substring(longName.length()).startsWith(".")) || unitName.substring(longName.length()+1).contains(".")) {
      LOG.warning("Unit name has to match \"modelFqName.shortUnitName\" where short unit name does not contain dots. Fix " + unitName + " in " + longName + ".", node);
    }
  }

  @ToRemove(version = 3.3)
  /*package*/ static TraceInfoCollector init(TextGenBuffer buffer) {
    final TraceInfoCollector rv = new TraceInfoCollector() {
      @Override
      protected void updatePositions(PositionInfo pi, TextMark positionMarker) {

      }
    };
    buffer.putUserObject(TraceInfoCollector.class, rv);
    return rv;
  }

  @Nullable
  private static TraceInfoCollector getTraceInfoCollector(TextGenBuffer buffer) {
    return (TraceInfoCollector) buffer.getUserObject(TraceInfoCollector.class);
  }
}

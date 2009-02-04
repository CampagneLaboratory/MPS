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
package jetbrains.mps.textGen;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.*;

/**
 * Author: Sergey Dmitriev
 * Created Nov 13, 2003
 */
public abstract class SNodeTextGen<BA extends INodeAdapter> {

  private static final Logger LOG = Logger.getLogger(SNodeTextGen.class);

  private TextGenBuffer myBuffer;
  private IOperationContext myContext;
  private SNode mySNode;

  public void setBuffer(TextGenBuffer buffer) {
    myBuffer = buffer;
  }

  protected final TextGenBuffer getBuffer() {
    return myBuffer;
  }

  public IOperationContext getContext() {
    return myContext;
  }

  public void setContext(IOperationContext context) {
    myContext = context;
  }

  public SNode getSNode() {
    return mySNode;
  }

  public void setSNode(SNode contextNode) {
    mySNode = contextNode;
  }

  protected abstract void doGenerateText(BA ba);

  protected final void appendNodeText(INodeAdapter ba) {
    try {
      TextGenManager.instance().appendNodeText(
        myContext, myBuffer, BaseAdapter.fromAdapter(ba), getSNode());
    } catch (Exception e) {
      LOG.error(e);
    }
  }

  protected void increaseDepth() {
    myBuffer.increaseDepth();
  }

  protected void decreaseDepth() {
    myBuffer.decreaseDepth();
  }

  protected void append(String s) {
    myBuffer.append(s);
  }

  protected void appendNewLine() {
    append(myBuffer.getLineSeparator());
  }

  protected void appendWithIndent(String s) {
    myBuffer.appendWithIndent(s);
  }

  protected void indentBuffer() {
    myBuffer.indentBuffer();
  }

  protected final Object getUserObject(Object key) {
    return myBuffer.getUserObject(key);
  }

  protected final void putUserObject(Object key, Object o) {
    myBuffer.putUserObject(key, o);
  }

  protected void foundError() {
    foundError(null);
  }

  protected void foundError(String info) {
    if (info != null) {
      LOG.error("textgen error: '" + info + "' in " + getSNode().getDebugText(), getSNode());
    } else {
      LOG.error("textgen error in " + getSNode().getDebugText(), getSNode());
    }
    getBuffer().foundError();
  }


  /**
   * @param role - must be 'genuine role'
   *             todo: tmp
   */
  protected String getReferentResolveInfoOrName(String role, SNode sourceNode) {
    SReference reference = sourceNode.getReference(role);
    if (reference == null) {
      foundError();
      return "<err:no ref for role '" + role + "'>";
    }

    if (reference instanceof DynamicReference) {
      return reference.getResolveInfo();
    }
    SNode targetNode = reference.getTargetNode();
    if (targetNode == null) {
      foundError();
      return "???";
    }
    return targetNode.getName();
  }

  protected String getDeafultNoTextGenErrorText(INodeAdapter node) {
    return "<!TextGen not found for '" + node.getConceptFQName() + "'!>";
  }
}

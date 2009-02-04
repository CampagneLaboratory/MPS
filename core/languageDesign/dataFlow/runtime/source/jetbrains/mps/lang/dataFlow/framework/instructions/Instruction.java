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
package jetbrains.mps.lang.dataFlow.framework.instructions;


import jetbrains.mps.lang.dataFlow.framework.Program;
import jetbrains.mps.lang.dataFlow.framework.ProgramState;
import jetbrains.mps.lang.dataFlow.framework.Program.TryFinallyInfo;

import java.util.*;

public abstract class Instruction {
  private Program myProgram;

  private Object mySource;

  private Set<Instruction> myJumps = new HashSet<Instruction>();
  private Map<Object, Object> myUserObjects = new HashMap<Object, Object>();
  private TryFinallyInfo myBlockInfo;

  Instruction() {
  }

  public Program getProgram() {
    return myProgram;
  }

  public void setProgram(Program p) {
    myProgram = p;
  }

  public Object getSource() {
    return mySource;
  }

  public void setSource(Object source) {
    mySource = source;
  }

  public boolean isStart() {
    return getIndex() == 0;
  }

  void addJump(Instruction instruction) {
    myJumps.add(instruction);
  }

  public void buildCaches() {
    TryFinallyInfo bestMatch = null;
    int index = getIndex();
    for (TryFinallyInfo info : getProgram().getBlockInfos()) {
      if (index > info.getTry().getIndex() && index < info.getEndTry().getIndex()) {
        bestMatch = info;
      }
    }
    myBlockInfo = bestMatch;
  }

  public TryFinallyInfo getEnclosingBlock() {
    return myBlockInfo;
  }

  public Set<Instruction> succ() {
    Set<Instruction> result = new HashSet<Instruction>();
    for (ProgramState ps : new ProgramState(this, false).succ()) {
      result.add(ps.getInstruction());
    }
    for (ProgramState ps : new ProgramState(this, true).succ()) {
      result.add(ps.getInstruction());
    }
    return result;
  }

  public Set<Instruction> pred() {
    Set<Instruction> result = new HashSet<Instruction>();
    for (ProgramState ps : new ProgramState(this, false).pred()) {
      result.add(ps.getInstruction());
    }
    for (ProgramState ps : new ProgramState(this, true).pred()) {
      result.add(ps.getInstruction());
    }
    return result;
  }

  public Set<ProgramState> succ(ProgramState s) {
    Set<ProgramState> result = new HashSet<ProgramState>();
    result.add(new ProgramState(getProgram().get(getIndex() + 1), s.isReturnMode()));
    return result;
  }

  public Set<ProgramState> pred(ProgramState s) {
    Set<ProgramState> result = new HashSet<ProgramState>();
    if (this != getProgram().getStart()) {
      Instruction prev = getProgram().get(getIndex() - 1);
      if (!(prev instanceof RetInstruction) &&
          !(prev instanceof JumpInstruction) &&
          !(prev instanceof EndTryInstruction && s.isReturnMode())) {
        result.add(new ProgramState(prev, s.isReturnMode()));
      }
    }

    for (Instruction jump : myJumps) {
      result.add(new ProgramState(jump, s.isReturnMode()));
    }
    return result;
  }

  public int getIndex() {
    return myProgram.indexOf(this);
  }

  public boolean isBefore(Instruction i) {
    return getIndex() < i.getIndex();    
  }

  public boolean isAfter(Instruction i) {
    return getIndex() > i.getIndex();
  }

  abstract String commandPresentation();

  public void putUserObject(Object key, Object value) {
    myUserObjects.put(key, value);
  }

  public Object getUserObject(Object key) {
    return myUserObjects.get(key);
  }

  public String toString() {
    return getIndex() + ": " + commandPresentation();
  }
}

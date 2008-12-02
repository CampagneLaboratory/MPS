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
package jetbrains.mps.lang.dataFlow.framework;

import jetbrains.mps.lang.dataFlow.framework.instructions.*;

import java.util.*;
import java.util.Map.Entry;

class AnalyzerRunner<E> {
  private Program myProgram;
  private DataFlowAnalyzer<E> myAnalyzer;

  AnalyzerRunner(Program program, DataFlowAnalyzer<E> analyzer) {
    myProgram = program;
    myAnalyzer = analyzer;
  }

  AnalysisResult analyze() {
    Map<ProgramState, E> stateValues = doAnalyze();
    Map<Instruction, Set<E>> possibleValues = new HashMap<Instruction, Set<E>>();
    for (Map.Entry<ProgramState, E> entry : stateValues.entrySet()) {
      if (!possibleValues.containsKey(entry.getKey().getInstruction())) {
        possibleValues.put(entry.getKey().getInstruction(), new HashSet<E>());
      }
      possibleValues.get(entry.getKey().getInstruction()).add(entry.getValue());
    }

    Map<Instruction, E> result = new HashMap<Instruction, E>();
    for (Entry<Instruction, Set<E>> entry : possibleValues.entrySet()) {
      result.put(entry.getKey(), myAnalyzer.merge(myProgram, entry.getValue()));
    }

    return new AnalysisResult<E>(myProgram, myAnalyzer, stateValues, result);
  }

  private Map<ProgramState, E> doAnalyze() {
    final Map<ProgramState, E> stateValues = new HashMap<ProgramState, E>();
    for (Instruction i : myProgram.getInstructions()) {
      stateValues.put(new ProgramState(i, false), myAnalyzer.initial(myProgram));
      stateValues.put(new ProgramState(i, true), myAnalyzer.initial(myProgram));
    }

    Queue<ProgramState> workList = new LinkedList<ProgramState>();
    for (Instruction i : myProgram.getInstructions()) {
      workList.add(new ProgramState(i, false));
      workList.add(new ProgramState(i, true));
    }

    AnalysisDirection direction = myAnalyzer.getDirection();
    while (!workList.isEmpty()) {
      ProgramState current = workList.remove();

      Set<E> input = new HashSet<E>();
      for (ProgramState s : direction.dependencies(current)) {
        if (stateValues.containsKey(s)) {
          input.add(stateValues.get(s));
        }
      }

      E oldValue = stateValues.get(current);
      E mergedValue = myAnalyzer.merge(myProgram, input);
      E newValue = myAnalyzer.fun(mergedValue, current);

      if (!newValue.equals(oldValue)) {
        stateValues.put(current, newValue);
        for (ProgramState s : direction.dependents(current)) {
          workList.add(s);
        }
      }
    }

    return stateValues;
  }
}

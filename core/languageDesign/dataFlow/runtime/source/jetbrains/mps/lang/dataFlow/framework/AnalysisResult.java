package jetbrains.mps.lang.dataFlow.framework;

import jetbrains.mps.lang.dataFlow.framework.instructions.Instruction;

import java.util.*;

public class AnalysisResult<E> {
  private Map<ProgramState, E> myResult;
  private DataFlowAnalyzer<E> myAnalyzer;
  private Map<Instruction, E> myInstructionsResult;
  private Program myProgram;

  AnalysisResult(Program program, DataFlowAnalyzer<E> analyzer, Map<ProgramState, E> result, Map<Instruction, E> instrResult) {
    myProgram = program;
    myAnalyzer = analyzer;
    myResult = new HashMap<ProgramState,E>(result);
    myInstructionsResult = new HashMap<Instruction, E>(instrResult);
  }

  public E get(Instruction i) {
    if (myInstructionsResult.containsKey(i)) {
      return myInstructionsResult.get(i);
    }
    return myAnalyzer.initial(myProgram);
  }

  public E get(ProgramState s) {
    if (myResult.containsKey(s)) {
      return myResult.get(s);
    }
    return myAnalyzer.initial(myProgram);
  }

  public Set<ProgramState> getStates() {
    return Collections.unmodifiableSet(myResult.keySet());
  }

  public String toString() {
    StringBuilder r = new StringBuilder();
    for (int i = 0; i < myProgram.size(); i++) {
      Instruction instruction = myProgram.get(i);
      r.append(instruction).append(" ");
      r.append(toString(myInstructionsResult.get(instruction)));
      r.append("\n");
    }
    return r.toString();
  }

  private String toString(E e) {
    if (e instanceof Set) {
      return setToString((Set) e);
    }
    return "" + e;
  }

  private String setToString(Set set) {
    List<String> strings = new ArrayList<String>();
    for (Object o : set) {
      strings.add("" + o);
    }
    Collections.sort(strings);
    return strings.toString();
  }
}

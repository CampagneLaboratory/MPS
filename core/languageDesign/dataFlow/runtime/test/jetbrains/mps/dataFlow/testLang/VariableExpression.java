package jetbrains.mps.dataFlow.testLang;

public class VariableExpression extends Expression {
  private String myName;

  public VariableExpression(String name) {
    myName = name;
  }

  public String getName() {
    return myName;
  }
}

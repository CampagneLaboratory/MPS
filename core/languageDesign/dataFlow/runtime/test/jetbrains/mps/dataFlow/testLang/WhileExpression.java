package jetbrains.mps.dataFlow.testLang;

public class WhileExpression extends Expression {
  private Expression myCondition;
  private Expression myBody;

  public WhileExpression(Expression condition, Expression body) {
    myCondition = condition;
    myBody = body;
  }

  public Expression getCondition() {
    return myCondition;
  }

  public Expression getBody() {
    return myBody;
  }
}

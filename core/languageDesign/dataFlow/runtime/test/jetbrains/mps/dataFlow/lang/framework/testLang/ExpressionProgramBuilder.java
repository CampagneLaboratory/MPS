package jetbrains.mps.dataFlow.lang.framework.testLang;

import jetbrains.mps.lang.dataFlow.framework.StructuralProgramBuilder;

public class ExpressionProgramBuilder extends StructuralProgramBuilder<Expression> {
  protected void doBuild(Expression expr) {    
    if (expr instanceof IfExpression) {
      IfExpression ifExpression = (IfExpression) expr;
      build(ifExpression.getCondition());
      emitIfJump(before(ifExpression.getIfFalse()));
      build(ifExpression.getIfTrue());
      emitJump(after(ifExpression));
      build(ifExpression.getIfFalse());
      return;
    }

    if (expr instanceof WhileExpression) {
      WhileExpression whileExpression = (WhileExpression) expr;
      build(whileExpression.getCondition());
      emitIfJump(after(whileExpression.getBody()));
      build(whileExpression.getBody());
      return;
    }

    if (expr instanceof SeqExpression) {
      SeqExpression seq = (SeqExpression) expr;
      for (Expression e : seq.getExpressions()) {
        build(e);
      }
      return;
    }

    if (expr instanceof NopExpression) {
      return;
    }

    if (expr instanceof AssignmentExpression) {
      AssignmentExpression assignmentExpression = (AssignmentExpression) expr;
      build(assignmentExpression.getValue());
      emitWrite(assignmentExpression.getVariableName());
      return;
    }

    if (expr instanceof VariableExpression) {
      VariableExpression variableExpression = (VariableExpression) expr;
      emitRead(variableExpression.getName());
      return;
    }
  }
}

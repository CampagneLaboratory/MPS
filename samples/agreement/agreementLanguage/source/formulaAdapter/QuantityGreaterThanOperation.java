package formulaAdapter;

import jetbrains.mps.samples.formulaLanguage.api.Function;
import mf.Quantity;

/**
 * Created by IntelliJ IDEA.
 * User: Igoor
 * Date: Apr 4, 2005
 * Time: 8:45:17 PM
 * To change this template use File | Settings | File Templates.
 */
public class QuantityGreaterThanOperation <T extends Quantity> implements Function <Boolean> {
  private Function<T> myLeftOperand;
  private Function<T> myRightOperand;

  public QuantityGreaterThanOperation(Function<T> leftOperand, Function<T> rightOperand) {
    myLeftOperand = leftOperand;
    myRightOperand = rightOperand;
  }

  public Boolean compute(Object parm) {
    return myLeftOperand.compute(parm).isGreaterThan(myRightOperand.compute(parm));
  }
}

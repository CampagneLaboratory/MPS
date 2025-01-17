package jetbrains.mps.baseLanguage.math.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.PropertySupport;
import java.util.Iterator;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class MatrixNormKind_PropertySupport extends PropertySupport {
  public boolean canSetValue(String value) {
    if (value == null) {
      return true;
    }
    Iterator<MatrixNormKind> constants = ListSequence.fromList(MatrixNormKind.getConstants()).iterator();
    while (constants.hasNext()) {
      MatrixNormKind constant = constants.next();
      if (value.equals(constant.getName())) {
        return true;
      }
    }
    return false;
  }
  public String toInternalValue(String value) {
    if (value == null) {
      return null;
    }
    Iterator<MatrixNormKind> constants = ListSequence.fromList(MatrixNormKind.getConstants()).iterator();
    while (constants.hasNext()) {
      MatrixNormKind constant = constants.next();
      if (value.equals(constant.getName())) {
        return constant.getValueAsString();
      }
    }
    return null;
  }
  public String fromInternalValue(String value) {
    MatrixNormKind constant = MatrixNormKind.parseValue(value);
    if (constant != null) {
      return constant.getName();
    }
    return "";
  }
}

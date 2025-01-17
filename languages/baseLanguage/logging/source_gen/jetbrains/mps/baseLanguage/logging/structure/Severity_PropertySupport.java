package jetbrains.mps.baseLanguage.logging.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.PropertySupport;
import java.util.Iterator;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class Severity_PropertySupport extends PropertySupport {
  public boolean canSetValue(String value) {
    if (value == null) {
      return true;
    }
    Iterator<Severity> constants = ListSequence.fromList(Severity.getConstants()).iterator();
    while (constants.hasNext()) {
      Severity constant = constants.next();
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
    Iterator<Severity> constants = ListSequence.fromList(Severity.getConstants()).iterator();
    while (constants.hasNext()) {
      Severity constant = constants.next();
      if (value.equals(constant.getName())) {
        return constant.getValueAsString();
      }
    }
    return null;
  }
  public String fromInternalValue(String value) {
    Severity constant = Severity.parseValue(value);
    if (constant != null) {
      return constant.getName();
    }
    return "";
  }
}

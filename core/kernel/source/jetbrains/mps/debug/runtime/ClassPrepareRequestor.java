package jetbrains.mps.debug.runtime;

import com.sun.jdi.ReferenceType;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 03.02.2010
 * Time: 18:54:01
 * To change this template use File | Settings | File Templates.
 */
public interface ClassPrepareRequestor extends Requestor {
  public void processClassPrepare(final DebugVMEventsProcessor debugProcess, final ReferenceType classType);
}

package jetbrains.mps.debug.runtime;

import com.sun.jdi.*;
import com.sun.jdi.request.StepRequest;
import jetbrains.mps.debug.api.IDebuggableFramesSelector;
import jetbrains.mps.debug.runtime.requests.Requestor;
import jetbrains.mps.logging.Logger;

// in idea similar thing is called RequestHint
public class StepRequestor implements Requestor {
  public static final int STOP = 0;
  private static final Logger LOG = Logger.getLogger(StepRequestor.class);

  private final int myStepType;
  
  private String myDeclaringType;
  private int myLineNumber;
  private int myFrameCount;

  private final IDebuggableFramesSelector myFramesSelector;

  public StepRequestor(SuspendContext context, int stepType, IDebuggableFramesSelector framesSelector) {
    myStepType = stepType;
    myFramesSelector = framesSelector;
    try {
      ThreadReference thread = context.getThread();
      if (thread != null) {
        myFrameCount = thread.frameCount();
        StackFrame frame = thread.frame(0);
        if (frame != null) {
          myDeclaringType = frame.location().declaringType().name();
          myLineNumber = frame.location().lineNumber();
        }
      }
    } catch (IncompatibleThreadStateException e) {
      LOG.error(e);
    }
  }

  //decides whether we need to step again; depends on whether our current line in generated java class has been changed.
  public int nextStep(SuspendContext context) {
    if (myStepType == StepRequest.STEP_OVER || myStepType == StepRequest.STEP_INTO) {
      ThreadReference thread = context.getThread();
      StackFrame frame = context.getFrame();
      if (frame == null || thread == null) return myStepType;
      int frameCount = -1;
      Location location = frame.location();
      String sourceName = "";
      try {
        frameCount = thread.frameCount();
        sourceName = location.sourceName();
      } catch (IncompatibleThreadStateException e) {
        LOG.error(e);
      } catch (AbsentInformationException e) {
        LOG.error(e);
      }
      // if we are not in debuggable position we step again
      // TODO this place may lead (and does lead) to bad performance (see MPS-8725)
      if (!sourceName.isEmpty() && !myFramesSelector.isDebuggablePosition(location.declaringType().name(), sourceName, location.lineNumber())) {
        return myStepType;
      }
      boolean filesEqual = myDeclaringType.equals(location.declaringType().name());
      // if we are on the same place we should step again
      if (filesEqual && myLineNumber == location.lineNumber() && myFrameCount == frameCount) {
        return myStepType;
      }
    }
    return STOP;
  }
}

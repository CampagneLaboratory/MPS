package jetbrains.mps.vcs.diff;

import jetbrains.mps.smodel.SNodeId;

public class Warning {
  private SNodeId myId;
  private String myMessage;

  public Warning(SNodeId id, String message) {
    myId = id;
    myMessage = message;
  }

  public SNodeId getId() {
    return myId;
  }

  public String getMessage() {
    return myMessage;
  }

  public String toString() {
    return myMessage;
  }
}

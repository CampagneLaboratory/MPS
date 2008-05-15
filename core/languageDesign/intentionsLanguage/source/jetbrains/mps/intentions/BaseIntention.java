package jetbrains.mps.intentions;

import jetbrains.mps.nodeEditor.EditorContext;
import jetbrains.mps.smodel.SNode;


public abstract class BaseIntention implements Intention {
  public abstract String getConcept();

  public abstract String getDescription(SNode node, EditorContext editorContext);

  public boolean isApplicable(SNode node, EditorContext editorContext) {
    return true;
  }

  public abstract void execute(SNode node, EditorContext editorContext);

  public abstract boolean isErrorIntention();

  public void putArgument(String key, Object argument) {
  }
}

package jetbrains.mps.lang.extension.migration;

/*Generated by MPS */

import jetbrains.mps.lang.migration.runtime.base.Problem;
import org.jetbrains.mps.openapi.model.SNode;

public class NodeWasNotMigrated extends Problem<SNode> {
  public NodeWasNotMigrated(SNode reason) {
    super(reason);
  }
  public String getMessage() {
    return "Node of deprecated concept " + getReason().getConcept() + " was not migrated";
  }
  public String getCategory() {
    return "Skipped node";
  }
}

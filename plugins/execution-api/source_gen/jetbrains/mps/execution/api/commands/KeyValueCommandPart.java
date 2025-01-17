package jetbrains.mps.execution.api.commands;

/*Generated by MPS */

import org.jetbrains.annotations.Nullable;
import java.io.File;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class KeyValueCommandPart extends AbstractCommandPart implements CommandPart {
  public KeyValueCommandPart(@Nullable String key, @Nullable String value) {
    if ((key != null && key.length() > 0) && (value != null && value.length() > 0)) {
      addCommands(key);
      addCommands(ProcessHandlerBuilder.splitCommandInParts(value));
    }
  }
  public KeyValueCommandPart(@Nullable String key, @Nullable File value) {
    if ((key != null && key.length() > 0) && (value != null) && (isNotEmptyString(value.getAbsolutePath()))) {
      addCommands(key, value.getAbsolutePath());
    }
  }
  public KeyValueCommandPart(@Nullable String key, @Nullable CommandPart value) {
    if ((key != null && key.length() > 0) && (value != null)) {
      List<String> commandList = value.getCommandList();
      if (ListSequence.fromList(commandList).isNotEmpty()) {
        addCommands(key);
        addCommands(commandList);
      }
    }
  }
  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}

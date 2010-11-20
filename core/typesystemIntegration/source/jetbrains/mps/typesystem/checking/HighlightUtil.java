package jetbrains.mps.typesystem.checking;

import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.errors.SimpleErrorReporter;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.nodeEditor.*;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.typesystem.inference.NodeErrorTarget;

import java.awt.Color;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 18.02.2010
 * Time: 19:34:33
 * To change this template use File | Settings | File Templates.
 */
public class HighlightUtil {
  public static HighlighterMessage createHighlighterMessage(SNode node, String message, IErrorReporter errorReporter, IEditorChecker checker, EditorContext editorContext) {
    if (errorReporter == null) {
      errorReporter = new SimpleErrorReporter(node, message, null, null, MessageStatus.ERROR, new NodeMessageTarget());
    }
    final MessageStatus status = errorReporter.getMessageStatus();
    HighlighterMessage error = new HighlighterMessage(
      node, 
      status,
      errorReporter.getErrorTarget(),
      getMessageColor(status),
      message,
      checker.getOwner(node.getContainingRoot(), editorContext.getNodeEditorComponent()));
    error.setErrorReporter(errorReporter);
    return error;
  }

  public static HighlighterMessage createHighlighterMessage(SNode node, String message, EditorCheckerAdapter checker, EditorContext editorContext) {
    return createHighlighterMessage(node, message, (IErrorReporter) null, checker, editorContext);
  }

  public static Color getMessageColor(MessageStatus messageStatus) {
    if (messageStatus == MessageStatus.ERROR) {
      return Color.RED;
    }
    if (messageStatus == MessageStatus.WARNING) {
      return Color.YELLOW;
    }
    if (messageStatus == MessageStatus.OK) {
      return Color.LIGHT_GRAY;
    }
    return Color.BLACK;
  }
}

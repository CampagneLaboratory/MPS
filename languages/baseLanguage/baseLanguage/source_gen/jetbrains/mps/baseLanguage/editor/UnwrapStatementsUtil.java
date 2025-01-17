package jetbrains.mps.baseLanguage.editor;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.editor.runtime.impl.cellActions.CommentUtil;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.baseLanguage.behavior.IContainsStatementList__BehaviorDescriptor;

public class UnwrapStatementsUtil {

  public static void unwrapIf(SNode ifStatement) {
    unwrapStatementListInContainer(ifStatement, SLinkOperations.getTarget(ifStatement, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xf8cc56b219L, "ifTrue")));
  }

  public static SNode unwrapElse(final SNode ifStatement) {
    if (!(SNodeOperations.isInstanceOf(SLinkOperations.getTarget(ifStatement, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, "jetbrains.mps.baseLanguage.structure.BlockStatement")))) {
      SNode block = SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, "jetbrains.mps.baseLanguage.structure.BlockStatement")), null);
      ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(block, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, 0xfc092b6b78L, "statements")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"))).addElement(SLinkOperations.getTarget(ifStatement, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement")));
      SLinkOperations.setTarget(ifStatement, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement"), block);
    }
    assert SNodeOperations.isInstanceOf(SLinkOperations.getTarget(ifStatement, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, "jetbrains.mps.baseLanguage.structure.BlockStatement"));

    Iterable<SNode> commentedNodes = CommentUtil.uncommentAll(SLinkOperations.getTarget(SNodeOperations.cast(SLinkOperations.getTarget(ifStatement, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, "jetbrains.mps.baseLanguage.structure.BlockStatement")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, 0xfc092b6b78L, "statements")));
    List<SNode> statements = SLinkOperations.getChildren(SLinkOperations.getTarget(SNodeOperations.cast(SLinkOperations.getTarget(ifStatement, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, "jetbrains.mps.baseLanguage.structure.BlockStatement")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, 0xfc092b6b78L, "statements")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"));
    ListSequence.fromList(statements).visitAll(new IVisitor<SNode>() {
      public void visit(SNode it) {
        SNodeOperations.insertNextSiblingChild(ifStatement, it);
      }
    });
    SNodeOperations.deleteNode(SLinkOperations.getTarget(ifStatement, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement")));
    CommentUtil.commentOutAll(commentedNodes);
    return ListSequence.fromList(statements).last();
  }

  public static void unwrapIContainsStatementList(SNode oldContainer) {
    if (!(SNodeOperations.isInstanceOf(oldContainer, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b215L, "jetbrains.mps.baseLanguage.structure.Statement")))) {
      throw new IllegalArgumentException("The supplied statement container " + oldContainer + " is not a Statement.");
    }
    unwrapStatementListInContainer(SNodeOperations.cast(oldContainer, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b215L, "jetbrains.mps.baseLanguage.structure.Statement")), IContainsStatementList__BehaviorDescriptor.getStatementList_idi0zv5tb.invoke(oldContainer));
  }

  public static void unwrapStatementListInContainer(final SNode toDelete, SNode oldContainer) {
    if (!(SNodeOperations.isInstanceOf(SNodeOperations.getParent(toDelete), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, "jetbrains.mps.baseLanguage.structure.StatementList")))) {
      SNode newBlock = SNodeOperations.replaceWithAnother(toDelete, SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, "jetbrains.mps.baseLanguage.structure.BlockStatement")), null));
      ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(newBlock, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, 0xfc092b6b78L, "statements")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"))).addElement(toDelete);
    }
    assert SNodeOperations.isInstanceOf(SNodeOperations.getParent(toDelete), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, "jetbrains.mps.baseLanguage.structure.StatementList"));

    Iterable<SNode> commentedNodes = CommentUtil.uncommentAll(oldContainer);
    List<SNode> statements = SLinkOperations.getChildren(oldContainer, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"));
    ListSequence.fromList(statements).visitAll(new IVisitor<SNode>() {
      public void visit(SNode it) {
        SNodeOperations.insertPrevSiblingChild(toDelete, it);
      }
    });
    SNodeOperations.deleteNode(toDelete);
    CommentUtil.commentOutAll(commentedNodes);
  }
}

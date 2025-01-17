package jetbrains.mps.lang.core.util;

/*Generated by MPS */

import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.Sequence;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.core.behavior.IOldCommentContainer__BehaviorDescriptor;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.editor.runtime.impl.cellActions.CommentUtil;

public class OldCommentContainerMigration {
  private SAbstractConcept concept;
  private SModule module;
  public OldCommentContainerMigration(@NotNull SAbstractConcept concept, @NotNull SModule module) {
    this.concept = concept;
    this.module = module;
  }

  public void migrate() {
    Iterable<SNode> oldComments = Sequence.fromIterable(((Iterable<SModel>) module.getModels())).translate(new ITranslator2<SModel, SNode>() {
      public Iterable<SNode> translate(SModel it) {
        return it.getRootNodes();
      }
    }).translate(new ITranslator2<SNode, SNode>() {
      public Iterable<SNode> translate(SNode it) {
        return SNodeOperations.getNodeDescendants(((SNode) it), SNodeOperations.asSConcept(concept), false, new SAbstractConcept[]{});
      }
    });
    for (SNode comment : Sequence.fromIterable(oldComments)) {
      Iterable<SNode> commentedNodes = IOldCommentContainer__BehaviorDescriptor.getCommentedNodes_id3$Sh7m_tmZE.invoke(SNodeOperations.cast(comment, MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x39384475a5756fb0L, "jetbrains.mps.lang.core.structure.IOldCommentContainer")));
      if (Sequence.fromIterable(commentedNodes).isNotEmpty()) {
        SNode first = Sequence.fromIterable(commentedNodes).first();
        SNodeOperations.replaceWithAnother(comment, first);
        SNode next = comment;
        for (SNode commentedNode : Sequence.fromIterable(commentedNodes)) {
          SNodeOperations.insertNextSiblingChild(next, commentedNode);
          next = commentedNode;
        }
        for (SNode commentedNode : Sequence.fromIterable(commentedNodes)) {
          CommentUtil.commentOut(commentedNode);
        }
      }
      SNodeOperations.deleteNode(comment);
    }
  }
}

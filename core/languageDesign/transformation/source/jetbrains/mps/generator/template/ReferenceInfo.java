package jetbrains.mps.generator.template;

import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.generator.JavaNameUtil;
import jetbrains.mps.generator.template.IReferenceResolver;
import jetbrains.mps.generator.template.ITemplateGenerator;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SNode;

/**
 * Created by: Sergey Dmitriev
 * Date: Jan 25, 2007
 */
public abstract class ReferenceInfo {
  private SNode myOutputSourceNode;
  private String myReferenceRole;
  private SNode myInputNode;

  protected ReferenceInfo(SNode outputSourceNode, String referenceRole, SNode inputNode) {
    myOutputSourceNode = outputSourceNode;
    myReferenceRole = referenceRole;
    myInputNode = inputNode;
  }

  public SNode getOutputSourceNode() {
    return myOutputSourceNode;
  }

  public String getReferenceRole() {
    return myReferenceRole;
  }

  public SNode getInputNode() {
    return myInputNode;
  }

  public abstract SNode getInputTargetNode();

  /**
   * test postponed references
   */
  public abstract SNode doResolve_Straightforward(TemplateGenerator generator);

  public abstract SNode doResolve_Tricky(TemplateGenerator generator);

  public abstract String getResolveInfoForDynamicResolve();

  public abstract String getResolveInfoForNothing();

  public boolean isRequired() {
    return true;
  }

  public abstract void showErrorMessage(ITemplateGenerator generator);

  /**
   * todo: this method will go as soon as dynamic references work
   */
  public SNode doResolve_WithCustomReferenceResolver() {
    IReferenceResolver referenceResolver = loadReferenceResolver(getOutputSourceNode());
    if (referenceResolver != null) {
      return referenceResolver.resolve(getOutputSourceNode(), myReferenceRole, getInputTargetNode());
    }
    return null;
  }

  protected static IReferenceResolver loadReferenceResolver(SNode node) {
    ConceptDeclaration conceptDeclaration = (ConceptDeclaration) node.getConceptDeclarationAdapter();
    while (conceptDeclaration != null) {
      String modelPackageName = JavaNameUtil.packageNameForModelUID(conceptDeclaration.getModel().getUID());
      String buildersPackageName = JavaNameUtil.withoutStructure(modelPackageName) + ".builder";
      String resolverClassName = buildersPackageName + "." + conceptDeclaration.getName() + "_ReferenceResolver";

      Language l = SModelUtil_new.getDeclaringLanguage(conceptDeclaration, GlobalScope.getInstance());

      try {
        Class resolverClass = l.getClass(resolverClassName);
        if (resolverClass != null) {
          return (IReferenceResolver) resolverClass.newInstance();
        }
      } catch (IllegalAccessException e) {
        throw new RuntimeException(e);
      } catch (InstantiationException e) {
        throw new RuntimeException(e);
      }

      conceptDeclaration = conceptDeclaration.getExtends();
    }
    return null;
  }

}

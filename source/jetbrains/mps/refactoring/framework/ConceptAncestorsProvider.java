package jetbrains.mps.refactoring.framework;

import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference;
import jetbrains.mps.smodel.INodeAdapter;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Mapper;

import java.util.Set;
import java.util.HashSet;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 27.12.2007
 * Time: 15:48:54
 * To change this template use File | Settings | File Templates.
 */
public class ConceptAncestorsProvider implements IDescendantsProvider {
  public Set<INodeAdapter> getDescendants(INodeAdapter nodeAdapter) {
    Set<INodeAdapter> result = new HashSet<INodeAdapter>();
    if (nodeAdapter instanceof ConceptDeclaration) {
      ConceptDeclaration conceptDeclaration = (ConceptDeclaration) nodeAdapter;
      ConceptDeclaration parent = conceptDeclaration.getExtends();
      if (parent != null) {
        result.add(parent);
      }
      result.addAll(CollectionUtil.map(conceptDeclaration.getImplementses(), new Mapper<InterfaceConceptReference, INodeAdapter>() {
        public INodeAdapter map(InterfaceConceptReference interfaceConceptReference) {
          return interfaceConceptReference.getIntfc();
        }
      }));
    }
    if (nodeAdapter instanceof InterfaceConceptDeclaration) {
      InterfaceConceptDeclaration interfaceConceptDeclaration = (InterfaceConceptDeclaration) nodeAdapter;
      result.addAll(CollectionUtil.map(interfaceConceptDeclaration.getExtendses(), new Mapper<InterfaceConceptReference, INodeAdapter>() {
        public INodeAdapter map(InterfaceConceptReference interfaceConceptReference) {
          return interfaceConceptReference.getIntfc();
        }
      }));
    }
    return result;
  }
}

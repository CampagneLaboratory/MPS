package jetbrains.mps.patterns.util;

import jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration;
import jetbrains.mps.smodel.PropertySupport;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.search.SModelSearchUtil_new;
import jetbrains.mps.util.EqualUtil;
import jetbrains.mps.logging.Logger;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 08.01.2006
 * Time: 16:46:12
 * To change this template use File | Settings | File Templates.
 */
public class MatchingUtil {
  private static Logger LOG = Logger.getLogger(MatchingUtil.class);

  public static boolean matchNodes(SNode node1, SNode node2) {
    return matchNodes(node1, node2, IMatchModifier.DEFAULT, true);
  }

  public static boolean matchNodes(SNode node1, SNode node2, IMatchModifier matchModifier, boolean matchAttributes) {
    if (node1 == node2) return true;
    if (node1 == null) return false;
    if (node2 == null) return false;
    if (!node1.getConceptFqName().equals(node2.getConceptFqName())) return false;

    //properties
    Set<String> propertyNames = node1.getPropertyNames();
    propertyNames.addAll(node2.getPropertyNames());
    for (String propertyName : propertyNames) {
      AbstractConceptDeclaration typeDeclaration = node1.getConceptDeclarationAdapter();
      PropertyDeclaration propertyDeclaration = SModelSearchUtil_new.findPropertyDeclaration(typeDeclaration, propertyName);
      String propertyValue1 = node1.getProperty(propertyName);
      String propertyValue2 = node2.getProperty(propertyName);
      if (propertyDeclaration == null) {
        LOG.error("can't find a property declaration for property " + propertyName + " in a concept " + typeDeclaration);
        LOG.error("try to compare just properties' internal values");
        if (!EqualUtil.equals(propertyValue1, propertyValue2))                 {
          return false;
        }
      } else {
        PropertySupport propertySupport = PropertySupport.getPropertySupport(propertyDeclaration);
        if (!EqualUtil.equals(propertySupport.fromInternalValue(propertyValue1),
          propertySupport.fromInternalValue(propertyValue2))) return false;
      }
    }

    //-- matching references
    Set<String> referenceRoles = node1.getReferenceRoles();
    referenceRoles.addAll(node2.getReferenceRoles());
    for (String role : referenceRoles) {
      SNode target1 = node1.getReferent(role);
      SNode target2 = node2.getReferent(role);
      if (matchModifier.accept(target1, target2)) {
        matchModifier.performAction(target1, target2);
        continue;
      }
      if (target2 != target1) return false;
    }

    // children
    Set<String> childRoles = node1.getChildRoles(matchAttributes);
    node2.addChildRoles(childRoles, matchAttributes);
    for (String role : childRoles) {
      List<SNode> children1 = node1.getChildren(role);
      List<SNode> children2 = node2.getChildren(role);
      if (matchModifier.acceptList(children1, children2)) {
        matchModifier.performGroupAction(children1, children2);
        continue;
      }
      Iterator<SNode> childrenIterator = children1.iterator();
      for (SNode child2 : children2) {
        SNode child1 = childrenIterator.hasNext() ? childrenIterator.next() : null;
        if (matchModifier.accept(child1, child2)) {
          matchModifier.performAction(child1, child2);
          continue;
        }
        if (!matchNodes(child1, child2)) return false;
      }
      while (childrenIterator.hasNext()) {
        SNode child1 = childrenIterator.next();
        SNode child2 = null;
        if (matchModifier.accept(child1, child2)) {
          matchModifier.performAction(child1, child2);
          continue;
        }
        if (!matchNodes(child1, child2)) return false;
      }
    }

    return true;
  }

}

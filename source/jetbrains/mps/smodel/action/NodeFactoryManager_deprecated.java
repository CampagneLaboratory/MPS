package jetbrains.mps.smodel.action;

import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.util.NameUtil;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * author: Igor Alshannikov
 * Sep 20, 2006
 */
/*package*/ class NodeFactoryManager_deprecated {
  private static final Logger LOG = Logger.getLogger(NodeFactoryManager_deprecated.class);

  protected static void setupNode_deprecated(ConceptDeclaration concept, SNode node, SNode sampleNode) {
    Class factoryClass = getFactoryClass(concept);
    if (factoryClass == null) {
      return;
    }

    // try new 'setup method'
    Method method = getSetupMethod_new(factoryClass, node);
    if (method != null) {
      try {
        method.invoke(null, node, sampleNode);
      } catch (IllegalAccessException e) {
        LOG.error(e);
      } catch (InvocationTargetException e) {
        LOG.error(e);
      }
      return;
    }

    // try old 'instantiate method'
    method = getSetupMethod_old(factoryClass, node);
    if (method != null) {
      try {
        method.invoke(null, node);
      } catch (IllegalAccessException e) {
        LOG.error(e);
      } catch (InvocationTargetException e) {
        LOG.error(e);
      }
    }
  }

  private static Class getFactoryClass(ConceptDeclaration conceptDeclaration) {
    String languageNamespace = NameUtil.namespaceFromConcept(conceptDeclaration);
    try {
      return Class.forName(languageNamespace + ".Factory", true, ClassLoaderManager.getInstance().getClassLoader());
    } catch (ClassNotFoundException e) {
      // ok
    }
    return null;
  }

  private static Method getSetupMethod_new(Class factoryClass, SNode node) {
    Class newNodeClass = node.getClass();
    while (newNodeClass != SNode.class) {
      String methodName = "setup_" + NameUtil.shortNameFromLongName(newNodeClass.getName());
      try {
        return factoryClass.getMethod(methodName, newNodeClass, SNode.class);
      } catch (NoSuchMethodException e) {
        // ok
      }
//      //test
//      Method declaredMethod = factoryClass.getDeclaredMethods()[1];
//      Class<?>[] parameterTypes = declaredMethod.getParameterTypes();
//      if(newNodeClass == parameterTypes[0]) {
//        System.out.println("OK");
//      }
//      if(sNodeClass == parameterTypes[1]) {
//        System.out.println("OK");
//      }
//      //test
      newNodeClass = newNodeClass.getSuperclass();
    }
    return null;
  }

  private static Method getSetupMethod_old(Class factoryClass, SNode node) {
    Class nodeClass = node.getClass();
    while (nodeClass != SNode.class) {
      String methodName = "instantiate" + NameUtil.shortNameFromLongName(nodeClass.getName());
      try {
        return factoryClass.getMethod(methodName, node.getClass());
      } catch (NoSuchMethodException e) {
        // ok
      }
      nodeClass = nodeClass.getSuperclass();
    }
    return null;
  }
}

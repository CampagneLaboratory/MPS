package jetbrains.mps.smodel.constraints;

import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.component.Dependency;
import jetbrains.mps.core.structure.NamedConcept;
import jetbrains.mps.helgins.structure.RuntimeTypeVariable;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.ApplicationComponents;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.IModule;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.NameUtil;
import org.jetbrains.annotations.NotNull;

import java.util.*;

/**
 * Created by IntelliJ IDEA.
 * User: Igoor
 * Date: May 11, 2006
 * Time: 8:09:10 PM
 * To change this template use File | Settings | File Templates.
 */
public class ModelConstraintsManager {
  private static final Logger LOG = Logger.getLogger(ModelConstraintsManager.class);

  private Map<String, List<IModelConstraints>> myAddedLanguageNamespaces = new HashMap<String, List<IModelConstraints>>();
  private Map<String, INodePropertyGetter> myNodePropertyGettersMap = new HashMap<String, INodePropertyGetter>();
  private Map<String, INodePropertyGetter> myNodePropertyGettersCache = new HashMap<String, INodePropertyGetter>();
  private Map<String, INodePropertySetter> myNodePropertySettersMap = new HashMap<String, INodePropertySetter>();
  private Map<String, INodePropertySetter> myNodePropertySettersCache = new HashMap<String, INodePropertySetter>();
  private Map<String, INodeReferentSetEventHandler> myNodeReferentSetEventHandlersMap = new HashMap<String, INodeReferentSetEventHandler>();
  private Map<String, INodeReferentSearchScopeProvider> myNodeReferentSearchScopeProvidersMap = new HashMap<String, INodeReferentSearchScopeProvider>();
  private Map<String, INodeReferentSearchScopeProvider> myNodeDefaultSearchScopeProvidersMap = new HashMap<String, INodeReferentSearchScopeProvider>();

  private ClassLoaderManager myClassLoaderManager;

  public ModelConstraintsManager() {
  }

  @Dependency
  public void setClassLoaderManager(ClassLoaderManager classLoaderManager) {
    myClassLoaderManager = classLoaderManager;
  }

  @Dependency
  public void setModuleRepository(MPSModuleRepository r) {
    r.addModuleRepositoryListener(new ModuleRepositoryListener() {
      public void beforeModuleRemoved(IModule module) {
      }

      public void moduleAdded(IModule module) {
        if (module instanceof Language) {
          processLanguageAdded((Language) module);
        }
      }

      public void moduleRemoved(IModule module) {
        if (module instanceof Language) {
          processLanguageRemoved((Language) module);
        }
      }

      public void moduleInitialized(IModule module) {

      }
    });
  }

  public static ModelConstraintsManager getInstance() {
    return ApplicationComponents.getInstance().getComponent(ModelConstraintsManager.class);
  }

  public void registerNodePropertyGetter(String conceptFqName, String propertyName, INodePropertyGetter getter) {
    String key = conceptFqName + "#" + propertyName;
    if (!myNodePropertyGettersMap.containsKey(key)) {
      myNodePropertyGettersMap.put(key, getter);
    } else {
      LOG.error("property getter is already registered for key '" + key + "' : " + myNodePropertyGettersMap.get(key));
    }

    myNodePropertyGettersCache.clear();
  }

  public void unRegisterNodePropertyGetter(String conceptFqName, String propertyName) {
    myNodePropertyGettersMap.remove(conceptFqName + "#" + propertyName);

    myNodePropertyGettersCache.clear();
  }

  public void registerNodePropertySetter(String conceptFqName, String propertyName, INodePropertySetter setter) {
    String key = conceptFqName + "#" + propertyName;
    if (!myNodePropertySettersMap.containsKey(key)) {
      myNodePropertySettersMap.put(key, setter);
    } else {
      LOG.error("property setter is already registered for key '" + key + "' : " + myNodePropertySettersMap.get(key));
    }

    myNodePropertySettersCache.clear();
  }

  public void unRegisterNodePropertySetter(String conceptFqName, String propertyName) {
    myNodePropertySettersMap.remove(conceptFqName + "#" + propertyName);

    myNodePropertyGettersCache.clear();
  }

  public void registerNodeReferentSetEventHandler(String conceptFqName, String referentRole, INodeReferentSetEventHandler eventHandler) {
    String key = conceptFqName + "#" + referentRole;
    if (!myNodeReferentSetEventHandlersMap.containsKey(key)) {
      myNodeReferentSetEventHandlersMap.put(key, eventHandler);
    } else {
      LOG.error("'set referent' event handler is already registered for key '" + key + "' : " + myNodeReferentSetEventHandlersMap.get(key));
    }
  }

  public void unRegisterNodeReferentSetEventHandler(String conceptFqName, String referentRole) {
    myNodeReferentSetEventHandlersMap.remove(conceptFqName + "#" + referentRole);
  }

  public INodeReferentSetEventHandler getNodeReferentSetEventHandler(SNode node, String referentRole) {
    // todo: optimization needed?
    ConceptDeclaration nodeConcept = node.getConceptDeclarationAdapter();
    while (nodeConcept != null) {
      String conceptFqName = NameUtil.nodeFQName(nodeConcept);
      INodeReferentSetEventHandler handler = myNodeReferentSetEventHandlersMap.get(conceptFqName + "#" + referentRole);
      if (handler != null) return handler;
      nodeConcept = nodeConcept.getExtends();
    }
    return null;
  }

  public void registerNodeReferentSearchScopeProvider(String conceptFqName, String referenceRole, INodeReferentSearchScopeProvider provider) {
    String key = conceptFqName + "#" + referenceRole;
    if (!myNodeReferentSearchScopeProvidersMap.containsKey(key)) {
      myNodeReferentSearchScopeProvidersMap.put(key, provider);
    } else {
      LOG.error("search scope provider is already registered for key '" + key + "' : " + myNodeReferentSearchScopeProvidersMap.get(key));
    }
  }

  public void unRegisterNodeReferentSearchScopeProvider(String conceptFqName, String referenceRole) {
    myNodeReferentSearchScopeProvidersMap.remove(conceptFqName + "#" + referenceRole);
  }

  public void registerNodeDefaultSearchScopeProvider(String conceptFqName, INodeReferentSearchScopeProvider provider) {
    if (!myNodeDefaultSearchScopeProvidersMap.containsKey(conceptFqName)) {
      myNodeDefaultSearchScopeProvidersMap.put(conceptFqName, provider);
    } else {
      LOG.error("default search scope provider is already registered for concept '" + conceptFqName + "' : " + myNodeDefaultSearchScopeProvidersMap.get(conceptFqName));
    }
  }

  public void unRegisterNodeDefaultSearchScopeProvider(String conceptFqName) {
    myNodeDefaultSearchScopeProvidersMap.remove(conceptFqName);
  }

  public INodePropertyGetter getNodePropertyGetter(SNode node, String propertyName) {
    return (INodePropertyGetter) getNodePropertyGetterOrSetter(node.getAdapter(), propertyName, false);
  }

  public INodePropertySetter getNodePropertySetter(SNode node, String propertyName) {
    return (INodePropertySetter) getNodePropertyGetterOrSetter(node.getAdapter(), propertyName, true);
  }

  public IModelConstraints getNodePropertyGetterOrSetter(@NotNull INodeAdapter node, @NotNull String propertyName, boolean isSetter) {
    String namespace = node.getNode().getLanguageNamespace();

    // 'bootstrap' properties
    if (namespace.equals("jetbrains.mps.bootstrap.structureLanguage") && propertyName.equals(NamedConcept.NAME)) {
      return null;
    }
    if (namespace.equals("jetbrains.mps.projectLanguage")) {
      return null;
    }
    if (node instanceof RuntimeTypeVariable) {
      // helgins fhtagn!
      return null;
    }

    //language is not loaded yet (bootstrap)?
    if (!myAddedLanguageNamespaces.containsKey(namespace)) {
      return null;
    }

//    System.out.println("find getter for <" + propertyName + "> in " + node.getDebugText());

    String sourceConceptFqName = node.getConceptName();
    String sourceKey = sourceConceptFqName + "#" + propertyName;

    if (isSetter) {
      INodePropertySetter setter = myNodePropertySettersCache.get(sourceKey);
      if (setter != null || myNodePropertySettersCache.containsKey(sourceKey)) return setter;
    } else {
      INodePropertyGetter getter = myNodePropertyGettersCache.get(sourceKey);
      if (getter != null || myNodePropertyGettersCache.containsKey(sourceKey)) return getter;
    }

    ConceptDeclaration concept = node.getConceptDeclaration(GlobalScope.getInstance());
    while (concept != null) {
      String conceptFqName = NameUtil.nodeFQName(concept);
      IModelConstraints result;
      if (isSetter) {
        result = myNodePropertySettersMap.get(conceptFqName + "#" + propertyName);
      } else {
        result = myNodePropertyGettersMap.get(conceptFqName + "#" + propertyName);
      }
      if (result != null) {
        if (isSetter) {
          myNodePropertySettersCache.put(sourceKey, (INodePropertySetter) result);
        } else {
          myNodePropertyGettersCache.put(sourceKey, (INodePropertyGetter) result);
        }

        return result;
      }
      concept = concept.getExtends();
    }

    if (isSetter) {
      myNodePropertySettersCache.put(sourceKey, null);
    } else {
      myNodePropertyGettersCache.put(sourceKey, null);
    }

    return null;
  }

  public INodeReferentSearchScopeProvider getNodeDefaultSearchScopeProvider(ConceptDeclaration referentConcept) {
    while (referentConcept != null) {
      String conceptFqName = NameUtil.nodeFQName(referentConcept);
      INodeReferentSearchScopeProvider provider = myNodeDefaultSearchScopeProvidersMap.get(conceptFqName);
      if (provider != null) return provider;
      referentConcept = referentConcept.getExtends();
    }
    return null;
  }

  public INodeReferentSearchScopeProvider getNodeReferentSearchScopeProvider(ConceptDeclaration nodeConcept, String referentRole) {

    while (nodeConcept != null) {
      String conceptFqName = NameUtil.nodeFQName(nodeConcept);
      INodeReferentSearchScopeProvider provider = myNodeReferentSearchScopeProvidersMap.get(conceptFqName + "#" + referentRole);
      if (provider != null) return provider;
      nodeConcept = nodeConcept.getExtends();
    }
    return null;
  }

  private void processLanguageAdded(Language language) {
//    System.out.println("processLanguageAdded: " + language.getNamespace());
    String namespace = language.getNamespace();
    if (myAddedLanguageNamespaces.containsKey(namespace)) {
      return;
    }

    LinkedList<IModelConstraints> loadedConstraints = new LinkedList<IModelConstraints>();
    myAddedLanguageNamespaces.put(namespace, loadedConstraints);
    loadConstraints(namespace, loadedConstraints);
  }

  private void processLanguageRemoved(Language language) {
    //System.out.println("processLanguageRemoved: " + language.getNamespace());
    String namespace = language.getNamespace();
    List<IModelConstraints> loadedConstraints = myAddedLanguageNamespaces.get(namespace);
    for (IModelConstraints constraints : loadedConstraints) {
      constraints.unRegisterSelf(this);
    }
    myAddedLanguageNamespaces.remove(namespace);
  }

  public void reloadAll() {
    myNodePropertyGettersMap.clear();
    myNodePropertySettersMap.clear();
    myNodeReferentSearchScopeProvidersMap.clear();

    for (String languageNamespace : myAddedLanguageNamespaces.keySet()) {
      List<IModelConstraints> loadedConstraints = myAddedLanguageNamespaces.get(languageNamespace);
      for (IModelConstraints constraints : loadedConstraints) {
        constraints.unRegisterSelf(this);
      }
      loadedConstraints.clear();
      loadConstraints(languageNamespace, loadedConstraints);
    }
  }

  private void loadConstraints(String languageNamespace, List<IModelConstraints> loadedConstraints) {
    // load constraints
    String packageName = languageNamespace + ".constraints";
    IClassPathItem classPathItem = myClassLoaderManager.getClassPathItem();
    Set<String> availableClasses = classPathItem.getAvailableClasses(packageName);
    for (String shortClassName : availableClasses) {
      try {
        ClassLoader classLoader = myClassLoaderManager.getClassLoader();
        Class constraintsClass = Class.forName(packageName + "." + shortClassName, true, classLoader);
        if (IModelConstraints.class.isAssignableFrom(constraintsClass)) {
          IModelConstraints constraints = (IModelConstraints) constraintsClass.newInstance();
          constraints.registerSelf(this);
          loadedConstraints.add(constraints);
        }
      } catch (ClassNotFoundException e) {
        LOG.error(e);
      } catch (InstantiationException e) {
        LOG.error(e);
      } catch (IllegalAccessException e) {
        LOG.error(e);
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
  }

  public static void main(String[] args) {
    Map<String, String> m = new HashMap<String, String>();
    m.put("a", "b");
    m.clear();

    System.out.println(m.containsKey("a"));
  }
}

/*
 * Copyright 2003-2010 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.intentions;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.RuntimeInterruptedException;
import com.intellij.openapi.components.ApplicationComponent;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.openapi.util.Computable;
import com.intellij.openapi.util.Pair;
import jetbrains.mps.lang.intentions.behavior.BaseIntentionDeclaration_Behavior;
import jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration;
import jetbrains.mps.lang.script.plugin.migrationtool.MigrationScriptUtil;
import jetbrains.mps.lang.script.runtime.AbstractMigrationRefactoring;
import jetbrains.mps.lang.script.runtime.BaseMigrationScript;
import jetbrains.mps.lang.script.structure.MigrationScript;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.EditorContext;
import jetbrains.mps.nodeEditor.EditorMessage;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.reloading.ReloadAdapter;
import jetbrains.mps.smodel.*;
import jetbrains.mps.typesystem.inference.TypeChecker;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;


@State(
  name = "MPSIntentionsManager",
  storages = {
    @Storage(
      id = "other",
      file = "$APP_CONFIG$/intentions.xml"
    )}
)
public class IntentionsManager implements ApplicationComponent, PersistentStateComponent<IntentionsManager.MyState> {
  private static final Logger LOG = Logger.getLogger(IntentionsManager.class);

  public static IntentionsManager getInstance() {
    return ApplicationManager.getApplication().getComponent(IntentionsManager.class);
  }

  private Map<Intention, SNode> myNodesByIntentions = new HashMap<Intention, SNode>();
  private Map<String, Set<Intention>> myIntentions = new HashMap<String, Set<Intention>>();
  private Set<Intention> myDisabledIntentionsCache = new HashSet<Intention>();
  private HashMap<Class, Language> myIntentionsLanguages = new HashMap<Class, Language>();
  private boolean myCachesAreValid = false;

  private MyState myState = new MyState();

  private ClassLoaderManager myClassLoaderManager;

  public IntentionsManager(ClassLoaderManager manager) {
    myClassLoaderManager = manager;
  }

  public Collection<Pair<Intention, SNode>> getAvailableIntentions(final QueryDescriptor query, final SNode node, final EditorContext context, @Nullable final Computable<Boolean> terminated) {
    Computable<Set<Pair<Intention, SNode>>> computable = new Computable<Set<Pair<Intention, SNode>>>() {
      public Set<Pair<Intention, SNode>> compute() {
        Set<Pair<Intention, SNode>> result = new HashSet<Pair<Intention, SNode>>();

        for (Intention intention : getAvailableIntentionsForExactNode(node, context, false, query.isInstantiate(), terminated)) {
          result.add(new Pair<Intention, SNode>(intention, node));
        }
        SNode parent = node.getParent();
        while (parent != null) {
          for (Intention intention : getAvailableIntentionsForExactNode(parent, context, true, query.isInstantiate(), terminated)) {
            result.add(new Pair<Intention, SNode>(intention, parent));
          }
          parent = parent.getParent();
        }

        return query.filter(result);
      }
    };

    try {
      TypeChecker.getInstance().enableGlobalSubtypingCache();
      Set<Pair<Intention, SNode>> intentions = ModelAccess.instance().runReadAction(computable);
      return intentions;
    } finally {
      TypeChecker.getInstance().clearGlobalSubtypingCache();
    }
  }

  private List<Intention> getIntentionsFor(SNode node, IScope scope, @Nullable Computable<Boolean> terminated) {
    String conceptFqName = node.getConceptFqName();
    Set<Language> visibleLanguages = new HashSet<Language>(node.getModel().getLanguages(scope));
    List<Intention> result = new ArrayList<Intention>();
    for (String ancestor : LanguageHierarchyCache.getInstance().getAncestorsNames(conceptFqName)) {
      Set<Intention> intentions = myIntentions.get(ancestor);
      if (intentions == null) continue;
      for (Intention intention : intentions) {
        if (terminated != null && terminated.compute()) return new ArrayList<Intention>();
        Language language = getIntentionLanguage(intention);
        if (language != null && !visibleLanguages.contains(language)) continue;
        result.add(intention);
      }
    }
    return result;
  }

  public List<Intention> getAvailableIntentionsForExactNode(final SNode node, @NotNull final EditorContext context, boolean inChild, boolean instantiateParameterized, @Nullable Computable<Boolean> terminated) {
    assert node != null : "node == null - inconsistent editor state";
    List<Intention> intentions;
    if (!instantiateParameterized) {
      intentions = getIntentionsFor(node, context.getScope(), terminated);
    } else {
      intentions = new ArrayList<Intention>();
      for (Intention intention : getIntentionsFor(node, context.getScope(), terminated)) {
        if (terminated != null && terminated.compute()) return new ArrayList<Intention>();
        if (intention.isParameterized()) {
          Method method = null;
          try {
            method = intention.getClass().getMethod("instances", SNode.class, EditorContext.class);
          } catch (NoSuchMethodException e) {
            LOG.error(e);
          }
          Object[] arguments = new Object[]{node, context};
          try {
            List<Intention> parameterizedIntentions = (List<Intention>) method.invoke(null, arguments);
            intentions.addAll(parameterizedIntentions);
          } catch (IllegalAccessException e) {
            LOG.error(e);
          } catch (InvocationTargetException e) {
            if (e.getTargetException() instanceof RuntimeInterruptedException) {
              throw (RuntimeInterruptedException) e.getTargetException();
            }
            LOG.error(e);
          }
        } else {
          intentions.add(intention);
        }
      }
    }

    List<Intention> result = new ArrayList<Intention>();
    for (final Intention intention : intentions) {
      try {
        boolean isApplicable = false;
        if (!inChild || intention.isAvailableInChildNodes()) {
          isApplicable = ModelAccess.instance().runReadAction(new Computable<Boolean>() {
            public Boolean compute() {
              return intention.isApplicable(node, context);
            }
          });
        }
        if (isApplicable) {
          result.add(intention);
        }
      } catch (Throwable t) {
        LOG.error("Intention's isApplicable method failed " + t.getMessage(), t);
      }
    }

    List<EditorMessage> messages = context.getNodeEditorComponent().getHighlightManager().getMessagesFor(node);
    for (EditorMessage message : messages) {
      IntentionProvider intentionProvider = message.getIntentionProvider();
      if (intentionProvider != null) {
        Intention intention = intentionProvider.getIntention();
        if (intention != null) {
          if (!inChild || intention.isAvailableInChildNodes()) {
            result.add(intention);
          }
        }
      }
    }

    return result;
  }

  public boolean intentionIsDisabled(Intention intention) {
    return getDisabledIntentions().contains(intention);
  }

  protected Set<Intention> getDisabledIntentions() {
    if (!myCachesAreValid) {
      myDisabledIntentionsCache.clear();
      for (Set<Intention> conceptIntentions : myIntentions.values()) {
        for (Intention intention : conceptIntentions) {
          if (myState.myDisabledIntentions.contains(intention.getClass().getName())) {
            myDisabledIntentionsCache.add(intention);
          }
        }
      }
      myCachesAreValid = true;
    }
    return myDisabledIntentionsCache;
  }

  protected void invalidateCaches() {
    myCachesAreValid = false;
    myDisabledIntentionsCache.clear();
  }

  //-------------disabled state control-----------------

  public void invertIntentionState(Intention intention) {
    setIntentionState(intention, !intentionIsDisabled(intention));
  }

  public void setIntentionState(Intention intention, boolean disabled) {
    if (disabled) {
      disableIntention(intention);
    } else {
      enableIntention(intention);
    }
  }

  public void disableIntention(Intention intention) {
    myState.myDisabledIntentions.add(intention.getClass().getName());
    myDisabledIntentionsCache.add(intention);
  }

  public void enableIntention(Intention intention) {
    myState.myDisabledIntentions.remove(intention.getClass().getName());
    myDisabledIntentionsCache.remove(intention);
  }

  //-------------node info by intention-----------------

  public Language getIntentionLanguage(Intention intention) {
    return myIntentionsLanguages.get(intention.getClass());
  }

  @Nullable
  public SNode getNodeByIntention(Intention intention) {
    SNode sNode = myNodesByIntentions.get(intention);
    if (sNode == null) {
      return intention.getNodeByIntention();
    }
    return sNode;
  }

  //-------------reloading-----------------

  public void dispose() {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        myIntentions.clear();
        myNodesByIntentions.clear();
        myIntentionsLanguages.clear();
        invalidateCaches();
      }
    });
  }

  public void load() {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        for (Language language : MPSModuleRepository.getInstance().getAllLanguages()) {
          addIntentionsFromLanguage(language);
          addMigrationsFromLanguage(language);
        }
      }
    });
  }

  private void addMigrationsFromLanguage(Language language) {
    SModelDescriptor scriptsModel = language.getScriptsModelDescriptor();
    if (scriptsModel == null) return;

    List<MigrationScript> migrationScripts = scriptsModel.getSModel().getRootsAdapters(MigrationScript.class);

    Map<BaseMigrationScript, MigrationScript> scripts = new com.intellij.util.containers.HashMap<BaseMigrationScript, MigrationScript>();
    for (MigrationScript migrationScript : migrationScripts) {
      // IOperationContext operationContext = new ModuleContext(language, ...);
      //it seems that IOperationContext is unnecessary in MigrationScriptUtil.getBaseScriptForNode
      BaseMigrationScript script = MigrationScriptUtil.getBaseScriptForNode(null/*TODO???*/, migrationScript.getNode());
      if (script == null) continue;
      scripts.put(script, migrationScript);
    }

    for (BaseMigrationScript script : scripts.keySet()) {
      MigrationScript migrationScript = scripts.get(script);
      for (AbstractMigrationRefactoring refactoring : script.getRefactorings()) {
        if (refactoring.isShowAsIntention()) {
          Intention intention = new MigrationRefactoringAdapter(refactoring, migrationScript);
          addIntention(intention);
          myNodesByIntentions.put(intention, migrationScript.getNode());
        }
      }
    }
  }

  private void addIntentionsFromLanguage(Language l) {
    SModelDescriptor intentionsModelDescriptor = l.getIntentionsModelDescriptor();
    if (intentionsModelDescriptor != null) {
      SModel smodel = intentionsModelDescriptor.getSModel();
      for (BaseIntentionDeclaration intentionDeclaration : smodel.getRootsAdapters(BaseIntentionDeclaration.class)) {
/*
 Warning:
 BaseIntentionDeclaration_Behavior class will be loaded using platform classloader here.
 As a result this class will be loaded twice - once using own BundleClassLoader and one more time - here.
 */
        String className = smodel.getSModelReference().getLongName() + "." + BaseIntentionDeclaration_Behavior.call_getGeneratedName_6263518417926802289(intentionDeclaration.getNode());
        try {
          Class<?> cls = l.getClass(className);

          if (cls != null) {
            Intention intention = (Intention) cls.newInstance();
            addIntention(intention);
            myNodesByIntentions.put((Intention) intention, intentionDeclaration.getNode());
            myIntentionsLanguages.put(cls, l);
          }
        } catch (Throwable throwable) {
          LOG.error(throwable, intentionDeclaration);
        }
      }
    }
  }

  private void addIntention(Intention intention) {
    Set<Intention> intentions = myIntentions.get(intention.getConcept());
    if (intentions == null) {
      intentions = new HashSet<Intention>();
    }
    intentions.add((Intention) intention);
    myIntentions.put(intention.getConcept(), intentions);
  }

  //-------------queryDescriptor-----------------

  public static class QueryDescriptor {
    private Class<? extends Intention> myIntentionClass;
    private boolean myInstantiate;
    private boolean myEnabledOnly;

    public QueryDescriptor(Class<? extends Intention> intentionClass, boolean instantiate, boolean enabledOnly) {
      myIntentionClass = intentionClass;
      myInstantiate = instantiate;
      myEnabledOnly = enabledOnly;
    }

    public boolean isInstantiate() {
      return myInstantiate;
    }

    public Set<Pair<Intention, SNode>> filter(Set<Pair<Intention, SNode>> intentions) {
      Set<Pair<Intention, SNode>> result = new HashSet<Pair<Intention, SNode>>();

      for (Pair<Intention, SNode> p : intentions) {
        if (myIntentionClass == null || myIntentionClass.isAssignableFrom(p.getFirst().getClass())) {
          result.add(p);
        }
      }

      Set<Intention> disabled = IntentionsManager.getInstance().getDisabledIntentions();
      for (Pair<Intention, SNode> ip : intentions) {
        if (!(myEnabledOnly && disabled.contains(ip.first))) {
          result.add(ip);
        }
      }

      return result;
    }
  }

  //-------------component methods-----------------

  public void initComponent() {
    myClassLoaderManager.addReloadHandler(new ReloadAdapter() {
      @Override
      public void onReload() {
        dispose();
        load();
      }
    });
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return "MPS Intention Manager";
  }

  public void disposeComponent() {

  }

  public MyState getState() {
    return myState;
  }

  public void loadState(MyState state) {
    myState = state;
  }

  public static class MyState {
    private Set<String> myDisabledIntentions = new HashSet<String>();

    public Set<String> getDisabledIntentions() {
      return myDisabledIntentions;
    }

    public void setDisabledIntentions(Set<String> disabledIntentions) {
      myDisabledIntentions = disabledIntentions;
    }
  }
}

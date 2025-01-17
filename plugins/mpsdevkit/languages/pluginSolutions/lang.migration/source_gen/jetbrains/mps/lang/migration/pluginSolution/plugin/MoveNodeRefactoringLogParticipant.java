package jetbrains.mps.lang.migration.pluginSolution.plugin;

/*Generated by MPS */

import jetbrains.mps.ide.platform.actions.core.MoveNodeRefactoringParticipant;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.structure.Extension;
import jetbrains.mps.ide.platform.actions.core.RefactoringParticipant;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.smodel.structure.ExtensionPoint;
import jetbrains.mps.internal.collections.runtime.ISelector;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.ide.platform.actions.core.RefactoringSession;
import org.jetbrains.mps.openapi.module.SModule;
import java.util.Map;
import org.jetbrains.mps.openapi.module.SModuleReference;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import jetbrains.mps.smodel.Language;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.smodel.SModelInternal;
import org.jetbrains.mps.openapi.model.SModelReference;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import org.jetbrains.mps.openapi.model.SReference;
import java.util.ArrayList;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.typesystem.runtime.HUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import org.jetbrains.mps.openapi.module.SRepository;
import java.util.List;
import org.jetbrains.mps.openapi.module.SearchScope;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.ide.findusages.model.SearchResult;
import java.util.Iterator;

public class MoveNodeRefactoringLogParticipant implements MoveNodeRefactoringParticipant<SNodeReference, SNodeReference> {

  public static class MoveNodeRefactoringLogParticipant_extension extends Extension.Default<MoveNodeRefactoringParticipant<?, ?>> {
    public MoveNodeRefactoringLogParticipant_extension() {
      super("jetbrains.mps.ide.platform.MoveNodeParticipantEP");
    }
    public MoveNodeRefactoringParticipant<?, ?> get() {
      return new MoveNodeRefactoringLogParticipant();
    }
  }

  public static class MoveNodeParticipants extends Extension.Default<Iterable<RefactoringParticipant.PersistentRefactoringParticipant<?, ?, ?, ?>>> {
    public MoveNodeParticipants() {
      super("jetbrains.mps.ide.platform.PersistentRefactoringParticipantsEP");
    }
    public Iterable<RefactoringParticipant.PersistentRefactoringParticipant<?, ?, ?, ?>> get() {
      return Sequence.fromIterable(new ExtensionPoint<MoveNodeRefactoringParticipant<?, ?>>("jetbrains.mps.ide.platform.MoveNodeParticipantEP").getObjects()).ofType(RefactoringParticipant.PersistentRefactoringParticipant.class).select(new ISelector<RefactoringParticipant.PersistentRefactoringParticipant, RefactoringParticipant.PersistentRefactoringParticipant<?, ?, ?, ?>>() {
        public RefactoringParticipant.PersistentRefactoringParticipant<?, ?, ?, ?> select(RefactoringParticipant.PersistentRefactoringParticipant it) {
          return (RefactoringParticipant.PersistentRefactoringParticipant<?, ?, ?, ?>) it;
        }
      });
    }
  }

  public static class SerializingParticipantState<I, F> {
    private MoveNodeRefactoringParticipant<I, F> myParticipant;
    private RefactoringParticipant.PersistentRefactoringParticipant<I, F, SNode, SNode> myPersistentParticipant;
    public static <I, F> MoveNodeRefactoringLogParticipant.SerializingParticipantState<I, F> create(MoveNodeRefactoringParticipant<I, F> participant) {
      if (!(participant instanceof RefactoringParticipant.PersistentRefactoringParticipant)) {
        return null;
      }
      return new MoveNodeRefactoringLogParticipant.SerializingParticipantState<I, F>(participant, (RefactoringParticipant.PersistentRefactoringParticipant<I, F, SNode, SNode>) participant);
    }
    public SerializingParticipantState(MoveNodeRefactoringParticipant<I, F> participant, RefactoringParticipant.PersistentRefactoringParticipant<I, F, SNode, SNode> participantPersistence) {
      myParticipant = participant;
      myPersistentParticipant = participantPersistence;
    }
    public RefactoringParticipant.PersistentRefactoringParticipant<I, F, SNode, SNode> getParticipant() {
      return myPersistentParticipant;
    }
    public SNode getSerializedInitial(SNode oldNode) {
      return myPersistentParticipant.serializeInitialState(myParticipant.getDataCollector().beforeMove(oldNode));
    }
    public SNode getSerializedFinal(SNode newNode) {
      return myPersistentParticipant.serializeFinalState(myParticipant.getDataCollector().afterMove(newNode));
    }
  }


  private MoveNodeRefactoringParticipant.MoveNodeRefactoringDataCollector<SNodeReference, SNodeReference> myDataCollector = new MoveNodeRefactoringParticipant.MoveNodeRefactoringDataCollector<SNodeReference, SNodeReference>() {
    public SNodeReference beforeMove(SNode nodeToMove) {
      return nodeToMove.getReference();
    }
    public SNodeReference afterMove(SNode movedNode) {
      return movedNode.getReference();
    }
  };

  public MoveNodeRefactoringParticipant.MoveNodeRefactoringDataCollector<SNodeReference, SNodeReference> getDataCollector() {
    return myDataCollector;
  }

  public static class LogBuilder {
    private static final String myId = "refactoringSession.logBuilder";
    public static MoveNodeRefactoringLogParticipant.LogBuilder getBuilder(RefactoringSession session, SModule module) {
      Map<SModuleReference, MoveNodeRefactoringLogParticipant.LogBuilder> moduleBuilders = (Map<SModuleReference, MoveNodeRefactoringLogParticipant.LogBuilder>) session.getObject(myId);
      if (moduleBuilders == null) {
        moduleBuilders = MapSequence.fromMap(new HashMap<SModuleReference, MoveNodeRefactoringLogParticipant.LogBuilder>());
        session.putObject(myId, moduleBuilders);
      }

      MoveNodeRefactoringLogParticipant.LogBuilder builder = MapSequence.fromMap(moduleBuilders).get(module.getModuleReference());
      if (builder == null) {
        builder = new MoveNodeRefactoringLogParticipant.LogBuilder(session, ((Language) module));
        MapSequence.fromMap(moduleBuilders).put(module.getModuleReference(), builder);
      }
      return builder;
    }
    private SNode myRefactoringStep;
    private LogBuilder(RefactoringSession session, final Language module) {
      final int moduleVersion = module.getModuleVersion();
      myRefactoringStep = createRefactoringLog_29rp6m_a0b0d21(moduleVersion, "RefactoringLog_" + moduleVersion);
      session.registerChange(new Runnable() {
        public void run() {
          SModel migrationModel = LanguageAspect.MIGRATION.getOrCreate(module);
          SModelInternal sm = (SModelInternal) (SModel) migrationModel;
          for (SModelReference reference : ListSequence.fromList(SNodeOperations.getNodeDescendants(myRefactoringStep, null, true, new SAbstractConcept[]{})).translate(new ITranslator2<SNode, SReference>() {
            public Iterable<SReference> translate(SNode it) {
              return SNodeOperations.getReferences(it);
            }
          }).select(new ISelector<SReference, SModelReference>() {
            public SModelReference select(SReference it) {
              return it.getTargetSModelReference();
            }
          }).distinct()) {
            if (!(ListSequence.fromList(ListSequence.fromListWithValues(new ArrayList<jetbrains.mps.smodel.SModel.ImportElement>(), sm.importedModels())).select(new ISelector<jetbrains.mps.smodel.SModel.ImportElement, SModelReference>() {
              public SModelReference select(jetbrains.mps.smodel.SModel.ImportElement it) {
                return it.getModelReference();
              }
            }).contains(reference))) {
              sm.addModelImport(reference, true);
            }
          }
          sm.addLanguage(MetaAdapterFactory.getLanguage(MetaIdFactory.langId(0x9882f4ad195546feL, 0x826994189e5dbbf2L), "jetbrains.mps.lang.migration.util"));
          SModelOperations.addRootNode(migrationModel, myRefactoringStep);
          module.setModuleVersion(moduleVersion + 1);
        }
      });
    }
    public void addPart(RefactoringParticipant.PersistentRefactoringParticipant participant, SNode initialState, SNode finalState) {
      ListSequence.fromList(SLinkOperations.getChildren(myRefactoringStep, MetaAdapterFactory.getContainmentLink(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x1bf9eb43276b6d8fL, 0x1bf9eb43276b6d92L, "part"))).addElement(createRefactoringPart_29rp6m_a0a0a4m(participant.getId(), SNodeOperations.cast(HUtil.copyIfNecessary(initialState), MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept")), SNodeOperations.cast(HUtil.copyIfNecessary(finalState), MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept"))));
    }
    public void addOptions(Iterable<RefactoringParticipant.Option> selectedOptions) {
      if ((SLinkOperations.getTarget(myRefactoringStep, MetaAdapterFactory.getContainmentLink(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x1bf9eb43276b6d8fL, 0x31ee543051f2333cL, "options")) == null)) {
        SLinkOperations.setNewChild(myRefactoringStep, MetaAdapterFactory.getContainmentLink(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x1bf9eb43276b6d8fL, 0x31ee543051f2333cL, "options"), SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x31ee543051f23340L, "jetbrains.mps.lang.migration.structure.RefactoringOptions")));
      }
      for (RefactoringParticipant.Option option : Sequence.fromIterable(selectedOptions)) {
        if (!(ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(myRefactoringStep, MetaAdapterFactory.getContainmentLink(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x1bf9eb43276b6d8fL, 0x31ee543051f2333cL, "options")), MetaAdapterFactory.getContainmentLink(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x31ee543051f23340L, 0x31ee543051f23346L, "options"))).select(new ISelector<SNode, RefactoringParticipant.Option>() {
          public RefactoringParticipant.Option select(SNode it) {
            return new RefactoringParticipant.Option(SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x31ee543051f23343L, 0x31ee543051f23344L, "optionId")), SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x31ee543051f23343L, 0x31ee543051f30774L, "description")));
          }
        }).contains(option))) {
          ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(myRefactoringStep, MetaAdapterFactory.getContainmentLink(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x1bf9eb43276b6d8fL, 0x31ee543051f2333cL, "options")), MetaAdapterFactory.getContainmentLink(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x31ee543051f23340L, 0x31ee543051f23346L, "options"))).addElement(createRefactoringOption_29rp6m_a0a0a0a1a5m(option.getId(), option.getDescription()));
        }
      }
    }
    private static SNode createRefactoringLog_29rp6m_a0b0d21(Object p0, Object p1) {
      PersistenceFacade facade = PersistenceFacade.getInstance();
      SNode n1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x1bf9eb43276b6d8fL, "jetbrains.mps.lang.migration.structure.RefactoringLog"), null, null, false);
      n1.setProperty(MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x115eca8579fL, "virtualPackage"), "refactoring");
      n1.setProperty(MetaAdapterFactory.getProperty(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x1bf9eb43276b6d8fL, 0x1bf9eb43276b6d91L, "fromVersion"), p0 + "");
      n1.setProperty(MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), p1 + "");
      return n1;
    }
    private static SNode createRefactoringPart_29rp6m_a0a0a4m(Object p0, Object p1, Object p2) {
      PersistenceFacade facade = PersistenceFacade.getInstance();
      SNode n1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x2b3f57492c163158L, "jetbrains.mps.lang.migration.structure.RefactoringPart"), null, null, false);
      n1.setProperty(MetaAdapterFactory.getProperty(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x2b3f57492c163158L, 0x325b97b223b9e3aaL, "participant"), p0 + "");
      if (p1 != null) {
        n1.addChild(MetaAdapterFactory.getContainmentLink(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x2b3f57492c163158L, 0x325b97b223b9e3acL, "initialState"), (SNode) p1);
      }
      if (p2 != null) {
        n1.addChild(MetaAdapterFactory.getContainmentLink(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x2b3f57492c163158L, 0x325b97b223b9e3aeL, "finalState"), (SNode) p2);
      }
      return n1;
    }
    private static SNode createRefactoringOption_29rp6m_a0a0a0a1a5m(Object p0, Object p1) {
      PersistenceFacade facade = PersistenceFacade.getInstance();
      SNode n1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x31ee543051f23343L, "jetbrains.mps.lang.migration.structure.RefactoringOption"), null, null, false);
      n1.setProperty(MetaAdapterFactory.getProperty(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x31ee543051f23343L, 0x31ee543051f23344L, "optionId"), p0 + "");
      n1.setProperty(MetaAdapterFactory.getProperty(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x31ee543051f23343L, 0x31ee543051f30774L, "description"), p1 + "");
      return n1;
    }
  }

  public boolean isApplicable(SNodeReference initialState, SRepository repository) {
    SNode sourceNode = initialState.resolve(repository);
    final SModule sourceModule = SNodeOperations.getModel(sourceNode).getModule();
    return sourceModule instanceof Language;
  }
  public List<RefactoringParticipant.Option> getAvailableOptions(SNodeReference initialState, SRepository repository) {
    if (isApplicable(initialState, repository)) {
      return ListSequence.fromListAndArray(new ArrayList<RefactoringParticipant.Option>(), OPTION);
    } else {
      return ListSequence.fromList(new ArrayList<RefactoringParticipant.Option>());
    }
  }

  public List<RefactoringParticipant.Change<SNodeReference, SNodeReference>> getChanges(SNodeReference initialState, SRepository repository, final List<RefactoringParticipant.Option> selectedOptions, SearchScope searchScope) {
    if (!(isApplicable(initialState, repository)) || !(ListSequence.fromList(selectedOptions).contains(OPTION))) {
      return ListSequence.fromList(new ArrayList<RefactoringParticipant.Change<SNodeReference, SNodeReference>>());
    }
    final SNode sourceNode = initialState.resolve(repository);
    final SModule sourceModule = SNodeOperations.getModel(sourceNode).getModule();
    final List<MoveNodeRefactoringLogParticipant.SerializingParticipantState<?, ?>> participantStates = Sequence.fromIterable(new ExtensionPoint<MoveNodeRefactoringParticipant<?, ?>>("jetbrains.mps.ide.platform.MoveNodeParticipantEP").getObjects()).select(new ISelector<MoveNodeRefactoringParticipant<?, ?>, MoveNodeRefactoringLogParticipant.SerializingParticipantState<?, ?>>() {
      public MoveNodeRefactoringLogParticipant.SerializingParticipantState<?, ?> select(MoveNodeRefactoringParticipant<?, ?> participant) {
        return MoveNodeRefactoringLogParticipant.SerializingParticipantState.create(participant);
      }
    }).where(new IWhereFilter<MoveNodeRefactoringLogParticipant.SerializingParticipantState<?, ?>>() {
      public boolean accept(MoveNodeRefactoringLogParticipant.SerializingParticipantState<?, ?> it) {
        return it != null;
      }
    }).toListSequence();
    if (ListSequence.fromList(participantStates).isEmpty()) {
      return ListSequence.fromList(new ArrayList<RefactoringParticipant.Change<SNodeReference, SNodeReference>>());
    }
    final List<SNode> initialStates = ListSequence.fromList(participantStates).select(new ISelector<MoveNodeRefactoringLogParticipant.SerializingParticipantState<?, ?>, SNode>() {
      public SNode select(MoveNodeRefactoringLogParticipant.SerializingParticipantState<?, ?> it) {
        return it.getSerializedInitial(sourceNode);
      }
    }).toListSequence();

    final SearchResults results = new SearchResults();
    results.add(new SearchResult<SModule>(sourceModule, "refactoring log"));

    // todo: write guard migration with 'execute after' 

    RefactoringParticipant.Change<SNodeReference, SNodeReference> change = new RefactoringParticipant.Change<SNodeReference, SNodeReference>() {
      public SearchResults getSearchResults() {
        return results;
      }
      public boolean needsToPreserveOldNode() {
        return false;
      }
      public void confirm(SNodeReference finalState, SRepository repository, RefactoringSession refactoringSession) {
        final SNode targetNode = finalState.resolve(repository);
        SModule targetModule = SNodeOperations.getModel(targetNode).getModule();
        List<SNode> finalStates = ListSequence.fromList(participantStates).select(new ISelector<MoveNodeRefactoringLogParticipant.SerializingParticipantState<?, ?>, SNode>() {
          public SNode select(MoveNodeRefactoringLogParticipant.SerializingParticipantState<?, ?> it) {
            return it.getSerializedFinal(targetNode);
          }
        }).toListSequence();
        MoveNodeRefactoringLogParticipant.LogBuilder logBuilder = MoveNodeRefactoringLogParticipant.LogBuilder.getBuilder(refactoringSession, sourceModule);
        logBuilder.addOptions(selectedOptions);
        {
          Iterator<RefactoringParticipant.PersistentRefactoringParticipant<?, ?, SNode, SNode>> participant_it = ListSequence.fromList(participantStates).select(new ISelector<MoveNodeRefactoringLogParticipant.SerializingParticipantState<?, ?>, RefactoringParticipant.PersistentRefactoringParticipant<?, ?, SNode, SNode>>() {
            public RefactoringParticipant.PersistentRefactoringParticipant<?, ?, SNode, SNode> select(MoveNodeRefactoringLogParticipant.SerializingParticipantState<?, ?> it) {
              return it.getParticipant();
            }
          }).iterator();
          Iterator<SNode> i_it = ListSequence.fromList(initialStates).iterator();
          Iterator<SNode> f_it = ListSequence.fromList(finalStates).iterator();
          RefactoringParticipant.PersistentRefactoringParticipant<?, ?, SNode, SNode> participant_var;
          SNode i_var;
          SNode f_var;
          while (participant_it.hasNext() && i_it.hasNext() && f_it.hasNext()) {
            participant_var = participant_it.next();
            i_var = i_it.next();
            f_var = f_it.next();
            logBuilder.addPart(participant_var, i_var, f_var);
          }
        }
      }
    };
    return ListSequence.fromListAndArray(new ArrayList<RefactoringParticipant.Change<SNodeReference, SNodeReference>>(), change);
  }

  public static final RefactoringParticipant.Option OPTION = new RefactoringParticipant.Option("moveNode.options.writeRefactoringLog", "Write refactoring log");

}

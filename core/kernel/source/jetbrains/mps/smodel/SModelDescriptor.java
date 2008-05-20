package jetbrains.mps.smodel;

import jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.projectLanguage.structure.ModelRoot;
import jetbrains.mps.smodel.event.SModelCommandListener;
import jetbrains.mps.smodel.event.SModelListener;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.Nullable;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * User: Sergey Dmitriev
 * Date: Apr 3, 2005
 */
public interface SModelDescriptor {
  /**
   * After model loading call SModelRepostiory.fireModelRepositoryChanged
   */
  SModel getSModel();

  SModelUID getModelUID();

  /**
   * todo: should return "long name"
   */
  String getName();

  String getLongName();

  String getStereotype();

  boolean isInitialized();

  @Nullable
  public Throwable getInitializationStackTrace();

  void addWeakModelListener(SModelListener listener);

  void addModelListener(SModelListener listener);

  void removeModelListener(SModelListener listener);

  void addModelCommandListener(SModelCommandListener listener);

  void removeModelCommandListener(SModelCommandListener listener);

  void save();

  boolean needsReloading();

  void reloadFromDisk();

  void refresh();

  void dispose();

  void replaceModel(SModel newModel);

  IFile getModelFile();

  Set<SReference> findUsages(Set<SNode> node);

  Set<SReference> findUsages(SNode node);

  boolean hasUsages(Set<SModelUID> models);

  Set<AbstractConceptDeclaration> findDescendants(AbstractConceptDeclaration node, Set<AbstractConceptDeclaration> descendantsKnownInModel);

  Set<SNode> findInstances(AbstractConceptDeclaration concept, IScope scope);

  Set<SNode> findExactInstances(AbstractConceptDeclaration concept, IScope scope);

  boolean hasImportedModel(SModelDescriptor modelDescriptor);

  boolean hasLanguage(Language language);

  FastNodeFinder getFastNodeFinder();

  long timestamp();

  long fileTimestamp();

  long lastStructuralChange();

  long lastChangeTime();

  //dramatical event counter
  long structuralState();

  void delete();

  boolean isNotEditable();

  boolean isEmpty();

  boolean hasSModelCommandListener(SModelCommandListener listener);

  boolean isTransient();

  String getAttribute(String key);

  void setAttribute(String key, String value);

  Map<String, String> getMetaData();

  int getVersion();

  int getNameVersion();

  void setVersion(int newVersion);

  boolean rename(String newLongName, MPSProject project, ModelRoot newRoot);

  Set<ModelRoot> collectModelRoots();

  Object getUserObject(String key);

  void putUserObject(String key, Object value);

  void removeUserObject(String key);

  IOperationContext getOperationContext();

  IModule getModule();

  Set<IModule> getModules();

  List<String> validate(IScope scope);

  boolean isValid(IScope scope);
}

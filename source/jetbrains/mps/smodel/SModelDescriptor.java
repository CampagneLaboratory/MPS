package jetbrains.mps.smodel;

import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.smodel.event.SModelCommandListener;
import jetbrains.mps.smodel.event.SModelListener;
import jetbrains.mps.project.MPSProject;

import java.io.File;
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
  boolean isExternallyResolvable();
  void addSModelListener(SModelListener listener);
  void removeSModelListener(SModelListener listener);

  void addSModelCommandListener(SModelCommandListener listener);
  void removeSModelCommandListener(SModelCommandListener listener);

  void save();
  boolean needsReloading();

  void reloadFromDisk();
  void refresh();
  void dispose();
  void replaceModel(SModel newModel);

  File getModelFile();

  Set<SReference> findUsages(Set<SNode> node);
  Set<SReference> findUsages(SNode node);
  Set<ConceptDeclaration> findDescendants(ConceptDeclaration node, Set<ConceptDeclaration> descendantsKnownInModel);
  Set<SNode> findInstances(ConceptDeclaration concept, IScope scope);

  boolean hasImportedModel(SModelDescriptor modelDescriptor);
  boolean hasLanguage(Language language);

  FastNodeFinder getFastNodeFinder();

  long timestamp();

  long fileTimestamp();

  long lastStructuralChange();

  long lastChange();

  //dramatical event counter
  long structuralState();

  long state();

  void delete();

  boolean isNotEditable();

  boolean hasSModelCommandListener(SModelCommandListener listener);

  boolean isTransient();

  int getVersion();

  boolean rename(String newLongName, MPSProject project);
}

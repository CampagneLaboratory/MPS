package jetbrains.mps.generator;

import jetbrains.mps.smodel.FastNodeFinder;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SModelReference;
import org.jetbrains.annotations.NotNull;

/**
 * Evgeny Gryaznov, Apr 19, 2010
 */
public class TransientSModel extends SModel {

  public TransientSModel(@NotNull SModelReference modelReference) {
    super(modelReference);
  }

  @Override
  protected FastNodeFinder createFastNodeFinder() {
    return new TransientModelNodeFinder(this);
  }

  public boolean isTransient() {
    return true;
  }
}

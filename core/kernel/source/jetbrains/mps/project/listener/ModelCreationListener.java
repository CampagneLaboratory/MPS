package jetbrains.mps.project.listener;

import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.smodel.SModelDescriptor;

public abstract class ModelCreationListener {
  public abstract boolean isApplicable(SModelDescriptor m);

  public abstract void onCreate(SModelDescriptor m);
}

package jetbrains.mps.helgins.inference;

import jetbrains.mps.smodel.SNode;
import jetbrains.mps.lang.typesystem.structure.RuntimeTypeVariable;

/**
 * Created by IntelliJ IDEA.
* User: Cyril.Konopko
* Date: 20.07.2007
* Time: 14:14:15
* To change this template use File | Settings | File Templates.
*/
public interface IWrapper extends IMatcher {
  public SNode getNode();
  public boolean isVariable();
  public boolean isConcrete();
  public RuntimeTypeVariable getVariable();
  public String getVariableName();
  public boolean testVariableName(String pattern);
  public void fireRepresentatorSet(IWrapper representator, EquationManager equationManager);

  public void fireWeakParentAdded(IWrapper parent, EquationManager equationManager);

  public void fireBecomesDeeplyConcrete(EquationManager equationManager);

  public void addWrapperListener(IWrapperListener wrapperListener, EquationManager equationManager);

  public void removeWrapperlistener(IWrapperListener wrapperListener, EquationManager equationManager);

  public boolean isShallowConcrete();

  public IWrapper getShallowConcreteRepresentator();

  public boolean isMetaType();
}

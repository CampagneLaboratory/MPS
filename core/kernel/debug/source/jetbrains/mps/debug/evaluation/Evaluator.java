package jetbrains.mps.debug.evaluation;

import com.sun.jdi.*;
import jetbrains.mps.debug.evaluation.proxies.IObjectValueProxy;
import jetbrains.mps.debug.evaluation.proxies.IValueProxy;
import jetbrains.mps.debug.evaluation.proxies.MirrorUtil;
import jetbrains.mps.debug.runtime.JavaUiState;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

public abstract class Evaluator {
  private JavaUiState myUiState;
  private IObjectValueProxy myThisObject;

  public Evaluator(JavaUiState uiState) {
    myUiState = uiState;
    ObjectReference objectReference = uiState.getThisObject();
    if (objectReference != null) {
      myThisObject = (IObjectValueProxy) MirrorUtil.getValueProxy(objectReference, uiState.getThread().getThread());
    }
  }

  // TODO might wanna move all this stuff out
  @NotNull
  protected IValueProxy getValue(String varName) throws EvaluationException {
    StackFrame stackFrame = myUiState.getStackFrame().getStackFrame();
    assert stackFrame != null;
    LocalVariable localVariable;
    try {
      localVariable = stackFrame.visibleVariableByName(varName);
    } catch (AbsentInformationException ex) {
      throw new EvaluationException(ex);
    }
    if (localVariable == null) {
      throw new EvaluationException("variable not found: " + varName);
    }
    Value v = stackFrame.getValue(localVariable);
    return MirrorUtil.getValueProxy(v, myUiState.getThread().getThread());
  }

  protected IObjectValueProxy getThisObject() {
    return myThisObject;
  }

  public ThreadReference getThreadReference() {
    return myUiState.getThread().getThread();
  }

  public VirtualMachine getVM() {
    return myUiState.getThread().getThread().virtualMachine();
  }

  @NotNull
  protected IValueProxy invokeStatic(String className, String name, String jniSignature, Object... args) throws EvaluationException {
    final ClassType referenceType = findClassType(className, getVM());
    final Method method = findMethod(referenceType, name, jniSignature);

    final List<Value> argValues = MirrorUtil.getValues(getThreadReference(), args);

    return handleInvocationExceptions(new Invocatable<IValueProxy>() {
      @Override
      public IValueProxy invoke() throws InvocationException, InvalidTypeException, ClassNotLoadedException, IncompatibleThreadStateException {
        Value result = referenceType.invokeMethod(getThreadReference(), method, argValues, 0);
        return MirrorUtil.getValueProxy(result, getThreadReference());
      }
    });
  }

  @NotNull
  protected IValueProxy getStaticFieldValue(String className, String fieldName) throws InvalidEvaluatedExpressionException {
    ClassType referenceType = findClassType(className, getVM());
    Field field = findField(referenceType, fieldName);
    assert field.isStatic();
    Value result = referenceType.getValue(field);
    return MirrorUtil.getValueProxy(result, getThreadReference());
  }

  @Nullable
  protected String getThisFQName() {
    Location location = this.myUiState.getStackFrame().getLocation().getLocation();
    return location.declaringType().name();
  }

  @NotNull
  protected IValueProxy invokeConstructor(String className, String jniSignature, Object... args) throws EvaluationException {
    // TODO duplication in code
    final ClassType referenceType = findClassType(className, getVM());
    final Method constructor = findConstructor(referenceType, jniSignature);

    final List<Value> argValues = MirrorUtil.getValues(getThreadReference(), args);

    return handleInvocationExceptions(new Invocatable<IValueProxy>() {
      @Override
      public IValueProxy invoke() throws InvocationException, InvalidTypeException, ClassNotLoadedException, IncompatibleThreadStateException {
        Value result = referenceType.newInstance(getThreadReference(), constructor, argValues, 0);
        return MirrorUtil.getValueProxy(result, getThreadReference());
      }
    });
  }

  public static Field findField(ClassType referenceType, String fieldName) throws InvalidEvaluatedExpressionException {
    Field field = referenceType.fieldByName(fieldName);
    if (field == null) {
      throw new InvalidEvaluatedExpressionException("Could not find field " + fieldName + " in " + referenceType.name() + ".");
    }
    return field;
  }

  public static Method findConstructor(ClassType referenceType, String jniSignature) throws InvalidEvaluatedExpressionException {
    List<Method> methods = referenceType.methodsByName("<init>", jniSignature);
    if (methods.size() == 0) {
      throw new InvalidEvaluatedExpressionException("Could not find constructor " + " with signature " + jniSignature + " in " + referenceType.name() + ".");
    }
    Method constructor = null;
    for (Method m : methods) {
      if (m.isConstructor()) {
        constructor = m;
        break;
      }
    }
    if (constructor == null) {
      throw new InvalidEvaluatedExpressionException("Could not find constructor " + " with signature " + jniSignature + " in " + referenceType.name() + ".");
    }
    return constructor;
  }

  public static Method findMethod(ClassType referenceType, String methodsName, String jniSignature) throws InvalidEvaluatedExpressionException {
    List<Method> methods = referenceType.methodsByName(methodsName, jniSignature);
    if (methods.size() == 0) {
      throw new InvalidEvaluatedExpressionException("Could not find method " + methodsName + " with signature " + jniSignature + " in " + referenceType.name() + ".");
    }
    return methods.get(0);
  }

  public static ClassType findClassType(String className, VirtualMachine virtualMachine) throws InvalidEvaluatedExpressionException {
    List<ReferenceType> classes = virtualMachine.classesByName(className);
    if (classes.size() == 0) {
      throw new InvalidEvaluatedExpressionException("Could not find class " + className + ".");
    }
    ClassType referenceType = (ClassType) classes.get(0);
    return referenceType;
  }

  public static <T> T handleInvocationExceptions(Invocatable<T> invocatable) throws EvaluationException {
    try {
      return invocatable.invoke();
    } catch (InvocationException e) {
      throw new TargetVMEvaluationException(e.getCause());
    } catch (IllegalArgumentException e) {
      throw new InvalidEvaluatedExpressionException(e);
    } catch (InvalidTypeException e) {
      throw new InvalidEvaluatedExpressionException(e);
    } catch (Throwable t) {
      throw new EvaluationException(t);
    }
  }

  public static interface Invocatable<T> {
    T invoke() throws InvocationException, InvalidTypeException, ClassNotLoadedException, IncompatibleThreadStateException;
  }

  public abstract IValueProxy evaluate() throws EvaluationException;
}

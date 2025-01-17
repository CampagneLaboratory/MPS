package BHL7.behavior;

/*Generated by MPS */

import jetbrains.mps.core.aspects.behaviour.BaseBHDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.core.aspects.behaviour.api.BehaviorRegistry;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.core.aspects.behaviour.api.SMethod;
import jetbrains.mps.core.aspects.behaviour.SMethodBuilder;
import jetbrains.mps.core.aspects.behaviour.SJavaCompoundTypeImpl;
import jetbrains.mps.core.aspects.behaviour.SModifiersImpl;
import jetbrains.mps.core.aspects.behaviour.AccessPrivileges;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import UtilSolution.util.TestResults;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class B__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x4239359f64574d2aL, 0xb1e014d3f948db39L, 0x559729dec0466d3dL, "BHL7.structure.B");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<Object> virtualMethod_id5mnatV0hAPC = new SMethodBuilder<Object>(new SJavaCompoundTypeImpl(Object.class)).name("virtualMethod").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("5mnatV0hAPC").registry(REGISTRY).build();
  public static final SMethod<Object> staticVirtualMethod_id5mnatV0hATt = new SMethodBuilder<Object>(new SJavaCompoundTypeImpl(Object.class)).name("staticVirtualMethod").modifiers(SModifiersImpl.create(9, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("5mnatV0hATt").registry(REGISTRY).build();
  public static final SMethod<Integer> primitiveReturnValue_id4Rfm9LCctz9 = new SMethodBuilder<Integer>(new SJavaCompoundTypeImpl(Integer.TYPE)).name("primitiveReturnValue").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("4Rfm9LCctz9").registry(REGISTRY).build();
  public static final SMethod<Integer> primitiveParameter_id7zO8mNAVjjo = new SMethodBuilder<Integer>(new SJavaCompoundTypeImpl(Integer.TYPE)).name("primitiveParameter").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("7zO8mNAVjjo").registry(REGISTRY).build(SMethodBuilder.createJavaParameter(Integer.TYPE, ""), SMethodBuilder.createJavaParameter(Boolean.TYPE, ""), SMethodBuilder.createJavaParameter(Double.TYPE, ""));
  public static final SMethod<Integer> nonPrimitiveParameter_id4Tk5Y39EB1$ = new SMethodBuilder<Integer>(new SJavaCompoundTypeImpl(Integer.TYPE)).name("nonPrimitiveParameter").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("4Tk5Y39EB1$").registry(REGISTRY).build(SMethodBuilder.createJavaParameter(Integer.class, ""));
  public static final SMethod<Class<Integer>> genericReturnValue_id4Rfm9LCcu90 = new SMethodBuilder<Class<Integer>>(new SJavaCompoundTypeImpl(Class.class)).name("genericReturnValue").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("4Rfm9LCcu90").registry(REGISTRY).build();

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(virtualMethod_id5mnatV0hAPC, staticVirtualMethod_id5mnatV0hATt, primitiveReturnValue_id4Rfm9LCctz9, primitiveParameter_id7zO8mNAVjjo, nonPrimitiveParameter_id4Tk5Y39EB1$, genericReturnValue_id4Rfm9LCcu90);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static Object virtualMethod_id5mnatV0hAPC(@NotNull SNode __thisNode__) {
    return TestResults.POLYMORPHIC_CHILD;
  }
  /*package*/ static Object staticVirtualMethod_id5mnatV0hATt(@NotNull SAbstractConcept __thisConcept__) {
    return TestResults.POLYMORPHIC_CHILD;
  }
  /*package*/ static int primitiveReturnValue_id4Rfm9LCctz9(@NotNull SNode __thisNode__) {
    return TestResults.DEFAULT_RETURN_VALUE;
  }
  /*package*/ static int primitiveParameter_id7zO8mNAVjjo(@NotNull SNode __thisNode__, int a, boolean b, double d) {
    return TestResults.DEFAULT_RETURN_VALUE;
  }
  /*package*/ static int nonPrimitiveParameter_id4Tk5Y39EB1$(@NotNull SNode __thisNode__, Integer a) {
    return TestResults.DEFAULT_RETURN_VALUE;
  }
  /*package*/ static Class<Integer> genericReturnValue_id4Rfm9LCcu90(@NotNull SNode __thisNode__) {
    return Integer.class;
  }

  /*package*/ B__BehaviorDescriptor() {
    super(REGISTRY);
  }

  @Override
  protected void initNode(@NotNull SNode node, @NotNull SConstructor constructor, @Nullable Object[] parameters) {
    ___init___(node);
  }

  @Override
  protected <T> T invokeSpecial0(@NotNull SNode node, @NotNull SMethod<T> method, @Nullable Object[] parameters) {
    int methodIndex = BH_METHODS.indexOf(method);
    if (methodIndex < 0) {
      throw new BHMethodNotFoundException(this, method);
    }
    switch (methodIndex) {
      case 0:
        return (T) ((Object) virtualMethod_id5mnatV0hAPC(node));
      case 2:
        return (T) ((Integer) primitiveReturnValue_id4Rfm9LCctz9(node));
      case 3:
        return (T) ((Integer) primitiveParameter_id7zO8mNAVjjo(node, ((int) (Integer) parameters[0]), ((boolean) (Boolean) parameters[1]), ((double) (Double) parameters[2])));
      case 4:
        return (T) ((Integer) nonPrimitiveParameter_id4Tk5Y39EB1$(node, (Integer) parameters[0]));
      case 5:
        return (T) ((Class<Integer>) genericReturnValue_id4Rfm9LCcu90(node));
      default:
        throw new BHMethodNotFoundException(this, method);
    }
  }

  @Override
  protected <T> T invokeSpecial0(@NotNull SAbstractConcept concept, @NotNull SMethod<T> method, @Nullable Object[] parameters) {
    int methodIndex = BH_METHODS.indexOf(method);
    if (methodIndex < 0) {
      throw new BHMethodNotFoundException(this, method);
    }
    switch (methodIndex) {
      case 1:
        return (T) ((Object) staticVirtualMethod_id5mnatV0hATt(concept));
      default:
        throw new BHMethodNotFoundException(this, method);
    }
  }

  @NotNull
  @Override
  public List<SMethod<?>> getDeclaredMethods() {
    return BH_METHODS;
  }

  @NotNull
  @Override
  public SAbstractConcept getConcept() {
    return CONCEPT;
  }
}

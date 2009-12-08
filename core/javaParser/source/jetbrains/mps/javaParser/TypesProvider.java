/*
 * Copyright 2003-2009 JetBrains s.r.o.
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
package jetbrains.mps.javaParser;

import org.eclipse.jdt.internal.compiler.lookup.*;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.SNodeId.Foreign;
import jetbrains.mps.baseLanguage.structure.*;
import jetbrains.mps.util.NodeNameUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.stubs.javastub.classpath.StubHelper;
import jetbrains.mps.lang.core.structure.INamedConcept;
import jetbrains.mps.logging.Logger;

import java.util.List;
import java.util.ArrayList;
import java.util.Iterator;

/**
 * Created by IntelliJ IDEA.
 * User: User
 * Date: 04.09.2009
 * Time: 18:00:58
 * To change this template use File | Settings | File Templates.
 */
public class TypesProvider {
  private static Logger LOG = Logger.getLogger(TypesProvider.class);

  ReferentsCreator myReferentsCreator;

  public TypesProvider(ReferentsCreator referentsCreator) {
    myReferentsCreator = referentsCreator;
  }

  public static String classFqNameFromCompoundName(char[][] compoundName) {
    StringBuilder builder = new StringBuilder();
    for (int i = 0; i < compoundName.length; i++) {
      char[] namePart = compoundName[i];
      builder.append(namePart);
      if (i < compoundName.length - 1) {
        builder.append('.');
      }
    }
    return builder.toString();
  }

  public Type createType(TypeBinding binding) {
    SModel model = myReferentsCreator.myCurrentModel;
    if (binding instanceof BaseTypeBinding) {
      if (binding == TypeBinding.BOOLEAN) {
        return BooleanType.newInstance(model);
      }
      if (binding == TypeBinding.BYTE) {
        return ByteType.newInstance(model);
      }
      if (binding == TypeBinding.CHAR) {
        return CharType.newInstance(model);
      }
      if (binding == TypeBinding.DOUBLE) {
        return DoubleType.newInstance(model);
      }
      if (binding == TypeBinding.FLOAT) {
        return FloatType.newInstance(model);
      }
      if (binding == TypeBinding.INT) {
        return IntegerType.newInstance(model);
      }
      if (binding == TypeBinding.LONG) {
        return LongType.newInstance(model);
      }
      if (binding == TypeBinding.SHORT) {
        return ShortType.newInstance(model);
      }
      if (binding == TypeBinding.VOID) {
        return VoidType.newInstance(model);
      }
      throw new JavaConverterException("Unknown base type : " + binding);
    }
    if (binding instanceof ArrayBinding) {
      ArrayBinding arrayBinding = (ArrayBinding) binding;
      TypeBinding componentTypeBinding = arrayBinding.leafComponentType;
      int dimensions = arrayBinding.dimensions;
      ArrayType arrayType = ArrayType.newInstance(model);
      ArrayType smallestArrayType = arrayType;
      while (dimensions > 1) {
        ArrayType newArrayType = ArrayType.newInstance(model);
        smallestArrayType.setComponentType(newArrayType);
        smallestArrayType = newArrayType;
        dimensions--;
      }
      smallestArrayType.setComponentType(createType(componentTypeBinding));
      return arrayType;
    }
    if (binding instanceof ReferenceBinding) {
      if (binding instanceof WildcardBinding) {
        WildcardBinding wildcardBinding = (WildcardBinding) binding;
        if (wildcardBinding.isUnboundWildcard()) {
          return WildCardType.newInstance(model);
        } else {
          if (wildcardBinding.boundKind == Wildcard.EXTENDS) {
            UpperBoundType upperBoundType = UpperBoundType.newInstance(model);
            upperBoundType.setBound(createType(wildcardBinding.bound)); //todo add other bounds to BL
            return upperBoundType;
          } else {
            //SUPER
            LowerBoundType lowerBoundType = LowerBoundType.newInstance(model);
            lowerBoundType.setBound(createType(wildcardBinding.bound));
            return lowerBoundType;
          }
        }
      }
      if (binding instanceof ParameterizedTypeBinding) {   //todo debug this carefully
        ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) binding;
        ReferenceBinding originalType = parameterizedTypeBinding.genericType();
        ClassifierType result = ClassifierType.newInstance(model);
        result.getNode().addReference(createClassifierReference(originalType, ClassifierType.CLASSIFIER, result.getNode()));
        TypeBinding[] typeBindings = parameterizedTypeBinding.arguments;
        if (typeBindings != null) {
          for (TypeBinding typeBinding : typeBindings) {
            result.addParameter(createType(typeBinding));
          }
        }
        return result;
      }
      if (binding instanceof SourceTypeBinding) {
        ClassifierType classifierType = ClassifierType.newInstance(model);
        classifierType.setClassifier((Classifier) myReferentsCreator.myBindingMap.get(binding));
        return classifierType;
      }
      if (binding instanceof BinaryTypeBinding) {
        //in java stubs
        ClassifierType classifierType = ClassifierType.newInstance(model);
        BinaryTypeBinding binaryTypeBinding = (BinaryTypeBinding) binding;
        SReference reference = createClassifierReference(binaryTypeBinding, ClassifierType.CLASSIFIER, classifierType.getNode());
        classifierType.getNode().addReference(reference);
        return classifierType;
      }
      if (binding instanceof TypeVariableBinding) {
        TypeVariableBinding typeVariableBinding = (TypeVariableBinding) binding;
        TypeVariableReference tvr = TypeVariableReference.newInstance(model);
        INodeAdapter declaringGeneric = myReferentsCreator.myBindingMap.get(typeVariableBinding.declaringElement);
        if (declaringGeneric instanceof GenericDeclaration) {
          tvr.setTypeVariableDeclaration(((GenericDeclaration) declaringGeneric).getTypeVariableDeclarations().get(typeVariableBinding.rank));
        } else {
          throw new JavaConverterException("Declaring element for a type var is not a GenericDeclaration");
        }
        return tvr;
      }
    }
    return null;
  }

  private Foreign getClassifierNodeId(BinaryTypeBinding binaryTypeBinding) {
    return new Foreign(Foreign.ID_PREFIX
      + NameUtil.shortNameFromLongName(getClassifierIdPrefix(binaryTypeBinding)));
  }

  private static String getClassifierIdPrefix(BinaryTypeBinding binaryTypeBinding) {
    return classFqNameFromCompoundName(binaryTypeBinding.compoundName);
  }

  public SReference createMethodReference(MethodBinding binding, String role, SNode sourceNode) {
    if (binding instanceof ParameterizedMethodBinding) {
      binding = ((ParameterizedMethodBinding) binding).original(); 
    }
    INodeAdapter adapter = myReferentsCreator.myBindingMap.get(binding);
    if (adapter != null) {
      return SReference.create(role, sourceNode, adapter.getNode());
    }
    if (binding.declaringClass instanceof BinaryTypeBinding) {
      //java stub
      BinaryTypeBinding binaryTypeBinding = (BinaryTypeBinding) binding.declaringClass;
      SNodeId nodeId = createMethodId(binding, binaryTypeBinding);
      SModelReference modelReference = modelReferenceFromBinaryClassBinding(binaryTypeBinding);
      SReference result = getRegularMPSNodeReferenceFromForeignId(sourceNode, role, modelReference, nodeId, FeatureKind.METHOD);
      return result;
    }
    if (binding.declaringClass instanceof ParameterizedTypeBinding) {
      ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) binding.declaringClass;
      if (parameterizedTypeBinding.genericType() instanceof BinaryTypeBinding) {
        BinaryTypeBinding binaryTypeBinding = (BinaryTypeBinding) parameterizedTypeBinding.genericType();
        SNodeId nodeId = createMethodId(binding, binaryTypeBinding);
        SModelReference modelReference = modelReferenceFromBinaryClassBinding(binaryTypeBinding);
        return getRegularMPSNodeReferenceFromForeignId(sourceNode, role, modelReference, nodeId, FeatureKind.METHOD);
      }
    }
    LOG.error("can't create a reference to a method in a class of type " + binding.declaringClass.getClass());
    return null;
  }

  private SModelReference modelReferenceFromBinaryClassBinding(BinaryTypeBinding binaryTypeBinding) {
    String classFQName = getClassifierIdPrefix(binaryTypeBinding);
    String packageName = NodeNameUtil.getNamespace(classFQName);
    SModelReference modelReference = StubHelper.uidForPackageInStubs(packageName);
    return modelReference;
  }



  private SReference getRegularMPSNodeReferenceFromForeignId(SNode sourceNode, String role, SModelReference modelReference, SNodeId nodeId, FeatureKind targetKind) {
      //foreign only
    SReference reference = new ForeignReferencesConvertor().createFromForeignId(sourceNode, role, modelReference, nodeId, targetKind);
    if (reference != null) return reference;
    return SReference.create(role, sourceNode, modelReference, nodeId);

  }

  private SNodeId createMethodId(MethodBinding method, BinaryTypeBinding classBinding) {
    StringBuilder sb = new StringBuilder();
    sb.append(NameUtil.shortNameFromLongName(getClassifierIdPrefix(classBinding)));
    sb.append('.');
    if (method.isConstructor()) {
      sb.append("<init>");
    } else {
      sb.append(method.selector);
    }
    sb.append('(');
    appendList(sb, method.parameters, method);
    sb.append(')');
    if (!method.isConstructor()) {
      // need return type because just name+parms can collide in generic methods after type erasure
      sb.append(':');
      sb.append(asString(method.returnType));
    }
    return new SNodeId.Foreign(SNodeId.Foreign.ID_PREFIX + sb.toString());
  }

  private SNodeId createFieldId(FieldBinding field, BinaryTypeBinding classBinding) {
    return new SNodeId.Foreign(SNodeId.Foreign.ID_PREFIX +
      NameUtil.shortNameFromLongName(getClassifierIdPrefix(classBinding)) + "." + new String(field.name));
  }

  private static String asString(TypeBinding type) {
    return asString(type, null);
  }

  private static String asString(TypeBinding type, MethodBinding context) {
    if (type instanceof ParameterizedTypeBinding) {
      StringBuilder sb = new StringBuilder();
      sb.append(asString(((ParameterizedTypeBinding) type).genericType()));
      return sb.toString();
    }
    if (type instanceof BinaryTypeBinding) {
      // fq class name
      return getClassifierIdPrefix(((BinaryTypeBinding) type));
    }
    if (type instanceof SourceTypeBinding) {
      // fq class name
      return classFqNameFromCompoundName(((SourceTypeBinding) type).compoundName);
    }
    if (type instanceof ArrayBinding) {
      if (context != null && context.isVarargs() &&
        context.parameters[context.parameters.length - 1] == type) {
        return asString(((ArrayBinding) type).elementsType()) + "...";
      } else {
        return asString(((ArrayBinding) type).elementsType()) + "[]";
      }
    }
    if (type instanceof BaseTypeBinding) {
      return new String(((BaseTypeBinding) type).simpleName);
    }
    if (type instanceof TypeVariableBinding) {
      TypeVariableBinding typeVariableBinding = (TypeVariableBinding) type;
      ReferenceBinding superclass = typeVariableBinding.superclass;
      if (JavaCompiler.classNameFromCompoundName(superclass.compoundName).equals("java.lang.Object")
        && typeVariableBinding.superInterfaces != null && typeVariableBinding.superInterfaces.length > 0) {
        return asString(typeVariableBinding.superInterfaces[0]);
      }
      return asString(superclass);
     /* Binding binding = typeVariableBinding.declaringElement;
      String name = null;
      if (binding instanceof MethodBinding) {
        MethodBinding methodBinding = (MethodBinding) binding;
        name = new String(methodBinding.typeVariables[typeVariableBinding.rank].sourceName);
      } else if (binding instanceof SourceTypeBinding) {
        SourceTypeBinding sourceTypeBinding = (SourceTypeBinding) binding;
        name = new String(sourceTypeBinding.typeVariables[typeVariableBinding.rank].sourceName);
      }
      return name;*/
    }
    if (type instanceof WildcardBinding && ((WildcardBinding) type).boundKind == Wildcard.EXTENDS) {
      return asString(((WildcardBinding) type).bound); //todo multiple bounds (much later)
    }
    if (type instanceof WildcardBinding && ((WildcardBinding) type).boundKind == Wildcard.SUPER) {
      return asString(((WildcardBinding) type).bound);  //todo is lower bound ok in erasure?
    }
    if (type.isUnboundWildcard()) {
      return "java.lang.Object";
    }

    throw new RuntimeException("unexpected type: " + type);
  }

  private static void appendList(StringBuilder sb, TypeBinding[] types, MethodBinding context) {
    for (int i = 0; i < types.length; i++) {
      TypeBinding typeBinding = types[i];
      sb.append(asString(typeBinding, context));
      if (i < types.length - 1) {
        sb.append(',');
      }
    }
  }

  public SReference createClassifierReference(ReferenceBinding aClass, String role, SNode sourceNode) {
    if (aClass instanceof BinaryTypeBinding) {
      SModelReference modelReference = modelReferenceFromBinaryClassBinding((BinaryTypeBinding) aClass);
      SNodeId nodeId = getClassifierNodeId((BinaryTypeBinding) aClass);
      return getRegularMPSNodeReferenceFromForeignId(sourceNode, role, modelReference, nodeId, FeatureKind.CLASS);
    }
    if (aClass instanceof SourceTypeBinding) {
      INodeAdapter adapter = myReferentsCreator.myBindingMap.get(aClass);
      if (adapter != null) {
        return SReference.create(role, sourceNode, adapter.getNode());
      }
    }
    if (aClass instanceof ParameterizedTypeBinding) {
      ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) aClass;
      return createClassifierReference(parameterizedTypeBinding.genericType(), role, sourceNode);
    }
    throw new JavaConverterException("no classifier for class " + new String(aClass.sourceName));
  }

  public SReference createFieldReference(FieldBinding binding, String role, SNode sourceNode) {
    if (binding instanceof ParameterizedFieldBinding) {
      ParameterizedFieldBinding parameterizedFieldBinding = (ParameterizedFieldBinding) binding;
      return createFieldReference(parameterizedFieldBinding.originalField, role, sourceNode);
    }
    INodeAdapter adapter = myReferentsCreator.myBindingMap.get(binding);
    if (adapter != null) {
      return SReference.create(role, sourceNode, adapter.getNode());
    }
    if (binding.declaringClass instanceof BinaryTypeBinding) {
      //java stub
      BinaryTypeBinding binaryTypeBinding = (BinaryTypeBinding) binding.declaringClass;
      SNodeId nodeId = createFieldId(binding, binaryTypeBinding);
      SModelReference modelReference = modelReferenceFromBinaryClassBinding(binaryTypeBinding);
      return getRegularMPSNodeReferenceFromForeignId(sourceNode, role, modelReference, nodeId, FeatureKind.FIELD);
    }
    return null;
  }

  public INodeAdapter getRaw(Binding binding) {
    return myReferentsCreator.myBindingMap.get(binding);
  }

}

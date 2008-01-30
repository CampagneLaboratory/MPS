package jetbrains.mps.generator;

import jetbrains.mps.baseLanguage.BaseLanguageUtil_new;
import jetbrains.mps.baseLanguage.structure.*;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.Condition;
import org.jetbrains.annotations.Nullable;

import java.util.Iterator;
import java.util.List;
import java.util.LinkedList;

public class JavaModelUtil_new {

  public static InstanceMethodDeclaration findMethod(Classifier classifier, String methodName, String[] parmTypes) {
    Iterator<InstanceMethodDeclaration> methods = classifier.methods();
    while (methods.hasNext()) {
      InstanceMethodDeclaration method = methods.next();
      if (methodName.equals(method.getName())) {
        if (areParametersCompatible(method, parmTypes)) {
          return method;
        }
      }
    }
    if (classifier instanceof ClassConcept) {
      ClassConcept extendedClass = BaseLanguageUtil_new.getSuperclass((ClassConcept) classifier);
      if (extendedClass != null) {
        InstanceMethodDeclaration method = findMethod(extendedClass, methodName, parmTypes);
        if (method != null) {
          return method;
        }
      }
    }

    Iterator<ClassifierType> interfaces;
    if (classifier instanceof Interface) {
      interfaces = ((Interface) classifier).extendedInterfaces();
    } else if (classifier instanceof ClassConcept) {
      interfaces = ((ClassConcept) classifier).implementedInterfaces();
    } else {
      throw new RuntimeException("This can't happen");
    }

    while (interfaces.hasNext()) {
      ClassifierType classifierType = interfaces.next();
      InstanceMethodDeclaration method = findMethod(classifierType.getClassifier(), methodName, parmTypes);
      if (method != null) {
        return method;
      }
    }
    return null;
  }

  public static StaticMethodDeclaration findStaticMethod(Classifier classifier, String methodName, String[] parmTypes) {
    if (!(classifier instanceof ClassConcept)) return null;
    ClassConcept javaClass = (ClassConcept) classifier;
    while (javaClass != null) {
      Iterator<StaticMethodDeclaration> methods = javaClass.staticMethods();
      while (methods.hasNext()) {
        StaticMethodDeclaration method = methods.next();
        if (methodName.equals(method.getName())) {
          if (areParametersCompatible(method, parmTypes)) {
            return method;
          }
        }
      }
      javaClass = BaseLanguageUtil_new.getSuperclass(javaClass);
    }
    return null;
  }

  public static ConstructorDeclaration findConstructor(ClassConcept classConcept, String[] parmTypes) {
    Iterator<ConstructorDeclaration> constructors = classConcept.constructors();
    while (constructors.hasNext()) {
      ConstructorDeclaration constructor = constructors.next();
      int parametersCount = constructor.getParametersCount();
      if (parametersCount == 0 && parmTypes.length == 0) {
        return constructor;
      } else if (parametersCount != parmTypes.length) {
        continue;
      }
      int count = 0;
      for (Iterator<ParameterDeclaration> parms = constructor.parameters(); parms.hasNext(); count++) {
        Type parmType = parms.next().getType();
        if (!parmTypes[count].equals(parmType.getName())) {
          break;
        }
      }
      if (count == parametersCount) {
        return constructor;
      }
    } // while(constructors.hasNext())
    return null;
  }

  private static boolean areParametersCompatible(BaseMethodDeclaration method, String[] parmTypes) {
    int parametersCount = method.getParametersCount();
    if (parametersCount == 0 && parmTypes.length == 0) {
      return true;
    } else if (parametersCount != parmTypes.length) {
      return false;
    }
    int count = 0;
    for (Iterator<ParameterDeclaration> parms = method.parameters(); parms.hasNext(); count++) {
      Type parmType = parms.next().getType();
      // hack ?
      if (parmType instanceof TypeVariableReference) {
        // compatible to any type
        if (parmTypes[count] != null) continue;
      }
      if (parmTypes[count] != null && parmType.getName() != null &&
              !parmTypes[count].equals(parmType.getName())) {
        return false;
      }
    }
    return true;
  }

  public static ClassifierType createType(Classifier classifier, SModel model) {
    if (classifier instanceof Interface) {
      ClassifierType classifierType = ClassifierType.newInstance(model);
      classifierType.setClassifier((Interface) classifier);
      return classifierType;
    }
    ClassifierType classifierType = ClassifierType.newInstance(model);
    classifierType.setClassifier((ClassConcept) classifier);
    return classifierType;
  }

  @Nullable
  public static Classifier findClassifier(Class cls) {
    String name = cls.getName();
    String rootName = NameUtil.shortNameFromLongName(name);
    String modelName = NameUtil.namespaceFromLongName(name);
    return (Classifier) BaseAdapter.fromNode(findClassifier(modelName, rootName));
  }

  public static SNode findClassifier(String packageName, String shortClassName) {
    SModelUID modelUID = new SModelUID(packageName, SModelStereotype.JAVA_STUB);
    SModelDescriptor modelDescriptor = SModelRepository.getInstance().getModelDescriptor(modelUID);
    if (modelDescriptor == null) return null;
    return modelDescriptor.getSModel().getRootByName(shortClassName);
  }

  public static FieldDeclaration findField(Classifier classifier, String fieldName) {
    if (!(classifier instanceof ClassConcept)) return null;
    ClassConcept classConcept = (ClassConcept) classifier;
    while (classConcept != null) {
      Iterator<FieldDeclaration> fields = classConcept.fields();
      while (fields.hasNext()) {
        FieldDeclaration field = fields.next();
        if (fieldName.equals(field.getName())) {
          return field;
        }
      }
      classConcept = BaseLanguageUtil_new.getSuperclass(classConcept);
    }
    return null;
  }

  public static InstanceMethodDeclaration findMethod(Classifier classifier, Condition<InstanceMethodDeclaration> condition) {
    Iterator<InstanceMethodDeclaration> methods = classifier.methods();
    while (methods.hasNext()) {
      InstanceMethodDeclaration method = methods.next();
      if (condition.met(method)) return method;
    }
    if (classifier instanceof ClassConcept) {
      ClassConcept extendedClass = BaseLanguageUtil_new.getSuperclass((ClassConcept) classifier);
      if (extendedClass != null) {
        InstanceMethodDeclaration method = findMethod(extendedClass, condition);
        if (method != null) {
          return method;
        }
      }
    }

    Iterator<ClassifierType> interfaces;
    if (classifier instanceof Interface) {
      interfaces = ((Interface) classifier).extendedInterfaces();
    } else if (classifier instanceof ClassConcept) {
      interfaces = ((ClassConcept) classifier).implementedInterfaces();
    } else {
      throw new RuntimeException("This can't happen");
    }
    while (interfaces.hasNext()) {
      ClassifierType classifierType = interfaces.next();
      InstanceMethodDeclaration method = findMethod(classifierType.getClassifier(), condition);
      if (method != null) {
        return method;
      }
    }
    return null;
  }

  public static StaticFieldDeclaration findStaticField(Classifier classifier, String constantName) {
    if (classifier == null) return null;

    Iterator<StaticFieldDeclaration> fields = classifier.staticFields();
    while (fields.hasNext()) {
      StaticFieldDeclaration field = fields.next();
      if (constantName.equals(field.getName())) {
        return field;
      }
    }

    if (classifier instanceof ClassConcept) {
      StaticFieldDeclaration staticField = findStaticField(BaseLanguageUtil_new.getSuperclass((ClassConcept) classifier), constantName);
      if (staticField != null) {
        return staticField;
      }

      Iterator<ClassifierType> iterator = ((ClassConcept) classifier).implementedInterfaces();
      while (iterator.hasNext()) {
        ClassifierType classifierType = iterator.next();
        staticField = findStaticField(classifierType.getClassifier(), constantName);
        if (staticField != null) {
          return staticField;
        }
      }
    } else {
      Iterator<ClassifierType> iterator = ((Interface) classifier).extendedInterfaces();
      while (iterator.hasNext()) {
        ClassifierType classifierType = iterator.next();
        StaticFieldDeclaration staticField = findStaticField(classifierType.getClassifier(), constantName);
        if (staticField != null) {
          return staticField;
        }
      }
    }
    return null;
  }

  public static LocalVariableDeclaration findLocalVariable(Statement beforeStatement, String variableName) {
    List<LocalVariableDeclaration> localVariables = getLocalVariables(beforeStatement);
    for (LocalVariableDeclaration localVariableDeclaration : localVariables) {
      if (variableName.equals(localVariableDeclaration.getName())) {
        return localVariableDeclaration;
      }
    }
    return null;
  }

  private static List<LocalVariableDeclaration> getLocalVariables(Statement beforeStatement) {
    List<LocalVariableDeclaration> list = new LinkedList<LocalVariableDeclaration>();
    _collectLocalVariablesFromPrecedingStatements(beforeStatement, list);
    return list;
  }

  private static void _collectLocalVariablesFromPrecedingStatements(Statement beforeStatement, List list) {
    StatementList statementList = beforeStatement.findParent(StatementList.class);
    if (statementList == null) {
      return;
    }
    Iterator iterator = statementList.statements();
    while (iterator.hasNext()) {
      Object statement = iterator.next();
      if (statement == beforeStatement) {
        break;
      }
      if (statement instanceof LocalVariableDeclarationStatement) {
        LocalVariableDeclarationStatement localStatement = (LocalVariableDeclarationStatement) statement;
        LocalVariableDeclaration variable = localStatement.getLocalVariableDeclaration();
        if (variable != null) {
          list.add(variable);
        }
      }
    }

    CatchClause catchClause = statementList.findParent(CatchClause.class);
    if (catchClause != null) {
      LocalVariableDeclaration variable = catchClause.getThrowable();
      if (variable != null) {
        list.add(variable);
      }
    }

    Statement parentStatement = statementList.findParent(Statement.class);
    if (parentStatement != null) {
      if (parentStatement instanceof AbstractForStatement) {
        AbstractForStatement forStatement = (AbstractForStatement) parentStatement;
        LocalVariableDeclaration variable = forStatement.getVariable();
        if (variable != null) {
          list.add(variable);
        }
      }

      _collectLocalVariablesFromPrecedingStatements(parentStatement, list);
    }
  }
}

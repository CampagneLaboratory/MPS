<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c89590574(jetbrains.mps.gtext.plugin)">
  <persistence version="3" />
  <refactoringHistory />
  <language namespace="28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="443f4c36-fcf5-4eb6-9500-8d06ed259e3e(jetbrains.mps.baseLanguage.classifiers)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590361(jetbrains.mps.lang.plugin.constraints)" version="19" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" version="19" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="4" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590571(jetbrains.mps.gtext.constraints)" version="8" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903e4(jetbrains.mps.internal.collections.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959036e(jetbrains.mps.baseLanguage.classifiers.constraints)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590575(jetbrains.mps.gtext.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903fe(jetbrains.mps.baseLanguage.strings.constraints)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590402(jetbrains.mps.baseLanguage.strings.structure)" version="9" />
  <maxImportIndex value="9" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c89590575(jetbrains.mps.gtext.structure)" version="0" />
  <import index="3" modelUID="f:java_stub#jetbrains.mps.generator.fileGenerator(jetbrains.mps.generator.fileGenerator@java_stub)" version="-1" />
  <import index="5" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="6" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="9" modelUID="f:java_stub#jetbrains.mps.gtext.structure(jetbrains.mps.gtext.structure@java_stub)" version="-1" />
  <node type="jetbrains.mps.lang.plugin.structure.FileGeneratorDeclaration" id="1228676609617">
    <property name="name" value="Gtext" />
    <link role="extendedClass" targetNodeId="3.~DefaultFileGenerator" resolveInfo="DefaultFileGenerator" />
    <node role="method" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" id="1228676767495">
      <property name="name" value="isDefault" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1228676775812" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1228676767497">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1228676794174">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" id="1228676794175">
            <node role="classType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1228676794176">
              <link role="classifier" targetNodeId="9.~GDocument" resolveInfo="GDocument" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1228676794177">
              <link role="variableDeclaration" targetNodeId="1228676781922" resolveInfo="n" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1228676772014" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1228676781922">
        <property name="name" value="n" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1228676781923">
          <link role="classifier" targetNodeId="5.~INodeAdapter" resolveInfo="INodeAdapter" />
        </node>
      </node>
    </node>
    <node role="method" type="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" id="1228676695108">
      <property name="name" value="getExtenstion" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1228676718269">
        <link role="classifier" targetNodeId="6.~String" resolveInfo="String" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1228676695110">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1228676816400">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1228676816401">
            <property name="name" value="gd" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1228676816402">
              <link role="classifier" targetNodeId="9.~GDocument" resolveInfo="GDocument" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1228676816403">
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1228676816404">
                <link role="classifier" targetNodeId="9.~GDocument" resolveInfo="GDocument" />
              </node>
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1228676816405">
                <link role="variableDeclaration" targetNodeId="1228676814445" resolveInfo="n" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1228676816406">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1228676816407">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1228676816408">
              <link role="variableDeclaration" targetNodeId="1228676816401" resolveInfo="gd" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1228676816409">
              <link role="baseMethodDeclaration" targetNodeId="9.~GDocument.getExtension():java.lang.String" resolveInfo="getExtension" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1228676714236" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1228676814445">
        <property name="name" value="n" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1228676814446">
          <link role="classifier" targetNodeId="5.~INodeAdapter" resolveInfo="INodeAdapter" />
        </node>
      </node>
    </node>
  </node>
</model>


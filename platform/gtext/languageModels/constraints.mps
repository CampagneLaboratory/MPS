<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c89590571(jetbrains.mps.gtext.constraints)">
  <persistence version="3" />
  <refactoringHistory />
  <language namespace="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1(jetbrains.mps.lang.constraints)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.bootstrap.smodelLanguage)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.ext.collections.lang)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590307(jetbrains.mps.lang.constraints.constraints)" version="9" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959030d(jetbrains.mps.lang.constraints.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.bootstrap.smodelLanguage.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.bootstrap.smodelLanguage.structure)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.ext.collections.lang.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.ext.collections.lang.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.closures.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590571(jetbrains.mps.gtext.constraints)" version="8" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ba(jetbrains.mps.lang.sharedConcepts.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903e4(jetbrains.mps.internal.collections.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590575(jetbrains.mps.gtext.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)" version="0" />
  <maxImportIndex value="5" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c89590575(jetbrains.mps.gtext.structure)" version="0" />
  <import index="2" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="3" modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <import index="4" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints" id="1213104844571">
    <link role="concept" targetNodeId="1.1184639540818" resolveInfo="GDocument" />
    <node role="property" type="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" id="1213104844572">
      <link role="applicableProperty" targetNodeId="2.1169194664001" resolveInfo="name" />
      <node role="propertyGetter" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" id="1213104844573">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213104844574">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213104844575">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213104844576">
              <node role="operand" type="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" id="1213104844577" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1213104844578">
                <link role="property" targetNodeId="1.1184639635512" resolveInfo="documentName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints" id="1213107436024">
    <link role="concept" targetNodeId="1.1211920428461" resolveInfo="GContentPlaceholder" />
    <node role="canBeChild" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild" id="1213107436025">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213107436026">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1213107436027">
          <property name="value" value="do not allow nested blocks" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213107436028">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213107436029">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213107436030">
              <node role="operand" type="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode" id="1213107436031" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1213107436032">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1213107436033">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1213107436034">
                    <link role="conceptDeclaration" targetNodeId="1.1211920502338" resolveInfo="GContentBlock" />
                  </node>
                </node>
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Inclusion" id="1213107436035" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNullOperation" id="1213107436036" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


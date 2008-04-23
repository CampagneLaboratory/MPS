<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.bootstrap.helgins.sandbox.sb2">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.helgins" />
  <language namespace="jetbrains.mps.bootstrap.helgins.test" />
  <language namespace="jetbrains.mps.patterns" />
  <language namespace="jetbrains.mps.baseLanguage.blTypes" />
  <language namespace="jetbrains.mps.core" />
  <language namespace="jetbrains.mps.quotation" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <maxImportIndex value="9" />
  <import index="1" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="2" modelUID="java.lang@java_stub" version="-1" />
  <import index="3" modelUID="jetbrains.mps.baseLanguage.helgins" version="-1" />
  <import index="4" modelUID="jetbrains.mps.baseLanguage.blTypes.structure" version="-1" />
  <import index="5" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="6" modelUID="java.util@java_stub" version="-1" />
  <import index="7" modelUID="java.io@java_stub" version="-1" />
  <import index="8" modelUID="jetbrains.mps.bootstrap.helgins.structure" version="-1" />
  <import index="9" modelUID="jetbrains.mps.bootstrap.helgins.sandbox.sb1" version="-1" />
  <node type="jetbrains.mps.bootstrap.helgins.structure.InferenceRule" id="1194962178954">
    <property name="name" value="typeof_InferenceRule" />
    <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1194962178955">
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1194962413882">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1194962413883">
          <property name="name" value="patternCondition" />
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1194962413884">
            <link role="concept" targetNodeId="8.1174642900584" resolveInfo="PatternCondition" />
          </node>
          <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227928474">
            <node role="operand" type="jetbrains.mps.bootstrap.helgins.structure.ApplicableNodeReference" id="1194965123603">
              <link role="applicableNode" targetNodeId="1194962193426" resolveInfo="inferenceRule" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1194965123602">
              <link role="link" targetNodeId="8.1174648101952" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.bootstrap.helgins.structure.CreateEquationStatement" id="1194962407096">
        <node role="rightExpression" type="jetbrains.mps.bootstrap.helgins.structure.NormalTypeClause" id="1194962483116">
          <node role="normalType" type="jetbrains.mps.quotation.structure.Quotation" id="1196785395219">
            <node role="quotedNode" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1196785395220" />
          </node>
        </node>
        <node role="leftExpression" type="jetbrains.mps.bootstrap.helgins.structure.NormalTypeClause" id="1194962407098">
          <node role="normalType" type="jetbrains.mps.bootstrap.helgins.structure.TypeOfExpression" id="1194962400782">
            <node role="term" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227898344">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1194962453657">
                <link role="variableDeclaration" targetNodeId="1194962413883" resolveInfo="patternCondition" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1194962458677">
                <link role="link" targetNodeId="8.1174642936809" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" type="jetbrains.mps.bootstrap.helgins.structure.ConceptReference" id="1194962193426">
      <property name="name" value="inferenceRule" />
      <link role="concept" targetNodeId="8.1174643105530" resolveInfo="InferenceRule" />
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1198000897975">
    <property name="name" value="BClass" />
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1198073342670">
      <property name="name" value="foobar" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1198073342671" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1198073342672" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198073342673">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198073370731">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1198073371999">
            <link role="baseMethodDeclaration" targetNodeId="9.1186475535905" resolveInfo="foo" />
            <link role="classConcept" targetNodeId="9.1186475525107" resolveInfo="AClass" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198073381541">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1198073383027">
            <link role="baseMethodDeclaration" targetNodeId="9.1198073337805" resolveInfo="bar" />
            <link role="classConcept" targetNodeId="9.1186475525107" resolveInfo="AClass" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198250164479">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198250164480">
            <property name="name" value="a" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198250182875">
              <link role="classifier" targetNodeId="1198000897975" resolveInfo="BClass" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1198000897976" />
    <node role="superclass" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198000974198">
      <link role="classifier" targetNodeId="9.1186475525107" resolveInfo="AClass" />
    </node>
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.transformationTest.intentions">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.intentionsLanguage" />
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.editorLanguage" />
  <language namespace="jetbrains.mps.bootstrap.sharedConcepts" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <maxImportIndex value="1" />
  <import index="1" modelUID="jetbrains.mps.transformationTest.structure" version="-1" />
  <visible index="2" modelUID="jetbrains.mps.core.structure" />
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1210673906861">
    <property name="name" value="AddTestNodeAnnotation" />
    <link role="forConcept" targetNodeId="2v.1133920641626" resolveInfo="BaseConcept" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1210673906862">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210673906863">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1210673948048">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1210673948049">
            <property name="value" value="Add test node annotation" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1210673906864">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210673906865">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1210674410577">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1210674410578">
            <property name="name" value="newAnootation" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1210674410579">
              <link role="concept" targetNodeId="1.1210673684636" resolveInfo="TestNodeAnnotation" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1210674410580">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1210674410581">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1210674410582">
                  <link role="concept" targetNodeId="1.1210673684636" resolveInfo="TestNodeAnnotation" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1210674361648">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1210674382618">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210674410583">
              <link role="variableDeclaration" targetNodeId="1210674410578" resolveInfo="newAnootation" />
            </node>
            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210674362276">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1210674361649" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1210674377129">
                <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.NodeAttributeAccessQualifier" id="1210674380882">
                  <link role="annotationLink" targetNodeId="1.1210673592080" resolveInfo="testNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1210674415352">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210674415776">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210674415353">
              <link role="variableDeclaration" targetNodeId="1210674410578" resolveInfo="newAnootation" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectLaterOperation" id="1210674426941">
              <node role="editorContext" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_editorContext" id="1210674435102" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1210674015603">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210674015604">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1210674036309">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1210674036310">
            <property name="name" value="test" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1210674036311">
              <link role="concept" targetNodeId="1.1210254477612" resolveInfo="TransformationTest" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210674051839">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1210674050837" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1210674056219">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1210674056220">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1210674061037">
                    <link role="conceptDeclaration" targetNodeId="1.1210254477612" resolveInfo="TransformationTest" />
                  </node>
                </node>
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Inclusion" id="1210674065104" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1210674097494">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210674289460">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210674277184">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1210674276808" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorsOperation" id="1210674280407" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ContainsOperation" id="1210674290854">
              <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210674292359">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1210674291998">
                  <link role="variableDeclaration" targetNodeId="1210674036310" resolveInfo="test" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1210674295566">
                  <link role="link" targetNodeId="1.1210254494803" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


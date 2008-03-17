<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.baseLanguage.ext.collections.sandbox.model4">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.baseLanguage" />
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  <maxImportIndex value="2" />
  <import index="1" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="2" modelUID="java.lang@java_stub" version="-1" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1180551652324">
    <property name="name" value="TestClosureWithExtRefOnSNode" />
    <node role="method" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" id="1180551682623">
      <property name="name" value="aaa" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1180552123500">
        <link role="classifier" targetNodeId="2.~Object" resolveInfo="Object" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1180551682625" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180551682626">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1180551791382">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1180551791383">
            <property name="name" value="valDecl" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1180551791384" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227917010">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1180551800777">
                <link role="variableDeclaration" targetNodeId="1180551723222" resolveInfo="var" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1180551805796">
                <link role="link" targetNodeId="1.1070568296581" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1180552126589">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180552126590">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180552139081">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1180552141154" />
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227833039">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180552131163">
              <link role="variableDeclaration" targetNodeId="1180551791383" resolveInfo="valDecl" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNullOperation" id="1180552137105" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1180551887936">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1180551887937">
            <property name="name" value="statements" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1180551893892">
              <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1180551899808">
                <link role="concept" targetNodeId="1.1068580123157" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227927860">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227959810">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1180551855785">
                  <link role="variableDeclaration" targetNodeId="1180551723222" resolveInfo="var" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1180551861117">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1180551864180">
                    <link role="concept" targetNodeId="1.1068580123136" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1180551878513">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180552152804">
          <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1180552160756">
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1180552160758">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1180552160759">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1180552160760">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180552160761">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1180552160762">
                    <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227846021">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1180552160766">
                        <link role="closureParameter" targetNodeId="1180552160760" resolveInfo="it" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1180552160764">
                        <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1180552160765">
                          <link role="conceptDeclaration" targetNodeId="1.1068581242864" />
                        </node>
                      </node>
                    </node>
                    <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180552160767">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180552160768">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1180552160769">
                          <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180552160770">
                            <link role="variableDeclaration" targetNodeId="1180551791383" resolveInfo="valDecl" />
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227884969">
                            <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1180552160773">
                              <link role="concept" targetNodeId="1.1068581242864" />
                              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1180552160774">
                                <link role="closureParameter" targetNodeId="1180552160760" resolveInfo="it" />
                              </node>
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1180552160772">
                              <link role="link" targetNodeId="1.1068581242865" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180552160757">
              <link role="variableDeclaration" targetNodeId="1180551887937" resolveInfo="statements" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1180551723222">
        <property name="name" value="var" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1180551723223">
          <link role="concept" targetNodeId="1.1068581242866" />
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1180551652325" />
  </node>
</model>


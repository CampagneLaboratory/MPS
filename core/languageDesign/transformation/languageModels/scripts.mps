<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.transformation.TLBase.scripts">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.ide.scriptLanguage" />
  <language namespace="jetbrains.mps.bootstrap.helgins" />
  <language namespace="jetbrains.mps.quotation" />
  <language namespace="jetbrains.mps.core" />
  <language namespace="jetbrains.mps.bootstrap.intentionsLanguage" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.transformation.TLBase.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <maxImportIndex value="13" />
  <import index="1" modelUID="jetbrains.mps.transformation.TLBase.structure" version="1" />
  <import index="2" modelUID="java.lang@java_stub" version="-1" />
  <import index="4" modelUID="jetbrains.mps.bootstrap.sharedConcepts.structure" version="-1" />
  <import index="5" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="7" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="8" modelUID="jetbrains.mps.generator.template@java_stub" version="-1" />
  <import index="12" modelUID="java.io@java_stub" version="-1" />
  <import index="13" modelUID="jetbrains.mps.logging@java_stub" version="-1" />
  <node type="jetbrains.mps.ide.scriptLanguage.structure.Script" id="1184634633743">
    <property name="scriptName" value="CollectStatisticFor_refMacro_GetReferent" />
    <node role="statementList" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184634633744">
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1184634777964">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1184634777965">
          <property name="name" value="instances" />
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1184634777966" />
          <node role="initializer" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1184634732994">
            <link role="conceptDeclaration" targetNodeId="1.1167169188348" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1184636227792">
        <property name="caption" value="sourceNode usages" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631792">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631629">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184636227795">
              <link role="variableDeclaration" targetNodeId="1184634777965" resolveInfo="instances" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1184636227796">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1184636227797">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1184636227798">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184636227799">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184636227800">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1184636227801">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1184636227802" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227881937">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1184636227806">
                          <link role="closureParameter" targetNodeId="1184636227798" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1184636227804">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1184636227805">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648294">
                              <link role="conceptDeclaration" targetNodeId="1.1167770111131" resolveInfo="ReferenceMacro_GetReferent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1184636227807" />
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1184634995548">
        <property name="value" value="------" />
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184635018000">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1184635019373">
          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184635018001">
            <link role="variableDeclaration" targetNodeId="1184634777965" resolveInfo="instances" />
          </node>
          <node role="rValue" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1184635026239">
            <link role="conceptDeclaration" targetNodeId="1.1167770229866" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1184636254228">
        <property name="caption" value="templateRefernt usages" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631653">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631621">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184636254231">
              <link role="variableDeclaration" targetNodeId="1184634777965" resolveInfo="instances" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1184636254232">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1184636254233">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1184636254234">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184636254235">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184636254236">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1184636254237">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1184636254238" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227957284">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1184636254242">
                          <link role="closureParameter" targetNodeId="1184636254234" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1184636254240">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1184636254241">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648305">
                              <link role="conceptDeclaration" targetNodeId="1.1167770111131" resolveInfo="ReferenceMacro_GetReferent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1184636254243" />
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1184635108542">
        <property name="value" value="------" />
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184635108543">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1184635108544">
          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184635108545">
            <link role="variableDeclaration" targetNodeId="1184634777965" resolveInfo="instances" />
          </node>
          <node role="rValue" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1184635108546">
            <link role="conceptDeclaration" targetNodeId="1.1167774355440" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1184635520882">
        <property name="caption" value="templateNode usages" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631686">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631683">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184635582764">
              <link role="variableDeclaration" targetNodeId="1184634777965" resolveInfo="instances" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1184635582765">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1184635582766">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1184635582767">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184635582768">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184635582769">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1184635582770">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1184635582771" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227895720">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1184635582775">
                          <link role="closureParameter" targetNodeId="1184635582767" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1184635582773">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1184635582774">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648304">
                              <link role="conceptDeclaration" targetNodeId="1.1167770111131" resolveInfo="ReferenceMacro_GetReferent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1184635597258" />
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1184635155980">
        <property name="value" value="------" />
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184635155981">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1184635155982">
          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184635155983">
            <link role="variableDeclaration" targetNodeId="1184634777965" resolveInfo="instances" />
          </node>
          <node role="rValue" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1184635155984">
            <link role="conceptDeclaration" targetNodeId="1.1166748937193" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1184636282805">
        <property name="caption" value="sourceModel usages" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631680">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631506">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184636282808">
              <link role="variableDeclaration" targetNodeId="1184634777965" resolveInfo="instances" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1184636282809">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1184636282810">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1184636282811">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184636282812">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184636282813">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1184636282814">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1184636282815" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227902303">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1184636282819">
                          <link role="closureParameter" targetNodeId="1184636282811" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1184636282817">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1184636282818">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648297">
                              <link role="conceptDeclaration" targetNodeId="1.1167770111131" resolveInfo="ReferenceMacro_GetReferent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1184636282820" />
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1184635189688">
        <property name="value" value="------" />
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184635189689">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1184635189690">
          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184635189691">
            <link role="variableDeclaration" targetNodeId="1184634777965" resolveInfo="instances" />
          </node>
          <node role="rValue" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1184635189692">
            <link role="conceptDeclaration" targetNodeId="1.1166749287094" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1184636299025">
        <property name="caption" value="generator usages" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631774">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631763">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184636299028">
              <link role="variableDeclaration" targetNodeId="1184634777965" resolveInfo="instances" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1184636299029">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1184636299030">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1184636299031">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184636299032">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184636299033">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1184636299034">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1184636299035" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227847429">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1184636299039">
                          <link role="closureParameter" targetNodeId="1184636299031" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1184636299037">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1184636299038">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648308">
                              <link role="conceptDeclaration" targetNodeId="1.1167770111131" resolveInfo="ReferenceMacro_GetReferent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1184636299040" />
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1184635244317">
        <property name="value" value="------" />
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184635244318">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1184635244319">
          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184635244320">
            <link role="variableDeclaration" targetNodeId="1184634777965" resolveInfo="instances" />
          </node>
          <node role="rValue" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1184635244321">
            <link role="conceptDeclaration" targetNodeId="4.1161622878565" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1184636045598">
        <property name="caption" value="scope usages" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631618">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631712">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184636045601">
              <link role="variableDeclaration" targetNodeId="1184634777965" resolveInfo="instances" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1184636045602">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1184636045603">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1184636045604">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184636045605">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184636045606">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1184636045607">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1184636045608" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227932219">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1184636045612">
                          <link role="closureParameter" targetNodeId="1184636045604" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1184636045610">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1184636045611">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648321">
                              <link role="conceptDeclaration" targetNodeId="1.1167770111131" resolveInfo="ReferenceMacro_GetReferent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1184636045613" />
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1184635337638">
        <property name="value" value="------" />
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184635337639">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1184635337640">
          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184635337641">
            <link role="variableDeclaration" targetNodeId="1184634777965" resolveInfo="instances" />
          </node>
          <node role="rValue" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1184635337642">
            <link role="conceptDeclaration" targetNodeId="4.1161622753914" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1184636317173">
        <property name="caption" value="operationContext usages" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631769">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631593">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184636317176">
              <link role="variableDeclaration" targetNodeId="1184634777965" resolveInfo="instances" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1184636317177">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1184636317178">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1184636317179">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184636317180">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184636317181">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1184636317182">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1184636317183" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227848903">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1184636317187">
                          <link role="closureParameter" targetNodeId="1184636317179" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1184636317185">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1184636317186">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648301">
                              <link role="conceptDeclaration" targetNodeId="1.1167770111131" resolveInfo="ReferenceMacro_GetReferent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1184636317188" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.ide.scriptLanguage.structure.Script" id="1184789690053">
    <property name="scriptName" value="CollectStatisticFor_mapSrcMacro_MapperFunction" />
    <node role="statementList" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184789690054">
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1184789690055">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1184789690056">
          <property name="name" value="instances" />
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1184789690057" />
          <node role="initializer" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1184789690058">
            <link role="conceptDeclaration" targetNodeId="1.1167169188348" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1184789690059">
        <property name="caption" value="sourceNode usages" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631540">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631537">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184789690062">
              <link role="variableDeclaration" targetNodeId="1184789690056" resolveInfo="instances" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1184789690063">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1184789690064">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1184789690065">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184789690066">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184789690067">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1184789690068">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1184789690069" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227912709">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1184789690073">
                          <link role="closureParameter" targetNodeId="1184789690065" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1184789690071">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1184789690072">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648307">
                              <link role="conceptDeclaration" targetNodeId="1.1170725621272" resolveInfo="MapSrcMacro_MapperFunction" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1184789690074" />
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1184789690075">
        <property name="value" value="------" />
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184789690118">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1184789690119">
          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184789690120">
            <link role="variableDeclaration" targetNodeId="1184789690056" resolveInfo="instances" />
          </node>
          <node role="rValue" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1184789690121">
            <link role="conceptDeclaration" targetNodeId="1.1166748937193" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1184789690122">
        <property name="caption" value="sourceModel usages" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631658">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631534">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184789690125">
              <link role="variableDeclaration" targetNodeId="1184789690056" resolveInfo="instances" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1184789690126">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1184789690127">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1184789690128">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184789690129">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184789690130">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1184789690131">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1184789690132" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227895994">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1184789690136">
                          <link role="closureParameter" targetNodeId="1184789690128" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1184789690134">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1184789690135">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648298">
                              <link role="conceptDeclaration" targetNodeId="1.1170725621272" resolveInfo="MapSrcMacro_MapperFunction" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1184789690137" />
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1184789690138">
        <property name="value" value="------" />
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184789690139">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1184789690140">
          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184789690141">
            <link role="variableDeclaration" targetNodeId="1184789690056" resolveInfo="instances" />
          </node>
          <node role="rValue" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1184789690142">
            <link role="conceptDeclaration" targetNodeId="1.1166749287094" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1184789690143">
        <property name="caption" value="generator usages" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631744">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631545">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184789690146">
              <link role="variableDeclaration" targetNodeId="1184789690056" resolveInfo="instances" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1184789690147">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1184789690148">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1184789690149">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184789690150">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184789690151">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1184789690152">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1184789690153" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227946126">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1184789690157">
                          <link role="closureParameter" targetNodeId="1184789690149" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1184789690155">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1184789690156">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648293">
                              <link role="conceptDeclaration" targetNodeId="1.1170725621272" resolveInfo="MapSrcMacro_MapperFunction" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1184789690158" />
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1184789690159">
        <property name="value" value="------" />
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184789690160">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1184789690161">
          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184789690162">
            <link role="variableDeclaration" targetNodeId="1184789690056" resolveInfo="instances" />
          </node>
          <node role="rValue" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1184789690163">
            <link role="conceptDeclaration" targetNodeId="4.1161622878565" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1184789690164">
        <property name="caption" value="scope usages" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631737">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631599">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184789690167">
              <link role="variableDeclaration" targetNodeId="1184789690056" resolveInfo="instances" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1184789690168">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1184789690169">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1184789690170">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184789690171">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184789690172">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1184789690173">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1184789690174" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227958805">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1184789690178">
                          <link role="closureParameter" targetNodeId="1184789690170" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1184789690176">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1184789690177">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648311">
                              <link role="conceptDeclaration" targetNodeId="1.1170725621272" resolveInfo="MapSrcMacro_MapperFunction" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1184789690179" />
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1184789690180">
        <property name="value" value="------" />
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184789690181">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1184789690182">
          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184789690183">
            <link role="variableDeclaration" targetNodeId="1184789690056" resolveInfo="instances" />
          </node>
          <node role="rValue" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1184789690184">
            <link role="conceptDeclaration" targetNodeId="4.1161622753914" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1184789690185">
        <property name="caption" value="operationContext usages" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631482">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631766">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184789690188">
              <link role="variableDeclaration" targetNodeId="1184789690056" resolveInfo="instances" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1184789690189">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1184789690190">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1184789690191">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184789690192">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184789690193">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1184789690194">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1184789690195" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227849493">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1184789690199">
                          <link role="closureParameter" targetNodeId="1184789690191" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1184789690197">
                          <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1184789690198">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648300">
                              <link role="conceptDeclaration" targetNodeId="1.1170725621272" resolveInfo="MapSrcMacro_MapperFunction" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1184789690200" />
        </node>
      </node>
    </node>
  </node>
  <visible index="2" modelUID="jetbrains.mps.core.structure" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1187127850710">
    <property name="name" value="QueriesUtil" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1187127925384">
      <property name="name" value="isCall_findNodeBuilderForSource_node_string" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1187128005720" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1187127925386" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1187127925387">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1187128913430" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1187128916401">
          <property name="value" value="RECOGNIZE: inst.findNodeBuilderForSource(SNode,String)" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1187128921777" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1187127974827">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1187127992712">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227938567">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1187127992714">
                <link role="variableDeclaration" targetNodeId="1187127970528" resolveInfo="node" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1187127992715">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1187127992716">
                  <link role="conceptDeclaration" targetNodeId="5.1068580123163" />
                </node>
              </node>
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1187127974829">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1187127996795">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1187127999032">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1187128836519">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1187128836520">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471264">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1187128836527">
                <property name="value" value="findNodeBuilderForSource" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471265">
                <link role="baseMethodDeclaration" targetNodeId="2.~Object.equals(java.lang.Object):boolean" resolveInfo="equals" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227907610">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227865648">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1187128844828">
                      <link role="concept" targetNodeId="5.1068580123163" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1197496905944">
                        <link role="variableDeclaration" targetNodeId="1187127970528" resolveInfo="node" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1187128836525">
                      <link role="link" targetNodeId="5.1070568044740" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1187128836526">
                    <link role="property" targetNodeId="2v.1169194664001" resolveInfo="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1187128836528">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1187128836529">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1187128836530">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1187128878099">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1187128878100">
            <property name="name" value="args" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1187128878101">
              <link role="elementConcept" targetNodeId="5.1068431790191" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227914509">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1187128885146">
                <link role="concept" targetNodeId="5.1068580123163" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1197496912056">
                  <link role="variableDeclaration" targetNodeId="1187127970528" resolveInfo="node" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1207675642766">
                <link role="link" targetNodeId="5.1068499141038" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1187128878105">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1187128878106">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1187128878107">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1187128878108">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1187128878109">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1187128878110">
              <property name="value" value="2" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631590">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1187128878112">
                <link role="variableDeclaration" targetNodeId="1187128878100" resolveInfo="args" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1187128878113" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1187128878114">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1187128878115">
            <property name="name" value="type1" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1187128878116" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227884251">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631512">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1187128878120">
                  <link role="variableDeclaration" targetNodeId="1187128878100" resolveInfo="args" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetElementOperation" id="1187128878121">
                  <node role="argument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1187128878122">
                    <property name="value" value="0" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1187128878118" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1187128878123">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1187128878124">
            <property name="name" value="type2" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1187128878125" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227896053">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631542">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1187128878129">
                  <link role="variableDeclaration" targetNodeId="1187128878100" resolveInfo="args" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetElementOperation" id="1187128878130">
                  <node role="argument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1187128878131">
                    <property name="value" value="1" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1187128878127" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1187128878132">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1187128878133">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1187128878134">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1187128878135">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1187128878136">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1187128878137">
              <node role="rightExpression" type="jetbrains.mps.bootstrap.helgins.structure.IsSubtypeExpression" id="1187128878138">
                <node role="subtypeExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1187128878139">
                  <link role="variableDeclaration" targetNodeId="1187128878124" resolveInfo="type2" />
                </node>
                <node role="supertypeExpression" type="jetbrains.mps.quotation.structure.Quotation" id="1197496978654">
                  <node role="quotedNode" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197496978655">
                    <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                  </node>
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.helgins.structure.IsSubtypeExpression" id="1187128878142">
                <node role="subtypeExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1187128878143">
                  <link role="variableDeclaration" targetNodeId="1187128878115" resolveInfo="type1" />
                </node>
                <node role="supertypeExpression" type="jetbrains.mps.quotation.structure.Quotation" id="1197496973636">
                  <node role="quotedNode" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197496973637">
                    <link role="classifier" targetNodeId="7.~SNode" resolveInfo="SNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1187128979138">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1187128981453">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1187127970528">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1187127970529" />
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1187222929759">
      <property name="name" value="isCall_findCopyingNodeBuilderForSource_node" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1187222929760" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1187222929761" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1187222929762">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1187222929763" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1187222929764">
          <property name="value" value="RECOGNIZE: inst.findCopyingNodeBuilderForSource(SNode)" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1187222929765" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1187222929766">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1187222929767">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227896289">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1187222929769">
                <link role="variableDeclaration" targetNodeId="1187222929838" resolveInfo="node" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1187222929770">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1187222929771">
                  <link role="conceptDeclaration" targetNodeId="5.1068580123163" />
                </node>
              </node>
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1187222929772">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1187222929773">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1187222929774">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1187222929775">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1187222929776">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471372">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1187222929784">
                <property name="value" value="findCopyingNodeBuilderForSource" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471373">
                <link role="baseMethodDeclaration" targetNodeId="2.~Object.equals(java.lang.Object):boolean" resolveInfo="equals" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227920053">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227831917">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1187222929780">
                      <link role="concept" targetNodeId="5.1068580123163" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1197496919478">
                        <link role="variableDeclaration" targetNodeId="1187222929838" resolveInfo="node" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1187222929782">
                      <link role="link" targetNodeId="5.1070568044740" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1187222929783">
                    <link role="property" targetNodeId="2v.1169194664001" resolveInfo="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1187222929785">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1187222929786">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1187222929787">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1187222929788">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1187222929789">
            <property name="name" value="args" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1187222929790">
              <link role="elementConcept" targetNodeId="5.1068431790191" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227927369">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1187222929793">
                <link role="concept" targetNodeId="5.1068580123163" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1197496922417">
                  <link role="variableDeclaration" targetNodeId="1187222929838" resolveInfo="node" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1207675642767">
                <link role="link" targetNodeId="5.1068499141038" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1187222929795">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1187222929796">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1187222929797">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1187222929798">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1187222929799">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1187222929800">
              <property name="value" value="1" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631648">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1187222929802">
                <link role="variableDeclaration" targetNodeId="1187222929789" resolveInfo="args" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1187222929803" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1187222929804">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1187222929805">
            <property name="name" value="type" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1187222929806" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227925864">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631714">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1187222929810">
                  <link role="variableDeclaration" targetNodeId="1187222929789" resolveInfo="args" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetElementOperation" id="1187222929811">
                  <node role="argument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1187222929812">
                    <property name="value" value="0" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1187222929808" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1187222929822">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1187222929823">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1187222929824">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1187222929825">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1187222929826">
            <node role="expression" type="jetbrains.mps.bootstrap.helgins.structure.IsSubtypeExpression" id="1187222929832">
              <node role="subtypeExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1187222929833">
                <link role="variableDeclaration" targetNodeId="1187222929805" resolveInfo="type" />
              </node>
              <node role="supertypeExpression" type="jetbrains.mps.quotation.structure.Quotation" id="1197496950184">
                <node role="quotedNode" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197496950185">
                  <link role="classifier" targetNodeId="7.~SNode" resolveInfo="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1187222929836">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1187222929837">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1187222929838">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1187222929839" />
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1187127850711" />
  </node>
  <node type="jetbrains.mps.ide.scriptLanguage.structure.Script" id="1195257700199">
    <property name="scriptName" value="FindDeprecatedUsagesOf_conditionAspectId_in_IfMacro" />
    <node role="statementList" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195257700200">
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195257700201">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195257700202">
          <property name="name" value="nodes" />
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1195257700203">
            <link role="elementConcept" targetNodeId="1.1118773211870" resolveInfo="IfMacro" />
          </node>
          <node role="initializer" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1195257700204">
            <link role="conceptDeclaration" targetNodeId="1.1118773211870" resolveInfo="IfMacro" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195257700205">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195257700206">
          <property name="name" value="deprecated" />
          <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1195257700207">
            <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195257700208">
              <link role="concept" targetNodeId="1.1118773211870" resolveInfo="IfMacro" />
            </node>
          </node>
          <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631503">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195257700210">
              <link role="variableDeclaration" targetNodeId="1195257700202" resolveInfo="rules" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1195257700211">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1195257700212">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1195257700213">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195257700214">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195257700215">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1195257700216">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1195257700217" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227921917">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1195257700220">
                          <link role="closureParameter" targetNodeId="1195257700213" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195257813913">
                          <link role="property" targetNodeId="1.1118773281249" resolveInfo="conditionAspectId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1195257700221">
        <property name="caption" value="condition method id is used" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631650">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195257700223">
            <link role="variableDeclaration" targetNodeId="1195257700206" resolveInfo="deprecated" />
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1195257700224" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.ide.scriptLanguage.structure.Script" id="1197486741504">
    <property name="scriptName" value="FindDeprecatedUsagesOf_aspectMethodName_in_PropertyMacro" />
    <node role="statementList" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197486741505">
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197486741506">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197486741507">
          <property name="name" value="nodes" />
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1197486741508">
            <link role="elementConcept" targetNodeId="1.1087833241328" resolveInfo="PropertyMacro" />
          </node>
          <node role="initializer" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1197486741509">
            <link role="conceptDeclaration" targetNodeId="1.1087833241328" resolveInfo="PropertyMacro" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197486741510">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197486741511">
          <property name="name" value="deprecated" />
          <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1197486741512">
            <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1197486741513">
              <link role="concept" targetNodeId="1.1087833241328" resolveInfo="PropertyMacro" />
            </node>
          </node>
          <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631596">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197486741515">
              <link role="variableDeclaration" targetNodeId="1197486741507" resolveInfo="nodes" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1197486741516">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1197486741517">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1197486741518">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197486741519">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197486741520">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1197486741521">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1197486741522" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227889437">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1197486741525">
                          <link role="closureParameter" targetNodeId="1197486741518" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1197486791878">
                          <link role="property" targetNodeId="1.1087833392642" resolveInfo="aspectMethodName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197496785267">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471396">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1197496785268">
            <link role="classifier" targetNodeId="2.~System" resolveInfo="System" />
            <link role="variableDeclaration" targetNodeId="2.~System.out" resolveInfo="out" />
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471397">
            <link role="baseMethodDeclaration" targetNodeId="12.~PrintStream.print(java.lang.String):void" resolveInfo="print" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1197496821520">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631588">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197496830976">
                  <link role="variableDeclaration" targetNodeId="1197486741511" resolveInfo="deprecated" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1197496834181" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1197496798628">
                <property name="value" value="found instances: " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1197486741526">
        <property name="caption" value="deprecated 'aspectMethodName' is used in '$' macro" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631484">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197486741528">
            <link role="variableDeclaration" targetNodeId="1197486741511" resolveInfo="deprecated" />
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1197486741529" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.ide.scriptLanguage.structure.Script" id="1198026209310">
    <property name="scriptName" value="FindUsagesOf_ReferenceMacro_in_ParameterReference" />
    <node role="statementList" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198026209311">
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198026209312">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198026209313">
          <property name="name" value="nodes" />
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1198026209314">
            <link role="elementConcept" targetNodeId="1.1088761943574" resolveInfo="ReferenceMacro" />
          </node>
          <node role="initializer" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1198026209315">
            <link role="conceptDeclaration" targetNodeId="1.1088761943574" resolveInfo="ReferenceMacro" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198026209316">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198026209317">
          <property name="name" value="result" />
          <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1198026209318">
            <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1198026209319">
              <link role="concept" targetNodeId="1.1088761943574" resolveInfo="ReferenceMacro" />
            </node>
          </node>
          <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631626">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198026209321">
              <link role="variableDeclaration" targetNodeId="1198026209313" resolveInfo="nodes" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1198026209322">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1198026209323">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1198026209324">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198026209325">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198026209326">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227956369">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227852267">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1198026209331">
                          <link role="closureParameter" targetNodeId="1198026209324" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1198026325450" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1198026333251">
                        <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1198026337143">
                          <link role="conceptDeclaration" targetNodeId="5.1068581242874" resolveInfo="ParameterReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198026209332">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471374">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1198026209334">
            <link role="classifier" targetNodeId="2.~System" resolveInfo="System" />
            <link role="variableDeclaration" targetNodeId="2.~System.out" resolveInfo="out" />
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471375">
            <link role="baseMethodDeclaration" targetNodeId="12.~PrintStream.println(java.lang.String):void" resolveInfo="println" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1198026209335">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631771">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198026209337">
                  <link role="variableDeclaration" targetNodeId="1198026209317" resolveInfo="deprecated" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1198026209338" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1198026209339">
                <property name="value" value="[!SCRIPT!] found instances: " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199406370537">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199406373523">
          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199406370538">
            <link role="variableDeclaration" targetNodeId="1198026209317" resolveInfo="result" />
          </node>
          <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631531">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199406377341">
              <link role="variableDeclaration" targetNodeId="1198026209317" resolveInfo="result" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1199406377342">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1199406377343">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1199406377344">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199406377345">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199406377346">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1199406402457">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471404">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471423">
                          <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1199406402461">
                            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227913267">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227941596">
                                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199406402464">
                                  <link role="closureParameter" targetNodeId="1199406377344" resolveInfo="it" />
                                </node>
                                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199406402465">
                                  <link role="link" targetNodeId="1.1167770376702" />
                                </node>
                              </node>
                              <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1199406402466" />
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471424">
                            <link role="baseMethodDeclaration" targetNodeId="7.~SNode.toString():java.lang.String" resolveInfo="toString" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471405">
                          <link role="baseMethodDeclaration" targetNodeId="2.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                          <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199406402459">
                            <property name="value" value="String" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199406386418">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753470747">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1199406386420">
            <link role="classifier" targetNodeId="2.~System" resolveInfo="System" />
            <link role="variableDeclaration" targetNodeId="2.~System.out" resolveInfo="out" />
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753470748">
            <link role="baseMethodDeclaration" targetNodeId="12.~PrintStream.println(java.lang.String):void" resolveInfo="println" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1199406386421">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631510">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199406386423">
                  <link role="variableDeclaration" targetNodeId="1198026209317" resolveInfo="result" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1199406386424" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199406386425">
                <property name="value" value="[!SCRIPT!] where old instances: " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1198026209340">
        <property name="caption" value="'-&gt;$' macro in parameter-reference" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631564">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198026209342">
            <link role="variableDeclaration" targetNodeId="1198026209317" resolveInfo="deprecated" />
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1198026209343" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.ide.scriptLanguage.structure.Script" id="1199406758428">
    <property name="scriptName" value="FindUsagesOf_ReferenceMacro_in_LocalVariableReference" />
    <node role="statementList" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199406758429">
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199406758430">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199406758431">
          <property name="name" value="nodes" />
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1199406758432">
            <link role="elementConcept" targetNodeId="1.1088761943574" resolveInfo="ReferenceMacro" />
          </node>
          <node role="initializer" type="jetbrains.mps.ide.scriptLanguage.structure.FindConceptInstances" id="1199406758433">
            <link role="conceptDeclaration" targetNodeId="1.1088761943574" resolveInfo="ReferenceMacro" />
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199406758434">
        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199406758435">
          <property name="name" value="result" />
          <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1199406758436">
            <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199406758437">
              <link role="concept" targetNodeId="1.1088761943574" resolveInfo="ReferenceMacro" />
            </node>
          </node>
          <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631795">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199406758439">
              <link role="variableDeclaration" targetNodeId="1199406758431" resolveInfo="nodes" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1199406758440">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1199406758441">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1199406758442">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199406758443">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199406758444">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227918512">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227956229">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199406758450">
                          <link role="closureParameter" targetNodeId="1199406758442" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1199406758449" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1199406758446">
                        <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1199406786663">
                          <link role="conceptDeclaration" targetNodeId="5.1068581242866" resolveInfo="LocalVariableReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199406758451">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471451">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1199406758453">
            <link role="classifier" targetNodeId="2.~System" resolveInfo="System" />
            <link role="variableDeclaration" targetNodeId="2.~System.out" resolveInfo="out" />
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471452">
            <link role="baseMethodDeclaration" targetNodeId="12.~PrintStream.println(java.lang.String):void" resolveInfo="println" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1199406758454">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631716">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199406758456">
                  <link role="variableDeclaration" targetNodeId="1199406758435" resolveInfo="result" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1199406758457" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199406758458">
                <property name="value" value="[!SCRIPT!] found instances: " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199406758459">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199406758460">
          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199406758461">
            <link role="variableDeclaration" targetNodeId="1199406758435" resolveInfo="result" />
          </node>
          <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631689">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199406758463">
              <link role="variableDeclaration" targetNodeId="1199406758435" resolveInfo="result" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1199406758464">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1199406758465">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1199406758466">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199406758467">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199406758468">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1199406758469">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471376">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753470730">
                          <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1199406758473">
                            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227921086">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227850624">
                                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199406758476">
                                  <link role="closureParameter" targetNodeId="1199406758466" resolveInfo="it" />
                                </node>
                                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199406758477">
                                  <link role="link" targetNodeId="1.1167770376702" />
                                </node>
                              </node>
                              <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1199406758478" />
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753470731">
                            <link role="baseMethodDeclaration" targetNodeId="7.~SNode.toString():java.lang.String" resolveInfo="toString" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471377">
                          <link role="baseMethodDeclaration" targetNodeId="2.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                          <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199406758471">
                            <property name="value" value="String" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199406758479">
        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753470771">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1199406758481">
            <link role="classifier" targetNodeId="2.~System" resolveInfo="System" />
            <link role="variableDeclaration" targetNodeId="2.~System.out" resolveInfo="out" />
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753470772">
            <link role="baseMethodDeclaration" targetNodeId="12.~PrintStream.println(java.lang.String):void" resolveInfo="println" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1199406758482">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631568">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199406758484">
                  <link role="variableDeclaration" targetNodeId="1199406758435" resolveInfo="result" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1199406758485" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199406758486">
                <property name="value" value="[!SCRIPT!] where old instances: " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" type="jetbrains.mps.ide.scriptLanguage.structure.ShowNodes" id="1199406758487">
        <property name="caption" value="'-&gt;$' macro in local-variable-reference" />
        <node role="nodeList" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631734">
          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199406758489">
            <link role="variableDeclaration" targetNodeId="1199406758435" resolveInfo="result" />
          </node>
          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1199406758490" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScript" id="1207697731300">
    <property name="name" value="Replace_ConditionalRootLabelDeclaration504" />
    <property name="package" value="label" />
    <property name="migrationFromBuild" value="504" />
    <property name="title" value="replace 'root label decl' " />
    <property name="category" value="generator" />
    <node role="part" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance" id="1207697823600">
      <property name="description" value="replace deprecated ConditionalRootLabelDeclaration" />
      <link role="affectedInstanceConcept" targetNodeId="1.1200923014784" resolveInfo="ConditionalRootLabelDeclaration" />
      <node role="affectedInstanceUpdater" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance_Updater" id="1207697823601">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207697823602">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1207697893729">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1207697893730">
              <property name="name" value="newLabel" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1207697893731">
                <link role="concept" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1207697893732">
                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1207697893733">
                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1207697893734">
                    <link role="concept" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207697893735">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207697893736">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1207697893737">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207697893738">
                  <link role="variableDeclaration" targetNodeId="1207697893730" resolveInfo="newLabel" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207697893739">
                <link role="baseMethodDeclaration" targetNodeId="7.~SNode.setId(jetbrains.mps.smodel.SNodeId):void" resolveInfo="setId" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207697893740">
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1207697893741">
                    <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1207697900890" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207697893743">
                    <link role="baseMethodDeclaration" targetNodeId="7.~SNode.getSNodeId():jetbrains.mps.smodel.SNodeId" resolveInfo="getSNodeId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207697893744">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1207697893745">
              <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207697893746">
                <node role="operand" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1207697903173" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1207697910441">
                  <link role="property" targetNodeId="2v.1169194664001" resolveInfo="name" />
                </node>
              </node>
              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207697893749">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207697893750">
                  <link role="variableDeclaration" targetNodeId="1207697893730" resolveInfo="newLabel" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1207697893751">
                  <link role="property" targetNodeId="2v.1169194664001" resolveInfo="name" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207697893752">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1207697893753">
              <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207697893754">
                <node role="operand" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1207697905299" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1207697893756">
                  <link role="link" targetNodeId="1.1200913004646" />
                </node>
              </node>
              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207697893757">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207697893758">
                  <link role="variableDeclaration" targetNodeId="1207697893730" resolveInfo="newLabel" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1207697893759">
                  <link role="link" targetNodeId="1.1200913004646" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207697893760">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207697893761">
              <node role="operand" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1207697908003" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1207697893763">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207697893764">
                  <link role="variableDeclaration" targetNodeId="1207697893730" resolveInfo="newLabel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScript" id="1211314149978">
    <property name="migrationFromBuild" value="339" />
    <property name="name" value="Update_RuleConsequences" />
    <property name="title" value="update consequence in generator rules" />
    <property name="category" value="generator" />
    <node role="part" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance" id="1211314276544">
      <property name="description" value="update weaving rules" />
      <link role="affectedInstanceConcept" targetNodeId="1.1167171569011" resolveInfo="Weaving_MappingRule" />
      <node role="affectedInstanceUpdater" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance_Updater" id="1211314276545">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1211314276546">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1211479823390">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1211479823391">
              <property name="name" value="logger" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1211479823392">
                <link role="classifier" targetNodeId="13.~Logger" resolveInfo="Logger" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1211479823393">
                <link role="baseMethodDeclaration" targetNodeId="13.~Logger.getLogger(java.lang.String):jetbrains.mps.logging.Logger" resolveInfo="getLogger" />
                <link role="classConcept" targetNodeId="13.~Logger" resolveInfo="Logger" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1211479823394">
                  <property name="value" value="update rule consequences" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1211479115253">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1211479115254">
              <property name="name" value="ruleTemplate" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1211479115255">
                <link role="concept" targetNodeId="1.1092059087312" resolveInfo="TemplateDeclaration" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211479115256">
                <node role="operand" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211479115257" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1211479115258">
                  <link role="link" targetNodeId="1.1167171569014" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1211479181829">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1211479181830">
              <property name="name" value="ruleConsequence" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1211479181831">
                <link role="concept" targetNodeId="1.1168559098955" resolveInfo="RuleConsequence" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211479181832">
                <node role="operand" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211479181833" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1211479181834">
                  <link role="link" targetNodeId="1.1169570368028" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1211479186961">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1211479186962">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211479833129">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211479838209">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211479833130">
                    <link role="variableDeclaration" targetNodeId="1211479823391" resolveInfo="logger" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211479845369">
                    <link role="baseMethodDeclaration" targetNodeId="13.~Logger.warning(java.lang.String,java.lang.Object):void" resolveInfo="warning" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1211479850292">
                      <property name="value" value="couldn't update rule consequence: rule has consequence already" />
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211479989638" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1211479993937" />
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1211479197700">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1211479199641" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211479195121">
                <link role="variableDeclaration" targetNodeId="1211479181830" resolveInfo="ruleConsequence" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211480080196">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1211480085058">
              <node role="rValue" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1211480087436">
                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1211480087437">
                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1211480087438">
                    <link role="concept" targetNodeId="1.1168559333462" resolveInfo="TemplateDeclarationReference" />
                  </node>
                </node>
              </node>
              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211480080197">
                <link role="variableDeclaration" targetNodeId="1211479181830" resolveInfo="ruleConsequence" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211480115252">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1211480124948">
              <node role="rValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211480137014">
                <link role="variableDeclaration" targetNodeId="1211479115254" resolveInfo="ruleTemplate" />
              </node>
              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211480121600">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1211480117613">
                  <link role="concept" targetNodeId="1.1168559333462" resolveInfo="TemplateDeclarationReference" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211480115253">
                    <link role="variableDeclaration" targetNodeId="1211479181830" resolveInfo="ruleConsequence" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1211480123056">
                  <link role="link" targetNodeId="1.1168559393589" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211480152641">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1211480156960">
              <node role="rValue" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1211480158353" />
              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211480152659">
                <node role="operand" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211480152642" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1211480155130">
                  <link role="link" targetNodeId="1.1167171569014" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211480167793">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1211480177064">
              <node role="rValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211480181411">
                <link role="variableDeclaration" targetNodeId="1211479181830" resolveInfo="ruleConsequence" />
              </node>
              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211480167826">
                <node role="operand" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211480167794" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1211480175423">
                  <link role="link" targetNodeId="1.1169570368028" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211480294499">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211480296079">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211480294500">
                <link role="variableDeclaration" targetNodeId="1211479823391" resolveInfo="logger" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211480302566">
                <link role="baseMethodDeclaration" targetNodeId="13.~Logger.info(java.lang.String,java.lang.Object):void" resolveInfo="info" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1211480304880">
                  <property name="value" value="rule consequence updated" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211480319257" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="affectedInstancePredicate" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance_Predicate" id="1211478839127">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1211478839128">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211478877381">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1211478881637">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1211478883905" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211478878945">
                <node role="operand" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211478877382" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1211478879323">
                  <link role="link" targetNodeId="1.1167171569014" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="part" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance" id="1211480407763">
      <property name="description" value="update reduction rules" />
      <link role="affectedInstanceConcept" targetNodeId="1.1167327847730" resolveInfo="Reduction_MappingRule" />
      <node role="affectedInstanceUpdater" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance_Updater" id="1211480407764">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1211480407765">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1211480407766">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1211480407767">
              <property name="name" value="logger" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1211480407768">
                <link role="classifier" targetNodeId="13.~Logger" resolveInfo="Logger" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1211480407769">
                <link role="baseMethodDeclaration" targetNodeId="13.~Logger.getLogger(java.lang.String):jetbrains.mps.logging.Logger" resolveInfo="getLogger" />
                <link role="classConcept" targetNodeId="13.~Logger" resolveInfo="Logger" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1211480407770">
                  <property name="value" value="update rule consequences" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1211480407771">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1211480407772">
              <property name="name" value="ruleTemplate" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1211480407773">
                <link role="concept" targetNodeId="1.1092059087312" resolveInfo="TemplateDeclaration" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211480407774">
                <node role="operand" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211480407775" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1211480435650">
                  <link role="link" targetNodeId="1.1167327847732" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1211480407777">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1211480407778">
              <property name="name" value="ruleConsequence" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1211480407779">
                <link role="concept" targetNodeId="1.1168559098955" resolveInfo="RuleConsequence" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211480407780">
                <node role="operand" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211480407781" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1211480481526">
                  <link role="link" targetNodeId="1.1169672767469" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1211480407783">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1211480407784">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211480407785">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211480407786">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211480407787">
                    <link role="variableDeclaration" targetNodeId="1211480407767" resolveInfo="logger" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211480407788">
                    <link role="baseMethodDeclaration" targetNodeId="13.~Logger.warning(java.lang.String,java.lang.Object):void" resolveInfo="warning" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1211480407789">
                      <property name="value" value="couldn't update rule consequence: rule has consequence already" />
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211480407790" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1211480407791" />
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1211480407792">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1211480407793" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211480407794">
                <link role="variableDeclaration" targetNodeId="1211480407778" resolveInfo="ruleConsequence" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211480407795">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1211480407796">
              <node role="rValue" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1211480407797">
                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1211480407798">
                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1211480407799">
                    <link role="concept" targetNodeId="1.1168559333462" resolveInfo="TemplateDeclarationReference" />
                  </node>
                </node>
              </node>
              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211480407800">
                <link role="variableDeclaration" targetNodeId="1211480407778" resolveInfo="ruleConsequence" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211480407801">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1211480407802">
              <node role="rValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211480407803">
                <link role="variableDeclaration" targetNodeId="1211480407772" resolveInfo="ruleTemplate" />
              </node>
              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211480407804">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1211480407805">
                  <link role="concept" targetNodeId="1.1168559333462" resolveInfo="TemplateDeclarationReference" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211480407806">
                    <link role="variableDeclaration" targetNodeId="1211480407778" resolveInfo="ruleConsequence" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1211480407807">
                  <link role="link" targetNodeId="1.1168559393589" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211480407808">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1211480407809">
              <node role="rValue" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1211480407810" />
              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211480407811">
                <node role="operand" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211480407812" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1211480498777">
                  <link role="link" targetNodeId="1.1167327847732" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211480407814">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1211480407815">
              <node role="rValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211480407816">
                <link role="variableDeclaration" targetNodeId="1211480407778" resolveInfo="ruleConsequence" />
              </node>
              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211480407817">
                <node role="operand" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211480407818" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1211480500340">
                  <link role="link" targetNodeId="1.1169672767469" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211480407820">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211480407821">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1211480407822">
                <link role="variableDeclaration" targetNodeId="1211480407767" resolveInfo="logger" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1211480407823">
                <link role="baseMethodDeclaration" targetNodeId="13.~Logger.info(java.lang.String,java.lang.Object):void" resolveInfo="info" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1211480407824">
                  <property name="value" value="rule consequence updated" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211480407825" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="affectedInstancePredicate" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance_Predicate" id="1211480407826">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1211480407827">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1211480407828">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1211480407829">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1211480407830" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211480407831">
                <node role="operand" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1211480407832" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1211480427618">
                  <link role="link" targetNodeId="1.1167327847732" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScript" id="1212103686903">
    <property name="migrationFromBuild" value="607" />
    <property name="name" value="Remove_properyLink_fromPropMacro" />
    <property name="category" value="generator" />
    <property name="title" value="remove obsolete links from macros" />
    <node role="part" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance" id="1212103731841">
      <property name="description" value="remove obsolete 'property' link from PropertyMacro" />
      <link role="affectedInstanceConcept" targetNodeId="1.1087833241328" resolveInfo="PropertyMacro" />
      <node role="affectedInstanceUpdater" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance_Updater" id="1212103731842">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1212103731843">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1212103790497">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1212103790498">
              <property name="name" value="reference" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1212103790499">
                <link role="classifier" targetNodeId="7.~SReference" resolveInfo="SReference" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212103790500">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1212103790501">
                  <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1212103793824" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1212103790503">
                  <link role="baseMethodDeclaration" targetNodeId="7.~SNode.getReference(java.lang.String):jetbrains.mps.smodel.SReference" resolveInfo="getReference" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1212103790504">
                    <property name="value" value="property" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1212103790505">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212103790506">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1212103790507">
                <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1212103796200" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1212103790509">
                <link role="baseMethodDeclaration" targetNodeId="7.~SNode.removeReference(jetbrains.mps.smodel.SReference):void" resolveInfo="removeReference" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1212103790510">
                  <link role="variableDeclaration" targetNodeId="1212103790498" resolveInfo="reference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="affectedInstancePredicate" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance_Predicate" id="1212103757142">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1212103757143">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1212103774065">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1212103774066">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1212103774067" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212103774068">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1212103774069">
                  <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1212103776277" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1212103774071">
                  <link role="baseMethodDeclaration" targetNodeId="7.~SNode.getReference(java.lang.String):jetbrains.mps.smodel.SReference" resolveInfo="getReference" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1212103774072">
                    <property name="value" value="property" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="part" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance" id="1212104303982">
      <property name="description" value="remove obsolete 'link' link from ReferenceMacro" />
      <link role="affectedInstanceConcept" targetNodeId="1.1088761943574" resolveInfo="ReferenceMacro" />
      <node role="affectedInstanceUpdater" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance_Updater" id="1212104303983">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1212104303984">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1212104303985">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1212104303986">
              <property name="name" value="reference" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1212104303987">
                <link role="classifier" targetNodeId="7.~SReference" resolveInfo="SReference" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212104303988">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1212104303989">
                  <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1212104303990" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1212104303991">
                  <link role="baseMethodDeclaration" targetNodeId="7.~SNode.getReference(java.lang.String):jetbrains.mps.smodel.SReference" resolveInfo="getReference" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1212104303992">
                    <property name="value" value="link" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1212104303993">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212104303994">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1212104303995">
                <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1212104303996" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1212104303997">
                <link role="baseMethodDeclaration" targetNodeId="7.~SNode.removeReference(jetbrains.mps.smodel.SReference):void" resolveInfo="removeReference" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1212104303998">
                  <link role="variableDeclaration" targetNodeId="1212104303986" resolveInfo="reference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="affectedInstancePredicate" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_Instance_Predicate" id="1212104303999">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1212104304000">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1212104304001">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1212104304002">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1212104304003" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212104304004">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1212104304005">
                  <node role="leftExpression" type="jetbrains.mps.ide.scriptLanguage.structure.MigrationScriptPart_node" id="1212104304006" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1212104304007">
                  <link role="baseMethodDeclaration" targetNodeId="7.~SNode.getReference(java.lang.String):jetbrains.mps.smodel.SReference" resolveInfo="getReference" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1212104304008">
                    <property name="value" value="link" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


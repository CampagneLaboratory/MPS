<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.baseLanguage.intentions">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.intentionsLanguage" />
  <language namespace="jetbrains.mps.baseLanguage" />
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang" />
  <language namespace="jetbrains.mps.bootstrap.sharedConcepts" />
  <language namespace="jetbrains.mps.bootstrap.editorLanguage" />
  <language namespace="jetbrains.mps.bootstrap.helgins" />
  <language namespace="jetbrains.mps.quotation" />
  <language namespace="jetbrains.mps.core" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="1" />
  <maxImportIndex value="22" />
  <import index="1" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="2" modelUID="java.lang@java_stub" version="-1" />
  <import index="3" modelUID="jetbrains.mps.baseLanguage.constraints" version="-1" />
  <import index="4" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="5" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="6" modelUID="jetbrains.mps.nodeEditor@java_stub" version="-1" />
  <import index="7" modelUID="javax.swing@java_stub" version="-1" />
  <import index="8" modelUID="jetbrains.mps.baseLanguage.actions" version="-1" />
  <import index="9" modelUID="jetbrains.mps.smodel.search@java_stub" version="-1" />
  <import index="10" modelUID="jetbrains.mps.baseLanguage.search@java_stub" version="-1" />
  <import index="11" modelUID="jetbrains.mps.baseLanguage.editor@java_stub" version="-1" />
  <import index="12" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1" />
  <import index="13" modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="0" />
  <import index="14" modelUID="java.awt@java_stub" version="-1" />
  <import index="15" modelUID="jetbrains.mps.ide@java_stub" version="-1" />
  <import index="16" modelUID="jetbrains.mps.project@java_stub" version="-1" />
  <import index="17" modelUID="jetbrains.mps.core.constraints" version="-1" />
  <import index="18" modelUID="jetbrains.mps.baseLanguage.actions@java_stub" version="-1" />
  <import index="20" modelUID="jetbrains.mps.transformation.TLBase.structure" version="-1" />
  <import index="21" modelUID="jetbrains.mps.util.misc@java_stub" version="-1" />
  <import index="22" modelUID="jetbrains.mps.util@java_stub" version="-1" />
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1193744597902">
    <property name="name" value="AddCastStatetment" />
    <link role="forConcept" targetNodeId="1.1068580123159" resolveInfo="IfStatement" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1193744597903">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1193744597904">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1193744673079">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1193744673080">
            <property name="value" value="Insert casted variable declaration" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1193744597905">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1193744597906">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1193744704263">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1193744892543">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965592">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965566">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1193744901961">
                  <link role="concept" targetNodeId="1.1081256982272" resolveInfo="InstanceOfExpression" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956775">
                    <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1193744894747" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193744896876">
                      <link role="link" targetNodeId="1.1068580123160" />
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193744908901">
                  <link role="link" targetNodeId="1.1081256993305" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1193744910830" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955744">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956181">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1193744704264" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193744706579">
                  <link role="link" targetNodeId="1.1068580123160" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1193744708516">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1193744711926">
                  <link role="conceptDeclaration" targetNodeId="1.1081256982272" resolveInfo="InstanceOfExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1193744597907">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1193744597908">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1193744759215">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1193744759217">
            <property name="name" value="castedVariable" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1193744759218">
              <link role="concept" targetNodeId="1.1068581242864" resolveInfo="LocalVariableDeclarationStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1193744772537">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1193744772538">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1193744772539">
                  <link role="concept" targetNodeId="1.1068581242864" resolveInfo="LocalVariableDeclarationStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1193744816673">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1193744816674">
            <property name="name" value="instanceOfExpression" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1193744816675">
              <link role="concept" targetNodeId="1.1081256982272" resolveInfo="InstanceOfExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1193744809387">
              <link role="concept" targetNodeId="1.1081256982272" resolveInfo="InstanceOfExpression" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965071">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1193744803728" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193744806162">
                  <link role="link" targetNodeId="1.1068580123160" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1193745177419">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1193745177420">
            <property name="name" value="declaration" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1193745177421">
              <link role="concept" targetNodeId="1.1068581242863" resolveInfo="LocalVariableDeclaration" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966270">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1193744778861">
                <link role="variableDeclaration" targetNodeId="1193744759217" resolveInfo="castedVariable" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193744786340">
                <link role="link" targetNodeId="1.1068581242865" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1193744778860">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964452">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956132">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1193745177422">
                <link role="variableDeclaration" targetNodeId="1193745177420" resolveInfo="declaration" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193744793748">
                <link role="link" targetNodeId="1.1068431790188" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1193744795529">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955193">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966441">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1193744816676">
                    <link role="variableDeclaration" targetNodeId="1193744816674" resolveInfo="instanceOfExpression" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193744828746">
                    <link role="link" targetNodeId="1.1081256993305" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1193744832646" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1193744878630">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1193744878631">
            <property name="name" value="variableSuffixes" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1193744878632">
              <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1193744878633">
                <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965493">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964322">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1193744851800">
                  <link role="variableDeclaration" targetNodeId="1193744816674" resolveInfo="instanceOfExpression" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193744854828">
                  <link role="link" targetNodeId="1.1081256993305" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1193744866032">
                <link role="conceptMethodDeclaration" targetNodeId="3.1182416669983" resolveInfo="getVariableSuffixes" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1193744836458">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963539">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962648">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1193745183268">
                <link role="variableDeclaration" targetNodeId="1193745177420" resolveInfo="declaration" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1193744841264">
                <link role="property" targetNodeId="1.1083152972671" resolveInfo="name" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1193744847335">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414475">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1193744878634">
                  <link role="variableDeclaration" targetNodeId="1193744878631" resolveInfo="variableSuffixes" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetFirstOperation" id="1193744885788" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1193745192361">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1193745192362">
            <property name="name" value="castExpression" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1193745192363">
              <link role="concept" targetNodeId="1.1070534934090" resolveInfo="CastExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962479">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955629">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1193745185860">
                  <link role="variableDeclaration" targetNodeId="1193745177420" resolveInfo="declaration" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193745159069">
                  <link role="link" targetNodeId="1.1068431790190" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1193745162047">
                <link role="concept" targetNodeId="1.1070534934090" resolveInfo="CastExpression" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1193745195029">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967260">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964734">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1193745195030">
                <link role="variableDeclaration" targetNodeId="1193745192362" resolveInfo="castExpression" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193745201148">
                <link role="link" targetNodeId="1.1070534934091" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1193745202826">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954470">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964821">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1193745212717">
                    <link role="variableDeclaration" targetNodeId="1193744816674" resolveInfo="instanceOfExpression" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193745214854">
                    <link role="link" targetNodeId="1.1081256993305" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1193745216170" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1193745218961">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955018">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952005">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1193745218962">
                <link role="variableDeclaration" targetNodeId="1193745192362" resolveInfo="castExpression" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193745221706">
                <link role="link" targetNodeId="1.1070534934092" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1193745223509">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963015">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964563">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1193745231727">
                    <link role="variableDeclaration" targetNodeId="1193744816674" resolveInfo="instanceOfExpression" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193745245548">
                    <link role="link" targetNodeId="1.1081256993304" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1193745247453" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1193744726457">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962603">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955144">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965073">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1193744726458" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1193744732611">
                  <link role="link" targetNodeId="1.1068580123161" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1193744743893">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_InsertChildFirstOperation" id="1193744749404">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1193744929208">
                <link role="variableDeclaration" targetNodeId="1193744759217" resolveInfo="castedVariable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1195647385815">
    <property name="name" value="SplitStringIntoConcatenation" />
    <property name="isErrorIntention" value="false" />
    <link role="forConcept" targetNodeId="1.1070475926800" resolveInfo="StringLiteral" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1195647385838">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647385839">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1195647385840">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1195647385841">
            <property name="value" value="Split string into concatenation" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1195647385857">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647385858">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1195647385859">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1195647385860">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1195647385877">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647385878">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647385879">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647385880">
            <property name="name" value="ecProperty" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1195647385881">
              <link role="classifier" targetNodeId="6.~EditorCell_Property" resolveInfo="EditorCell_Property" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1195647385882">
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1195647385883">
                <link role="classifier" targetNodeId="6.~EditorCell_Property" resolveInfo="EditorCell_Property" />
              </node>
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204332444533">
                <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_editorContext" id="1199914529086" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204332444534">
                  <link role="baseMethodDeclaration" targetNodeId="6.~EditorContext.getContextCell():jetbrains.mps.nodeEditor.EditorCell" resolveInfo="getContextCell" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647385886">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647385887">
            <property name="name" value="caretPosition" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1195647385888" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204332445670">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204332454799">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647385891">
                  <link role="variableDeclaration" targetNodeId="1195647385880" resolveInfo="ecProperty" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204332454800">
                  <link role="baseMethodDeclaration" targetNodeId="6.~EditorCell_Label.getTextLine():jetbrains.mps.nodeEditor.TextLine" resolveInfo="getTextLine" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204332445671">
                <link role="baseMethodDeclaration" targetNodeId="6.~TextLine.getCaretPosition():int" resolveInfo="getCaretPosition" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647385892">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647385893">
            <property name="name" value="s1" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1195647385894">
              <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204332445623">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968174">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647385899" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195647385900">
                  <link role="property" targetNodeId="1.1070475926801" resolveInfo="value" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204332445624">
                <link role="baseMethodDeclaration" targetNodeId="2.~String.substring(int,int):java.lang.String" resolveInfo="substring" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1195647385896">
                  <property name="value" value="0" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647385897">
                  <link role="variableDeclaration" targetNodeId="1195647385887" resolveInfo="caretPosition" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647385901">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647385902">
            <property name="name" value="s2" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1195647385903">
              <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204332444537">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964296">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647385907" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195647385908">
                  <link role="property" targetNodeId="1.1070475926801" resolveInfo="value" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204332444538">
                <link role="baseMethodDeclaration" targetNodeId="2.~String.substring(int):java.lang.String" resolveInfo="substring" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647385905">
                  <link role="variableDeclaration" targetNodeId="1195647385887" resolveInfo="caretPosition" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647385909">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647385910">
            <property name="name" value="plusExpression" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647385911">
              <link role="concept" targetNodeId="1.1068581242875" resolveInfo="PlusExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967614">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647385913" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithNewOperation" id="1195647385914">
                <link role="concept" targetNodeId="1.1068581242875" resolveInfo="PlusExpression" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647385915">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956883">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956617">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954910">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956907">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647385920">
                    <link role="variableDeclaration" targetNodeId="1195647385910" resolveInfo="plusExpression" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647385921">
                    <link role="link" targetNodeId="1.1081773367580" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1195647385922">
                  <link role="concept" targetNodeId="1.1070475926800" resolveInfo="StringLiteral" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195647385923">
                <link role="property" targetNodeId="1.1070475926801" resolveInfo="value" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1195647385924">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647385925">
                <link role="variableDeclaration" targetNodeId="1195647385893" resolveInfo="s1" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647385926">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957269">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962835">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967695">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966729">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647385931">
                    <link role="variableDeclaration" targetNodeId="1195647385910" resolveInfo="plusExpression" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647385932">
                    <link role="link" targetNodeId="1.1081773367579" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1195647385933">
                  <link role="concept" targetNodeId="1.1070475926800" resolveInfo="StringLiteral" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195647385934">
                <link role="property" targetNodeId="1.1070475926801" resolveInfo="value" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1195647385935">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647385936">
                <link role="variableDeclaration" targetNodeId="1195647385902" resolveInfo="s2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1195647309293">
    <property name="name" value="SplitIntoDeclarationAndAssignment" />
    <property name="isErrorIntention" value="false" />
    <link role="forConcept" targetNodeId="1.1068581242863" resolveInfo="LocalVariableDeclaration" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1195647309378">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647309379">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1195647309380">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1195647309381">
            <property name="value" value="Split into declaration and assignment" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1195647309397">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647309398">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647309399">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954474">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954752">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647309402" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647309403">
                <link role="link" targetNodeId="1.1068431790190" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1195647309404" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1195647309421">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647309422">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647309423">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647309424">
            <property name="name" value="eStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647309425">
              <link role="concept" targetNodeId="1.1068580123155" resolveInfo="ExpressionStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955765">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967358">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647309428" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1195647309429" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1195647309430">
                <link role="concept" targetNodeId="1.1068580123155" resolveInfo="ExpressionStatement" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647309431">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647309432">
            <property name="name" value="assignment" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647309433">
              <link role="concept" targetNodeId="1.1068498886294" resolveInfo="AssignmentExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966816">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956000">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647309436">
                  <link role="variableDeclaration" targetNodeId="1195647309424" resolveInfo="eStatement" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647309437">
                  <link role="link" targetNodeId="1.1068580123156" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1195647309438">
                <link role="concept" targetNodeId="1.1068498886294" resolveInfo="AssignmentExpression" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647309439">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966037">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952289">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647309442">
                <link role="variableDeclaration" targetNodeId="1195647309432" resolveInfo="assignment" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647309443">
                <link role="link" targetNodeId="1.1068498886297" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195647309444">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954141">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647309446" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647309447">
                  <link role="link" targetNodeId="1.1068431790190" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647309448">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647309449">
            <property name="name" value="local" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647309450">
              <link role="concept" targetNodeId="1.1068581242866" resolveInfo="LocalVariableReference" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977951753">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955065">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647309453">
                  <link role="variableDeclaration" targetNodeId="1195647309432" resolveInfo="assignment" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647309454">
                  <link role="link" targetNodeId="1.1068498886295" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1195647309455">
                <link role="concept" targetNodeId="1.1068581242866" resolveInfo="LocalVariableReference" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647309456">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962605">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963389">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647309459">
                <link role="variableDeclaration" targetNodeId="1195647309449" resolveInfo="local" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647309460">
                <link role="link" targetNodeId="1.1070568296581" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195647309461">
              <node role="parameter" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647309462" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647309479">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967926">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957163">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647309482" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1195647309483">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1195647309484">
                  <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_InsertNextSiblingOperation" id="1195647309485">
              <node role="insertedNode" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647309486">
                <link role="variableDeclaration" targetNodeId="1195647309424" resolveInfo="eStatement" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1195647284978">
    <property name="name" value="AddAnnotation" />
    <property name="isErrorIntention" value="false" />
    <link role="forConcept" targetNodeId="1.1188208481402" resolveInfo="Annotable" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1195647285016">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647285017">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1195647285018">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1195647285019">
            <property name="value" value="Add annotation" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1195647285036">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647285037">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647285038">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414492">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956443">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647285047" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1195647285048">
                <link role="link" targetNodeId="1.1188208488637" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.IsEmptyOperation" id="1195647285049" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1195647285050">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647285051">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647285052">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647285053">
            <property name="name" value="annotationInstance" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647285054">
              <link role="concept" targetNodeId="1.1188207840427" resolveInfo="AnnotationInstance" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955994">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964397">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647285058" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1195647285059">
                  <link role="link" targetNodeId="1.1188208488637" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddNewChildOperation" id="1195647285060" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647285061">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204332421892">
            <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_editorContext" id="1199914590613" />
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204332421893">
              <link role="baseMethodDeclaration" targetNodeId="6.~EditorContext.selectLater(jetbrains.mps.smodel.SNode):void" resolveInfo="selectLater" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647285063">
                <link role="variableDeclaration" targetNodeId="1195647285053" resolveInfo="annotationInstance" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1195647296996">
    <property name="name" value="RemoveStaticModifier" />
    <property name="isErrorIntention" value="false" />
    <link role="forConcept" targetNodeId="1.1081236700938" resolveInfo="StaticMethodDeclaration" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1195647297018">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647297019">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1195647297020">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1195647297021">
            <property name="value" value="Remove static modifier" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1195647297022">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647297023">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647297024">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965028">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967153">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647297027" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1195647297028">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1195647297029">
                  <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1195647297030" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1195647297094">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647297095">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647297096">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647297097">
            <property name="name" value="classConcept" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647297098">
              <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962526">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647297100" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1195647297101">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1195647297102">
                  <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647297103">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647297104">
            <property name="name" value="method" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647297105">
              <link role="concept" targetNodeId="1.1068580123165" resolveInfo="InstanceMethodDeclaration" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956905">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954679">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647297108">
                  <link role="variableDeclaration" targetNodeId="1195647297097" resolveInfo="classConcept" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1195647297109">
                  <link role="link" targetNodeId="1.1107880067339" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddNewChildOperation" id="1195647297110">
                <link role="concept" targetNodeId="1.1068580123165" resolveInfo="InstanceMethodDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647297111">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968306">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956262">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647297114">
                <link role="variableDeclaration" targetNodeId="1195647297104" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647297115">
                <link role="link" targetNodeId="1.1068580123133" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195647297116">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954783">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647297118" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647297119">
                  <link role="link" targetNodeId="1.1068580123133" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647297120">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954166">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954245">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647297123">
                <link role="variableDeclaration" targetNodeId="1195647297104" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1195647297124">
                <link role="link" targetNodeId="1.1068580123134" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddAllOperation" id="1195647297125">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966295">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647297127" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1195648073954">
                  <link role="link" targetNodeId="1.1068580123134" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647297129">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977953963">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963096">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647297132">
                <link role="variableDeclaration" targetNodeId="1195647297104" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647297133">
                <link role="link" targetNodeId="1.1068580123135" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195647297134">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954188">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647297136" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647297137">
                  <link role="link" targetNodeId="1.1068580123135" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647297138">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964945">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954531">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647297141">
                <link role="variableDeclaration" targetNodeId="1195647297104" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1195647297142">
                <link role="link" targetNodeId="1.1164879685961" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddAllOperation" id="1195647297143">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954214">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647297145" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1195648079752">
                  <link role="link" targetNodeId="1.1164879685961" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647297147">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955680">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977953991">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647297150">
                <link role="variableDeclaration" targetNodeId="1195647297104" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647297151">
                <link role="link" targetNodeId="1.1178549979242" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195647297152">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955174">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647297154" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647297155">
                  <link role="link" targetNodeId="1.1178549979242" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647297156">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968442">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964143">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647297159">
                <link role="variableDeclaration" targetNodeId="1195647297104" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195647297160">
                <link role="property" targetNodeId="1.1083152972672" resolveInfo="name" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1195647297161">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955454">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647297163" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195647297164">
                  <link role="property" targetNodeId="1.1083152972672" resolveInfo="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647297165">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965130">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956104">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647297168">
                <link role="variableDeclaration" targetNodeId="1195647297104" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195647297169">
                <link role="property" targetNodeId="1.1181808852946" resolveInfo="isFinal" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1195647297170">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965807">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647297172" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195647297173">
                  <link role="property" targetNodeId="1.1181808852946" resolveInfo="isFinal" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647297174">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964588">
            <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647297176" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_DeleteOperation" id="1195647297177" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1195647334600">
    <property name="name" value="FlipBinaryOperation" />
    <property name="isErrorIntention" value="false" />
    <link role="forConcept" targetNodeId="1.1081773326031" resolveInfo="BinaryOperation" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1195647334622">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647334623">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1195647334624">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1195647334625">
            <property name="value" value="Flip binary operation" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1195647334626">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647334627">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1195647334628">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1195647334629">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1195647334662">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647334663">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647334664">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647334665">
            <property name="name" value="leftExpression" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647334666">
              <link role="concept" targetNodeId="1.1068431790191" resolveInfo="Expression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967407">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647334668" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647334669">
                <link role="link" targetNodeId="1.1081773367580" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647334670">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647334671">
            <property name="name" value="rightExpression" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647334672">
              <link role="concept" targetNodeId="1.1068431790191" resolveInfo="Expression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968030">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647334674" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647334675">
                <link role="link" targetNodeId="1.1081773367579" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647334676">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956542">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956305">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647334679" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647334680">
                <link role="link" targetNodeId="1.1081773367580" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195647334681">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966763">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647334683">
                  <link role="variableDeclaration" targetNodeId="1195647334671" resolveInfo="rightExpression" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1195647334684" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647334685">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956134">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955584">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647334688" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647334689">
                <link role="link" targetNodeId="1.1081773367579" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195647334690">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955846">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647334692">
                  <link role="variableDeclaration" targetNodeId="1195647334665" resolveInfo="leftExpression" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1195647334693" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1195647359405">
    <property name="name" value="InvertIfCondition" />
    <property name="isErrorIntention" value="false" />
    <link role="forConcept" targetNodeId="1.1068580123159" resolveInfo="IfStatement" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1195647359412">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647359413">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1195647359414">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1195647359415">
            <property name="value" value="Invert If condition" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1195647359432">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647359433">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647359434">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957015">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965694">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647359437" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647359438">
                <link role="link" targetNodeId="1.1082485599094" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1195647359439" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1195647359487">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647359488">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1195647359489">
          <property name="value" value="Invert condition" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647359490">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647359491">
            <property name="name" value="condition" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647359492">
              <link role="concept" targetNodeId="1.1068431790191" resolveInfo="Expression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955767">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647359494" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647359495">
                <link role="link" targetNodeId="1.1068580123160" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1195647359496">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647359497">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1195647359498">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647359499">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647359500">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1195647359501">
                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359502">
                      <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                    </node>
                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967947">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1195647359504">
                        <link role="concept" targetNodeId="1.1081516740877" resolveInfo="NotExpression" />
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359505">
                          <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647359506">
                        <link role="link" targetNodeId="1.1081516765348" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1195647359507">
                <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647359508">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204299269835">
                    <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204299269836">
                      <property name="name" value="newCondition" />
                      <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204299269837">
                        <link role="concept" targetNodeId="1.1081773326031" resolveInfo="BinaryOperation" />
                      </node>
                      <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1204299373986" />
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1204299079595">
                    <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204299079596">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204299359715">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1204299359716">
                          <node role="rValue" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1204299269838">
                            <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1204299269839">
                              <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204299269840">
                                <link role="concept" targetNodeId="1.1073239437375" resolveInfo="NotEqualsExpression" />
                              </node>
                            </node>
                          </node>
                          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299359717">
                            <link role="variableDeclaration" targetNodeId="1204299269836" resolveInfo="newCondition" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299084862">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299084315">
                        <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1204299086109">
                        <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1204299093635">
                          <link role="conceptDeclaration" targetNodeId="1.1068580123152" resolveInfo="EqualsExpression" />
                        </node>
                      </node>
                    </node>
                    <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1204299377350">
                      <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204299377351">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204299385861">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1204299387071">
                            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1204299388973">
                              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1204299388974">
                                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204299388975">
                                  <link role="concept" targetNodeId="1.1068580123152" resolveInfo="EqualsExpression" />
                                </node>
                              </node>
                            </node>
                            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299385862">
                              <link role="variableDeclaration" targetNodeId="1204299269836" resolveInfo="newCondition" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299379913">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299379432">
                          <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1204299381591">
                          <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1204299383540">
                            <link role="conceptDeclaration" targetNodeId="1.1073239437375" resolveInfo="NotEqualsExpression" />
                          </node>
                        </node>
                      </node>
                      <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1204299398432">
                        <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204299398433">
                          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204299398434">
                            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1204299398435">
                              <node role="rValue" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1204299398436">
                                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1204299398437">
                                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204299398438">
                                    <link role="concept" targetNodeId="1.1153422305557" resolveInfo="LessThanOrEqualsExpression" />
                                  </node>
                                </node>
                              </node>
                              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299398439">
                                <link role="variableDeclaration" targetNodeId="1204299269836" resolveInfo="newCondition" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299398440">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299398441">
                            <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1204299398442">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1204299404020">
                              <link role="conceptDeclaration" targetNodeId="1.1081506762703" resolveInfo="GreaterThanExpression" />
                            </node>
                          </node>
                        </node>
                        <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1204299412961">
                          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204299412962">
                            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204299412963">
                              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1204299412964">
                                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1204299412965">
                                  <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1204299412966">
                                    <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204299412967">
                                      <link role="concept" targetNodeId="1.1081506773034" resolveInfo="LessThanExpression" />
                                    </node>
                                  </node>
                                </node>
                                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299412968">
                                  <link role="variableDeclaration" targetNodeId="1204299269836" resolveInfo="newCondition" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299412969">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299412970">
                              <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1204299412971">
                              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1204299419169">
                                <link role="conceptDeclaration" targetNodeId="1.1153417849900" resolveInfo="GreaterThanOrEqualsExpression" />
                              </node>
                            </node>
                          </node>
                          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1204299425942">
                            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204299425943">
                              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204299425944">
                                <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1204299425945">
                                  <node role="rValue" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1204299425946">
                                    <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1204299425947">
                                      <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204299425948">
                                        <link role="concept" targetNodeId="1.1153417849900" resolveInfo="GreaterThanOrEqualsExpression" />
                                      </node>
                                    </node>
                                  </node>
                                  <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299425949">
                                    <link role="variableDeclaration" targetNodeId="1204299269836" resolveInfo="newCondition" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299425950">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299425951">
                                <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                              </node>
                              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1204299425952">
                                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1204299430538">
                                  <link role="conceptDeclaration" targetNodeId="1.1081506773034" resolveInfo="LessThanExpression" />
                                </node>
                              </node>
                            </node>
                            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1204299440919">
                              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204299440920">
                                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204299440921">
                                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1204299440922">
                                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1204299440923">
                                      <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1204299440924">
                                        <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204299440925">
                                          <link role="concept" targetNodeId="1.1081506762703" resolveInfo="GreaterThanExpression" />
                                        </node>
                                      </node>
                                    </node>
                                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299440926">
                                      <link role="variableDeclaration" targetNodeId="1204299269836" resolveInfo="newCondition" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299440927">
                                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299440928">
                                  <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                                </node>
                                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1204299440929">
                                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1204299452273">
                                    <link role="conceptDeclaration" targetNodeId="1.1153422305557" resolveInfo="LessThanOrEqualsExpression" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1204299466778">
                    <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204299466779">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204299144932">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299169917">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299155752">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299293835">
                              <link role="variableDeclaration" targetNodeId="1204299269836" resolveInfo="newCondition" />
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204299169019">
                              <link role="link" targetNodeId="1.1081773367580" />
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1204299171400">
                            <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299214736">
                              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1204299199040">
                                <link role="concept" targetNodeId="1.1081773326031" resolveInfo="BinaryOperation" />
                                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299197635">
                                  <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                                </node>
                              </node>
                              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204299242094">
                                <link role="link" targetNodeId="1.1081773367580" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204299299981">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299305132">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299300440">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299299982">
                              <link role="variableDeclaration" targetNodeId="1204299269836" resolveInfo="newCondition" />
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204299304556">
                              <link role="link" targetNodeId="1.1081773367579" />
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1204299306465">
                            <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299314005">
                              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1204299309962">
                                <link role="concept" targetNodeId="1.1081773326031" resolveInfo="BinaryOperation" />
                                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299308739">
                                  <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                                </node>
                              </node>
                              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204299318959">
                                <link role="link" targetNodeId="1.1081773367579" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204299485490">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1204299487036">
                          <node role="rValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299489872">
                            <link role="variableDeclaration" targetNodeId="1204299269836" resolveInfo="newCondition" />
                          </node>
                          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299485491">
                            <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1204299472068">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1204299473513" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204299470273">
                        <link role="variableDeclaration" targetNodeId="1204299269836" resolveInfo="newCondition" />
                      </node>
                    </node>
                    <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1204299492538">
                      <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204299492539">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647359509">
                          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647359510">
                            <property name="name" value="notExpression" />
                            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647359511">
                              <link role="concept" targetNodeId="1.1081516740877" resolveInfo="NotExpression" />
                            </node>
                            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1195647359512">
                              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1195647359513">
                                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647359514">
                                  <link role="concept" targetNodeId="1.1081516740877" resolveInfo="NotExpression" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647359515">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967017">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966366">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359518">
                                <link role="variableDeclaration" targetNodeId="1195647359510" resolveInfo="notExpression" />
                              </node>
                              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647359519">
                                <link role="link" targetNodeId="1.1081516765348" />
                              </node>
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195647359520">
                              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359521">
                                <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647359522">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1195647359523">
                            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359524">
                              <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                            </node>
                            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359525">
                              <link role="variableDeclaration" targetNodeId="1195647359510" resolveInfo="notExpression" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955661">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359527">
                  <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1195647359528">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1195647359529">
                    <link role="conceptDeclaration" targetNodeId="1.1081516740877" resolveInfo="NotExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647359530">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966010">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962684">
                  <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647359533" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647359534">
                    <link role="link" targetNodeId="1.1068580123160" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195647359535">
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359536">
                    <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977951903">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359538">
              <link role="variableDeclaration" targetNodeId="1195647359491" resolveInfo="condition" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1195647359539" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1195647359540">
          <property name="value" value="Flip ifTrue and ifFalse" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647359541">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647359542">
            <property name="name" value="ifTrue" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647359543">
              <link role="concept" targetNodeId="1.1068580123136" resolveInfo="StatementList" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966138">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647359545" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647359546">
                <link role="link" targetNodeId="1.1068580123161" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1195647359547">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1195647359548">
            <property name="name" value="ifFalse" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1195647359549">
              <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955913">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647359551" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647359552">
                <link role="link" targetNodeId="1.1082485599094" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1195647359553">
          <property name="value" value="Set new ifFalseStatement" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1195647359554">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647359555">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647359556">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967541">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956826">
                  <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647359559" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647359560">
                    <link role="link" targetNodeId="1.1082485599094" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195647359561">
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1195647359562" />
                </node>
              </node>
            </node>
          </node>
          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1195647359563">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647359564">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204298740557">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204298909942">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204298741234">
                    <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1204298740558" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204298743334">
                      <link role="link" targetNodeId="1.1082485599094" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1204298918621">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414596">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204298927715">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204298927163">
                          <link role="variableDeclaration" targetNodeId="1195647359542" resolveInfo="ifTrue" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1204298929137">
                          <link role="link" targetNodeId="1.1068581517665" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetFirstOperation" id="1204298931308" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1195647359576">
              <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647359577">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647359578">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414461">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204298835578">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204298833250">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977951777">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977953912">
                            <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647359581" />
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647359582">
                              <link role="link" targetNodeId="1.1082485599094" />
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1195647359583">
                            <link role="concept" targetNodeId="1.1082485599095" resolveInfo="BlockStatement" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204298835067">
                          <link role="link" targetNodeId="1.1082485599096" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1204298837168">
                        <link role="link" targetNodeId="1.1068581517665" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddAllOperation" id="1204298840016">
                      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204298957191">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204298956558">
                          <link role="variableDeclaration" targetNodeId="1195647359542" resolveInfo="ifTrue" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1204298959616">
                          <link role="link" targetNodeId="1.1068581517665" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1204298869163">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204298881148">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414630">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204298874374">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204298873852">
                      <link role="variableDeclaration" targetNodeId="1195647359542" resolveInfo="ifTrue" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1204298875901">
                      <link role="link" targetNodeId="1.1068581517665" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetFirstOperation" id="1204298878194" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1204298882461">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1204298886575">
                    <link role="conceptDeclaration" targetNodeId="1.1068580123159" resolveInfo="IfStatement" />
                  </node>
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1195647359584">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964610">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954269">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359587">
                      <link role="variableDeclaration" targetNodeId="1195647359542" resolveInfo="ifTrue" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1195647359588">
                      <link role="link" targetNodeId="1.1068581517665" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_GetCountOperation" id="1195647359589" />
                </node>
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1195647359590">
                  <property name="value" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1195647359591">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956591">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954295">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359594">
                  <link role="variableDeclaration" targetNodeId="1195647359542" resolveInfo="ifTrue" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1195647359595">
                  <link role="link" targetNodeId="1.1068581517665" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_GetCountOperation" id="1195647359596" />
            </node>
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1195647359597">
              <property name="value" value="0" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1195647359598">
          <property name="value" value="Set new ifTrue" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1195647359599">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647359600">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647359601">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966552">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957135">
                  <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647359604" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647359605">
                    <link role="link" targetNodeId="1.1068580123161" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1195647359606">
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955513">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1195647359608">
                      <link role="concept" targetNodeId="1.1082485599095" resolveInfo="BlockStatement" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359609">
                        <link role="variableDeclaration" targetNodeId="1195647359548" resolveInfo="ifFalse" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647359610">
                      <link role="link" targetNodeId="1.1082485599096" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1195647359611">
            <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195647359612">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195647359613">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963622">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962993">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956154">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952161">
                        <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1195647359618" />
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1195647359619">
                          <link role="link" targetNodeId="1.1068580123161" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1195647359620" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1195647359621">
                      <link role="link" targetNodeId="1.1068581517665" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddChildOperation" id="1195647359622">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359623">
                      <link role="variableDeclaration" targetNodeId="1195647359548" resolveInfo="ifFalse" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977953934">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1195647359625">
              <link role="variableDeclaration" targetNodeId="1195647359548" resolveInfo="ifFalse" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1195647359626">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1195647359627">
                <link role="conceptDeclaration" targetNodeId="1.1082485599095" resolveInfo="BlockStatement" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1199557092807">
    <property name="name" value="ReplaceEqualityWithEquals" />
    <link role="forConcept" targetNodeId="1.1068580123152" resolveInfo="EqualsExpression" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1199557092808">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199557092809">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199557397965">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199557397966">
            <property name="value" value="Replace equality with equals" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1199557092810">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199557092811">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199557449375">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199557449376">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1199557092812">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199557092813">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199558011897">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199558011898">
            <property name="name" value="leftExpr" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199558011899">
              <link role="concept" targetNodeId="1.1068431790191" resolveInfo="Expression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962506">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199558042135" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199558046452">
                <link role="link" targetNodeId="1.1081773367580" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199558051704">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199558051705">
            <property name="name" value="rightExpression" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199558051706">
              <link role="concept" targetNodeId="1.1068431790191" resolveInfo="Expression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962477">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199558066052" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199558070665">
                <link role="link" targetNodeId="1.1081773367579" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199558278606">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199558278607">
            <property name="name" value="equalsExpression" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199558278608">
              <link role="concept" targetNodeId="1.1068580123163" resolveInfo="InstanceMethodCall" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1199558541154">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1199558541155">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199558541156">
                  <link role="concept" targetNodeId="1.1068580123163" resolveInfo="InstanceMethodCall" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199558565347">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957013">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954580">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199558565348">
                <link role="variableDeclaration" targetNodeId="1199558278607" resolveInfo="equalsExpression" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199558578539">
                <link role="link" targetNodeId="1.1068580123164" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199558584512">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199558587248">
                <link role="variableDeclaration" targetNodeId="1199558011898" resolveInfo="leftExpr" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199558928252">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967768">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955424">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199558928260">
                <link role="variableDeclaration" targetNodeId="1199558278607" resolveInfo="equalsExpression" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199558928259">
                <link role="link" targetNodeId="1.1070568044740" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199558928254">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964302">
                <node role="operand" type="jetbrains.mps.quotation.structure.Quotation" id="1199558928255">
                  <node role="quotedNode" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204332444531">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1199558928257">
                      <link role="baseMethodDeclaration" targetNodeId="2.~Object.&lt;init&gt;()" resolveInfo="Object" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204332444532">
                      <link role="baseMethodDeclaration" targetNodeId="2.~Object.equals(java.lang.Object):boolean" resolveInfo="equals" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199559509869">
                        <property name="value" value="" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199559459136">
                  <link role="link" targetNodeId="1.1070568044740" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199558591016">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965286">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977951800">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199558591017">
                <link role="variableDeclaration" targetNodeId="1199558278607" resolveInfo="equalsExpression" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199558594302">
                <link role="link" targetNodeId="1.1068499141038" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_InsertChildFirstOperation" id="1199558615822">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199558622293">
                <link role="variableDeclaration" targetNodeId="1199558051705" resolveInfo="rightExpression" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199558077011">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954760">
            <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199558077012" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1199558083203">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199558559626">
                <link role="variableDeclaration" targetNodeId="1199558278607" resolveInfo="equalsExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1199559711021">
    <property name="name" value="ReplaceEqualsWithEquality" />
    <link role="forConcept" targetNodeId="1.1068580123163" resolveInfo="InstanceMethodCall" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1199559711022">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199559711023">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199559711024">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199559711025">
            <property name="value" value="Replace equals with equality" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1199559711026">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199559711027">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1200418005585">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200418005586">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1200418025337">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1200418027121">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1200418022801">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954239">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1200418022803" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200418022804">
                <link role="link" targetNodeId="1.1070568044740" />
              </node>
            </node>
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1200418022805" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1200418030217">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200418030218">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1200418047640">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1200418048751">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1200418040089">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1200418045404" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956698">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963516">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1200418032502" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200418036350">
                  <link role="link" targetNodeId="1.1070568044740" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1200418038963">
                <link role="property" targetNodeId="1.1083152972672" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199559767784">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1199625575771">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1199625733882">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1199625736322">
                <property name="value" value="1" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956416">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964736">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963669">
                    <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199625585196" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199625590841">
                      <link role="link" targetNodeId="1.1070568044740" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199625719642">
                    <link role="link" targetNodeId="1.1068580123134" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_GetCountOperation" id="1199625730396" />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204332445741">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968361">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965416">
                  <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199559771364" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199559777665">
                    <link role="link" targetNodeId="1.1070568044740" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199625549781">
                  <link role="property" targetNodeId="1.1083152972672" resolveInfo="name" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204332445742">
                <link role="baseMethodDeclaration" targetNodeId="2.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199625563348">
                  <property name="value" value="equals" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1199559711030">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199559711031">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199559711032">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199559711033">
            <property name="name" value="leftExpr" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199559711034">
              <link role="concept" targetNodeId="1.1068431790191" resolveInfo="Expression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963614">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199559711037" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199559934476">
                <link role="link" targetNodeId="1.1068580123164" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199559711038">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199559711039">
            <property name="name" value="rightExpression" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199559711040">
              <link role="concept" targetNodeId="1.1068431790191" resolveInfo="Expression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414606">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964896">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199559711043" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199560041540">
                  <link role="link" targetNodeId="1.1068499141038" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetFirstOperation" id="1199560056998" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199559711044">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199559711045">
            <property name="name" value="equalsExpression" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199559711046">
              <link role="concept" targetNodeId="1.1068580123152" resolveInfo="EqualsExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1199559711047">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1199559711048">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199559711049">
                  <link role="concept" targetNodeId="1.1068580123152" resolveInfo="EqualsExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199559711050">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967902">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957275">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199559711056">
                <link role="variableDeclaration" targetNodeId="1199559711045" resolveInfo="equalsExpression" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199560097984">
                <link role="link" targetNodeId="1.1081773367580" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199559711052">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199559711053">
                <link role="variableDeclaration" targetNodeId="1199559711033" resolveInfo="leftExpr" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199559711057">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966601">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963417">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199559711068">
                <link role="variableDeclaration" targetNodeId="1199559711045" resolveInfo="equalsExpression" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199560105313">
                <link role="link" targetNodeId="1.1081773367579" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199559711059">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199560109783">
                <link role="variableDeclaration" targetNodeId="1199559711039" resolveInfo="rightExpression" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199559711076">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956913">
            <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199559711080" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1199559711078">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199559711079">
                <link role="variableDeclaration" targetNodeId="1199559711045" resolveInfo="equalsExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1199561300578">
    <property name="name" value="ReplaceConditionalWithIf" />
    <link role="forConcept" targetNodeId="1.1163668896201" resolveInfo="TernaryOperatorExpression" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1199561300579">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199561300580">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199561475593">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199561475594">
            <property name="value" value="Replace conditional with if" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1199561300581">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199561300582">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199562264845">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199562264846">
            <property name="name" value="stmtNode" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199562264847">
              <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199562351002">
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199562351003">
                <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
              </node>
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966319">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199562351977" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1199562351975">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1199562351976">
                    <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199578779358">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199578779359">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199578790883">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199578796853">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1199578784082">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1199578788522" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199578782565">
              <link role="variableDeclaration" targetNodeId="1199562264846" resolveInfo="stmtNode" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199563676423">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199563683479">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1199561300583">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199561300584">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199620360138">
          <property name="value" value="variable initialization case - split or you'll loose this var from scope" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199562466831">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199562466832">
            <property name="name" value="stmtNode" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199562466833">
              <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199562466834">
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199562466835">
                <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
              </node>
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956280">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199562466839" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1199562466837">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1199562466838">
                    <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199620382222">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199620382223">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199620693763">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199620693764">
                <property name="name" value="variableDeclaration" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199620693765">
                  <link role="concept" targetNodeId="1.1068581242863" resolveInfo="LocalVariableDeclaration" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967403">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1199620737863">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199620741554">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199620766142">
                        <link role="variableDeclaration" targetNodeId="1199562466832" resolveInfo="stmtNode" />
                      </node>
                      <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199620762015">
                        <link role="concept" targetNodeId="1.1068581242864" resolveInfo="LocalVariableDeclarationStatement" />
                      </node>
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199620772476">
                    <link role="link" targetNodeId="1.1068581242865" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199620632496">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199620632497">
                <property name="name" value="eStatement" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199620632498">
                  <link role="concept" targetNodeId="1.1068580123155" resolveInfo="ExpressionStatement" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966092">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968026">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199620781479">
                      <link role="variableDeclaration" targetNodeId="1199620693764" resolveInfo="variableDeclaration" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1199620632502" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1199620632503">
                    <link role="concept" targetNodeId="1.1068580123155" resolveInfo="ExpressionStatement" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199620632504">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199620632505">
                <property name="name" value="assignment" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199620632506">
                  <link role="concept" targetNodeId="1.1068498886294" resolveInfo="AssignmentExpression" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967847">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955345">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199620632509">
                      <link role="variableDeclaration" targetNodeId="1199620632497" resolveInfo="eStatement" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199620632510">
                      <link role="link" targetNodeId="1.1068580123156" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1199620632511">
                    <link role="concept" targetNodeId="1.1068498886294" resolveInfo="AssignmentExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199620632512">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977953961">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964561">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199620632515">
                    <link role="variableDeclaration" targetNodeId="1199620632505" resolveInfo="assignment" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199620632516">
                    <link role="link" targetNodeId="1.1068498886297" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199620632517">
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967687">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199620862354">
                      <link role="variableDeclaration" targetNodeId="1199620693764" resolveInfo="variableDeclaration" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199620632520">
                      <link role="link" targetNodeId="1.1068431790190" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199620632521">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199620632522">
                <property name="name" value="local" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199620632523">
                  <link role="concept" targetNodeId="1.1068581242866" resolveInfo="LocalVariableReference" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965623">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963727">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199620632526">
                      <link role="variableDeclaration" targetNodeId="1199620632505" resolveInfo="assignment" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199620632527">
                      <link role="link" targetNodeId="1.1068498886295" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1199620632528">
                    <link role="concept" targetNodeId="1.1068581242866" resolveInfo="LocalVariableReference" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199620632544">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955221">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966262">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199620632547">
                    <link role="variableDeclaration" targetNodeId="1199620632522" resolveInfo="local" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199620632548">
                    <link role="link" targetNodeId="1.1070568296581" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199620632549">
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199620876307">
                    <link role="variableDeclaration" targetNodeId="1199620693764" resolveInfo="variableDeclaration" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199620632551">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954401">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199620959551">
                  <link role="variableDeclaration" targetNodeId="1199562466832" resolveInfo="stmtNode" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_InsertNextSiblingOperation" id="1199620632557">
                  <node role="insertedNode" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199620632558">
                    <link role="variableDeclaration" targetNodeId="1199620632497" resolveInfo="eStatement" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199621074070">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199621077817">
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199621074071">
                  <link role="variableDeclaration" targetNodeId="1199562466832" resolveInfo="stmtNode" />
                </node>
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199621126594">
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199621139765">
                    <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
                  </node>
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964990">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199621141502">
                      <link role="variableDeclaration" targetNodeId="1199562466832" resolveInfo="stmtNode" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetNextSiblingOperation" id="1199621141501" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955274">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199620386915">
              <link role="variableDeclaration" targetNodeId="1199562466832" resolveInfo="stmtNode" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1199620395515">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1199620575229">
                <link role="conceptDeclaration" targetNodeId="1.1068581242864" resolveInfo="LocalVariableDeclarationStatement" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199620352837">
          <property name="value" value="Get used nodes" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199579888214">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199579888215">
            <property name="name" value="nodeParent" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199579888216" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952155">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199579900453" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1199579905363" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199579910505">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199579910506">
            <property name="name" value="nodeIndex" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1199579910507" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414557">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957037">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199580588863">
                  <link role="variableDeclaration" targetNodeId="1199579888215" resolveInfo="nodeParent" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetChildrenOperation" id="1199580595430" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetIndexOfOperation" id="1199580600572">
                <node role="argument" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199580605980" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199563372437">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199563372438">
            <property name="name" value="nodeCopy" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199563372439">
              <link role="concept" targetNodeId="1.1163668896201" resolveInfo="TernaryOperatorExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956226">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199563387570" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1199565358258" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199563046494">
          <property name="value" value="make + node" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199579988281">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968105">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414568">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966867">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199579988282">
                  <link role="variableDeclaration" targetNodeId="1199579888215" resolveInfo="nodeParent" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetChildrenOperation" id="1199580008380" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetElementOperation" id="1199580034710">
                <node role="argument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199580042774">
                  <link role="variableDeclaration" targetNodeId="1199579910506" resolveInfo="nodeIndex" />
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1199580052169">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954636">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199580055374">
                  <link role="variableDeclaration" targetNodeId="1199563372438" resolveInfo="nodeCopy" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199580066347">
                  <link role="link" targetNodeId="1.1163668922816" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199563059768">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199563059769">
            <property name="name" value="trueStmt" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199563059770">
              <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955558">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199563077636">
                <link role="variableDeclaration" targetNodeId="1199562466832" resolveInfo="stmtNode" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1199563156925" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199579841947">
          <property name="value" value="make - node" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199580088694">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954346">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414603">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964109">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199580088703">
                  <link role="variableDeclaration" targetNodeId="1199579888215" resolveInfo="nodeParent" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetChildrenOperation" id="1199580088702" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetElementOperation" id="1199580088704">
                <node role="argument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199580088705">
                  <link role="variableDeclaration" targetNodeId="1199579910506" resolveInfo="nodeIndex" />
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1199580088696">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966836">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199580088699">
                  <link role="variableDeclaration" targetNodeId="1199563372438" resolveInfo="nodeCopy" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199580110384">
                  <link role="link" targetNodeId="1.1163668934364" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199580088706">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199580088707">
            <property name="name" value="falseStmt" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199580088708">
              <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963910">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199580088711">
                <link role="variableDeclaration" targetNodeId="1199562466832" resolveInfo="stmtNode" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1199580088710" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199580133027">
          <property name="value" value="make the best - block ever" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199564392363">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199564392364">
            <property name="name" value="falseBlockStmt" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199564392365">
              <link role="concept" targetNodeId="1.1082485599095" resolveInfo="BlockStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1199579295812">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1199579295813">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199579295814">
                  <link role="concept" targetNodeId="1.1082485599095" resolveInfo="BlockStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199579312801">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956546">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968076">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199579312802">
                <link role="variableDeclaration" targetNodeId="1199564392364" resolveInfo="falseStmt" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199579340103">
                <link role="link" targetNodeId="1.1082485599096" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1199579368344" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199579374502">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962731">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955247">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964430">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199579374503">
                  <link role="variableDeclaration" targetNodeId="1199564392364" resolveInfo="falseStmt" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199579378585">
                  <link role="link" targetNodeId="1.1082485599096" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199579384964">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_InsertChildFirstOperation" id="1199579397344">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954781">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199579403909">
                  <link role="variableDeclaration" targetNodeId="1199562466832" resolveInfo="stmtNode" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1199579408397" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199563050576">
          <property name="value" value="make if-statement and replace" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199562829356">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199562829357">
            <property name="name" value="ifNode" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199562829358">
              <link role="concept" targetNodeId="1.1068580123159" resolveInfo="IfStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1199562842504">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1199562842505">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199562842506">
                  <link role="concept" targetNodeId="1.1068580123159" resolveInfo="IfStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199562867379">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963228">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963074">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199562867380">
                <link role="variableDeclaration" targetNodeId="1199562829357" resolveInfo="ifNode" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199562878482">
                <link role="link" targetNodeId="1.1068580123160" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199562898964">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966420">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199562908375" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199562913802">
                  <link role="link" targetNodeId="1.1163668914799" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199562937091">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955067">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954831">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199562937092">
                <link role="variableDeclaration" targetNodeId="1199562829357" resolveInfo="ifNode" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199562941863">
                <link role="link" targetNodeId="1.1068580123161" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1199562953325" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199565601158">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966609">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966629">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955710">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199565601159">
                  <link role="variableDeclaration" targetNodeId="1199562829357" resolveInfo="ifNode" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199565607305">
                  <link role="link" targetNodeId="1.1068580123161" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199565615966">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_InsertChildFirstOperation" id="1199565634897">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199565641180">
                <link role="variableDeclaration" targetNodeId="1199563059769" resolveInfo="trueStmt" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199563500725">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977953879">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964042">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199563500731">
                <link role="variableDeclaration" targetNodeId="1199562829357" resolveInfo="ifNode" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199563624649">
                <link role="link" targetNodeId="1.1082485599094" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199579221758">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199579414523">
                <link role="variableDeclaration" targetNodeId="1199564392364" resolveInfo="falseStmt" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199563505048">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967997">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199563505052">
              <link role="variableDeclaration" targetNodeId="1199562466832" resolveInfo="stmtNode" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1199563505050">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199563505051">
                <link role="variableDeclaration" targetNodeId="1199562829357" resolveInfo="ifNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1199621296757">
    <property name="name" value="ExtractWhileConditionToInternalIfStatement" />
    <link role="forConcept" targetNodeId="1.1076505808687" resolveInfo="WhileStatement" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1199621296758">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199621296759">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199621374007">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199621374008">
            <property name="value" value="Extract while condition to internal if statement" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1199621296760">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199621296761">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199621403614">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199621403615">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1199621296762">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199621296763">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199621854397">
          <property name="value" value="produce break statement" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199621885186">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199621885187">
            <property name="name" value="breakStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199621885188">
              <link role="concept" targetNodeId="1.1081855346303" resolveInfo="BreakStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1199621898529">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1199621898530">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199621898531">
                  <link role="concept" targetNodeId="1.1081855346303" resolveInfo="BreakStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199621865754">
          <property name="value" value="produce if statement" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199621452193">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199621452194">
            <property name="name" value="ifStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199621452195">
              <link role="concept" targetNodeId="1.1068580123159" resolveInfo="IfStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1199621617036">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1199621617037">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199621617038">
                  <link role="concept" targetNodeId="1.1068580123159" resolveInfo="IfStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199622196845">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199622196846">
            <property name="name" value="conditionExpr" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199622196847">
              <link role="concept" targetNodeId="1.1081516740877" resolveInfo="NotExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963981">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967896">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199622222168">
                  <link role="variableDeclaration" targetNodeId="1199621452194" resolveInfo="ifStatement" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199622222167">
                  <link role="link" targetNodeId="1.1068580123160" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1199622228875">
                <link role="concept" targetNodeId="1.1081516740877" resolveInfo="NotExpression" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199622246735">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964582">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962500">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199622258534">
                <link role="variableDeclaration" targetNodeId="1199622196846" resolveInfo="conditionExpr" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199622293317">
                <link role="link" targetNodeId="1.1081516765348" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199622298758">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963906">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199622301104" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199622304811">
                  <link role="link" targetNodeId="1.1076505808688" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199621756830">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966004">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965950">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199621756831">
                <link role="variableDeclaration" targetNodeId="1199621452194" resolveInfo="ifStatement" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199621771946">
                <link role="link" targetNodeId="1.1068580123161" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1199621776670" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199621781329">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952001">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954785">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968210">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199621781330">
                  <link role="variableDeclaration" targetNodeId="1199621452194" resolveInfo="ifStatement" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199621789695">
                  <link role="link" targetNodeId="1.1068580123161" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199621799450">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_InsertChildFirstOperation" id="1199621804705">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199621922398">
                <link role="variableDeclaration" targetNodeId="1199621885187" resolveInfo="breakStatement" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199621932348">
          <property name="value" value="insert if statement and replace condition with true" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199621626072">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952009">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954423">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952133">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199621626073" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199621630858">
                  <link role="link" targetNodeId="1.1154032183016" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199621634675">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_InsertChildFirstOperation" id="1199621666683">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199621675170">
                <link role="variableDeclaration" targetNodeId="1199621452194" resolveInfo="ifStatement" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199622023887">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199622023888">
            <property name="name" value="condition" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199622023889">
              <link role="concept" targetNodeId="1.1068580123137" resolveInfo="BooleanConstant" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952078">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966942">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199622032501" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199622032500">
                  <link role="link" targetNodeId="1.1076505808688" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1199622032498">
                <link role="concept" targetNodeId="1.1068580123137" resolveInfo="BooleanConstant" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199622037205">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967465">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955533">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199622037206">
                <link role="variableDeclaration" targetNodeId="1199622023888" resolveInfo="condition" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199622043348">
                <link role="property" targetNodeId="1.1068580123138" resolveInfo="value" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1199622047584">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199622050164">
                <property name="value" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1199622460250">
    <property name="name" value="ReplaceAssertWithIf" />
    <link role="forConcept" targetNodeId="1.1160998861373" resolveInfo="AssertStatement" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1199622460251">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199622460252">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199622478492">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199622478493">
            <property name="value" value="Replace assert with if" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1199622460253">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199622460254">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199622485964">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199622485965">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1199622460255">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199622460256">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199622714410">
          <property name="value" value="produce throw statement" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199622638099">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199622638100">
            <property name="name" value="throwStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199622638101">
              <link role="concept" targetNodeId="1.1164991038168" resolveInfo="ThrowStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1199622707295">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1199622707296">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199622707297">
                  <link role="concept" targetNodeId="1.1164991038168" resolveInfo="ThrowStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199622814156">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199622814157">
            <property name="name" value="newExpr" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199622814158">
              <link role="concept" targetNodeId="1.1068581242872" resolveInfo="NewExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967074">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966473">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199622824118">
                  <link role="variableDeclaration" targetNodeId="1199622638100" resolveInfo="throwStatement" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199622824117">
                  <link role="link" targetNodeId="1.1164991057263" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1199622824115">
                <link role="concept" targetNodeId="1.1068581242872" resolveInfo="NewExpression" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199622836183">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963729">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963153">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199622836184">
                <link role="variableDeclaration" targetNodeId="1199622814157" resolveInfo="newExpr" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199623162923">
                <link role="link" targetNodeId="1.1135374435992" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199623167943">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964405">
                <node role="operand" type="jetbrains.mps.quotation.structure.Quotation" id="1199623212546">
                  <node role="quotedNode" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1199623268300">
                    <link role="baseMethodDeclaration" targetNodeId="2.~IllegalArgumentException.&lt;init&gt;()" resolveInfo="IllegalArgumentException" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199623295770">
                  <link role="link" targetNodeId="1.1135374435992" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199622726802">
          <property name="value" value="produce if statement" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199623327865">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199623327866">
            <property name="name" value="ifStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199623327867">
              <link role="concept" targetNodeId="1.1068580123159" resolveInfo="IfStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1199623349727">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1199623349728">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199623349729">
                  <link role="concept" targetNodeId="1.1068580123159" resolveInfo="IfStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199623403295">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199623403296">
            <property name="name" value="notExpr" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199623403297">
              <link role="concept" targetNodeId="1.1081516740877" resolveInfo="NotExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957218">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956025">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199623413790">
                  <link role="variableDeclaration" targetNodeId="1199623327866" resolveInfo="ifStatement" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199623413789">
                  <link role="link" targetNodeId="1.1068580123160" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1199623426498">
                <link role="concept" targetNodeId="1.1081516740877" resolveInfo="NotExpression" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199623441000">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955223">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962496">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199623441001">
                <link role="variableDeclaration" targetNodeId="1199623403296" resolveInfo="notExpr" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199623446911">
                <link role="link" targetNodeId="1.1081516765348" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199623450149">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957112">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199623450919" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199623450918">
                  <link role="link" targetNodeId="1.1160998896846" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199623455811">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965186">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977951954">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199623455812">
                <link role="variableDeclaration" targetNodeId="1199623327866" resolveInfo="ifStatement" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199623461144">
                <link role="link" targetNodeId="1.1068580123161" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1199623464695" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199623468619">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955373">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968289">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966782">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199623468620">
                  <link role="variableDeclaration" targetNodeId="1199623327866" resolveInfo="ifStatement" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199623472483">
                  <link role="link" targetNodeId="1.1068580123161" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199623479784">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_InsertChildFirstOperation" id="1199623486585">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199623492322">
                <link role="variableDeclaration" targetNodeId="1199622638100" resolveInfo="throwStatement" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199622736023">
          <property name="value" value="replace assert with if" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199623499980">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964196">
            <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199623499981" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1199623505860">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199623509644">
                <link role="variableDeclaration" targetNodeId="1199623327866" resolveInfo="ifStatement" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1199623693658">
    <property name="name" value="ReplaceForLoopWithWhileLoop" />
    <link role="forConcept" targetNodeId="1.1144231330558" resolveInfo="ForStatement" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1199623693659">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199623693660">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199623718853">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199623718854">
            <property name="value" value="Replace for with while" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1199623693661">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199623693662">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199623727309">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199623727310">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1199623693663">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199623693664">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199624034974">
          <property name="value" value="replace for loop with while" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199623738029">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199623738030">
            <property name="name" value="whileStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199623738031">
              <link role="concept" targetNodeId="1.1076505808687" resolveInfo="WhileStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1199623745237">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1199623745238">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199623745239">
                  <link role="concept" targetNodeId="1.1076505808687" resolveInfo="WhileStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199624004686">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954119">
            <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199624004687" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1199624008862">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199624024331">
                <link role="variableDeclaration" targetNodeId="1199623738030" resolveInfo="whileStatement" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199624632480">
          <property name="value" value="adjust while body" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199624632481">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955562">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964868">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199624632489">
                <link role="variableDeclaration" targetNodeId="1199623738030" resolveInfo="whileStatement" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199624632488">
                <link role="link" targetNodeId="1.1154032183016" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199624632483">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954369">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199624632486" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199624632485">
                  <link role="link" targetNodeId="1.1154032183016" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199623913845">
          <property name="value" value="adjust precondition" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199624303361">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199624303362">
            <property name="name" value="preStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199624303363">
              <link role="concept" targetNodeId="1.1068581242864" resolveInfo="LocalVariableDeclarationStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968032">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199624311292">
                <link role="variableDeclaration" targetNodeId="1199623738030" resolveInfo="whileStatement" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_InsertNewPrevSiblingOperation" id="1199624320280">
                <link role="concept" targetNodeId="1.1068581242864" resolveInfo="LocalVariableDeclarationStatement" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199624494879">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963460">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957246">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199624494880">
                <link role="variableDeclaration" targetNodeId="1199624303362" resolveInfo="preStatement" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199624500305">
                <link role="link" targetNodeId="1.1068581242865" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199624511407">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966554">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199624513394" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199624523257">
                  <link role="link" targetNodeId="1.1144230900587" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199623916222">
          <property name="value" value="adjust iteration" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199624712378">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199624712379">
            <property name="name" value="iterStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199624712380">
              <link role="concept" targetNodeId="1.1068580123155" resolveInfo="ExpressionStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1199624732726">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1199624732727">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199624732728">
                  <link role="concept" targetNodeId="1.1068580123155" resolveInfo="ExpressionStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199624737168">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965128">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962760">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199624737169">
                <link role="variableDeclaration" targetNodeId="1199624712379" resolveInfo="iterStatement" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199624742938">
                <link role="link" targetNodeId="1.1068580123156" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199624746724">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956650">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199624750884" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199624750883">
                  <link role="link" targetNodeId="1.1144231408325" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199624616912">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955093">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963121">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957035">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199624616913">
                  <link role="variableDeclaration" targetNodeId="1199623738030" resolveInfo="whileStatement" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199624622073">
                  <link role="link" targetNodeId="1.1154032183016" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199624657681">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddChildOperation" id="1199624885029">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199624893875">
                <link role="variableDeclaration" targetNodeId="1199624712379" resolveInfo="iterStatement" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199623924879">
          <property name="value" value="adjust exit condition" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199624601011">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963829">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963441">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199624601019">
                <link role="variableDeclaration" targetNodeId="1199623738030" resolveInfo="whileStatement" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199624601018">
                <link role="link" targetNodeId="1.1076505808688" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199624601013">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966707">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199624601016" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199624601015">
                  <link role="link" targetNodeId="1.1144231399730" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1199625900037">
    <property name="name" value="FilpEqualsIntention" />
    <link role="forConcept" targetNodeId="1.1068580123163" resolveInfo="InstanceMethodCall" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1199625900038">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199625900039">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199625999411">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199625999412">
            <property name="value" value="Flip equals()" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1199625900040">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199625900041">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1201097576853">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201097576854">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1201097596944">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1201097602291">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1201097588674">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1201097593881" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955818">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201097581091" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201097586830">
                <link role="link" targetNodeId="1.1070568044740" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1201097608464">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201097608465">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1201097624387">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1201097627186">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1201097620539">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1201097622277" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977951909">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965463">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201097611421" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201097614316">
                  <link role="link" targetNodeId="1.1070568044740" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1201097618038">
                <link role="property" targetNodeId="1.1083152972672" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199625983470">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1199625983471">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1199625983472">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1199625983473">
                <property name="value" value="1" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955844">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964249">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954297">
                    <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199625983480" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199625983479">
                      <link role="link" targetNodeId="1.1070568044740" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199625983477">
                    <link role="link" targetNodeId="1.1068580123134" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_GetCountOperation" id="1199625983475" />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204332422021">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967853">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977953908">
                  <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199625983486" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199625983485">
                    <link role="link" targetNodeId="1.1070568044740" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199625989581">
                  <link role="property" targetNodeId="1.1083152972672" resolveInfo="name" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204332422022">
                <link role="baseMethodDeclaration" targetNodeId="2.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199625983487">
                  <property name="value" value="equals" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1199625900042">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199625900043">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199626025413">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199626025414">
            <property name="name" value="parameter" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199626025415">
              <link role="concept" targetNodeId="1.1068431790191" resolveInfo="Expression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414633">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963358">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199626041917" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccessAsList" id="1199626111847">
                  <link role="link" targetNodeId="1.1068499141038" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetFirstOperation" id="1199626122709" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199626154821">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966234">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199626154822">
              <link role="variableDeclaration" targetNodeId="1199626025414" resolveInfo="parameter" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1199626164248">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955406">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199626167656" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199626181051">
                  <link role="link" targetNodeId="1.1068580123164" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199626185631">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964661">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965702">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199626185632" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199626189792">
                <link role="link" targetNodeId="1.1068580123164" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199626202781">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199626210158">
                <link role="variableDeclaration" targetNodeId="1199626025414" resolveInfo="parameter" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1199627182107">
    <property name="name" value="ReplaceForEachLoopWithIndexedLoop" />
    <link role="forConcept" targetNodeId="1.1144226303539" resolveInfo="ForeachStatement" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1199627182108">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199627182109">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199628264163">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199628264164">
            <property name="value" value="Replace for each loop with indexed loop" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1199627182110">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199627182111">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201099474097">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201099474098">
            <property name="name" value="array" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1201099474099" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962502">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964791">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965047">
                  <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201099483167" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201099483168">
                    <link role="link" targetNodeId="1.1144226360166" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1201099483169" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1201099483170">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1201099483171">
                  <link role="conceptDeclaration" targetNodeId="1.1070534760951" resolveInfo="ArrayType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1201093873633">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201093873635">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1201094242018">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1201094243973">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1201098956833">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201099513885">
              <link role="variableDeclaration" targetNodeId="1201099474098" resolveInfo="array" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1201094246147">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1201094247383">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1199627182112">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199627182113">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201097898216">
          <property name="value" value="TODO: expression as iterable - make a variable" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201101813180">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201101813181">
            <property name="name" value="iterable" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201101813182">
              <link role="concept" targetNodeId="1.1068431790191" resolveInfo="Expression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966834">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201101818278" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201101822344">
                <link role="link" targetNodeId="1.1144226360166" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201101347666" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201094296853">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201094296854">
            <property name="name" value="forStatement" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201094296855">
              <link role="concept" targetNodeId="1.1144231330558" resolveInfo="ForStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1201094323186">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1201094323187">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201094323188">
                  <link role="concept" targetNodeId="1.1144231330558" resolveInfo="ForStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201094328034" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201096446195">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956540">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963048">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201096446196">
                <link role="variableDeclaration" targetNodeId="1201094296854" resolveInfo="forStatement" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1201096449184">
                <link role="property" targetNodeId="1.1199465379613" resolveInfo="label" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1201096455157">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955430">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201096458112" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1201096460976">
                  <link role="property" targetNodeId="1.1199465379613" resolveInfo="label" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201096441943" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201094485329">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201094485330">
            <property name="name" value="forVariableDeclaration" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201094485331">
              <link role="concept" targetNodeId="1.1068581242863" resolveInfo="LocalVariableDeclaration" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952187">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965105">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201094501163">
                  <link role="variableDeclaration" targetNodeId="1201094296854" resolveInfo="forStatement" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201094501162">
                  <link role="link" targetNodeId="1.1144230900587" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201094518777" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201094544482">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956676">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963068">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201094544483">
                <link role="variableDeclaration" targetNodeId="1201094485330" resolveInfo="forVariableDeclaration" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1201094548409">
                <link role="property" targetNodeId="1.1083152972671" resolveInfo="name" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1201094558335">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1201094571853">
                <property name="value" value="i" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201094578136">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954092">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968154">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201094578137">
                <link role="variableDeclaration" targetNodeId="1201094485330" resolveInfo="forVariableDeclaration" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201094585408">
                <link role="link" targetNodeId="1.1068431790188" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1201094589896">
              <node role="parameter" type="jetbrains.mps.quotation.structure.Quotation" id="1201094610820">
                <node role="quotedNode" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1201094612838" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201094621621">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964275">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963249">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201094621622">
                <link role="variableDeclaration" targetNodeId="1201094485330" resolveInfo="forVariableDeclaration" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201094626048">
                <link role="link" targetNodeId="1.1068431790190" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201094728252">
              <link role="concept" targetNodeId="1.1068580320020" resolveInfo="IntegerConstant" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201094761082">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964770">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957193">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201094770842">
                <link role="concept" targetNodeId="1.1068580320020" resolveInfo="IntegerConstant" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954066">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201094761083">
                    <link role="variableDeclaration" targetNodeId="1201094485330" resolveInfo="forVariableDeclaration" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201094764072">
                    <link role="link" targetNodeId="1.1068431790190" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1201094822238">
                <link role="property" targetNodeId="1.1068580320021" resolveInfo="value" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1201094824663">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1201094827228">
                <property name="value" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201094843293" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201094881857">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201094881858">
            <property name="name" value="forCondition" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201094881859">
              <link role="concept" targetNodeId="1.1081506773034" resolveInfo="LessThanExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962557">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964241">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201094890754">
                  <link role="variableDeclaration" targetNodeId="1201094296854" resolveInfo="forStatement" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201094890753">
                  <link role="link" targetNodeId="1.1144231399730" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201094894977">
                <link role="concept" targetNodeId="1.1081506773034" resolveInfo="LessThanExpression" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201095104296">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962891">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967250">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201095104297">
                <link role="variableDeclaration" targetNodeId="1201094881858" resolveInfo="forCondition" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095111442">
                <link role="link" targetNodeId="1.1081773367580" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201095114540">
              <link role="concept" targetNodeId="1.1068581242866" resolveInfo="LocalVariableReference" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201095128214">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955172">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966343">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201095137988">
                <link role="concept" targetNodeId="1.1068581242866" resolveInfo="LocalVariableReference" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952210">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201095128215">
                    <link role="variableDeclaration" targetNodeId="1201094881858" resolveInfo="forCondition" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095130672">
                    <link role="link" targetNodeId="1.1081773367580" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095147743">
                <link role="link" targetNodeId="1.1070568296581" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1201095151841">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201095153890">
                <link role="variableDeclaration" targetNodeId="1201094485330" resolveInfo="forVariableDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201095157689">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963466">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966469">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201095157690">
                <link role="variableDeclaration" targetNodeId="1201094881858" resolveInfo="forCondition" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095160928">
                <link role="link" targetNodeId="1.1081773367579" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201095164167">
              <link role="concept" targetNodeId="1.1173176849460" resolveInfo="ArrayLengthExpression" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201095174278">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967973">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977951727">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201095184162">
                <link role="concept" targetNodeId="1.1173176849460" resolveInfo="ArrayLengthExpression" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966374">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201095174279">
                    <link role="variableDeclaration" targetNodeId="1201094881858" resolveInfo="forCondition" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095177752">
                    <link role="link" targetNodeId="1.1081773367579" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201098441624">
                <link role="link" targetNodeId="1.1173176867072" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1201095320300">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954884">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201101828876">
                  <link role="variableDeclaration" targetNodeId="1201101813181" resolveInfo="iterable" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1201097805590" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201095590833" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201095604382">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201095604383">
            <property name="name" value="iterationExpr" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201095604384">
              <link role="concept" targetNodeId="1.1068498886294" resolveInfo="AssignmentExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967384">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963202">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201095625451">
                  <link role="variableDeclaration" targetNodeId="1201094296854" resolveInfo="forStatement" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095625450">
                  <link role="link" targetNodeId="1.1144231408325" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201095629346">
                <link role="concept" targetNodeId="1.1068498886294" resolveInfo="AssignmentExpression" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201095651006">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966893">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966447">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201095888017">
                <link role="variableDeclaration" targetNodeId="1201095604383" resolveInfo="iterationExpr" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095681502">
                <link role="link" targetNodeId="1.1068498886295" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201095760985">
              <link role="concept" targetNodeId="1.1068581242866" resolveInfo="LocalVariableReference" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201095783972">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966861">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964768">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201095789121">
                <link role="concept" targetNodeId="1.1068581242866" resolveInfo="LocalVariableReference" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954762">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201095910240">
                    <link role="variableDeclaration" targetNodeId="1201095604383" resolveInfo="iterationExpr" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095784632">
                    <link role="link" targetNodeId="1.1068498886295" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201098706404">
                <link role="link" targetNodeId="1.1070568296581" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1201095805583">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201095807601">
                <link role="variableDeclaration" targetNodeId="1201094485330" resolveInfo="forVariableDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201095686285">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955379">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968156">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201095914397">
                <link role="variableDeclaration" targetNodeId="1201095604383" resolveInfo="iterationExpr" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095692636">
                <link role="link" targetNodeId="1.1068498886297" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201095831876">
              <link role="concept" targetNodeId="1.1068581242875" resolveInfo="PlusExpression" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201095859191">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965617">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955426">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201095863215">
                <link role="concept" targetNodeId="1.1068581242875" resolveInfo="PlusExpression" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967849">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201095918164">
                    <link role="variableDeclaration" targetNodeId="1201095604383" resolveInfo="iterationExpr" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095859460">
                    <link role="link" targetNodeId="1.1068498886297" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095933102">
                <link role="link" targetNodeId="1.1081773367580" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1201095965061">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956437">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965515">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201095968953">
                    <link role="variableDeclaration" targetNodeId="1201095604383" resolveInfo="iterationExpr" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095972004">
                    <link role="link" targetNodeId="1.1068498886295" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1201098731814" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201095978932">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966968">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955560">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201095985001">
                <link role="concept" targetNodeId="1.1068581242875" resolveInfo="PlusExpression" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954892">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201095978933">
                    <link role="variableDeclaration" targetNodeId="1201095604383" resolveInfo="iterationExpr" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095984062">
                    <link role="link" targetNodeId="1.1068498886297" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201095991506">
                <link role="link" targetNodeId="1.1081773367579" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201095997354">
              <link role="concept" targetNodeId="1.1068580320020" resolveInfo="IntegerConstant" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201096006511">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955627">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955400">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201096015082">
                <link role="concept" targetNodeId="1.1068580320020" resolveInfo="IntegerConstant" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966086">
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201096006516">
                    <link role="concept" targetNodeId="1.1068581242875" resolveInfo="PlusExpression" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964448">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201096006519">
                        <link role="variableDeclaration" targetNodeId="1201095604383" resolveInfo="iterationExpr" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201096006518">
                        <link role="link" targetNodeId="1.1068498886297" />
                      </node>
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201096006515">
                    <link role="link" targetNodeId="1.1081773367579" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1201096023791">
                <link role="property" targetNodeId="1.1068580320021" resolveInfo="value" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1201096027560">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1201096029297">
                <property name="value" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201095641613" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201096368900">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201096368901">
            <property name="name" value="fake_node" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201096368902">
              <link role="concept" targetNodeId="1.1144226303539" resolveInfo="ForeachStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201096384076" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201096278948">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414564">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414485">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956047">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955328">
                  <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201096278949" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201096284484">
                    <link role="link" targetNodeId="1.1154032183016" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1201098163356" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1201098169985">
                <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1201098169986">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1201098169987">
                    <property name="name" value="it" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201098169988">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201098195623">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954657">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1201098195624">
                          <link role="closureParameter" targetNodeId="1201098169987" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1201098197894">
                          <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1201098200974">
                            <link role="conceptDeclaration" targetNodeId="1.1068581242866" resolveInfo="LocalVariableReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachOperation" id="1201096314743">
              <node role="forEachClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachBlock" id="1201096314744">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1201096314745">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201096314746">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1201096329341">
                    <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1201096339662">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964040">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201096395374">
                          <link role="variableDeclaration" targetNodeId="1201096368901" resolveInfo="fake_node" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201097717913">
                          <link role="link" targetNodeId="1.1144230900587" />
                        </node>
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954121">
                        <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201098244154">
                          <link role="concept" targetNodeId="1.1068581242866" resolveInfo="LocalVariableReference" />
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1201098227356">
                            <link role="closureParameter" targetNodeId="1201096314745" resolveInfo="it" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201096338129">
                          <link role="link" targetNodeId="1.1070568296581" />
                        </node>
                      </node>
                    </node>
                    <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201096329343">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201096651835">
                        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201096651836">
                          <property name="name" value="arrayElement" />
                          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201096651837">
                            <link role="concept" targetNodeId="1.1173175405605" resolveInfo="ArrayAccessExpression" />
                          </node>
                          <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1201096665573">
                            <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1201096665574">
                              <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201096665575">
                                <link role="concept" targetNodeId="1.1173175405605" resolveInfo="ArrayAccessExpression" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201096682911">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956885">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966266">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201096682912">
                              <link role="variableDeclaration" targetNodeId="1201096651836" resolveInfo="arrayElement" />
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201096729016">
                              <link role="link" targetNodeId="1.1173175590490" />
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1201096799438">
                            <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201101851315">
                              <link role="variableDeclaration" targetNodeId="1201101813181" resolveInfo="iterable" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201096771534">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965726">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954754">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201096771535">
                              <link role="variableDeclaration" targetNodeId="1201096651836" resolveInfo="arrayElement" />
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201096777367">
                              <link role="link" targetNodeId="1.1173175577737" />
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201096781449">
                            <link role="concept" targetNodeId="1.1068581242866" resolveInfo="LocalVariableReference" />
                          </node>
                        </node>
                      </node>
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201096852243">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967015">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955791">
                            <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201096857955">
                              <link role="concept" targetNodeId="1.1068581242866" resolveInfo="LocalVariableReference" />
                              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955219">
                                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201096852244">
                                  <link role="variableDeclaration" targetNodeId="1201096651836" resolveInfo="arrayElement" />
                                </node>
                                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201096854811">
                                  <link role="link" targetNodeId="1.1173175577737" />
                                </node>
                              </node>
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201096867288">
                              <link role="link" targetNodeId="1.1070568296581" />
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1201096869058">
                            <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201096871279">
                              <link role="variableDeclaration" targetNodeId="1201094485330" resolveInfo="forVariableDeclaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201096476852">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964898">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1201096476853">
                            <link role="closureParameter" targetNodeId="1201096314745" resolveInfo="it" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1201096676111">
                            <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201096678426">
                              <link role="variableDeclaration" targetNodeId="1201096651836" resolveInfo="arrayElement" />
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
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201096705075">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964639">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956359">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201096705076">
                <link role="variableDeclaration" targetNodeId="1201094296854" resolveInfo="forStatement" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201096708564">
                <link role="link" targetNodeId="1.1154032183016" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1201096713662">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966550">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201096717523" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201096719871">
                  <link role="link" targetNodeId="1.1154032183016" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201094329536" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201094363742">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967277">
            <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201094363743" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1201094366965">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201094370280">
                <link role="variableDeclaration" targetNodeId="1201094296854" resolveInfo="forStatement" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1199627245932">
    <property name="name" value="ExpandBoolean" />
    <link role="forConcept" targetNodeId="1.1068498886296" resolveInfo="VariableReference" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1199627245933">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199627245934">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199628253004">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199628253005">
            <property name="value" value="Expand boolean" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1199627245935">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199627245936">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1201105096660">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201105096662">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1201105127888">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1201105129125">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1201105125177">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967332">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966755">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954427">
                  <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201105125622" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201106304673">
                    <link role="link" targetNodeId="1.1068581517664" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201106328112">
                  <link role="link" targetNodeId="1.1068431790188" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1201105125618">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1201105125619">
                  <link role="conceptDeclaration" targetNodeId="1.1070534644030" resolveInfo="BooleanType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1201105136693">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201105136694">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1201105173082">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1201105177131">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1201105159141">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1201105170972" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957214">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201105140369" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1201105142998">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1201105145796">
                  <link role="concept" targetNodeId="1.1068580123136" resolveInfo="StatementList" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1201105131799">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1201105133051">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1199627245937">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199627245938">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201105183040">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201105183041">
            <property name="name" value="statementNode" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201105183042">
              <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201105210770">
              <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954448">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201105196669" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1201105199251">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1201105200408">
                    <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201105483720" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201105273759">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201105273760">
            <property name="name" value="ifNode" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201105273761">
              <link role="concept" targetNodeId="1.1068580123159" resolveInfo="IfStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967066">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201105286232">
                <link role="variableDeclaration" targetNodeId="1201105183041" resolveInfo="statementNode" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_InsertNewPrevSiblingOperation" id="1201105302705">
                <link role="concept" targetNodeId="1.1068580123159" resolveInfo="IfStatement" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201105478966">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201105478967">
            <property name="name" value="ifTrue" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201105478968">
              <link role="concept" targetNodeId="1.1068580123136" resolveInfo="StatementList" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967610">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968466">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201105478973">
                  <link role="variableDeclaration" targetNodeId="1201105273760" resolveInfo="ifNode" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201105478972">
                  <link role="link" targetNodeId="1.1068580123161" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201105478970" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201105478974">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201105478975">
            <property name="name" value="ifFalse" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201105478976">
              <link role="concept" targetNodeId="1.1068580123136" resolveInfo="StatementList" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967825">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962897">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963222">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968413">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201105478983">
                      <link role="variableDeclaration" targetNodeId="1201105273760" resolveInfo="ifNode" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201105478982">
                      <link role="link" targetNodeId="1.1082485599094" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201105478980">
                    <link role="concept" targetNodeId="1.1082485599095" resolveInfo="BlockStatement" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201105478978">
                  <link role="link" targetNodeId="1.1082485599096" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201105690739" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201105341993" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201105313535">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966065">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955322">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201105313536">
                <link role="variableDeclaration" targetNodeId="1201105273760" resolveInfo="ifNode" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201105319993">
                <link role="link" targetNodeId="1.1068580123160" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1201105324341">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952191">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201105328343" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1201105332175" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201105344636" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201106188747">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968080">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966761">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201106473372">
                <link role="variableDeclaration" targetNodeId="1201105478967" resolveInfo="ifTrue" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1201106415966">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_InsertChildFirstOperation" id="1201106421643">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977953887">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201106425586">
                  <link role="variableDeclaration" targetNodeId="1201105183041" resolveInfo="statementNode" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1201106425585" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201105672620">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955708">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966496">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201106477186">
                <link role="variableDeclaration" targetNodeId="1201105478975" resolveInfo="ifFalse" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1201106482265">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_InsertChildFirstOperation" id="1201106489456">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966810">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201106492521">
                  <link role="variableDeclaration" targetNodeId="1201105183041" resolveInfo="statementNode" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1201106496978" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201106505300" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201106619380">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201106619381">
            <property name="name" value="fake_node" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201106619382">
              <link role="concept" targetNodeId="1.1068498886296" resolveInfo="VariableReference" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201106624884" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201107012312">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201107012313">
            <property name="name" value="refs" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1201107012314">
              <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201107021957" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201107104106">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1201107104107">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414638">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956418">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414624">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963752">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201107046533">
                      <link role="variableDeclaration" targetNodeId="1201105478967" resolveInfo="ifTrue" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1201107049503">
                      <link role="link" targetNodeId="1.1068581517665" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetFirstOperation" id="1201107033935" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1201107033933" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1201107033914">
                <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1201107033915">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1201107033916">
                    <property name="name" value="it" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201107033917">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201107033918">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1201107033919">
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1201107033920">
                          <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957327">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201107033923">
                              <link role="variableDeclaration" targetNodeId="1201106619381" resolveInfo="fake_node" />
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201107033922">
                              <link role="link" targetNodeId="1.1068581517664" />
                            </node>
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965412">
                            <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201107033926">
                              <link role="concept" targetNodeId="1.1068498886296" resolveInfo="VariableReference" />
                              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1201107033927">
                                <link role="closureParameter" targetNodeId="1201107033916" resolveInfo="it" />
                              </node>
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201107033925">
                              <link role="link" targetNodeId="1.1068581517664" />
                            </node>
                          </node>
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955061">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1201107033931">
                            <link role="closureParameter" targetNodeId="1201107033916" resolveInfo="it" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1201107033929">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1201107033930">
                              <link role="conceptDeclaration" targetNodeId="1.1068498886296" resolveInfo="VariableReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201107104108">
              <link role="variableDeclaration" targetNodeId="1201107012313" resolveInfo="refs" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201106514489">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414583">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201107080988">
              <link role="variableDeclaration" targetNodeId="1201107012313" resolveInfo="refs" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachOperation" id="1201106871019">
              <node role="forEachClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachBlock" id="1201106871020">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1201106871021">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201106871022">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201106959181">
                    <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201106959182">
                      <property name="name" value="booleanConstant" />
                      <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201106959183">
                        <link role="concept" targetNodeId="1.1068580123137" resolveInfo="BooleanConstant" />
                      </node>
                      <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962987">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1201106979969">
                          <link role="closureParameter" targetNodeId="1201106871021" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithNewOperation" id="1201106979968">
                          <link role="concept" targetNodeId="1.1068580123137" resolveInfo="BooleanConstant" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201106989580">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968227">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963510">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201106989581">
                          <link role="variableDeclaration" targetNodeId="1201106959182" resolveInfo="booleanConstant" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1201106992257">
                          <link role="property" targetNodeId="1.1068580123138" resolveInfo="value" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1201106994230">
                        <node role="value" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1201106996982">
                          <property name="value" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201107108906">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1201107108907">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414621">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957169">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414478">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966887">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201107123723">
                      <link role="variableDeclaration" targetNodeId="1201105478975" resolveInfo="ifFalse" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1201107093084">
                      <link role="link" targetNodeId="1.1068581517665" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetFirstOperation" id="1201107093082" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1201107093080" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1201107093061">
                <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1201107093062">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1201107093063">
                    <property name="name" value="it" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201107093064">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201107093065">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1201107093066">
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1201107093067">
                          <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963543">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201107093070">
                              <link role="variableDeclaration" targetNodeId="1201106619381" resolveInfo="fake_node" />
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201107093069">
                              <link role="link" targetNodeId="1.1068581517664" />
                            </node>
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963200">
                            <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201107093073">
                              <link role="concept" targetNodeId="1.1068498886296" resolveInfo="VariableReference" />
                              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1201107093074">
                                <link role="closureParameter" targetNodeId="1201107093063" resolveInfo="it" />
                              </node>
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201107093072">
                              <link role="link" targetNodeId="1.1068581517664" />
                            </node>
                          </node>
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964369">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1201107093078">
                            <link role="closureParameter" targetNodeId="1201107093063" resolveInfo="it" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1201107093076">
                            <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1201107093077">
                              <link role="conceptDeclaration" targetNodeId="1.1068498886296" resolveInfo="VariableReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201107114065">
              <link role="variableDeclaration" targetNodeId="1201107012313" resolveInfo="refs" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201107093086">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414573">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201107114472">
              <link role="variableDeclaration" targetNodeId="1201107012313" resolveInfo="refs" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachOperation" id="1201107093088">
              <node role="forEachClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachBlock" id="1201107093089">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1201107093090">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201107093091">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201107093092">
                    <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201107093093">
                      <property name="name" value="booleanConstant" />
                      <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201107093094">
                        <link role="concept" targetNodeId="1.1068580123137" resolveInfo="BooleanConstant" />
                      </node>
                      <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963545">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1201107093097">
                          <link role="closureParameter" targetNodeId="1201107093090" resolveInfo="it" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithNewOperation" id="1201107093096">
                          <link role="concept" targetNodeId="1.1068580123137" resolveInfo="BooleanConstant" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201107093098">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964846">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962579">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201107093104">
                          <link role="variableDeclaration" targetNodeId="1201107093093" resolveInfo="booleanConstant" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1201107093103">
                          <link role="property" targetNodeId="1.1068580123138" resolveInfo="value" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1201107093100">
                        <node role="value" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1201107133271">
                          <property name="value" value="false" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201107598382" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201107598664">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963957">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201107598667">
              <link role="variableDeclaration" targetNodeId="1201105183041" resolveInfo="statementNode" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_DeleteOperation" id="1201107598666" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1199627248517">
    <property name="name" value="AddRuntimeExceptionToMethodSignature" />
    <link role="forConcept" targetNodeId="1.1164991038168" resolveInfo="ThrowStatement" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1199627248518">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199627248519">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199628237455">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199628237456">
            <property name="value" value="Add runtime exception to method signature" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1199633266083">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199633266084">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199633266085">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199633266086">
            <property name="name" value="methodDecl" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199633266087">
              <link role="concept" targetNodeId="1.1068580123132" resolveInfo="BaseMethodDeclaration" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963364">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199633266091" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1199633266089">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1199633266090">
                  <link role="concept" targetNodeId="1.1068580123132" resolveInfo="BaseMethodDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199633266092">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956597">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966376">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199633266104">
                <link role="variableDeclaration" targetNodeId="1199633266086" resolveInfo="methodDecl" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199633266103">
                <link role="link" targetNodeId="1.1164879685961" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddChildOperation" id="1199633266094">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199633266095">
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199633266096">
                  <link role="concept" targetNodeId="1.1107535904670" resolveInfo="ClassifierType" />
                </node>
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954661">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968438">
                    <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199633266101" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199633266100">
                      <link role="link" targetNodeId="1.1164991057263" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1199633266098" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1199633278578">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199633278579">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199633278580">
          <property name="value" value="check that this is done in a method" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199633278581">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199633278582">
            <property name="name" value="methodDecl" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199633278583">
              <link role="concept" targetNodeId="1.1068580123132" resolveInfo="BaseMethodDeclaration" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956830">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199633278587" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1199633278585">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1199633278586">
                  <link role="concept" targetNodeId="1.1068580123132" resolveInfo="BaseMethodDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199633278588">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1199633278589">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1199633278590" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199633278591">
              <link role="variableDeclaration" targetNodeId="1199633278582" resolveInfo="methodDecl" />
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199633278592">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199633278593">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199633278594">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199633278595">
          <property name="value" value="get exception type" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199633278596">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199633278597">
            <property name="name" value="exceptionType" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199633278598">
              <link role="concept" targetNodeId="1.1107535904670" resolveInfo="ClassifierType" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1199633278599">
              <node role="expression" type="jetbrains.mps.bootstrap.helgins.structure.CoerceExpression" id="1199633278600">
                <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.ConceptReference" id="1199633278601">
                  <property name="name" value="classifierType" />
                  <link role="concept" targetNodeId="1.1107535904670" resolveInfo="ClassifierType" />
                </node>
                <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954576">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966735">
                    <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199633278606" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199633278605">
                      <link role="link" targetNodeId="1.1164991057263" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1199633278603" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199633278607">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199633278608">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199633278609">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199633278610">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1199633278611">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1199633278612" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199633278613">
              <link role="variableDeclaration" targetNodeId="1199633278597" resolveInfo="exceptionType" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199633278614">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199633278615">
            <property name="name" value="exceptionJavaType" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199633278616">
              <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199633278617">
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199633278618">
                <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
              </node>
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964373">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199633278621">
                  <link role="variableDeclaration" targetNodeId="1199633278597" resolveInfo="exceptionType" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199633278620">
                  <link role="link" targetNodeId="1.1107535924139" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199633278622">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199633278623">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199633278624">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199633278625">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1199633278626">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1199633278627" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199633278628">
              <link role="variableDeclaration" targetNodeId="1199633278615" resolveInfo="exceptionJavaType" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199633278629">
          <property name="value" value="check it's instance of RuntimeException" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199633278630">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199633278631">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199633278632">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199633278633">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1199633278634">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963462">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199633278643">
                <link role="variableDeclaration" targetNodeId="1199633278615" resolveInfo="exceptionJavaType" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1199633278636">
                <link role="conceptMethodDeclaration" targetNodeId="3.1199631877012" resolveInfo="isDescendant" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199633278637">
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199633278638">
                    <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
                  </node>
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954194">
                    <node role="operand" type="jetbrains.mps.quotation.structure.Quotation" id="1199633278641">
                      <node role="quotedNode" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199633319764">
                        <link role="classifier" targetNodeId="2.~RuntimeException" resolveInfo="RuntimeException" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199633278640">
                      <link role="link" targetNodeId="1.1107535924139" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199633278644">
          <property name="value" value="check if it's not thrown by a method yet" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199633278645">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199633278646">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199633278647">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199633278648">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414467">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414616">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966684">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199633278653">
                  <link role="variableDeclaration" targetNodeId="1199633278582" resolveInfo="methodDecl" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccessAsList" id="1199633278652">
                  <link role="link" targetNodeId="1.1164879685961" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1199633278654">
                <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1199633278655">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1199633278656">
                    <property name="name" value="it" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199633278657">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199633278658">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1199633278659">
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967386">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199633278662">
                            <link role="variableDeclaration" targetNodeId="1199633278597" resolveInfo="exceptionType" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199633278661">
                            <link role="link" targetNodeId="1.1107535924139" />
                          </node>
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952112">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199633278665">
                            <link role="closureParameter" targetNodeId="1199633278656" resolveInfo="it" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199633278664">
                            <link role="link" targetNodeId="1.1107535924139" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.IsNotEmptyOperation" id="1199633278666" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199633278667">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199633278668">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1199627250071">
    <property name="name" value="AddExceptionToMethodSignature" />
    <property name="isErrorIntention" value="true" />
    <link role="forConcept" targetNodeId="1.1164991038168" resolveInfo="ThrowStatement" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1199627250072">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199627250073">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199627379092">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199627379093">
            <property name="value" value="Add exception to method signature" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1199627250074">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199627250075">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199631545577">
          <property name="value" value="check that this is done in a method" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199627551861">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199627551862">
            <property name="name" value="methodDecl" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199627551863">
              <link role="concept" targetNodeId="1.1068580123132" resolveInfo="BaseMethodDeclaration" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966398">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199627570962" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1199627570960">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1199627570961">
                  <link role="concept" targetNodeId="1.1068580123132" resolveInfo="BaseMethodDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199627403640">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1199627501564">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1199627505004" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627578041">
              <link role="variableDeclaration" targetNodeId="1199627551862" resolveInfo="methodDecl" />
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199627403642">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199627507599">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199627511210">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199631563938">
          <property name="value" value="get exception type" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199628608619">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199628608620">
            <property name="name" value="exceptionType" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199628608621">
              <link role="concept" targetNodeId="1.1107535904670" resolveInfo="ClassifierType" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1199628622795">
              <node role="expression" type="jetbrains.mps.bootstrap.helgins.structure.CoerceExpression" id="1199629052543">
                <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.ConceptReference" id="1199629056014">
                  <property name="name" value="classifierType" />
                  <link role="concept" targetNodeId="1.1107535904670" resolveInfo="ClassifierType" />
                </node>
                <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966400">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964458">
                    <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199629071655" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199629075378">
                      <link role="link" targetNodeId="1.1164991057263" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1199629078225" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199629123615">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199629123616">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199629188730">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199629193622">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1199629163212">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1199629168933" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199629131212">
              <link role="variableDeclaration" targetNodeId="1199628608620" resolveInfo="exceptionType" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199632282191">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199632282192">
            <property name="name" value="exceptionJavaType" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199632282193">
              <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199632308398">
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199632308399">
                <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
              </node>
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967484">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199632308402">
                  <link role="variableDeclaration" targetNodeId="1199628608620" resolveInfo="exceptionType" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199632308401">
                  <link role="link" targetNodeId="1.1107535924139" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199632321717">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199632321718">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199632321719">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199632321720">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1199632321721">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1199632321722" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199632324739">
              <link role="variableDeclaration" targetNodeId="1199632282192" resolveInfo="exceptionJavaType" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199630189674">
          <property name="value" value="check it's instance of Exception" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199631612209">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199631612210">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199632106544">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199632111906">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1199632123750">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963746">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199632316169">
                <link role="variableDeclaration" targetNodeId="1199632282192" resolveInfo="exceptionJavaType" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1199632124144">
                <link role="conceptMethodDeclaration" targetNodeId="3.1199631877012" resolveInfo="isAncestor" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199632356037">
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199632366591">
                    <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
                  </node>
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954399">
                    <node role="operand" type="jetbrains.mps.quotation.structure.Quotation" id="1199632358261">
                      <node role="quotedNode" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199632358262">
                        <link role="classifier" targetNodeId="2.~Exception" resolveInfo="Exception" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199632358260">
                      <link role="link" targetNodeId="1.1107535924139" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199634328007">
          <property name="value" value="check it's not an instance of RuntimeException" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199634328008">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199634328009">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199634328010">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199634328011">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965254">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199634400059">
              <link role="variableDeclaration" targetNodeId="1199632282192" resolveInfo="exceptionJavaType" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1199634400052">
              <link role="conceptMethodDeclaration" targetNodeId="3.1199631877012" resolveInfo="isDescendant" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199634400053">
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199634400054">
                  <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
                </node>
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952285">
                  <node role="operand" type="jetbrains.mps.quotation.structure.Quotation" id="1199634400057">
                    <node role="quotedNode" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199634409997">
                      <link role="classifier" targetNodeId="2.~RuntimeException" resolveInfo="RuntimeException" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199634400056">
                    <link role="link" targetNodeId="1.1107535924139" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1199631579769">
          <property name="value" value="check if it's not thrown by a method yet" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199627526962">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199627526963">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199627958944">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199627963133">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414611">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414577">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963356">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627585136">
                  <link role="variableDeclaration" targetNodeId="1199627551862" resolveInfo="methodDecl" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccessAsList" id="1199627604393">
                  <link role="link" targetNodeId="1.1164879685961" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1199631254418">
                <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1199631254419">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1199631254420">
                    <property name="name" value="it" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199631254421">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199631258859">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1199631459047">
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962786">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199631467019">
                            <link role="variableDeclaration" targetNodeId="1199628608620" resolveInfo="exceptionType" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199631472038">
                            <link role="link" targetNodeId="1.1107535924139" />
                          </node>
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955404">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199631258860">
                            <link role="closureParameter" targetNodeId="1199631254420" resolveInfo="it" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199631375841">
                            <link role="link" targetNodeId="1.1107535924139" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.IsNotEmptyOperation" id="1199631484119" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1199627965791">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199627969981">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1199627250076">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199627250077">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199627984748">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199627984749">
            <property name="name" value="methodDecl" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199627984750">
              <link role="concept" targetNodeId="1.1068580123132" resolveInfo="BaseMethodDeclaration" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967851">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199627984754" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1199627984752">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1199627984753">
                  <link role="concept" targetNodeId="1.1068580123132" resolveInfo="BaseMethodDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199627991709">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966757">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965986">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627991710">
                <link role="variableDeclaration" targetNodeId="1199627984749" resolveInfo="methodDecl" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199631088895">
                <link role="link" targetNodeId="1.1164879685961" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddChildOperation" id="1199631163380">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199631164070">
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199631164071">
                  <link role="concept" targetNodeId="1.1107535904670" resolveInfo="ClassifierType" />
                </node>
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955091">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965180">
                    <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199631164076" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199631164075">
                      <link role="link" targetNodeId="1.1164991057263" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1199631164073" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1199892779474">
    <property name="name" value="ReplaceBlockWithItsContent" />
    <link role="forConcept" targetNodeId="1.1082485599095" resolveInfo="BlockStatement" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1199892779475">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199892779476">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199892872226">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1199892872227">
            <property name="value" value="Replace block with its content" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1199892779477">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199892779478">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199893107494">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199893107495">
            <property name="name" value="applicable" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1199893107496" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199893113314">
              <property name="value" value="false" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199893123022">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199893123023">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199893164707">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199893164708">
                <property name="name" value="role" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199893164709">
                  <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204332445601">
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1199893164711">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199893164712" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204332445602">
                    <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getRole_():java.lang.String" resolveInfo="getRole_" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199893529903">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199893529904">
                <property name="name" value="linkDeclaration" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199893529905">
                  <link role="concept" targetNodeId="12.1071489288298" resolveInfo="LinkDeclaration" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1199893568955">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199893568956">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1199893568957">
                      <link role="baseMethodDeclaration" targetNodeId="5.~BaseAdapter.fromAdapter(jetbrains.mps.smodel.INodeAdapter):jetbrains.mps.smodel.SNode" resolveInfo="fromAdapter" />
                      <link role="classConcept" targetNodeId="5.~BaseAdapter" resolveInfo="BaseAdapter" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204332454872">
                        <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1199893568960">
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966315">
                            <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199893568962" />
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1199893568963" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204332454873">
                          <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getLinkDeclaration(java.lang.String):jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" resolveInfo="getLinkDeclaration" />
                          <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893568959">
                            <link role="variableDeclaration" targetNodeId="1199893164708" resolveInfo="role" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199893568964">
                      <link role="concept" targetNodeId="12.1071489288298" resolveInfo="LinkDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199893642861">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199893642862">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199893854829">
                  <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199893854830">
                    <property name="name" value="statementsCount" />
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1199893854831" />
                    <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414600">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954064">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963046">
                          <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199893854835" />
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199893854836">
                            <link role="link" targetNodeId="1.1082485599096" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199893854837">
                          <link role="link" targetNodeId="1.1068581517665" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1199893854838" />
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199893702046">
                  <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199893702047">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199893774985">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199893777198">
                        <node role="rValue" type="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" id="1199893874714">
                          <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1199893876894">
                            <property name="value" value="1" />
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893854843">
                            <link role="variableDeclaration" targetNodeId="1199893854830" resolveInfo="statementsCount" />
                          </node>
                        </node>
                        <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893774986">
                          <link role="variableDeclaration" targetNodeId="1199893107495" resolveInfo="applicable" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956857">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956256">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893713329">
                        <link role="variableDeclaration" targetNodeId="1199893529904" resolveInfo="linkDeclaration" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199893722405">
                        <link role="property" targetNodeId="12.1071599893252" resolveInfo="sourceCardinality" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1199893740394">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1199893740395">
                        <link role="enumMember" targetNodeId="12.1084197782723" resolveInfo="_0_1" />
                      </node>
                    </node>
                  </node>
                  <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199893884844">
                    <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199893884845">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199893906274">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199893908269">
                          <node role="rValue" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199893912060">
                            <property name="value" value="true" />
                          </node>
                          <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893906275">
                            <link role="variableDeclaration" targetNodeId="1199893107495" resolveInfo="applicable" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966780">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955197">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893886371">
                          <link role="variableDeclaration" targetNodeId="1199893529904" resolveInfo="linkDeclaration" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199893889480">
                          <link role="property" targetNodeId="12.1071599893252" resolveInfo="sourceCardinality" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1199893894082">
                        <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1199893894083">
                          <link role="enumMember" targetNodeId="12.1084197782725" resolveInfo="_0_n" />
                        </node>
                      </node>
                    </node>
                    <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199893917539">
                      <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199893917540">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199893917541">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199893917542">
                            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1199893933984">
                              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1199893935594">
                                <property name="value" value="1" />
                              </node>
                              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893931139">
                                <link role="variableDeclaration" targetNodeId="1199893854830" resolveInfo="statementsCount" />
                              </node>
                            </node>
                            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893917544">
                              <link role="variableDeclaration" targetNodeId="1199893107495" resolveInfo="applicable" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965875">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954734">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893917550">
                            <link role="variableDeclaration" targetNodeId="1199893529904" resolveInfo="linkDeclaration" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199893917549">
                            <link role="property" targetNodeId="12.1071599893252" resolveInfo="sourceCardinality" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1199893917546">
                          <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1199893917547">
                            <link role="enumMember" targetNodeId="12.1084197782724" resolveInfo="_1" />
                          </node>
                        </node>
                      </node>
                      <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199893939504">
                        <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199893939505">
                          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199893939506">
                            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199893939507">
                              <node role="rValue" type="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" id="1199893947560">
                                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1199893949204">
                                  <property name="value" value="1" />
                                </node>
                                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893946326">
                                  <link role="variableDeclaration" targetNodeId="1199893854830" resolveInfo="statementsCount" />
                                </node>
                              </node>
                              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893939509">
                                <link role="variableDeclaration" targetNodeId="1199893107495" resolveInfo="applicable" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956828">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952137">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893939515">
                              <link role="variableDeclaration" targetNodeId="1199893529904" resolveInfo="linkDeclaration" />
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199893939514">
                              <link role="property" targetNodeId="12.1071599893252" resolveInfo="sourceCardinality" />
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1199893939511">
                            <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1199893939512">
                              <link role="enumMember" targetNodeId="12.1084197782726" resolveInfo="_1_n" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963385">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptRefExpression" id="1199893667217">
                  <link role="conceptDeclaration" targetNodeId="1.1068580123157" resolveInfo="Statement" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Concept_IsSuperConceptOfOperation" id="1199893680701">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Expression" id="1199893684484">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963590">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893685554">
                        <link role="variableDeclaration" targetNodeId="1199893529904" resolveInfo="linkDeclaration" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199893685553">
                        <link role="link" targetNodeId="12.1071599976176" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963596">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965521">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199893133258" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1199893134889" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1199893139514" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199893127167">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893127168">
            <link role="variableDeclaration" targetNodeId="1199893107495" resolveInfo="applicable" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1199892779479">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199892779480">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199893983743">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199893983744">
            <property name="name" value="statements" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1199893983745">
              <link role="elementConcept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964971">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954123">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199893983748" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199893983749">
                  <link role="link" targetNodeId="1.1082485599096" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199893983750">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1199893988792">
          <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1199893988793">
            <property name="name" value="statement" />
          </node>
          <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199893991002">
            <link role="variableDeclaration" targetNodeId="1199893983744" resolveInfo="statements" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199893988795">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199894047286">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955225">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199894047287" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_InsertPrevSiblingOperation" id="1199894059691">
                  <node role="parameter" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1199894063017">
                    <link role="variable" targetNodeId="1199893988793" resolveInfo="statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199894073509">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977957039">
            <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1199894073510" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_DeleteOperation" id="1199894075916" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1201102619707">
    <property name="name" value="MoveInitializerToConstructor" />
    <link role="forConcept" targetNodeId="1.1068390468200" resolveInfo="FieldDeclaration" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1201102619708">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201102619709">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201102716449">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1201102716450">
            <property name="value" value="Move initializer to constructor" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1201102619710">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201102619711">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1201102821220">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201102821221">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1201102843109">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1201102844392">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1201102835761">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1201102840999" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963878">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201102825333" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1201102827712">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1201102830213">
                  <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1201102998375">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201102998376">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1201103018185">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1201103019375">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1201103012103">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1201103015153" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954164">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201103006317" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201103009852">
                <link role="link" targetNodeId="1.1068431790190" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1201102851957">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1201102853803">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1201102619712">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201102619713">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201102928684">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201102928685">
            <property name="name" value="classNode" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201102928686">
              <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1201102971852">
              <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967352">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201102937876" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1201102940661">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1201102943459">
                    <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201103372130" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201103377119">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201103377120">
            <property name="name" value="assignmentStmt" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201103377121">
              <link role="concept" targetNodeId="1.1068580123155" resolveInfo="ExpressionStatement" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1201103377122">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1201103377123">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201103377124">
                  <link role="concept" targetNodeId="1.1068580123155" resolveInfo="ExpressionStatement" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201103377125">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201103377126">
            <property name="name" value="assignmentExpr" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201103377127">
              <link role="concept" targetNodeId="1.1068498886294" resolveInfo="AssignmentExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965075">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956804">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201103377132">
                  <link role="variableDeclaration" targetNodeId="1201103377120" resolveInfo="assignmentStmt" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201103377131">
                  <link role="link" targetNodeId="1.1068580123156" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201103377129">
                <link role="concept" targetNodeId="1.1068498886294" resolveInfo="AssignmentExpression" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201103377134">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964738">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968365">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201103377144">
                <link role="variableDeclaration" targetNodeId="1201103377126" resolveInfo="assignmentExpr" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201103377143">
                <link role="link" targetNodeId="1.1068498886297" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1201103377136">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965598">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964580">
                  <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201103377141" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201103377140">
                    <link role="link" targetNodeId="1.1068431790190" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1201103377138" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1201103377145">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1201103377146">
            <property name="name" value="fieldReference" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1201103377147">
              <link role="concept" targetNodeId="1.1068580123158" resolveInfo="FieldReference" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966863">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956936">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201103377152">
                  <link role="variableDeclaration" targetNodeId="1201103377126" resolveInfo="assignmentExpr" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201103582322">
                  <link role="link" targetNodeId="1.1068498886295" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201103377149">
                <link role="concept" targetNodeId="1.1068580123158" resolveInfo="FieldReference" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201103377153">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965879">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964742">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201103377159">
                <link role="variableDeclaration" targetNodeId="1201103377146" resolveInfo="fieldReference" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201103377158">
                <link role="link" targetNodeId="1.1070568237987" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1201103377155">
              <node role="parameter" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201103377156" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201103707304">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966347">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964584">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201103707305">
                <link role="variableDeclaration" targetNodeId="1201103377146" resolveInfo="fieldReference" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201103710231">
                <link role="link" targetNodeId="1.1080137532343" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1201103725565">
              <link role="concept" targetNodeId="1.1070475354124" resolveInfo="ThisExpression" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201103383005" />
        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1201102901101">
          <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1201102901102">
            <property name="name" value="constr" />
          </node>
          <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964269">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201102983823">
              <link role="variableDeclaration" targetNodeId="1201102928685" resolveInfo="classNode" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1201102987092">
              <link role="link" targetNodeId="1.1068390468201" />
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201102901104">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201103404959">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977951700">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977951881">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963803">
                    <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1201103404960">
                      <link role="variable" targetNodeId="1201102901102" resolveInfo="constr" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201103408824">
                      <link role="link" targetNodeId="1.1068580123135" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1201103415625">
                    <link role="link" targetNodeId="1.1068581517665" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_InsertChildFirstOperation" id="1201103420488">
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965897">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1201103431803">
                      <link role="variableDeclaration" targetNodeId="1201103377120" resolveInfo="assignmentStmt" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1201103434697" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1201103437152" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201103442451">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956932">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956881">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1201103442452" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201103444972">
                <link role="link" targetNodeId="1.1068431790190" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_DeleteChildOperation" id="1201103462431" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1202130221457">
    <property name="name" value="MergeStringConcatenation" />
    <link role="forConcept" targetNodeId="1.1068581242875" resolveInfo="PlusExpression" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1202130221458">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202130221459">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1202130244647">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1202130244648">
            <property name="value" value="Merge string concatination" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1202130221460">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202130221461">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1202130260789">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1202130278548">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963468">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966526">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1202130280976" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1202130284498">
                  <link role="link" targetNodeId="1.1081773367579" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1202130288150">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1202130290541">
                  <link role="conceptDeclaration" targetNodeId="1.1070475926800" resolveInfo="StringLiteral" />
                </node>
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967689">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955588">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1202130260790" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1202130267086">
                  <link role="link" targetNodeId="1.1081773367580" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1202130273065">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1202130276367">
                  <link role="conceptDeclaration" targetNodeId="1.1070475926800" resolveInfo="StringLiteral" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1202130221462">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202130221463">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1202130310988">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1202130310989">
            <property name="name" value="stringLiteral" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1202130310990">
              <link role="concept" targetNodeId="1.1070475926800" resolveInfo="StringLiteral" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964166">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1202130310992" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithNewOperation" id="1202130310993">
                <link role="concept" targetNodeId="1.1070475926800" resolveInfo="StringLiteral" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1202131050789">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1202131050790">
            <property name="name" value="left" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1202131050791">
              <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964010">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1202131050793">
                <link role="concept" targetNodeId="1.1070475926800" resolveInfo="StringLiteral" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963017">
                  <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1202131050795" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1202131050796">
                    <link role="link" targetNodeId="1.1081773367580" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1202131050797">
                <link role="property" targetNodeId="1.1070475926801" resolveInfo="value" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1202131053728">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1202131053729">
            <property name="name" value="right" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1202131053730">
              <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952189">
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1202131053732">
                <link role="concept" targetNodeId="1.1070475926800" resolveInfo="StringLiteral" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968237">
                  <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1202131053734" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1202131076553">
                    <link role="link" targetNodeId="1.1081773367579" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1202131079380">
                <link role="property" targetNodeId="1.1070475926801" resolveInfo="value" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1202130329637">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963695">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954685">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1202130329638">
                <link role="variableDeclaration" targetNodeId="1202130310989" resolveInfo="stringLiteral" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1202130370982">
                <link role="property" targetNodeId="1.1070475926801" resolveInfo="value" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1202130374823">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1202131067315">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1202131072113">
                  <link role="variableDeclaration" targetNodeId="1202131053729" resolveInfo="right" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1202131050802">
                  <link role="variableDeclaration" targetNodeId="1202131050790" resolveInfo="left" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1202131129651">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956674">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1202131129652">
              <link role="variableDeclaration" targetNodeId="1202130310989" resolveInfo="stringLiteral" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectLaterOperation" id="1202131133159">
              <node role="editorContext" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_editorContext" id="1202131136674" />
              <node role="selectLaterParameter" type="jetbrains.mps.bootstrap.editorLanguage.structure.CaretPositionParameter" id="1202131147115">
                <node role="position" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1202131178144">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1202131180718">
                    <property name="value" value="1" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204332454797">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1202131151463">
                      <link role="variableDeclaration" targetNodeId="1202131050790" resolveInfo="left" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204332454798">
                      <link role="baseMethodDeclaration" targetNodeId="2.~String.length():int" resolveInfo="length" />
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
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1202861044458">
    <property name="name" value="CreateSetAccessor" />
    <link role="forConcept" targetNodeId="1.1201402044357" resolveInfo="GetAccessor" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1202861044459">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202861044460">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1202861126332">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1202861126333">
            <property name="value" value="Create set accessor" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1202861044461">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202861044462">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1202861139396">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968184">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966944">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955140">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1202861139397" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1202861144979">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1202861146590">
                    <link role="concept" targetNodeId="1.1201398722958" resolveInfo="CustomPropertyImplementation" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1202861159547">
                <link role="link" targetNodeId="1.1201476937466" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNullOperation" id="1202861163973" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1202861044463">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202861044464">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1202861173349">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963149">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977951978">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968052">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1202861173350" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1202861177432">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1202861179573">
                    <link role="concept" targetNodeId="1.1201398722958" resolveInfo="CustomPropertyImplementation" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1202861368784">
                <link role="link" targetNodeId="1.1201476937466" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1202861375772" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1203413213560">
    <property name="name" value="make_generic" />
    <link role="forConcept" targetNodeId="1.1068580123132" resolveInfo="BaseMethodDeclaration" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1203413213561">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203413213562">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203413245112">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203413245113">
            <property name="value" value="Add type variable" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1203413213563">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203413213564">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203413265342">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1203413285022">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1203413285595">
              <property name="value" value="0" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977965053">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966132">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203413265343" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1203413276380">
                  <link role="link" targetNodeId="1.1109279881614" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_GetCountOperation" id="1203413281864" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1203413213565">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203413213566">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203413291659">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963569">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967508">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203413291660" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1203413295405">
                <link role="link" targetNodeId="1.1109279881614" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddNewChildOperation" id="1203413302737">
              <link role="concept" targetNodeId="1.1109279763828" resolveInfo="TypeVariableDeclaration" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1203701450442">
    <property name="name" value="AddStaticModifier" />
    <link role="forConcept" targetNodeId="1.1068580123165" resolveInfo="InstanceMethodDeclaration" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1203701450443">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203701450444">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203701528632">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203701528633">
            <property name="value" value="Add static modifier" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1203701450445">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203701450446">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203701642883">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203701642884">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203701649290">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1203701650589">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1203701647174">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203701647175">
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1203701647176">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1203701647177">
                  <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
                </node>
              </node>
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203701647178" />
            </node>
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1203701647179" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1203701659325">
          <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1203701659326">
            <property name="name" value="variableReference" />
          </node>
          <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414471">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203701671237">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203701670189" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1203701674396" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1203701690672">
              <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1203701690673">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1203701690674">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203701690675">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203701696179">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203701699103">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1203701696180">
                        <link role="closureParameter" targetNodeId="1203701690674" resolveInfo="it" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1203701710342">
                        <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1203701733222">
                          <link role="conceptDeclaration" targetNodeId="1.1068498886296" resolveInfo="VariableReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203701659328">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203701757492">
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203701811869">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203701799922">
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1203701796211">
                    <link role="concept" targetNodeId="1.1068498886296" resolveInfo="VariableReference" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1203701765374">
                      <link role="variable" targetNodeId="1203701659326" resolveInfo="variableReference" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203701807677">
                    <link role="link" targetNodeId="1.1068581517664" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1203701815264">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1203701873139">
                    <link role="conceptDeclaration" targetNodeId="1.1068390468200" resolveInfo="FieldDeclaration" />
                  </node>
                </node>
              </node>
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203701757494">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203701875878">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1203701877145">
                    <property name="value" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203701761199">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1203701762295">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1203701450447">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203701450448">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203702223733">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203702223734">
            <property name="name" value="classConcept" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203702223735">
              <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955097">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203702223737" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1203702223738">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1203702223739">
                  <link role="concept" targetNodeId="1.1068390468198" resolveInfo="ClassConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203702223740">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203702223741">
            <property name="name" value="method" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203702223742">
              <link role="concept" targetNodeId="1.1081236700938" resolveInfo="StaticMethodDeclaration" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977964399">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977962963">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203702223745">
                  <link role="variableDeclaration" targetNodeId="1203702223734" resolveInfo="classConcept" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1203702223746">
                  <link role="link" targetNodeId="1.1107880067339" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddNewChildOperation" id="1203702223747">
                <link role="concept" targetNodeId="1.1081236700938" resolveInfo="StaticMethodDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203702223748">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954833">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963857">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203702223751">
                <link role="variableDeclaration" targetNodeId="1203702223741" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203702223752">
                <link role="link" targetNodeId="1.1068580123133" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1203702223753">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963251">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203702256502" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203702223756">
                  <link role="link" targetNodeId="1.1068580123133" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203702223757">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955921">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966063">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203702223760">
                <link role="variableDeclaration" targetNodeId="1203702223741" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1203702223761">
                <link role="link" targetNodeId="1.1068580123134" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddAllOperation" id="1203702223762">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966920">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203702257738" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1203702223765">
                  <link role="link" targetNodeId="1.1068580123134" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203702223766">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977956749">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963849">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203702223769">
                <link role="variableDeclaration" targetNodeId="1203702223741" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203702223770">
                <link role="link" targetNodeId="1.1068580123135" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1203702223771">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968460">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203702261129" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203702223774">
                  <link role="link" targetNodeId="1.1068580123135" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203702223775">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968231">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977952309">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203702223778">
                <link role="variableDeclaration" targetNodeId="1203702223741" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1203702223779">
                <link role="link" targetNodeId="1.1164879685961" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddAllOperation" id="1203702223780">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966662">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203702269679" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1203702272383">
                  <link role="link" targetNodeId="1.1164879685961" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203702223784">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977951802">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967794">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203702223787">
                <link role="variableDeclaration" targetNodeId="1203702223741" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203702223788">
                <link role="link" targetNodeId="1.1178549979242" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1203702223789">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977967151">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203702223791" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203702223792">
                  <link role="link" targetNodeId="1.1178549979242" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203702223793">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954036">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955814">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203702223796">
                <link role="variableDeclaration" targetNodeId="1203702223741" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1203702264333">
                <link role="property" targetNodeId="1.1083152972672" resolveInfo="name" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1203702223798">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977966912">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203702223800" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1203702266725">
                  <link role="property" targetNodeId="1.1083152972672" resolveInfo="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203702223802">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977968233">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977954145">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203702223805">
                <link role="variableDeclaration" targetNodeId="1203702223741" resolveInfo="method" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1203702275462">
                <link role="property" targetNodeId="1.1181808852946" resolveInfo="isFinal" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1203702223807">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977963311">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203702223809" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1203702276963">
                  <link role="property" targetNodeId="1.1181808852946" resolveInfo="isFinal" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203702223811">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203977955304">
            <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203702223813" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_DeleteOperation" id="1203702223814" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1203703270380">
    <property name="name" value="AddRemoveFinalModifier" />
    <link role="forConcept" targetNodeId="1.1068431474542" resolveInfo="VariableDeclaration" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1203703270381">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203703484724">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203703504225">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" id="1203703510996">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203703520296">
              <property name="value" value="Remove final modifier" />
            </node>
            <node role="ifFalse" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1203703534844">
              <property name="value" value="Add final modifier" />
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203703505289">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203703504226" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1203703508916">
                <link role="property" targetNodeId="1.1176718929932" resolveInfo="isFinal" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1203703270383">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203703270384">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203703463463">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1203703463464">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1203703270385">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203703270386">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203703552189">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203703556788">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203703552629">
              <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203703552190" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1203703554115">
                <link role="property" targetNodeId="1.1176718929932" resolveInfo="isFinal" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1203703556977">
              <node role="value" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1203703559479">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203703562107">
                  <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1203703561200" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1203703566734">
                    <link role="property" targetNodeId="1.1176718929932" resolveInfo="isFinal" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1204229560692">
    <property name="name" value="ConvertFieldReferenceToDotExpression" />
    <property name="isErrorIntention" value="true" />
    <property name="package" value="migration" />
    <link role="forConcept" targetNodeId="1.1068580123158" resolveInfo="FieldReference" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1204229560693">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204229560694">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204229780034">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1204229780035">
            <property name="value" value="convert FieldReference to DotExpression" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1204229560695">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204229560696">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204313684709">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1204313684710">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1204229560697">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204229560698">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204229886998">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204229886999">
            <property name="name" value="nodeAttributes" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1204229934724" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204229887002">
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204229887003">
                <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getAllAttributes():java.util.List" resolveInfo="getAllAttributes" />
              </node>
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1204229887004">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1204229887005" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204230215769">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204230215770">
            <property name="name" value="attPairs" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1204230215771">
              <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204230223070">
                <link role="classifier" targetNodeId="22.~Pair" resolveInfo="Pair" />
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204230223071">
                  <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                </node>
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204230223072" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1204230234589">
              <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListCreatorWithInit" id="1204230234590">
                <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204230234591">
                  <link role="classifier" targetNodeId="22.~Pair" resolveInfo="Pair" />
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204230234592">
                    <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                  </node>
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204230234593" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1204230289892">
          <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1204230289893">
            <property name="name" value="nodeAttr" />
          </node>
          <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204230295585">
            <link role="variableDeclaration" targetNodeId="1204229886999" resolveInfo="nodeAttributes" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204230289895">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204230366009">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204230366010">
                <property name="name" value="roleInParent" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204230366011">
                  <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204230366012">
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204230366013">
                    <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getRole_():java.lang.String" resolveInfo="getRole_" />
                  </node>
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1204230366014">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1204230366015">
                      <link role="variable" targetNodeId="1204230289893" resolveInfo="nodeAttr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204230594720">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204230599646">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1204230596894">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1204230594721" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204230603726">
                  <link role="baseMethodDeclaration" targetNodeId="5.~SNode.removeChild(jetbrains.mps.smodel.SNode):void" resolveInfo="removeChild" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1204230611930">
                    <link role="variable" targetNodeId="1204230289893" resolveInfo="nodeAttr" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204230637542">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414627">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204230637543">
                  <link role="variableDeclaration" targetNodeId="1204230215770" resolveInfo="attPairs" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddElementOperation" id="1204230641765">
                  <node role="argument" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1204230649896">
                    <link role="baseMethodDeclaration" targetNodeId="22.~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolveInfo="Pair" />
                    <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204230761890">
                      <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                    </node>
                    <node role="typeParameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204230769753" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204230792770">
                      <link role="variableDeclaration" targetNodeId="1204230366010" resolveInfo="roleInParent" />
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1204230801431">
                      <link role="variable" targetNodeId="1204230289893" resolveInfo="nodeAttr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1204230812199">
          <property name="value" value="-----" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204230817811">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204230817812">
            <property name="name" value="dotExpression" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204230817813">
              <link role="concept" targetNodeId="1.1197027756228" resolveInfo="DotExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1204230856237">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1204230856238">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204230856239">
                  <link role="concept" targetNodeId="1.1197027756228" resolveInfo="DotExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204230885897">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204230896730">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204230887383">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204230885898">
                <link role="variableDeclaration" targetNodeId="1204230817812" resolveInfo="dotExpression" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204230895245">
                <link role="link" targetNodeId="1.1197027771414" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1204230898998">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204230907907">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1204230906671" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204230911674">
                  <link role="link" targetNodeId="1.1080137532343" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204230981443">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204231031517">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204230991185">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204230987276">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204230982898">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204230981444">
                    <link role="variableDeclaration" targetNodeId="1204230817812" resolveInfo="dotExpression" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204230985963">
                    <link role="link" targetNodeId="1.1197027833540" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1204230989622">
                  <link role="concept" targetNodeId="1.1197029447546" resolveInfo="FieldReferenceOperation" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204231029922">
                <link role="link" targetNodeId="1.1197029500499" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1204231034222">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204231040193">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1204231039005" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204231043008">
                  <link role="link" targetNodeId="1.1070568237987" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1204231054572">
          <property name="value" value="--- append attributes" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1204231107606">
          <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1204231107607">
            <property name="name" value="attPair" />
          </node>
          <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204231117908">
            <link role="variableDeclaration" targetNodeId="1204230215770" resolveInfo="attPairs" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204231107609">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204234381068">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204234381069">
                <property name="name" value="attrRole" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204234411951">
                  <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204234381071">
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1204234381072">
                    <link role="fieldDeclaration" targetNodeId="22.~Pair.o1" resolveInfo="o1" />
                  </node>
                  <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1204234381073">
                    <link role="variable" targetNodeId="1204231107607" resolveInfo="attPair" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1204234425157">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204234425158">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204239692295">
                  <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204239692296">
                    <property name="name" value="linkRole" />
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204239692297">
                      <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                    </node>
                    <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1204239692298">
                      <link role="baseMethodDeclaration" targetNodeId="5.~AttributesRolesUtil.getLinkRoleFromLinkAttributeRole(java.lang.String):java.lang.String" resolveInfo="getLinkRoleFromLinkAttributeRole" />
                      <link role="classConcept" targetNodeId="5.~AttributesRolesUtil" resolveInfo="AttributesRolesUtil" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204239692299">
                        <link role="variableDeclaration" targetNodeId="1204234381069" resolveInfo="attrRole" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1204239698707">
                  <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204239698708">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204241703207">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1204241706787">
                        <node role="rValue" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1204241714181">
                          <link role="baseMethodDeclaration" targetNodeId="5.~AttributesRolesUtil.replaceLinkRoleInLinkAttributeRole(java.lang.String,java.lang.String):java.lang.String" resolveInfo="replaceLinkRoleInLinkAttributeRole" />
                          <link role="classConcept" targetNodeId="5.~AttributesRolesUtil" resolveInfo="AttributesRolesUtil" />
                          <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204241714182">
                            <link role="variableDeclaration" targetNodeId="1204234381069" resolveInfo="attrRole" />
                          </node>
                          <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1204241714183">
                            <property name="value" value="fieldDeclaration" />
                          </node>
                        </node>
                        <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204241703208">
                          <link role="variableDeclaration" targetNodeId="1204234381069" resolveInfo="attrRole" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204239733917">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1204239719338">
                      <property name="value" value="variableDeclaration" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204239745482">
                      <link role="baseMethodDeclaration" targetNodeId="2.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204239749515">
                        <link role="variableDeclaration" targetNodeId="1204239692296" resolveInfo="linkRole" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204234488067">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204234640709">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1204234530033">
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204234489507">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204234488068">
                          <link role="variableDeclaration" targetNodeId="1204230817812" resolveInfo="dotExpression" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204234519998">
                          <link role="link" targetNodeId="1.1197027833540" />
                        </node>
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204234647230">
                      <link role="baseMethodDeclaration" targetNodeId="5.~SNode.addChild(java.lang.String,jetbrains.mps.smodel.SNode):void" resolveInfo="addChild" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204234652997">
                        <link role="variableDeclaration" targetNodeId="1204234381069" resolveInfo="attrRole" />
                      </node>
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204234664375">
                        <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1204234660968">
                          <link role="variable" targetNodeId="1204231107607" resolveInfo="attPair" />
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1204234666378">
                          <link role="fieldDeclaration" targetNodeId="22.~Pair.o2" resolveInfo="o2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1204234441552">
                <link role="baseMethodDeclaration" targetNodeId="5.~AttributesRolesUtil.isLinkAttributeRole(java.lang.String):boolean" resolveInfo="isLinkAttributeRole" />
                <link role="classConcept" targetNodeId="5.~AttributesRolesUtil" resolveInfo="AttributesRolesUtil" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204234454569">
                  <link role="variableDeclaration" targetNodeId="1204234381069" resolveInfo="attrRole" />
                </node>
              </node>
              <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1204234465634">
                <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204234465635">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204234470418">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204234470419">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1204234470420">
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204234470421">
                          <link role="variableDeclaration" targetNodeId="1204230817812" resolveInfo="dotExpression" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204234470422">
                        <link role="baseMethodDeclaration" targetNodeId="5.~SNode.addChild(java.lang.String,jetbrains.mps.smodel.SNode):void" resolveInfo="addChild" />
                        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204234470423">
                          <link role="variableDeclaration" targetNodeId="1204234381069" resolveInfo="attrRole" />
                        </node>
                        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204234470424">
                          <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1204234470425">
                            <link role="variable" targetNodeId="1204231107607" resolveInfo="attPair" />
                          </node>
                          <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1204234470426">
                            <link role="fieldDeclaration" targetNodeId="22.~Pair.o2" resolveInfo="o2" />
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
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1204231855689">
          <property name="value" value="----" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204231879394">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204231880927">
            <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1204231879395" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1204231884414">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204231893759">
                <link role="variableDeclaration" targetNodeId="1204230817812" resolveInfo="dotExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IntentionDeclaration" id="1204323533398">
    <property name="name" value="ConvertInstanceMethodCallToDotExpression" />
    <property name="isErrorIntention" value="true" />
    <property name="package" value="migration" />
    <link role="forConcept" targetNodeId="1.1068580123163" resolveInfo="InstanceMethodCall" />
    <node role="descriptionFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.DescriptionBlock" id="1204323533399">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204323533400">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204323533401">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1204323533402">
            <property name="value" value="convert InstanceMethodCall to DotExpression" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.IsApplicableBlock" id="1204323533403">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204323533404">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204323533405">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1204323533406">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ExecuteBlock" id="1204323533407">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204323533408">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204323533409">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204323533410">
            <property name="name" value="nodeAttributes" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1204323533411" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533412">
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204323533413">
                <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getAllAttributes():java.util.List" resolveInfo="getAllAttributes" />
              </node>
              <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1204323533414">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1204323533415" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204323533416">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204323533417">
            <property name="name" value="attPairs" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1204323533418">
              <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204323533419">
                <link role="classifier" targetNodeId="22.~Pair" resolveInfo="Pair" />
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204323533420">
                  <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                </node>
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204323533421" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1204323533422">
              <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListCreatorWithInit" id="1204323533423">
                <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204323533424">
                  <link role="classifier" targetNodeId="22.~Pair" resolveInfo="Pair" />
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204323533425">
                    <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                  </node>
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204323533426" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1204323533427">
          <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1204323533428">
            <property name="name" value="nodeAttr" />
          </node>
          <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204323533429">
            <link role="variableDeclaration" targetNodeId="1204323533410" resolveInfo="nodeAttributes" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204323533430">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204323533431">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204323533432">
                <property name="name" value="roleInParent" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204323533433">
                  <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533434">
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204323533435">
                    <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getRole_():java.lang.String" resolveInfo="getRole_" />
                  </node>
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1204323533436">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1204323533437">
                      <link role="variable" targetNodeId="1204323533428" resolveInfo="nodeAttr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204323533438">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533439">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1204323533440">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1204323533441" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204323533442">
                  <link role="baseMethodDeclaration" targetNodeId="5.~SNode.removeChild(jetbrains.mps.smodel.SNode):void" resolveInfo="removeChild" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1204323533443">
                    <link role="variable" targetNodeId="1204323533428" resolveInfo="nodeAttr" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204323533444">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414489">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204323533447">
                  <link role="variableDeclaration" targetNodeId="1204323533417" resolveInfo="attPairs" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddElementOperation" id="1204323533448">
                  <node role="argument" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1204323533449">
                    <link role="baseMethodDeclaration" targetNodeId="22.~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolveInfo="Pair" />
                    <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204323533450">
                      <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                    </node>
                    <node role="typeParameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204323533451" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204323533452">
                      <link role="variableDeclaration" targetNodeId="1204323533432" resolveInfo="roleInParent" />
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1204323533453">
                      <link role="variable" targetNodeId="1204323533428" resolveInfo="nodeAttr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1204323533454">
          <property name="value" value="-----" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204323533455">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204323533456">
            <property name="name" value="dotExpression" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204323533457">
              <link role="concept" targetNodeId="1.1197027756228" resolveInfo="DotExpression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1204323533458">
              <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1204323533459">
                <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204323533460">
                  <link role="concept" targetNodeId="1.1197027756228" resolveInfo="DotExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204323533461">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533462">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533463">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204323533464">
                <link role="variableDeclaration" targetNodeId="1204323533456" resolveInfo="dotExpression" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204323533465">
                <link role="link" targetNodeId="1.1197027771414" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1204323533466">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533467">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1204323533468" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204323974548">
                  <link role="link" targetNodeId="1.1068580123164" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204324811740">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204324811741">
            <property name="name" value="imco" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204324811742">
              <link role="concept" targetNodeId="1.1202948039474" resolveInfo="InstanceMethodCallOperation" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204324811743">
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1204324811744">
                <link role="concept" targetNodeId="1.1202948039474" resolveInfo="InstanceMethodCallOperation" />
              </node>
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204324811745">
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204324811746">
                  <link role="link" targetNodeId="1.1197027833540" />
                </node>
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204324811747">
                  <link role="variableDeclaration" targetNodeId="1204323533456" resolveInfo="dotExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204323533470">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533471">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533472">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204324811748">
                <link role="variableDeclaration" targetNodeId="1204324811741" resolveInfo="imco" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204323993736">
                <link role="link" targetNodeId="1.1202948736718" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1204323533479">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533480">
                <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1204323533481" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204324004050">
                  <link role="link" targetNodeId="1.1070568044740" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1204324656086">
          <property name="value" value="--- actual arguments" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1204324698932">
          <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1204324698933">
            <property name="name" value="actualArg" />
          </node>
          <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204324707829">
            <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1204324705843" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccessAsList" id="1204324711691">
              <link role="link" targetNodeId="1.1068499141038" />
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204324698935">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204324823780">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205320414481">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204324825454">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204324823781">
                    <link role="variableDeclaration" targetNodeId="1204324811741" resolveInfo="imco" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1204324836550">
                    <link role="link" targetNodeId="1.1068499141038" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddChildOperation" id="1204324847976">
                  <node role="parameter" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1204324854931">
                    <link role="variable" targetNodeId="1204324698933" resolveInfo="actualArg" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1204323533483">
          <property name="value" value="--- append attributes" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1204323533484">
          <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1204323533485">
            <property name="name" value="attPair" />
          </node>
          <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204323533486">
            <link role="variableDeclaration" targetNodeId="1204323533417" resolveInfo="attPairs" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204323533487">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204323533488">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204323533489">
                <property name="name" value="attrRole" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1204323533490">
                  <link role="classifier" targetNodeId="2.~String" resolveInfo="String" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533491">
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1204323533492">
                    <link role="fieldDeclaration" targetNodeId="22.~Pair.o1" resolveInfo="o1" />
                  </node>
                  <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1204323533493">
                    <link role="variable" targetNodeId="1204323533485" resolveInfo="attPair" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1204323533494">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204323533495">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204323533513">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533514">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1204323533515">
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533516">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204323533517">
                          <link role="variableDeclaration" targetNodeId="1204323533456" resolveInfo="dotExpression" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204323533518">
                          <link role="link" targetNodeId="1.1197027833540" />
                        </node>
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204323533519">
                      <link role="baseMethodDeclaration" targetNodeId="5.~SNode.addChild(java.lang.String,jetbrains.mps.smodel.SNode):void" resolveInfo="addChild" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204323533520">
                        <link role="variableDeclaration" targetNodeId="1204323533489" resolveInfo="attrRole" />
                      </node>
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533521">
                        <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1204323533522">
                          <link role="variable" targetNodeId="1204323533485" resolveInfo="attPair" />
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1204324033176">
                          <link role="fieldDeclaration" targetNodeId="22.~Pair.o2" resolveInfo="o2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1204323533524">
                <link role="classConcept" targetNodeId="5.~AttributesRolesUtil" resolveInfo="AttributesRolesUtil" />
                <link role="baseMethodDeclaration" targetNodeId="5.~AttributesRolesUtil.isLinkAttributeRole(java.lang.String):boolean" resolveInfo="isLinkAttributeRole" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204323533525">
                  <link role="variableDeclaration" targetNodeId="1204323533489" resolveInfo="attrRole" />
                </node>
              </node>
              <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1204323533526">
                <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204323533527">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204323533528">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533529">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1204323533530">
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204323533531">
                          <link role="variableDeclaration" targetNodeId="1204323533456" resolveInfo="dotExpression" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204323533532">
                        <link role="baseMethodDeclaration" targetNodeId="5.~SNode.addChild(java.lang.String,jetbrains.mps.smodel.SNode):void" resolveInfo="addChild" />
                        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204323533533">
                          <link role="variableDeclaration" targetNodeId="1204323533489" resolveInfo="attrRole" />
                        </node>
                        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533534">
                          <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1204323533535">
                            <link role="variable" targetNodeId="1204323533485" resolveInfo="attPair" />
                          </node>
                          <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1204324035693">
                            <link role="fieldDeclaration" targetNodeId="22.~Pair.o2" resolveInfo="o2" />
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
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1204323533537">
          <property name="value" value="----" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204323533538">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204323533539">
            <node role="operand" type="jetbrains.mps.bootstrap.intentionsLanguage.structure.ConceptFunctionParameter_node" id="1204323533540" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1204323533541">
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204323533542">
                <link role="variableDeclaration" targetNodeId="1204323533456" resolveInfo="dotExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


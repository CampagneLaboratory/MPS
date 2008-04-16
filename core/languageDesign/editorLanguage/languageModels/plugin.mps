<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.bootstrap.editorLanguage.plugin">
  <persistence version="1"/>
  <refactoringHistory/>
  <language namespace="jetbrains.mps.bootstrap.pluginLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.pluginLanguage.structure" version="1"/>
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1"/>
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0"/>
  </language>
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0"/>
  </language>
  <language namespace="jetbrains.mps.baseLanguage.classifiers"/>
  <maxImportIndex value="9"/>
  <import index="1" modelUID="jetbrains.mps.bootstrap.editorLanguage.structure" version="-1"/>
  <import index="2" modelUID="jetbrains.mps.smodel@java_stub" version="-1"/>
  <import index="4" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure@java_stub" version="-1"/>
  <import index="5" modelUID="java.lang@java_stub" version="-1"/>
  <import index="6" modelUID="jetbrains.mps.resolve@java_stub" version="-1"/>
  <import index="7" modelUID="jetbrains.mps.helgins.integration@java_stub" version="-1"/>
  <import index="8" modelUID="jetbrains.mps.project@java_stub" version="-1"/>
  <import index="9" modelUID="jetbrains.mps.plugins@java_stub" version="-1"/>
  <visible index="2" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure"/>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionDeclaration" id="1207225803603">
    <property name="name" value="CopyThisDown"/>
    <property name="caption" value="Duplicate Node"/>
    <property name="shortcut" value="control D"/>
    <link role="extendedAction" targetNodeId="9.~CurrentProjectMPSAction" resolveInfo="CurrentProjectMPSAction"/>
    <node role="parameterDeclaration" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterDeclaration"
          id="1207226167041">
      <property name="name" value="inputNode"/>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1207226167042"/>
      <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1207226169451"/>
    </node>
    <node role="executeFunction" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ExecuteBlock"
          id="1207225803604">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207225803605">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
              id="1207226213782">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"
                id="1207226213783">
            <property name="name" value="nodeToCopy"/>
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1207226213784"/>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207226235989">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson"
                    id="1207226235990"/>
              <node role="operation"
                    type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionParameterReferenceOperation"
                    id="1207226235991">
                <link role="member" targetNodeId="1207226167041" resolveInfo="inputNode"/>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.WhileStatement" id="1207226269306">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207226269308">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
                  id="1207226880601">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"
                    id="1207226880602">
                <property name="name" value="parent"/>
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1207226880603"/>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207226880604">
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation"
                        id="1207226880605"/>
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                        id="1207226880606">
                    <link role="variableDeclaration" targetNodeId="1207226213783" resolveInfo="nodeToCopy"/>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
                  id="1207226367600">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"
                    id="1207226367601">
                <property name="name" value="acd"/>
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1207226367602">
                  <link role="concept" targetNodeId="2v.1169125787135" resolveInfo="AbstractConceptDeclaration"/>
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207226425362">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                        id="1207226880607">
                    <link role="variableDeclaration" targetNodeId="1207226880602" resolveInfo="parent"/>
                  </node>
                  <node role="operation"
                        type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetConceptOperation"
                        id="1207226501272"/>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
                  id="1207226933324">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"
                    id="1207226933325">
                <property name="name" value="role"/>
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1207226933326">
                  <link role="classifier" targetNodeId="5.~String" resolveInfo="String"/>
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207226933327">
                  <node role="operand"
                        type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression"
                        id="1207226933328">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                          id="1207226933329">
                      <link role="variableDeclaration" targetNodeId="1207226213783" resolveInfo="nodeToCopy"/>
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation"
                        id="1207226933330">
                    <link role="baseMethodDeclaration" targetNodeId="2.~SNode.getRole_():java.lang.String"
                          resolveInfo="getRole_"/>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
                  id="1207226768944">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"
                    id="1207226768945">
                <property name="name" value="linkDeclaration"/>
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1207226768946">
                  <link role="classifier" targetNodeId="4.~LinkDeclaration" resolveInfo="LinkDeclaration"/>
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall"
                      id="1207226768947">
                  <link role="baseMethodDeclaration"
                        targetNodeId="2.~SModelUtil_new.findLinkDeclaration(jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration,java.lang.String):jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
                        resolveInfo="findLinkDeclaration"/>
                  <link role="classConcept" targetNodeId="2.~SModelUtil_new" resolveInfo="SModelUtil_new"/>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression"
                        id="1207226768948">
                    <node role="operation"
                          type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation"
                          id="1207226768949"/>
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                          id="1207226768950">
                      <link role="variableDeclaration" targetNodeId="1207226367601" resolveInfo="acd"/>
                    </node>
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                        id="1207226933331">
                    <link role="variableDeclaration" targetNodeId="1207226933325" resolveInfo="role"/>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1207226778957">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207226778958">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1207226788559"/>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1207226784821">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral"
                      id="1207226786355"/>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                      id="1207226782961">
                  <link role="variableDeclaration" targetNodeId="1207226768945" resolveInfo="linkDeclaration"/>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
                  id="1207226814367">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"
                    id="1207226814368">
                <property name="name" value="cardinality"/>
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1207226814369">
                  <link role="classifier" targetNodeId="4.~Cardinality" resolveInfo="Cardinality"/>
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207226814370">
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation"
                        id="1207226814371">
                    <link role="baseMethodDeclaration"
                          targetNodeId="4.~LinkDeclaration.getSourceCardinality():jetbrains.mps.bootstrap.structureLanguage.structure.Cardinality"
                          resolveInfo="getSourceCardinality"/>
                  </node>
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                        id="1207226814372">
                    <link role="variableDeclaration" targetNodeId="1207226768945" resolveInfo="linkDeclaration"/>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1207226791483">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207226791484">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
                      id="1207226863764">
                  <node role="localVariableDeclaration"
                        type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1207226863765">
                    <property name="name" value="copy"/>
                    <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType"
                          id="1207226863766"/>
                    <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression"
                          id="1207226869378">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                            id="1207226868487">
                        <link role="variableDeclaration" targetNodeId="1207226213783" resolveInfo="nodeToCopy"/>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation"
                            id="1207226870333"/>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement"
                      id="1207226893406">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207226904256">
                    <node role="operand"
                          type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression"
                          id="1207226903504">
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                            id="1207226893407">
                        <link role="variableDeclaration" targetNodeId="1207226880602" resolveInfo="parent"/>
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation"
                          id="1207226909993">
                      <link role="baseMethodDeclaration"
                            targetNodeId="2.~SNode.insertChild(jetbrains.mps.smodel.SNode,java.lang.String,jetbrains.mps.smodel.SNode):void"
                            resolveInfo="insertChild"/>
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                            id="1207226922744">
                        <link role="variableDeclaration" targetNodeId="1207226213783" resolveInfo="nodeToCopy"/>
                      </node>
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                            id="1207226940489">
                        <link role="variableDeclaration" targetNodeId="1207226933325" resolveInfo="role"/>
                      </node>
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                            id="1207226944038">
                        <link role="variableDeclaration" targetNodeId="1207226863765" resolveInfo="copy"/>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1207226945712"/>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1207226842645">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression"
                      id="1207226845571">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.EnumConstantReference"
                        id="1207226851919">
                    <link role="enumConstantDeclaration" targetNodeId="4.~Cardinality._1__n" resolveInfo="_1__n"/>
                    <link role="enumClass" targetNodeId="4.~Cardinality" resolveInfo="Cardinality"/>
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                        id="1207226844476">
                    <link role="variableDeclaration" targetNodeId="1207226814368" resolveInfo="cardinality"/>
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression"
                      id="1207226818561">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                        id="1207226814388">
                    <link role="variableDeclaration" targetNodeId="1207226814368" resolveInfo="cardinality"/>
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.EnumConstantReference"
                        id="1207226840785">
                    <link role="enumConstantDeclaration" targetNodeId="4.~Cardinality._0__n" resolveInfo="_0__n"/>
                    <link role="enumClass" targetNodeId="4.~Cardinality" resolveInfo="Cardinality"/>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207226399661">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression"
                    id="1207226401054">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                      id="1207226884780">
                  <link role="variableDeclaration" targetNodeId="1207226880602" resolveInfo="parent"/>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                      id="1207226399662">
                  <link role="variableDeclaration" targetNodeId="1207226213783" resolveInfo="nodeToCopy"/>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1207226385952">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1207226387721"/>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207226383278">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                    id="1207226382417">
                <link role="variableDeclaration" targetNodeId="1207226213783" resolveInfo="nodeToCopy"/>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation"
                    id="1207226384467"/>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="keystroke" type="jetbrains.mps.bootstrap.pluginLanguage.structure.KeyMapKeystroke" id="1207909043755">
      <property name="modifiers" value="ctrl"/>
      <property name="keycode" value="VK_D"/>
    </node>
  </node>
  <visible index="3" modelUID="jetbrains.mps.ide.actions"/>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionGroupDeclaration" id="1207227007620">
    <property name="name" value="EditorActions"/>
    <node role="modifier" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ModificationStatement"
          id="1207227048469">
      <link role="modifiedGroup" targetNodeId="3v.1204991231476" resolveInfo="EditorPopup"/>
    </node>
    <node role="modifier" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ModificationStatement"
          id="1207910596238">
      <link role="modifiedGroup" targetNodeId="3v.1204991235731" resolveInfo="Edit"/>
      <link role="point" targetNodeId="3v.1207910902706" resolveInfo="custom"/>
    </node>
    <node role="contents" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ElementListContents"
          id="1207227023325">
      <node role="reference" type="jetbrains.mps.bootstrap.pluginLanguage.structure.ActionReference" id="1207227037234">
        <link role="action" targetNodeId="1207225803603" resolveInfo="CopyThisDown"/>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.pluginLanguage.structure.CustomPluginDeclaration" id="1207844373881">
    <property name="name" value="EditorLangPlugin"/>
    <node role="fieldDeclaration" type="jetbrains.mps.bootstrap.pluginLanguage.structure.PluginFieldDeclaration"
          id="1207844410108">
      <property name="name" value="myAutoResolver"/>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility" id="1207844410109"/>
      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1207844443367">
        <link role="classifier" targetNodeId="6.~AutoResolver" resolveInfo="AutoResolver"/>
      </node>
    </node>
    <node role="initBlock" type="jetbrains.mps.bootstrap.pluginLanguage.structure.InitBlock" id="1207844406262">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207844406263">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207844454228">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1207844456560">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1207844462407">
              <link role="baseMethodDeclaration" targetNodeId="6.~AutoResolver.&lt;init&gt;()"
                    resolveInfo="AutoResolver"/>
            </node>
            <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207844454229">
              <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson"
                    id="1207844454230"/>
              <node role="operation"
                    type="jetbrains.mps.bootstrap.pluginLanguage.structure.PluginFieldReferenceOperation"
                    id="1207844454231">
                <link role="member" targetNodeId="1207844410108" resolveInfo="myAutoResolver"/>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
              id="1207844495367">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"
                id="1207844495368">
            <property name="name" value="highlighter"/>
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1207844495369">
              <link role="classifier" targetNodeId="7.~Highlighter" resolveInfo="Highlighter"/>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207844502494">
              <node role="operand"
                    type="jetbrains.mps.bootstrap.pluginLanguage.structure.ConceptFunctionParameter_MPSProject"
                    id="1207844501371"/>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation"
                    id="1207844509018">
                <link role="baseMethodDeclaration"
                      targetNodeId="8.~MPSProject.getComponent(java.lang.Class):java.lang.Object"
                      resolveInfo="getComponent"/>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression"
                      id="1207844519373">
                  <link role="classifier" targetNodeId="7.~Highlighter" resolveInfo="Highlighter"/>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1207844522220">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207844522221">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207844535198">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207844536106">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                      id="1207844535199">
                  <link role="variableDeclaration" targetNodeId="1207844495368" resolveInfo="highlighter"/>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation"
                      id="1207844537077">
                  <link role="baseMethodDeclaration"
                        targetNodeId="7.~Highlighter.addChecker(jetbrains.mps.helgins.checking.IEditorChecker):void"
                        resolveInfo="addChecker"/>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression"
                        id="1207844539359">
                    <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson"
                          id="1207844539360"/>
                    <node role="operation"
                          type="jetbrains.mps.bootstrap.pluginLanguage.structure.PluginFieldReferenceOperation"
                          id="1207844539361">
                      <link role="member" targetNodeId="1207844410108" resolveInfo="myAutoResolver"/>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1207844524990">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1207844526837"/>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                  id="1207844524161">
              <link role="variableDeclaration" targetNodeId="1207844495368" resolveInfo="highlighter"/>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="disposeBlock" type="jetbrains.mps.bootstrap.pluginLanguage.structure.DisposeBlock" id="1207844548925">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207844548926">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"
              id="1207844554100">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"
                id="1207844554101">
            <property name="name" value="highlighter"/>
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1207844554102">
              <link role="classifier" targetNodeId="7.~Highlighter" resolveInfo="Highlighter"/>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207844554103">
              <node role="operand"
                    type="jetbrains.mps.bootstrap.pluginLanguage.structure.ConceptFunctionParameter_MPSProject"
                    id="1207844554104"/>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation"
                    id="1207844554105">
                <link role="baseMethodDeclaration"
                      targetNodeId="8.~MPSProject.getComponent(java.lang.Class):java.lang.Object"
                      resolveInfo="getComponent"/>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression"
                      id="1207844554106">
                  <link role="classifier" targetNodeId="7.~Highlighter" resolveInfo="Highlighter"/>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1207844554107">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207844554108">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207844554109">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207844554110">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                      id="1207844554111">
                  <link role="variableDeclaration" targetNodeId="1207844554101" resolveInfo="highlighter"/>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation"
                      id="1207844554112">
                  <link role="baseMethodDeclaration"
                        targetNodeId="7.~Highlighter.removeChecker(jetbrains.mps.helgins.checking.IEditorChecker):void"
                        resolveInfo="removeChecker"/>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression"
                        id="1207844554113">
                    <node role="operand" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpresson"
                          id="1207844554114"/>
                    <node role="operation"
                          type="jetbrains.mps.bootstrap.pluginLanguage.structure.PluginFieldReferenceOperation"
                          id="1207844554115">
                      <link role="member" targetNodeId="1207844410108" resolveInfo="myAutoResolver"/>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1207844554116">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1207844554117"/>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference"
                  id="1207844554118">
              <link role="variableDeclaration" targetNodeId="1207844554101" resolveInfo="highlighter"/>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


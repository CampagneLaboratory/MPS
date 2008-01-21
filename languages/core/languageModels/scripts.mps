<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.core.scripts">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.baseLanguage" />
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage" />
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang" />
  <language namespace="jetbrains.mps.ide.scriptLanguage" />
  <language namespace="jetbrains.mps.logging.refactoring" />
  <language namespace="jetbrains.mps.quotation" />
  <language namespace="jetbrains.mps.core" />
  <language namespace="jetbrains.mps.bootstrap.constraintsLanguage" />
  <language namespace="jetbrains.mps.bootstrap.editorLanguage" />
  <maxImportIndex value="23" />
  <import index="1" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="2" modelUID="jetbrains.mps.ide.action@java_stub" version="-1" />
  <import index="3" modelUID="java.io@java_stub" version="-1" />
  <import index="4" modelUID="java.lang@java_stub" version="-1" />
  <import index="5" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="6" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1" />
  <import index="7" modelUID="java.util@java_stub" version="-1" />
  <import index="8" modelUID="jetbrains.mps.refactoring.framework@java_stub" version="-1" />
  <import index="9" modelUID="jetbrains.mps.util@java_stub" version="-1" />
  <import index="10" modelUID="jetbrains.mps.bootstrap.structureLanguage.constraints" version="-1" />
  <import index="11" modelUID="jetbrains.mps.baseLanguage.structure" version="-1" />
  <import index="12" modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="-1" />
  <import index="13" modelUID="jetbrains.mps.bootstrap.constraintsLanguage.constraints" version="-1" />
  <import index="14" modelUID="jetbrains.mps.smodel.search@java_stub" version="-1" />
  <import index="15" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure@java_stub" version="-1" />
  <import index="16" modelUID="jetbrains.mps.ide@java_stub" version="-1" />
  <import index="17" modelUID="jetbrains.mps.ide.navigation@java_stub" version="-1" />
  <import index="18" modelUID="jetbrains.mps.project@java_stub" version="-1" />
  <import index="19" modelUID="jetbrains.mps.bootstrap.structureLanguage.findUsages@java_stub" version="-1" />
  <import index="20" modelUID="jetbrains.mps.ide.findusages.model.searchquery@java_stub" version="-1" />
  <import index="21" modelUID="jetbrains.mps.ide.findusages.model.result@java_stub" version="-1" />
  <import index="22" modelUID="javax.swing@java_stub" version="-1" />
  <import index="23" modelUID="jetbrains.mps.ide.findusages.view@java_stub" version="-1" />
  <node type="jetbrains.mps.logging.refactoring.structure.Refactoring" id="1198076144993">
    <property name="name" value="MoveNodes" />
    <property name="userFriendlyName" value="Move Nodes" />
    <link role="applicableConcept" targetNodeId="1.1133920641626" resolveInfo="BaseConcept" />
    <node role="internalArguments" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgument" id="1198079405212">
      <property name="name" value="role" />
      <node role="argumentType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198079409620">
        <link role="classifier" targetNodeId="4.~String" resolveInfo="String" />
      </node>
    </node>
    <node role="arguments" type="jetbrains.mps.logging.refactoring.structure.RequiredUserEnteredArgument" id="1198076162946">
      <property name="name" value="target" />
      <property name="presentation" value="choose target" />
      <node role="argumentType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198076213171">
        <link role="classifier" targetNodeId="4.~Object" resolveInfo="Object" />
      </node>
      <node role="chooseComponentClause" type="jetbrains.mps.logging.refactoring.structure.ChooseComponentClause" id="1198076218734">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198076218735">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1198076221377">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1198076225347">
              <link role="baseMethodDeclaration" targetNodeId="8.~ChooseNodeOrModelComponent.&lt;init&gt;(java.lang.String,java.lang.String,jetbrains.mps.ide.action.ActionContext,java.lang.String,boolean,boolean)" resolveInfo="ChooseNodeOrModelComponent" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1198076339726">
                <property name="value" value="choose target" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1198076355384">
                <property name="value" value="target" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1198076823903" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1198076884972" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1198076889505">
                <property name="value" value="true" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1198076893101">
                <property name="value" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableClause" type="jetbrains.mps.logging.refactoring.structure.IsApplicableClause" id="1198077595126">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198077595127">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198077659039">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198077659040">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1198077747371">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1198077749560">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198077740149">
            <link role="baseMethodDeclaration" targetNodeId="7.~List.isEmpty():boolean" resolveInfo="isEmpty" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198077740150">
              <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNodes():java.util.List" resolveInfo="getNodes" />
              <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1198077740151" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198077782188">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198077782189">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198078072588">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198078072589">
                <property name="name" value="targetNode" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1198078072590" />
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1198077958401">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1198077958402">
                    <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1198077958403" />
                    <node role="expression" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1198077963030">
                      <link role="argument" targetNodeId="1198076162946" resolveInfo="target" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198077941205">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198077941206">
                <property name="name" value="concept" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1198077941207" />
                <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198078063428">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetConceptOperation" id="1198078064571" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198078072591">
                    <link role="variableDeclaration" targetNodeId="1198078072589" resolveInfo="targetNode" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199553244200">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199553244201">
                <property name="name" value="superConceptsScope" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199553244202">
                  <link role="classifier" targetNodeId="14.~ConceptAndSuperConceptsScope" resolveInfo="ConceptAndSuperConceptsScope" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1199553244203">
                  <link role="baseMethodDeclaration" targetNodeId="14.~ConceptAndSuperConceptsScope.&lt;init&gt;(jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration)" resolveInfo="ConceptAndSuperConceptsScope" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199553244204">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199553244205">
                      <link role="variableDeclaration" targetNodeId="1198077941206" resolveInfo="concept" />
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1199553244206" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199553331594">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199553331595">
                <property name="name" value="linkDeclarations" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199553331596">
                  <link role="classifier" targetNodeId="7.~List" resolveInfo="List" />
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199553331597">
                    <link role="classifier" targetNodeId="15.~LinkDeclaration" resolveInfo="LinkDeclaration" />
                  </node>
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199553331598">
                  <link role="baseMethodDeclaration" targetNodeId="14.~ConceptAndSuperConceptsScope.getLinkDeclarationsExcludingOverridden():java.util.List" resolveInfo="getLinkDeclarationsExcludingOverridden" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199553331599">
                    <link role="variableDeclaration" targetNodeId="1199553244201" resolveInfo="superConceptsScope" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198080415516">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198080415517">
                <property name="name" value="childLinkDeclarations" />
                <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1198080415518">
                  <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1198080415519">
                    <link role="concept" targetNodeId="6.1071489288298" resolveInfo="LinkDeclaration" />
                  </node>
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1199553454547">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1198078284381">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199553358175">
                      <link role="variableDeclaration" targetNodeId="1199553331595" resolveInfo="linkDeclarations" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1198078606117">
                      <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1198078606118">
                        <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1198078606119">
                          <property name="name" value="it" />
                        </node>
                        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198078606120">
                          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198078628093">
                            <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199553424442">
                              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1199553425616">
                                <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1199553425617">
                                  <link role="enumMember" targetNodeId="6.1084199179705" resolveInfo="aggregation" />
                                </node>
                              </node>
                              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199553409598">
                                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199553420286">
                                  <link role="property" targetNodeId="6.1071599937831" resolveInfo="metaClass" />
                                </node>
                                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1199553408141">
                                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199553408142">
                                    <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199553408143">
                                      <link role="concept" targetNodeId="6.1071489288298" resolveInfo="LinkDeclaration" />
                                    </node>
                                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199553408144">
                                      <link role="baseMethodDeclaration" targetNodeId="5.~BaseAdapter.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
                                      <node role="instance" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199553408145">
                                        <link role="closureParameter" targetNodeId="1198078606119" resolveInfo="it" />
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
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SelectOperation" id="1199553455267">
                    <node role="selector" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SelectorBlock" id="1199553455268">
                      <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1199553455269">
                        <property name="name" value="it" />
                      </node>
                      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199553455270">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199553458129">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199553507411">
                            <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199553507412">
                              <link role="baseMethodDeclaration" targetNodeId="5.~BaseAdapter.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
                              <node role="instance" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199553507413">
                                <link role="closureParameter" targetNodeId="1199553455269" resolveInfo="it" />
                              </node>
                            </node>
                            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199553509993">
                              <link role="concept" targetNodeId="6.1071489288298" resolveInfo="LinkDeclaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198078651966">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198078651967">
                <property name="name" value="childLinksRoles" />
                <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1198078651968">
                  <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198079741222">
                    <link role="classifier" targetNodeId="4.~String" resolveInfo="String" />
                  </node>
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1198078769574">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198080415520">
                    <link role="variableDeclaration" targetNodeId="1198080415517" resolveInfo="childLinkDeclarations" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SelectOperation" id="1198078775857">
                    <node role="selector" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SelectorBlock" id="1198078775858">
                      <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1198078775859">
                        <property name="name" value="it" />
                      </node>
                      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198078775860">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198078785611">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1199553539512">
                            <link role="baseMethodDeclaration" targetNodeId="5.~SModelUtil_new.getGenuineLinkRole(jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration):java.lang.String" resolveInfo="getGenuineLinkRole" />
                            <link role="classConcept" targetNodeId="5.~SModelUtil_new" resolveInfo="SModelUtil_new" />
                            <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199553543185">
                              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1199553544282" />
                              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199553542278">
                                <link role="closureParameter" targetNodeId="1198078775859" resolveInfo="it" />
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
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1198078082609">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198078082610">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198080494863">
                  <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198080494864">
                    <property name="name" value="childRole" />
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198080494865">
                      <link role="classifier" targetNodeId="4.~String" resolveInfo="String" />
                    </node>
                    <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198079781475">
                      <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getRole_():java.lang.String" resolveInfo="getRole_" />
                      <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1198079775377">
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198079769638">
                          <link role="variableDeclaration" targetNodeId="1198078082613" resolveInfo="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198079760598">
                  <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1198079762867">
                    <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1198079766339">
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198079763963">
                        <link role="variableDeclaration" targetNodeId="1198078651967" resolveInfo="childLinksRoles" />
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ContainsOperation" id="1198079768199">
                        <node role="argument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198080494866">
                          <link role="variableDeclaration" targetNodeId="1198080494864" resolveInfo="childRole" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198079760600">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1198079783523">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1198079785634">
                        <property name="value" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1198080385428">
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198080385429">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198080385430">
                      <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198080385431">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198081235746">
                          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198081235747">
                            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1198081254971">
                              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1198081258442">
                                <property name="value" value="false" />
                              </node>
                            </node>
                          </node>
                          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1198081239242">
                            <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198081248791">
                              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198081248792">
                                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198081248793">
                                  <link role="variableDeclaration" targetNodeId="1198080385435" resolveInfo="linkDeclaration" />
                                </node>
                                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1198081248794">
                                  <link role="link" targetNodeId="6.1071599976176" />
                                </node>
                              </node>
                              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1198081248795">
                                <link role="conceptMethodDeclaration" targetNodeId="10.1198080700262" resolveInfo="isAssignableFrom" />
                                <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198081248796">
                                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198081248797">
                                    <link role="variableDeclaration" targetNodeId="1198078082613" resolveInfo="node" />
                                  </node>
                                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetConceptOperation" id="1198081248798" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="condition" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198080487659">
                        <link role="baseMethodDeclaration" targetNodeId="4.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                        <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198080468118">
                          <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1198080471199">
                            <link role="property" targetNodeId="6.1071599776563" resolveInfo="role" />
                          </node>
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198080424037">
                            <link role="variableDeclaration" targetNodeId="1198080385435" resolveInfo="linkDeclaration" />
                          </node>
                        </node>
                        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198080500695">
                          <link role="variableDeclaration" targetNodeId="1198080494864" resolveInfo="childRole" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="iterable" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198080464867">
                    <link role="variableDeclaration" targetNodeId="1198080415517" resolveInfo="childLinkDeclarations" />
                  </node>
                  <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198080385435">
                    <property name="name" value="linkDeclaration" />
                    <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1198080390421">
                      <link role="concept" targetNodeId="6.1071489288298" resolveInfo="LinkDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="iterable" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198078096166">
                <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNodes():java.util.List" resolveInfo="getNodes" />
                <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1198078093585" />
              </node>
              <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198078082613">
                <property name="name" value="node" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1198078086943" />
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1198081270945">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1198081273588">
                <property name="value" value="true" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" id="1198078009142">
            <node role="classType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198078059755">
              <link role="classifier" targetNodeId="5.~SNode" resolveInfo="SNode" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1198078007813">
              <link role="argument" targetNodeId="1198076162946" resolveInfo="target" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198077799776">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198077799777">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1198077826662">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198077826663">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198077841409">
                  <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198077841410">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1198077841411">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1198082481655">
                        <property name="value" value="false" />
                      </node>
                    </node>
                  </node>
                  <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1198081463443">
                    <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198081463444">
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1198081463445">
                        <link role="concept" targetNodeId="6.1071489090640" resolveInfo="ConceptDeclaration" />
                        <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1198081463446">
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198081463447">
                            <link role="variableDeclaration" targetNodeId="1198077826667" resolveInfo="node" />
                          </node>
                          <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetConceptOperation" id="1198081463448" />
                        </node>
                      </node>
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199048485531">
                        <link role="property" targetNodeId="6.1096454100552" resolveInfo="rootable" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="iterable" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198077838064">
                <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNodes():java.util.List" resolveInfo="getNodes" />
                <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1198077835170" />
              </node>
              <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198077826667">
                <property name="name" value="node" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1198078215778" />
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1198082486141">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1198082487393">
                <property name="value" value="true" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" id="1198077803140">
            <node role="classType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198077811081">
              <link role="classifier" targetNodeId="5.~SModel" resolveInfo="SModel" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1198077802014">
              <link role="argument" targetNodeId="1198076162946" resolveInfo="target" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1198077845946">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1198077848823">
            <property name="value" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node role="doRefactorClause" type="jetbrains.mps.logging.refactoring.structure.DoRefactorClause" id="1198082838885">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198082838886">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198082944516">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198082944517">
            <property name="name" value="nodes" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1198082944518" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1198082944519">
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1198082944520" />
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1198082944521">
                <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNodes():java.util.List" resolveInfo="getNodes" />
                <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1198082944522" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199555206075">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199555206076">
            <property name="name" value="targetModel" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199555212391">
              <link role="classifier" targetNodeId="5.~SModel" resolveInfo="SModel" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1199555218034" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199625160585">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199625160586">
            <property name="name" value="movedNodes" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1199625160587" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1199625167840" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198082954071">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198082954072">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199627188714">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199627190357">
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627188715">
                  <link role="variableDeclaration" targetNodeId="1199625160586" resolveInfo="movedNodes" />
                </node>
                <node role="rValue" type="jetbrains.mps.logging.refactoring.structure.MoveNodesToModelExpression" id="1199627194735">
                  <node role="whatToMove" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627194736">
                    <link role="variableDeclaration" targetNodeId="1198082944517" resolveInfo="nodes" />
                  </node>
                  <node role="destination" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199627194737">
                    <node role="expression" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1199627194738">
                      <link role="argument" targetNodeId="1198076162946" resolveInfo="target" />
                    </node>
                    <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SModelType" id="1199627194739" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199555224270">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199555225897">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199555228228">
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199555228229">
                    <link role="classifier" targetNodeId="5.~SModel" resolveInfo="SModel" />
                  </node>
                  <node role="expression" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1199555230591">
                    <link role="argument" targetNodeId="1198076162946" resolveInfo="target" />
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199555224271">
                  <link role="variableDeclaration" targetNodeId="1199555206076" resolveInfo="targetModel" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" id="1198083001642">
            <node role="classType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198083004661">
              <link role="classifier" targetNodeId="5.~SModel" resolveInfo="SModel" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1198082991405">
              <link role="argument" targetNodeId="1198076162946" resolveInfo="target" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198083016323">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198083016324">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199627204241">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199627205587">
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627204242">
                  <link role="variableDeclaration" targetNodeId="1199625160586" resolveInfo="movedNodes" />
                </node>
                <node role="rValue" type="jetbrains.mps.logging.refactoring.structure.MoveNodesToNodeExpression" id="1199627210637">
                  <node role="whatToMove" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627210638">
                    <link role="variableDeclaration" targetNodeId="1198082944517" resolveInfo="nodes" />
                  </node>
                  <node role="destination" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199627210639">
                    <node role="expression" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1199627210640">
                      <link role="argument" targetNodeId="1198076162946" resolveInfo="target" />
                    </node>
                    <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199627210641" />
                  </node>
                  <node role="roleInTarget" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199627210642">
                    <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getRole_():java.lang.String" resolveInfo="getRole_" />
                    <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1199627210643">
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1199627210644">
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627210645">
                          <link role="variableDeclaration" targetNodeId="1198082944517" resolveInfo="nodes" />
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetElementOperation" id="1199627210646">
                          <node role="argument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1199627210647">
                            <property name="value" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199555238171">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199555248173">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199555264922">
                  <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getModel():jetbrains.mps.smodel.SModel" resolveInfo="getModel" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1199555262290">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199555262291">
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199555262292">
                        <link role="classifier" targetNodeId="5.~SNode" resolveInfo="SNode" />
                      </node>
                      <node role="expression" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1199555262293">
                        <link role="argument" targetNodeId="1198076162946" resolveInfo="target" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199555238172">
                  <link role="variableDeclaration" targetNodeId="1199555206076" resolveInfo="targetModel" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" id="1198083023187">
            <node role="classType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198083029909">
              <link role="classifier" targetNodeId="5.~SNode" resolveInfo="SNode" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1198083021530">
              <link role="argument" targetNodeId="1198076162946" resolveInfo="target" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199555270939">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199555270940">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199556389521">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199556389522">
                <property name="name" value="module" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199556389523">
                  <link role="classifier" targetNodeId="18.~IModule" resolveInfo="IModule" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199556408110">
                  <link role="baseMethodDeclaration" targetNodeId="5.~SModelDescriptor.getModule():jetbrains.mps.project.IModule" resolveInfo="getModule" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199556404482">
                    <link role="baseMethodDeclaration" targetNodeId="5.~SModel.getModelDescriptor():jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getModelDescriptor" />
                    <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199556397197">
                      <link role="variableDeclaration" targetNodeId="1199555206076" resolveInfo="targetModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199555293199">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199555293200">
                <property name="name" value="operationContext" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199555293201">
                  <link role="classifier" targetNodeId="5.~IOperationContext" resolveInfo="IOperationContext" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1199556412768">
                  <link role="baseMethodDeclaration" targetNodeId="18.~ModuleContext.&lt;init&gt;(jetbrains.mps.project.IModule,jetbrains.mps.project.MPSProject)" resolveInfo="ModuleContext" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199556427404">
                    <link role="variableDeclaration" targetNodeId="1199556389522" resolveInfo="module" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199556441147">
                    <link role="baseMethodDeclaration" targetNodeId="5.~IOperationContext.getProject():jetbrains.mps.project.MPSProject" resolveInfo="getProject" />
                    <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199556436581">
                      <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolveInfo="getOperationContext" />
                      <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1199556432188" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199555326181">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199555326182">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199555337393">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1199555337394">
                    <link role="baseMethodDeclaration" targetNodeId="17.~NavigationActionProcessor.navigateToNode(jetbrains.mps.smodel.SNode,jetbrains.mps.smodel.IOperationContext,boolean):void" resolveInfo="navigateToNode" />
                    <link role="classConcept" targetNodeId="17.~NavigationActionProcessor" resolveInfo="NavigationActionProcessor" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1199555337395">
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627234257">
                        <link role="variableDeclaration" targetNodeId="1199625160586" resolveInfo="movedNodes" />
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetFirstOperation" id="1199555337397" />
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199555337398">
                      <link role="variableDeclaration" targetNodeId="1199555293200" resolveInfo="operationContext" />
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1199555337399">
                      <property name="value" value="true" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1199555328358">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1199555331611" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199555327341">
                  <link role="variableDeclaration" targetNodeId="1199555293200" resolveInfo="operationContext" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1199555275491">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1199555279822" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199555274428">
              <link role="variableDeclaration" targetNodeId="1199555206076" resolveInfo="targetModel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="updateModelClause" type="jetbrains.mps.logging.refactoring.structure.UpdateModelClause" id="1198082847528">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198082847529">
        <node role="statement" type="jetbrains.mps.logging.refactoring.structure.UpdateModelByDefaultOperation" id="1198082938234" />
      </node>
    </node>
    <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1199457345803">
      <property name="keycode" value="VK_F6" />
    </node>
  </node>
  <node type="jetbrains.mps.logging.refactoring.structure.Refactoring" id="1199457919461">
    <property name="name" value="Rename" />
    <property name="userFriendlyName" value="Rename" />
    <link role="applicableConcept" targetNodeId="1.1133920641626" resolveInfo="BaseConcept" />
    <node role="arguments" type="jetbrains.mps.logging.refactoring.structure.RequiredUserEnteredArgument" id="1199457954885">
      <property name="name" value="newName" />
      <property name="presentation" value="new name:" />
      <node role="argumentType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199457964231">
        <link role="classifier" targetNodeId="4.~String" resolveInfo="String" />
      </node>
      <node role="initialValue" type="jetbrains.mps.logging.refactoring.structure.InitialValueClause" id="1199457987467">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199457987468">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199457990515">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199458007336">
              <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getName():java.lang.String" resolveInfo="getName" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199458001082">
                <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
                <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1199457990516" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1199457935196">
      <property name="modifiers" value="shift" />
      <property name="keycode" value="VK_F6" />
    </node>
    <node role="isApplicableClause" type="jetbrains.mps.logging.refactoring.structure.IsApplicableClause" id="1199458011650">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199458011651">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199458013855">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1199458018282">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1199458020176" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199458016328">
              <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
              <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1199458013856" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="doRefactorClause" type="jetbrains.mps.logging.refactoring.structure.DoRefactorClause" id="1199458026193">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199458026194">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199458037888">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199458037889">
            <property name="name" value="node" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199458037890">
              <link role="classifier" targetNodeId="5.~SNode" resolveInfo="SNode" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199458037891">
              <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
              <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1199458037892" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199458047098">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199458050040">
            <link role="baseMethodDeclaration" targetNodeId="5.~SNode.setName(java.lang.String):void" resolveInfo="setName" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199458047099">
              <link role="variableDeclaration" targetNodeId="1199458037889" resolveInfo="node" />
            </node>
            <node role="actualArgument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1199458052916">
              <link role="argument" targetNodeId="1199457954885" resolveInfo="newName" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.logging.refactoring.structure.Refactoring" id="1200665013408">
    <property name="name" value="SafeDelete" />
    <property name="userFriendlyName" value="Safe Delete (under construction)" />
    <link role="applicableConcept" targetNodeId="1.1133920641626" resolveInfo="BaseConcept" />
    <node role="internalArguments" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgument" id="1200933930873">
      <property name="name" value="showAffectedNodes" />
      <node role="argumentType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1200933933750" />
    </node>
    <node role="isApplicableClause" type="jetbrains.mps.logging.refactoring.structure.IsApplicableClause" id="1200666435294">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200666435295">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200666590002">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200666590003">
            <property name="name" value="node" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1200666590004" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200666598900">
              <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
              <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1200666595084" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1200666600808">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200666600809">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1200666608989">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1200666611319">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1200666605688">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1200666607691" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200666604453">
              <link role="variableDeclaration" targetNodeId="1200666590003" resolveInfo="node" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200914856262">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200914856263">
            <property name="name" value="searchQuery" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1200914856264">
              <link role="classifier" targetNodeId="20.~SearchQuery" resolveInfo="SearchQuery" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1200914856265">
              <link role="baseMethodDeclaration" targetNodeId="20.~SearchQuery.&lt;init&gt;(jetbrains.mps.smodel.SNodePointer,jetbrains.mps.smodel.IScope)" resolveInfo="SearchQuery" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1200914856266">
                <link role="baseMethodDeclaration" targetNodeId="5.~SNodePointer.&lt;init&gt;(jetbrains.mps.smodel.SNode)" resolveInfo="SNodePointer" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200914856267">
                  <link role="variableDeclaration" targetNodeId="1200666590003" resolveInfo="node" />
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200914856268">
                <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getScope():jetbrains.mps.smodel.IScope" resolveInfo="getScope" />
                <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1200914856269" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200666877987">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200666877988">
            <property name="name" value="searchResults" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1200666877989">
              <link role="classifier" targetNodeId="21.~SearchResults" resolveInfo="SearchResults" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200666877990">
              <link role="baseMethodDeclaration" targetNodeId="19.~NodeUsages_Finder.find(jetbrains.mps.ide.findusages.model.searchquery.SearchQuery):jetbrains.mps.ide.findusages.model.result.SearchResults" resolveInfo="find" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200914856270">
                <link role="variableDeclaration" targetNodeId="1200914856263" resolveInfo="searchQuery" />
              </node>
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1200666877996">
                <link role="baseMethodDeclaration" targetNodeId="19.~NodeUsages_Finder.&lt;init&gt;()" resolveInfo="NodeUsages_Finder" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200667165175">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200667165176">
            <property name="name" value="aliveResults" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1200667165177">
              <link role="classifier" targetNodeId="7.~List" resolveInfo="List" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1200667184581">
                <link role="classifier" targetNodeId="21.~SearchResult" resolveInfo="SearchResult" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200667198899">
              <link role="baseMethodDeclaration" targetNodeId="21.~SearchResults.getAliveResults():java.util.List" resolveInfo="getAliveResults" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200667194958">
                <link role="variableDeclaration" targetNodeId="1200666877988" resolveInfo="searchResults" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1200667205057">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200667205058">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200667632822">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200667632823">
                <property name="name" value="size" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1200667632824" />
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200667640454">
                  <link role="baseMethodDeclaration" targetNodeId="7.~List.size():int" resolveInfo="size" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200667638513">
                    <link role="variableDeclaration" targetNodeId="1200667165176" resolveInfo="aliveResults" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200914765077">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200914765078">
                <property name="name" value="projectFrame" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1200914765079">
                  <link role="classifier" targetNodeId="16.~IDEProjectFrame" resolveInfo="IDEProjectFrame" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1200914765080">
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1200914765081">
                    <link role="classifier" targetNodeId="16.~IDEProjectFrame" resolveInfo="IDEProjectFrame" />
                  </node>
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200914765082">
                    <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.get(java.lang.Class):java.lang.Object" resolveInfo="get" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1200914765083">
                      <link role="classifier" targetNodeId="16.~IDEProjectFrame" resolveInfo="IDEProjectFrame" />
                    </node>
                    <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1200914765084" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200933694689">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200933694690">
                <property name="name" value="message" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1200933694691">
                  <link role="classifier" targetNodeId="4.~String" resolveInfo="String" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1200933694692">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200933694693">
                    <link role="variableDeclaration" targetNodeId="1200667632823" resolveInfo="size" />
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1200933694694">
                    <property name="value" value=" usages found. delete anyway?" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200933704227">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200933704228">
                <property name="name" value="component" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1200933704229">
                  <link role="classifier" targetNodeId="22.~JFrame" resolveInfo="JFrame" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200933704230">
                  <link role="baseMethodDeclaration" targetNodeId="16.~AbstractProjectFrame.getMainFrame():javax.swing.JFrame" resolveInfo="getMainFrame" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200933704231">
                    <link role="variableDeclaration" targetNodeId="1200914765078" resolveInfo="projectFrame" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200933860428">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200933860429">
                <property name="name" value="option" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1200933860430" />
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1200933860431">
                  <link role="classConcept" targetNodeId="22.~JOptionPane" resolveInfo="JOptionPane" />
                  <link role="baseMethodDeclaration" targetNodeId="22.~JOptionPane.showConfirmDialog(java.awt.Component,java.lang.Object,java.lang.String,int):int" resolveInfo="showConfirmDialog" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200933860432">
                    <link role="variableDeclaration" targetNodeId="1200933704228" resolveInfo="component" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200933860433">
                    <link role="variableDeclaration" targetNodeId="1200933694690" resolveInfo="message" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1200933860434">
                    <property name="value" value="Safe Delete" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1200933860435">
                    <link role="classifier" targetNodeId="22.~JOptionPane" resolveInfo="JOptionPane" />
                    <link role="variableDeclaration" targetNodeId="22.~JOptionPane.YES_NO_OPTION" resolveInfo="YES_NO_OPTION" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1200933870750">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200933870751">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200934011197">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1200934012355">
                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1200934013593">
                      <property name="value" value="true" />
                    </node>
                    <node role="lValue" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1200934011198">
                      <link role="argument" targetNodeId="1200933930873" resolveInfo="showAffectedNodes" />
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1200933914150">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1200933919590">
                    <property name="value" value="true" />
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1200933884942">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1200933894164">
                  <link role="classifier" targetNodeId="22.~JOptionPane" resolveInfo="JOptionPane" />
                  <link role="variableDeclaration" targetNodeId="22.~JOptionPane.YES_OPTION" resolveInfo="YES_OPTION" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200933880551">
                  <link role="variableDeclaration" targetNodeId="1200933860429" resolveInfo="option" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1200667667540">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1200667669496">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1200667234473">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200667234474">
              <link role="baseMethodDeclaration" targetNodeId="7.~List.isEmpty():boolean" resolveInfo="isEmpty" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200667234475">
                <link role="variableDeclaration" targetNodeId="1200667165176" resolveInfo="aliveResults" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200934022594">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1200934023815">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1200934025365">
              <property name="value" value="false" />
            </node>
            <node role="lValue" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1200934022595">
              <link role="argument" targetNodeId="1200933930873" resolveInfo="showAffectedNodes" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1200667324293">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1200667326529">
            <property name="value" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="doRefactorClause" type="jetbrains.mps.logging.refactoring.structure.DoRefactorClause" id="1200667302899">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200667302900">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200667305558">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200667305559">
            <property name="name" value="node" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1200667305560" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200667312908">
              <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
              <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1200667309765" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200667315254">
          <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1200667316272">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_DeleteOperation" id="1200667317150" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200667315255">
              <link role="variableDeclaration" targetNodeId="1200667305559" resolveInfo="node" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1200919343189">
      <property name="modifiers" value="alt" />
      <property name="keycode" value="VK_DELETE" />
    </node>
    <node role="affectedNodesClause" type="jetbrains.mps.logging.refactoring.structure.AffectedNodesClause" id="1200933346055">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200933346056">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1200934698105">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200934698106">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1200934705363">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1200934706880" />
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1200934702907">
            <node role="expression" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1200934702908">
              <link role="argument" targetNodeId="1200933930873" resolveInfo="showAffectedNodes" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200933394221">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200933394222">
            <property name="name" value="node" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1200933394223" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200933394224">
              <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
              <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1200933394225" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200933375731">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200933375732">
            <property name="name" value="searchQuery" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1200933375733">
              <link role="classifier" targetNodeId="20.~SearchQuery" resolveInfo="SearchQuery" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1200933375734">
              <link role="baseMethodDeclaration" targetNodeId="20.~SearchQuery.&lt;init&gt;(jetbrains.mps.smodel.SNodePointer,jetbrains.mps.smodel.IScope)" resolveInfo="SearchQuery" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1200933375735">
                <link role="baseMethodDeclaration" targetNodeId="5.~SNodePointer.&lt;init&gt;(jetbrains.mps.smodel.SNode)" resolveInfo="SNodePointer" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200933399679">
                  <link role="variableDeclaration" targetNodeId="1200933394222" resolveInfo="node" />
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200933375737">
                <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getScope():jetbrains.mps.smodel.IScope" resolveInfo="getScope" />
                <node role="instance" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1200933375738" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200933375739">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200933375740">
            <property name="name" value="searchResults" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1200933375741">
              <link role="classifier" targetNodeId="21.~SearchResults" resolveInfo="SearchResults" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1200933375742">
              <link role="baseMethodDeclaration" targetNodeId="19.~NodeUsages_Finder.find(jetbrains.mps.ide.findusages.model.searchquery.SearchQuery):jetbrains.mps.ide.findusages.model.result.SearchResults" resolveInfo="find" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200933375743">
                <link role="variableDeclaration" targetNodeId="1200933375732" resolveInfo="searchQuery" />
              </node>
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1200933375744">
                <link role="baseMethodDeclaration" targetNodeId="19.~NodeUsages_Finder.&lt;init&gt;()" resolveInfo="NodeUsages_Finder" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1200933409024">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200933412276">
            <link role="variableDeclaration" targetNodeId="1200933375740" resolveInfo="searchResults" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


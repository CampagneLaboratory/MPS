<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.core.scripts">
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
  <language namespace="jetbrains.mps.logging.refactoring" />
  <language namespace="jetbrains.mps.bootstrap.editorLanguage" />
  <language namespace="jetbrains.mps.bootstrap.helgins" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.pluginLanguage.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.findUsagesLanguage.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <maxImportIndex value="34" />
  <import index="1" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="2" modelUID="jetbrains.mps.ide.action@java_stub" version="-1" />
  <import index="4" modelUID="java.lang@java_stub" version="-1" />
  <import index="5" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="6" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1" />
  <import index="7" modelUID="java.util@java_stub" version="-1" />
  <import index="8" modelUID="jetbrains.mps.refactoring.framework@java_stub" version="-1" />
  <import index="14" modelUID="jetbrains.mps.smodel.search@java_stub" version="-1" />
  <import index="15" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure@java_stub" version="-1" />
  <import index="18" modelUID="jetbrains.mps.project@java_stub" version="-1" />
  <import index="19" modelUID="jetbrains.mps.bootstrap.structureLanguage.findUsages@java_stub" version="-1" />
  <import index="24" modelUID="jetbrains.mps.ide.progress@java_stub" version="-1" />
  <import index="26" modelUID="jetbrains.mps.ide.findusages.model@java_stub" version="-1" />
  <import index="30" modelUID="jetbrains.mps.ide.findusages.findalgorithm.finders.specific@java_stub" version="-1" />
  <import index="31" modelUID="jetbrains.mps.workbench.editors@java_stub" version="-1" />
  <import index="32" modelUID="com.intellij.openapi.application@java_stub" version="-1" />
  <import index="33" modelUID="jetbrains.mps.bootstrap.structureLanguage.findUsages" version="-1" />
  <import index="34" modelUID="jetbrains.mps.ide.findusages.view@java_stub" version="-1" />
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
    <node role="internalArguments" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgument" id="1213099173577">
      <property name="name" value="nodeToOpen" />
      <node role="argumentType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213099184774">
        <link role="classifier" targetNodeId="5.~SNode" resolveInfo="SNode" />
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
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213019919921">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213019919923">
                <link role="baseMethodDeclaration" targetNodeId="8.~ChooseNodeOrModelComponent.&lt;init&gt;(jetbrains.mps.ide.action.ActionContext,java.lang.String,boolean,boolean)" resolveInfo="ChooseNodeOrModelComponent" />
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
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886125">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782883058">
              <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1198077740151" />
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782883059">
                <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNodes():java.util.List" resolveInfo="getNodes" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886126">
              <link role="baseMethodDeclaration" targetNodeId="7.~List.isEmpty():boolean" resolveInfo="isEmpty" />
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
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227902621">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198078072591">
                    <link role="variableDeclaration" targetNodeId="1198078072589" resolveInfo="targetNode" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetConceptOperation" id="1198078064571" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199553244200">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199553244201">
                <property name="name" value="superConceptsScope" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199553244202">
                  <link role="classifier" targetNodeId="14.~ConceptAndSuperConceptsScope" resolveInfo="ConceptAndSuperConceptsScope" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213019923205">
                  <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213019923207">
                    <link role="baseMethodDeclaration" targetNodeId="14.~ConceptAndSuperConceptsScope.&lt;init&gt;(jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration)" resolveInfo="ConceptAndSuperConceptsScope" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204672721275">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199553244205">
                        <link role="variableDeclaration" targetNodeId="1198077941206" resolveInfo="concept" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1199553244206" />
                    </node>
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
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886061">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199553331599">
                    <link role="variableDeclaration" targetNodeId="1199553244201" resolveInfo="superConceptsScope" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886062">
                    <link role="baseMethodDeclaration" targetNodeId="14.~ConceptAndSuperConceptsScope.getLinkDeclarationsExcludingOverridden():java.util.List" resolveInfo="getLinkDeclarationsExcludingOverridden" />
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
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782887393">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782887416">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199553358175">
                      <link role="variableDeclaration" targetNodeId="1199553331595" resolveInfo="linkDeclarations" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1198078606117">
                      <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1198078606118">
                        <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1198078606119">
                          <property name="name" value="it" />
                        </node>
                        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198078606120">
                          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198078628093">
                            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227923017">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227912018">
                                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1199553408141">
                                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1199553408142">
                                    <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199553408143">
                                      <link role="concept" targetNodeId="6.1071489288298" resolveInfo="LinkDeclaration" />
                                    </node>
                                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886163">
                                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199553408145">
                                        <link role="closureParameter" targetNodeId="1198078606119" resolveInfo="it" />
                                      </node>
                                      <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886164">
                                        <link role="baseMethodDeclaration" targetNodeId="5.~BaseAdapter.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199553420286">
                                  <link role="property" targetNodeId="6.1071599937831" resolveInfo="metaClass" />
                                </node>
                              </node>
                              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1199553425616">
                                <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1199553425617">
                                  <link role="enumMember" targetNodeId="6.1084199179705" resolveInfo="aggregation" />
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
                            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886157">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199553507413">
                                <link role="closureParameter" targetNodeId="1199553455269" resolveInfo="it" />
                              </node>
                              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886158">
                                <link role="baseMethodDeclaration" targetNodeId="5.~BaseAdapter.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
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
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782887396">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198080415520">
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
                            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204672721425">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199553542278">
                                <link role="closureParameter" targetNodeId="1198078775859" resolveInfo="it" />
                              </node>
                              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1199553544282" />
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
                    <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886165">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1198079775377">
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198079769638">
                          <link role="variableDeclaration" targetNodeId="1198078082613" resolveInfo="node" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886166">
                        <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getRole_():java.lang.String" resolveInfo="getRole_" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198079760598">
                  <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1198079762867">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782887389">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198079763963">
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
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203555341688">
                          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203555341689">
                            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203555341690">
                              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1203555341691">
                                <property name="value" value="false" />
                              </node>
                            </node>
                          </node>
                          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1203555341692">
                            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203555365326">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227915657">
                                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203555341695">
                                  <link role="variableDeclaration" targetNodeId="1198080385435" resolveInfo="linkDeclaration" />
                                </node>
                                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203555341696">
                                  <link role="link" targetNodeId="6.1071599976176" />
                                </node>
                              </node>
                              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Concept_IsSuperConceptOfOperation" id="1203555372874">
                                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PoundExpression" id="1207782895934">
                                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203555383109">
                                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203555380155">
                                      <link role="variableDeclaration" targetNodeId="1198078082613" resolveInfo="node" />
                                    </node>
                                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetConceptOperation" id="1203555387580" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782882982">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227831523">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198080424037">
                            <link role="variableDeclaration" targetNodeId="1198080385435" resolveInfo="linkDeclaration" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1198080471199">
                            <link role="property" targetNodeId="6.1071599776563" resolveInfo="role" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782882983">
                          <link role="baseMethodDeclaration" targetNodeId="4.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                          <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198080500695">
                            <link role="variableDeclaration" targetNodeId="1198080494864" resolveInfo="childRole" />
                          </node>
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
              <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886102">
                <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1198078093585" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886103">
                  <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNodes():java.util.List" resolveInfo="getNodes" />
                </node>
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
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227831659">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1198081463445">
                        <link role="concept" targetNodeId="6.1071489090640" resolveInfo="ConceptDeclaration" />
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227920540">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198081463447">
                            <link role="variableDeclaration" targetNodeId="1198077826667" resolveInfo="node" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetConceptOperation" id="1198081463448" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199048485531">
                        <link role="property" targetNodeId="6.1096454100552" resolveInfo="rootable" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886230">
                <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1198077835170" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886231">
                  <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNodes():java.util.List" resolveInfo="getNodes" />
                </node>
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
            <node role="classType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1202822847908">
              <link role="classifier" targetNodeId="5.~SModelDescriptor" resolveInfo="SModelDescriptor" />
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
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886260">
                <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1198082944522" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886261">
                  <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNodes():java.util.List" resolveInfo="getNodes" />
                </node>
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
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1202822983443">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1202822986304">
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1202822983444">
                  <link role="variableDeclaration" targetNodeId="1199555206076" resolveInfo="targetModel" />
                </node>
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886206">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1202822987262">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1202822987263">
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1202822987264">
                        <link role="classifier" targetNodeId="5.~SModelDescriptor" resolveInfo="SModelDescriptor" />
                      </node>
                      <node role="expression" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1202822987265">
                        <link role="argument" targetNodeId="1198076162946" resolveInfo="target" />
                      </node>
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886207">
                    <link role="baseMethodDeclaration" targetNodeId="5.~SModelDescriptor.getSModel():jetbrains.mps.smodel.SModel" resolveInfo="getSModel" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199627188714">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199627190357">
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627188715">
                  <link role="variableDeclaration" targetNodeId="1199625160586" resolveInfo="movedNodes" />
                </node>
                <node role="rValue" type="jetbrains.mps.logging.refactoring.structure.MoveNodesToModelExpression" id="1199627194735">
                  <node role="whatToMove" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627194736">
                    <link role="variableDeclaration" targetNodeId="1198082944517" resolveInfo="nodes" />
                  </node>
                  <node role="destination" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1202822993439">
                    <link role="variableDeclaration" targetNodeId="1199555206076" resolveInfo="targetModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" id="1198083001642">
            <node role="classType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1202822858676">
              <link role="classifier" targetNodeId="5.~SModelDescriptor" resolveInfo="SModelDescriptor" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1198082991405">
              <link role="argument" targetNodeId="1198076162946" resolveInfo="target" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198083016323">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198083016324">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213027913402">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213027913403">
                <property name="name" value="targetNode" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213027913404" />
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1213027913405">
                  <node role="expression" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1213027913406">
                    <link role="argument" targetNodeId="1198076162946" resolveInfo="target" />
                  </node>
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1213027913407" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199627204241">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199627205587">
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627204242">
                  <link role="variableDeclaration" targetNodeId="1199625160586" resolveInfo="movedNodes" />
                </node>
                <node role="rValue" type="jetbrains.mps.logging.refactoring.structure.MoveNodesToNodeExpression" id="1199627210637">
                  <node role="whatToMove" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627210638">
                    <link role="variableDeclaration" targetNodeId="1198082944517" resolveInfo="nodes" />
                  </node>
                  <node role="destination" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213027913408">
                    <link role="variableDeclaration" targetNodeId="1213027913403" resolveInfo="node" />
                  </node>
                  <node role="roleInTarget" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886185">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1199627210643">
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782887413">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199627210645">
                          <link role="variableDeclaration" targetNodeId="1198082944517" resolveInfo="nodes" />
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetElementOperation" id="1199627210646">
                          <node role="argument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1199627210647">
                            <property name="value" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886186">
                      <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getRole_():java.lang.String" resolveInfo="getRole_" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199555238171">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1199555248173">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886159">
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886160">
                    <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getModel():jetbrains.mps.smodel.SModel" resolveInfo="getModel" />
                  </node>
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1213027961990">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213027940876">
                      <link role="variableDeclaration" targetNodeId="1213027913403" resolveInfo="targetNode" />
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
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886210">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886080">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199556397197">
                      <link role="variableDeclaration" targetNodeId="1199555206076" resolveInfo="targetModel" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886081">
                      <link role="baseMethodDeclaration" targetNodeId="5.~SModel.getModelDescriptor():jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getModelDescriptor" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886211">
                    <link role="baseMethodDeclaration" targetNodeId="5.~SModelDescriptor.getModule():jetbrains.mps.project.IModule" resolveInfo="getModule" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213704059805">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213704059806">
                <property name="name" value="project" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213704059807">
                  <link role="classifier" targetNodeId="18.~MPSProject" resolveInfo="MPSProject" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213704059808">
                  <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1213704059810" />
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213704059812">
                    <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getMPSProject():jetbrains.mps.project.MPSProject" resolveInfo="getMPSProject" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1213704091027">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213704091028">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199555293199">
                  <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199555293200">
                    <property name="name" value="operationContext" />
                    <property name="isFinal" value="true" />
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199555293201">
                      <link role="classifier" targetNodeId="5.~IOperationContext" resolveInfo="IOperationContext" />
                    </node>
                    <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213028012308">
                      <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213028012310">
                        <link role="baseMethodDeclaration" targetNodeId="18.~ModuleContext.&lt;init&gt;(jetbrains.mps.project.IModule,jetbrains.mps.project.MPSProject)" resolveInfo="ModuleContext" />
                        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199556427404">
                          <link role="variableDeclaration" targetNodeId="1199556389522" resolveInfo="module" />
                        </node>
                        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213704059813">
                          <link role="variableDeclaration" targetNodeId="1213704059806" resolveInfo="project" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199555326181">
                  <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199555326182">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213099312700">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1213099314313">
                        <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213099320180">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213099319005">
                            <link role="variableDeclaration" targetNodeId="1199625160586" resolveInfo="movedNodes" />
                          </node>
                          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetFirstOperation" id="1213099320685" />
                        </node>
                        <node role="lValue" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1213099312701">
                          <link role="argument" targetNodeId="1213099173577" resolveInfo="nodeToOpen" />
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
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1213704092735">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1213704093520" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213704091969">
                  <link role="variableDeclaration" targetNodeId="1213704059806" resolveInfo="project" />
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
    <node role="affectedNodesClause" type="jetbrains.mps.logging.refactoring.structure.AffectedNodesClause" id="1201528947033">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201528947034">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1201529692995">
          <node role="expression" type="jetbrains.mps.logging.refactoring.structure.ExecuteFindersExpression" id="1212246488331">
            <node role="finders" type="jetbrains.mps.logging.refactoring.structure.FinderReference" id="1212246503239">
              <link role="finderDeclaration" targetNodeId="33.1198430852441" resolveInfo="NodeAndDescendantsUsages" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="nodesToOpenClause" type="jetbrains.mps.logging.refactoring.structure.NodesToOpenClause" id="1213099166609">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1213099166610">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1213099253017">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1213099253018">
            <property name="name" value="result" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213099253019">
              <link role="classifier" targetNodeId="7.~ArrayList" resolveInfo="ArrayList" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213099262414">
                <link role="classifier" targetNodeId="5.~SNode" resolveInfo="SNode" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213099253020">
              <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213099253021">
                <link role="baseMethodDeclaration" targetNodeId="7.~ArrayList.&lt;init&gt;(int)" resolveInfo="ArrayList" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1213099253022">
                  <property name="value" value="1" />
                </node>
                <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1213099267665">
                  <link role="classifier" targetNodeId="5.~SNode" resolveInfo="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1213099295522">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1213099296586">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213099295523">
              <link role="variableDeclaration" targetNodeId="1213099253018" resolveInfo="result" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1213099300651">
              <link role="baseMethodDeclaration" targetNodeId="7.~ArrayList.add(java.lang.Object):boolean" resolveInfo="add" />
              <node role="actualArgument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1213099304417">
                <link role="argument" targetNodeId="1213099173577" resolveInfo="nodeToOpen" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1213099195570">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1213099253023">
            <link role="variableDeclaration" targetNodeId="1213099253018" resolveInfo="result" />
          </node>
        </node>
      </node>
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
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782882980">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886078">
                <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1199457990516" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886079">
                  <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782882981">
                <link role="baseMethodDeclaration" targetNodeId="5.~SNode.getName():java.lang.String" resolveInfo="getName" />
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
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886183">
              <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1199458013856" />
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886184">
                <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
              </node>
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
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782883060">
              <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1199458037892" />
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782883061">
                <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199458047098">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886104">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199458047099">
              <link role="variableDeclaration" targetNodeId="1199458037889" resolveInfo="node" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886105">
              <link role="baseMethodDeclaration" targetNodeId="5.~SNode.setName(java.lang.String):void" resolveInfo="setName" />
              <node role="actualArgument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1199458052916">
                <link role="argument" targetNodeId="1199457954885" resolveInfo="newName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="affectedNodesClause" type="jetbrains.mps.logging.refactoring.structure.AffectedNodesClause" id="1201529733849">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201529733850">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1201529734873">
          <node role="expression" type="jetbrains.mps.logging.refactoring.structure.ExecuteFindersExpression" id="1212246515069">
            <node role="finders" type="jetbrains.mps.logging.refactoring.structure.FinderReference" id="1212246521462">
              <link role="finderDeclaration" targetNodeId="33.1198430852441" resolveInfo="NodeAndDescendantsUsages" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.logging.refactoring.structure.Refactoring" id="1200665013408">
    <property name="name" value="SafeDelete" />
    <property name="userFriendlyName" value="Safe Delete Node" />
    <property name="refactorImmediatelyIfNoUsages" value="true" />
    <link role="applicableConcept" targetNodeId="1.1133920641626" resolveInfo="BaseConcept" />
    <node role="isApplicableClause" type="jetbrains.mps.logging.refactoring.structure.IsApplicableClause" id="1200666435294">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200666435295">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200666590002">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200666590003">
            <property name="name" value="node" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1200666590004" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782886258">
              <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1200666595084" />
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782886259">
                <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
              </node>
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
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207782883079">
              <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1200667309765" />
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207782883080">
                <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getNode():jetbrains.mps.smodel.SNode" resolveInfo="getNode" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200667315254">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227892485">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200667315255">
              <link role="variableDeclaration" targetNodeId="1200667305559" resolveInfo="node" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_DeleteOperation" id="1200667317150" />
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
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1210943477712">
          <node role="expression" type="jetbrains.mps.logging.refactoring.structure.ExecuteFindersExpression" id="1212246578655">
            <node role="finders" type="jetbrains.mps.logging.refactoring.structure.FinderReference" id="1212246582939">
              <link role="finderDeclaration" targetNodeId="33.1198430852441" resolveInfo="NodeAndDescendantsUsages" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.logging.refactoring.structure.Refactoring" id="1209043749725">
    <property name="name" value="RenameModel" />
    <property name="userFriendlyName" value="Rename Model" />
    <property name="refactoringTargetKind" value="model" />
    <link role="applicableConcept" targetNodeId="1.1133920641626" resolveInfo="BaseConcept" />
    <node role="internalArguments" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgument" id="1209044427701">
      <property name="name" value="modelDescriptor" />
      <node role="argumentType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209044433671">
        <link role="classifier" targetNodeId="5.~SModelDescriptor" resolveInfo="SModelDescriptor" />
      </node>
    </node>
    <node role="internalArguments" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgument" id="1209124371820">
      <property name="name" value="oldModelUIDString" />
      <node role="argumentType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209124392135">
        <link role="classifier" targetNodeId="4.~String" resolveInfo="String" />
      </node>
    </node>
    <node role="internalArguments" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgument" id="1209124465392">
      <property name="name" value="stereotype" />
      <node role="argumentType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209124471925">
        <link role="classifier" targetNodeId="4.~String" resolveInfo="String" />
      </node>
    </node>
    <node role="arguments" type="jetbrains.mps.logging.refactoring.structure.RequiredUserEnteredArgument" id="1209043860574">
      <property name="name" value="newName" />
      <property name="presentation" value="new model name" />
      <node role="argumentType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209043869561">
        <link role="classifier" targetNodeId="4.~String" resolveInfo="String" />
      </node>
      <node role="initialValue" type="jetbrains.mps.logging.refactoring.structure.InitialValueClause" id="1209043888767">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1209043888768">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1209043892957">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209043916266">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209043894271">
                <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1209043892958" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209043912655">
                  <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getModel():jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getModel" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209043930128">
                <link role="baseMethodDeclaration" targetNodeId="5.~SModelDescriptor.getLongName():java.lang.String" resolveInfo="getLongName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableClause" type="jetbrains.mps.logging.refactoring.structure.IsApplicableClause" id="1209044447860">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1209044447861">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1209044451628">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1209044499916">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1209044501060" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209044486818">
              <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1209044451629" />
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209044498415">
                <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getModel():jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="doRefactorClause" type="jetbrains.mps.logging.refactoring.structure.DoRefactorClause" id="1209121682439">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1209121682440">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1209124038620">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1209124038621">
            <property name="name" value="model" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209124038622">
              <link role="classifier" targetNodeId="5.~SModelDescriptor" resolveInfo="SModelDescriptor" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209124072378">
              <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1209124070267" />
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209124087949">
                <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getModel():jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getModel" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1209124107217">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1209124107218">
            <property name="name" value="oldModelUID" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209124107219">
              <link role="classifier" targetNodeId="5.~SModelUID" resolveInfo="SModelUID" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209124132364">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1209124130487">
                <link role="variableDeclaration" targetNodeId="1209124038621" resolveInfo="model" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209124137484">
                <link role="baseMethodDeclaration" targetNodeId="5.~SModelDescriptor.getModelUID():jetbrains.mps.smodel.SModelUID" resolveInfo="getModelUID" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1209124401747">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1209124403499">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209124406441">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1209124405502">
                <link role="variableDeclaration" targetNodeId="1209124107218" resolveInfo="oldModelUID" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209124407287">
                <link role="baseMethodDeclaration" targetNodeId="5.~SModelUID.toString():java.lang.String" resolveInfo="toString" />
              </node>
            </node>
            <node role="lValue" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1209124401748">
              <link role="argument" targetNodeId="1209124371820" resolveInfo="oldModelUIDString" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1209124478631">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1209124482945">
            <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209124486512">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1209124485449">
                <link role="variableDeclaration" targetNodeId="1209124038621" resolveInfo="model" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209124488624">
                <link role="baseMethodDeclaration" targetNodeId="5.~SModelDescriptor.getStereotype():java.lang.String" resolveInfo="getStereotype" />
              </node>
            </node>
            <node role="lValue" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1209124478632">
              <link role="argument" targetNodeId="1209124465392" resolveInfo="stereotype" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1209124174313">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1209124174314">
            <property name="name" value="success" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1209124174315" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209124182240">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1209124181083">
                <link role="variableDeclaration" targetNodeId="1209124038621" resolveInfo="model" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209124185540">
                <link role="baseMethodDeclaration" targetNodeId="5.~SModelDescriptor.rename(java.lang.String,jetbrains.mps.project.MPSProject,jetbrains.mps.projectLanguage.structure.ModelRoot):boolean" resolveInfo="rename" />
                <node role="actualArgument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1209124526096">
                  <link role="argument" targetNodeId="1199457954885" resolveInfo="newName" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209124541119">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209124536161">
                    <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1209124534863" />
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209124540008">
                      <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolveInfo="getOperationContext" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209124542262">
                    <link role="baseMethodDeclaration" targetNodeId="5.~IOperationContext.getMPSProject():jetbrains.mps.project.MPSProject" resolveInfo="getMPSProject" />
                  </node>
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1209124545967" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1209124272020">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1209124272021">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1209124280043" />
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1209124275446">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1209124277151">
              <link role="variableDeclaration" targetNodeId="1209124174314" resolveInfo="success" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1209127907693">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209127908788">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1209127907694">
              <link role="variableDeclaration" targetNodeId="1209124038621" resolveInfo="model" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209127910176">
              <link role="baseMethodDeclaration" targetNodeId="5.~SModelDescriptor.save():void" resolveInfo="save" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="updateModelClause" type="jetbrains.mps.logging.refactoring.structure.UpdateModelClause" id="1209124333402">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1209124333403">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1209124341873">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209124356894">
            <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1209124354328">
              <node role="leftExpression" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_SModel" id="1209124341874" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209124363850">
              <link role="baseMethodDeclaration" targetNodeId="5.~SModel.changeImportedModelUID(jetbrains.mps.smodel.SModelUID,jetbrains.mps.smodel.SModelUID):void" resolveInfo="changeImportedModelUID" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1209124427854">
                <link role="baseMethodDeclaration" targetNodeId="5.~SModelUID.fromString(java.lang.String):jetbrains.mps.smodel.SModelUID" resolveInfo="fromString" />
                <link role="classConcept" targetNodeId="5.~SModelUID" resolveInfo="SModelUID" />
                <node role="actualArgument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1209124437370">
                  <link role="argument" targetNodeId="1209124371820" resolveInfo="oldModelUIDString" />
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1209124443029">
                <link role="baseMethodDeclaration" targetNodeId="5.~SModelUID.&lt;init&gt;(java.lang.String,java.lang.String)" resolveInfo="SModelUID" />
                <node role="actualArgument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1209124455218">
                  <link role="argument" targetNodeId="1199457954885" resolveInfo="newName" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1209124551937">
                  <link role="argument" targetNodeId="1209124465392" resolveInfo="stereotype" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="affectedNodesClause" type="jetbrains.mps.logging.refactoring.structure.AffectedNodesClause" id="1209311493454">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1209311493455">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1209311545664">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1209311545665">
            <property name="name" value="query" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209311545666">
              <link role="classifier" targetNodeId="26.~SearchQuery" resolveInfo="SearchQuery" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1209311545667">
              <link role="baseMethodDeclaration" targetNodeId="26.~SearchQuery.&lt;init&gt;(jetbrains.mps.smodel.SModel,jetbrains.mps.smodel.IScope)" resolveInfo="SearchQuery" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209313878392">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209313875280">
                  <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1209313875281" />
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209313875282">
                    <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getModel():jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getModel" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209313882937">
                  <link role="baseMethodDeclaration" targetNodeId="5.~SModelDescriptor.getSModel():jetbrains.mps.smodel.SModel" resolveInfo="getSModel" />
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209311545673">
                <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1209312284113" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209311545675">
                  <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getScope():jetbrains.mps.smodel.IScope" resolveInfo="getScope" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1209312315558">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1209312315559">
            <property name="name" value="searchResults" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209312315560">
              <link role="classifier" targetNodeId="26.~SearchResults" resolveInfo="SearchResults" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1212246715939">
              <link role="baseMethodDeclaration" targetNodeId="34.~FindUtils.getSearchResults(com.intellij.openapi.progress.ProgressIndicator,jetbrains.mps.ide.findusages.model.SearchQuery,jetbrains.mps.ide.findusages.model.IResultProvider):jetbrains.mps.ide.findusages.model.SearchResults" resolveInfo="getSearchResults" />
              <link role="classConcept" targetNodeId="34.~FindUtils" resolveInfo="FindUtils" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1212246721065">
                <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1212246721066" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1212246721067">
                  <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.createProgressIndicator():com.intellij.openapi.progress.ProgressIndicator" resolveInfo="createProgressIndicator" />
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1212246725366">
                <link role="variableDeclaration" targetNodeId="1209311545665" resolveInfo="query" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1212246827243">
                <link role="baseMethodDeclaration" targetNodeId="30.~ModelUsagesFinder.&lt;init&gt;()" resolveInfo="ModelUsagesFinder" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1209312315566">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1209312315567">
            <link role="variableDeclaration" targetNodeId="1209312315559" resolveInfo="searchResults" />
          </node>
        </node>
      </node>
    </node>
    <node role="getModelsToGenerateClause" type="jetbrains.mps.logging.refactoring.structure.GetModelsToGenerateClause" id="1209896658421">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1209896658422">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1209896686146">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1209896686147">
            <property name="name" value="modulesAndModels" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209896686148">
              <link role="classifier" targetNodeId="7.~Map" resolveInfo="Map" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209896692650">
                <link role="classifier" targetNodeId="18.~IModule" resolveInfo="IModule" />
              </node>
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209896696261">
                <link role="classifier" targetNodeId="7.~List" resolveInfo="List" />
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209896698388">
                  <link role="classifier" targetNodeId="5.~SModel" resolveInfo="SModel" />
                </node>
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1209896706265">
              <link role="baseMethodDeclaration" targetNodeId="7.~HashMap.&lt;init&gt;()" resolveInfo="HashMap" />
              <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209896755420">
                <link role="classifier" targetNodeId="18.~IModule" resolveInfo="IModule" />
              </node>
              <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209896761781">
                <link role="classifier" targetNodeId="7.~List" resolveInfo="List" />
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209896766190">
                  <link role="classifier" targetNodeId="5.~SModel" resolveInfo="SModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1209896799647">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1209896799648">
            <property name="name" value="models" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209896799649">
              <link role="classifier" targetNodeId="7.~List" resolveInfo="List" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209896838761">
                <link role="classifier" targetNodeId="5.~SModel" resolveInfo="SModel" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1209896883623">
              <link role="baseMethodDeclaration" targetNodeId="7.~ArrayList.&lt;init&gt;()" resolveInfo="ArrayList" />
              <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1209896889984">
                <link role="classifier" targetNodeId="5.~SModel" resolveInfo="SModel" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1209896906752">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209896907582">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1209896906753">
              <link role="variableDeclaration" targetNodeId="1209896799648" resolveInfo="models" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209896912148">
              <link role="baseMethodDeclaration" targetNodeId="7.~List.add(java.lang.Object):boolean" resolveInfo="add" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209896977530">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209896941087">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1209896940086">
                    <link role="baseMethodDeclaration" targetNodeId="5.~SModelRepository.getInstance():jetbrains.mps.smodel.SModelRepository" resolveInfo="getInstance" />
                    <link role="classConcept" targetNodeId="5.~SModelRepository" resolveInfo="SModelRepository" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209896952903">
                    <link role="baseMethodDeclaration" targetNodeId="5.~SModelRepository.getModelDescriptor(jetbrains.mps.smodel.SModelUID):jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getModelDescriptor" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1209896994539">
                      <link role="baseMethodDeclaration" targetNodeId="5.~SModelUID.fromString(java.lang.String):jetbrains.mps.smodel.SModelUID" resolveInfo="fromString" />
                      <link role="classConcept" targetNodeId="5.~SModelUID" resolveInfo="SModelUID" />
                      <node role="actualArgument" type="jetbrains.mps.logging.refactoring.structure.RequiredAdditionalArgumentReference" id="1209896997680">
                        <link role="argument" targetNodeId="1199457954885" resolveInfo="newName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209896985787">
                  <link role="baseMethodDeclaration" targetNodeId="5.~SModelDescriptor.getSModel():jetbrains.mps.smodel.SModel" resolveInfo="getSModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1209897005745">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209897006763">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1209897005746">
              <link role="variableDeclaration" targetNodeId="1209896686147" resolveInfo="modulesAndModels" />
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209897014188">
              <link role="baseMethodDeclaration" targetNodeId="7.~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolveInfo="put" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209897027475">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209897025205">
                  <node role="operand" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_ActionContext" id="1209897024220" />
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209897026380">
                    <link role="baseMethodDeclaration" targetNodeId="2.~ActionContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolveInfo="getOperationContext" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209897029494">
                  <link role="baseMethodDeclaration" targetNodeId="5.~IOperationContext.getModule():jetbrains.mps.project.IModule" resolveInfo="getModule" />
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1209897033855">
                <link role="variableDeclaration" targetNodeId="1209896799648" resolveInfo="models" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1209896662627">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1209896770723">
            <link role="variableDeclaration" targetNodeId="1209896686147" resolveInfo="models" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableToModelClause" type="jetbrains.mps.logging.refactoring.structure.IsApplicableToModelClause" id="1210086072359">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210086072360">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1210086081444">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1210086214913">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1210086216869" />
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1210086100892">
              <link role="baseMethodDeclaration" targetNodeId="5.~Language.getModelAspect(jetbrains.mps.smodel.SModelDescriptor):jetbrains.mps.smodel.LanguageAspect" resolveInfo="getModelAspect" />
              <link role="classConcept" targetNodeId="5.~Language" resolveInfo="Language" />
              <node role="actualArgument" type="jetbrains.mps.logging.refactoring.structure.ConceptFunctionParameter_SModelDescriptor" id="1210086127315" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


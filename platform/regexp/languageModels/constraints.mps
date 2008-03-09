<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.regexp.constraints">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.constraintsLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="0" />
  </language>
  <maxImportIndex value="7" />
  <import index="1" modelUID="jetbrains.mps.regexp.structure" version="-1" />
  <import index="3" modelUID="jetbrains.mps.smodel.search@java_stub" version="-1" />
  <import index="4" modelUID="java.util@java_stub" version="-1" />
  <import index="5" modelUID="java.lang@java_stub" version="-1" />
  <import index="6" modelUID="jetbrains.mps.regexp@java_stub" version="-1" />
  <import index="7" modelUID="jetbrains.mps.regexp.structure@java_stub" version="-1" />
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1177760131140">
    <link role="concept" targetNodeId="1.1174482743037" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1177760132955">
      <property name="isVirtual" value="true" />
      <property name="isAbstract" value="false" />
      <property name="name" value="toString" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1177760144630">
        <link role="classifier" targetNodeId="5.~String" resolveInfo="String" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177760132957">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177765723306">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1177765735896">
            <link role="baseMethodDeclaration" targetNodeId="6.~RegexpProcessor.toString(jetbrains.mps.regexp.structure.Regexp):java.lang.String" resolveInfo="toString" />
            <link role="classConcept" targetNodeId="6.~RegexpProcessor" resolveInfo="RegexpProcessor" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204672721380">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1177765737398" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1177765740838" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1177760131141">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177760131142" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1178192141318">
    <link role="concept" targetNodeId="1.1174909099093" />
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1178192141319">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1178192141320" />
    </node>
    <node role="references" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.NodeReferentConstraint" id="1174910437758">
      <link role="applicableLink" targetNodeId="1.1174909113141" />
      <node role="searchScopeFactory" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunction_ReferentSearchScope_Factory" id="1174910742580">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1174910742581">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1174910746443">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1174910746444">
              <property name="name" value="matches" />
              <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1174910746445">
                <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1174910748769">
                  <link role="concept" targetNodeId="1.1174564062919" />
                </node>
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1174910760826">
                <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListCreatorWithInit" id="1174910762198">
                  <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1174910764073">
                    <link role="concept" targetNodeId="1.1174564062919" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1174910820321">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1174910820322">
              <property name="name" value="top" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1174910820323" />
              <node role="initializer" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptParameter_ReferentSearchScope_enclosingNode" id="1174910846791" />
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.WhileStatement" id="1174910848507">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1174910858783">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227885969">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227884539">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174910860172">
                    <link role="variableDeclaration" targetNodeId="1174910820322" resolveInfo="top" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1174910866681" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1174910873892">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1177556242887">
                    <link role="conceptDeclaration" targetNodeId="1.1174482743037" />
                  </node>
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1174910855961">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227942750">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174910849817">
                    <link role="variableDeclaration" targetNodeId="1174910820322" resolveInfo="top" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1174910854263" />
                </node>
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1174910857225" />
              </node>
            </node>
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1174910848509">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1174910878883">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1174910879193">
                  <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174910878884">
                    <link role="variableDeclaration" targetNodeId="1174910820322" resolveInfo="top" />
                  </node>
                  <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227888526">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174910880064">
                      <link role="variableDeclaration" targetNodeId="1174910820322" resolveInfo="top" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1174910882884" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1174910781196">
            <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1174910784333">
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddAllElementsOperation" id="1174910786469">
                <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227898403">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174910823274">
                    <link role="variableDeclaration" targetNodeId="1174910820322" resolveInfo="top" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1174910826032">
                    <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1174910834008">
                      <link role="concept" targetNodeId="1.1174564062919" />
                    </node>
                    <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Inclusion" id="1174913978042" />
                  </node>
                </node>
              </node>
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174910781197">
                <link role="variableDeclaration" targetNodeId="1174910746444" resolveInfo="matches" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1174914070329">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227904836">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174914071266">
                <link role="variableDeclaration" targetNodeId="1174910820322" resolveInfo="top" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1174914078134">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1177556242862">
                  <link role="conceptDeclaration" targetNodeId="1.1174564062919" />
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1174914070331">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1174914082530">
                <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1174914087324">
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddElementOperation" id="1174914089820">
                    <node role="argument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174914092098">
                      <link role="variableDeclaration" targetNodeId="1174910820322" resolveInfo="top" />
                    </node>
                  </node>
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174914082531">
                    <link role="variableDeclaration" targetNodeId="1174910746444" resolveInfo="matches" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1174910770094">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1174910771965">
              <link role="baseMethodDeclaration" targetNodeId="3.~SimpleSearchScope.&lt;init&gt;(java.util.List)" resolveInfo="SimpleSearchScope" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174910778204">
                <link role="variableDeclaration" targetNodeId="1174910746444" resolveInfo="matches" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1178192141362">
    <link role="concept" targetNodeId="1.1174565027678" />
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1178192141363">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1178192141364" />
    </node>
    <node role="references" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.NodeReferentConstraint" id="1174653744362">
      <link role="applicableLink" targetNodeId="1.1174565035929" />
      <node role="searchScopeFactory" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConstraintFunction_ReferentSearchScope_Factory" id="1174653765816">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1174653765817">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1174653771016">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1174653771017">
              <property name="name" value="matches" />
              <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1174653771018">
                <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1174653772004">
                  <link role="concept" targetNodeId="1.1174564062919" />
                </node>
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1174653781412">
                <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListCreatorWithInit" id="1174653783102">
                  <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1174653785040">
                    <link role="concept" targetNodeId="1.1174564062919" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1174653880580">
            <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227892882">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptParameter_ReferentSearchScope_enclosingNode" id="1174653896561" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorsOperation" id="1174653904910">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1174653907696">
                  <link role="concept" targetNodeId="1.1174653354106" />
                </node>
              </node>
            </node>
            <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1174653880582">
              <property name="name" value="ruc" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1174653886697">
                <link role="concept" targetNodeId="1.1174653354106" />
              </node>
            </node>
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1174653880584">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1174921721176">
                <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227937523">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174921730624">
                    <link role="variableDeclaration" targetNodeId="1174653880582" resolveInfo="ruc" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1174921733696">
                    <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1174921737580">
                      <link role="concept" targetNodeId="1.1174662605354" />
                    </node>
                  </node>
                </node>
                <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1174921721178">
                  <property name="name" value="ref" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1174921722583">
                    <link role="concept" targetNodeId="1.1174662605354" />
                  </node>
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1174921721180">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1174921812915">
                    <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1174921819168">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1174921820669" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227887496">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174921815152">
                          <link role="variableDeclaration" targetNodeId="1174921721178" resolveInfo="ref" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1174921818231">
                          <link role="link" targetNodeId="1.1174662628918" />
                        </node>
                      </node>
                    </node>
                    <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1174921812917">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1174921821246">
                        <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227866983">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227930408">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174921821249">
                              <link role="variableDeclaration" targetNodeId="1174921721178" resolveInfo="ref" />
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1174921821250">
                              <link role="link" targetNodeId="1.1174662628918" />
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1174921821251">
                            <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1174921821252">
                              <link role="concept" targetNodeId="1.1174564062919" />
                            </node>
                          </node>
                        </node>
                        <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1174921821253">
                          <property name="name" value="mpe" />
                          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1174921821254">
                            <link role="concept" targetNodeId="1.1174564062919" />
                          </node>
                        </node>
                        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1174921821255">
                          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1174921821256">
                            <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1174921821257">
                              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddElementOperation" id="1174921821259">
                                <node role="argument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174921821260">
                                  <link role="variableDeclaration" targetNodeId="1174921821253" resolveInfo="mpe" />
                                </node>
                              </node>
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174921821258">
                                <link role="variableDeclaration" targetNodeId="1174653771017" resolveInfo="matches" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1174653939440">
                <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227822686">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174653946900">
                    <link role="variableDeclaration" targetNodeId="1174653880582" resolveInfo="ruc" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1174653949928">
                    <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1174653954003">
                      <link role="concept" targetNodeId="1.1174564062919" />
                    </node>
                  </node>
                </node>
                <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1174653939442">
                  <property name="name" value="mpe" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1174653941122">
                    <link role="concept" targetNodeId="1.1174564062919" />
                  </node>
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1174653939444">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1174653978724">
                    <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1174653983001">
                      <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddElementOperation" id="1174653984387">
                        <node role="argument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174653987226">
                          <link role="variableDeclaration" targetNodeId="1174653939442" resolveInfo="mpe" />
                        </node>
                      </node>
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174653978725">
                        <link role="variableDeclaration" targetNodeId="1174653771017" resolveInfo="matches" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1174653788687">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1174653845696">
              <link role="baseMethodDeclaration" targetNodeId="3.~SimpleSearchScope.&lt;init&gt;(java.util.List)" resolveInfo="SimpleSearchScope" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1174653868406">
                <link role="variableDeclaration" targetNodeId="1174653771017" resolveInfo="matches" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior" id="1188912088558">
    <property name="package" value="Regexps" />
    <link role="concept" targetNodeId="1.1174564062919" />
    <node role="method" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptMethodDeclaration" id="1188912090483">
      <property name="name" value="getIndex" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1188912104259" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1188912090485">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1188912109182">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1188912109183">
            <property name="name" value="container" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1188912109184">
              <link role="concept" targetNodeId="1.1174482743037" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227842404">
              <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1188912116030" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1188912117644">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1188912119395">
                  <link role="concept" targetNodeId="1.1174482743037" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1188912126381">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1188912126382">
            <property name="name" value="parens" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1188912126383">
              <link role="classifier" targetNodeId="4.~List" resolveInfo="List" />
              <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1188912155371">
                <link role="classifier" targetNodeId="7.~MatchParensRegexp" resolveInfo="MatchParensRegexp" />
              </node>
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1188912159280">
              <link role="baseMethodDeclaration" targetNodeId="4.~ArrayList.&lt;init&gt;()" resolveInfo="ArrayList" />
              <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1188912171232">
                <link role="classifier" targetNodeId="7.~MatchParensRegexp" resolveInfo="MatchParensRegexp" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1188912175875">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1188912177252">
            <link role="classConcept" targetNodeId="6.~RegexpProcessor" resolveInfo="RegexpProcessor" />
            <link role="baseMethodDeclaration" targetNodeId="6.~RegexpProcessor.toString(jetbrains.mps.regexp.structure.Regexp,java.util.List):java.lang.String" resolveInfo="toString" />
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204672721912">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1188912179597">
                <link role="variableDeclaration" targetNodeId="1188912109183" resolveInfo="container" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1188912181366" />
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1188912187306">
              <link role="variableDeclaration" targetNodeId="1188912126382" resolveInfo="parens" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1188912207199">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1188912337161">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1188912340033">
              <property name="value" value="1" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1188912222408">
              <link role="baseMethodDeclaration" targetNodeId="4.~List.indexOf(java.lang.Object):int" resolveInfo="indexOf" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1188912220639">
                <link role="variableDeclaration" targetNodeId="1188912126382" resolveInfo="parens" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204672721970">
                <node role="operand" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ThisNodeExpression" id="1188912223706" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1188912224913" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="constructor" type="jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptConstructorDeclaration" id="1188912088559">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1188912088560" />
    </node>
  </node>
</model>


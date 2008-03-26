<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.bootstrap.smodelLanguage.actions">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.actionsLanguage" />
  <language namespace="jetbrains.mps.baseLanguage" />
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.sharedConcepts" />
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.helgins" />
  <language namespace="jetbrains.mps.quotation" />
  <language namespace="jetbrains.mps.core" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="1" />
  <maxImportIndex value="22" />
  <import index="1" modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  <import index="3" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="7" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="8" modelUID="java.util@java_stub" version="-1" />
  <import index="13" modelUID="jetbrains.mps.smodel.search@java_stub" version="-1" />
  <import index="14" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1" />
  <import index="15" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="16" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure@java_stub" version="-1" />
  <import index="17" modelUID="java.lang@java_stub" version="-1" />
  <import index="19" modelUID="jetbrains.mps.baseLanguage.actions" version="-1" />
  <import index="20" modelUID="jetbrains.mps.bootstrap.structureLanguage.constraints" version="-1" />
  <import index="21" modelUID="java.io@java_stub" version="-1" />
  <import index="22" modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActions" id="1138078942005">
    <property name="name" value="snodeOperation" />
    <property name="package" value="substitute" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActionsBuilder" id="1138413233760">
      <property name="description" value="remove operations which are not appropriate for expression before'.'" />
      <property name="applicableLinkMetaclass" value="aggregation" />
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="1.1138411891628" />
      <node role="variable" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SubstituteNodeBuilderVariableDeclaration" id="1206377916680">
        <property name="name" value="appTypesInfo" />
        <node role="initializerBlock" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_SubstituteVariableInitializer" id="1206377916681">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206377916682">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206377976330">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206377976331">
                <property name="name" value="result" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206377976332">
                  <link role="classifier" targetNodeId="1206377804308" resolveInfo="ApplicableTypesInfo" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1206377988897">
                  <link role="baseMethodDeclaration" targetNodeId="1206378005506" resolveInfo="ApplicableTypesInfo" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206377950189">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206377950190">
                <property name="name" value="leftExpression" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206377950191">
                  <link role="concept" targetNodeId="3.1068431790191" resolveInfo="Expression" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206377950192">
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1206377950193">
                    <link role="concept" targetNodeId="3.1197027756228" resolveInfo="DotExpression" />
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parentNode" id="1206377950194" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206377950195">
                    <link role="link" targetNodeId="3.1197027771414" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206377950196">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206377950197">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206377950198">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1206377950199">
                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206377950200">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1206377950201">
                        <link role="concept" targetNodeId="1.1138055978872" resolveInfo="SNodeOperationExpression" />
                        <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parentNode" id="1206377950202" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206377950203">
                        <link role="link" targetNodeId="1.1138056667223" />
                      </node>
                    </node>
                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206377950204">
                      <link role="variableDeclaration" targetNodeId="1206377950190" resolveInfo="leftExpression" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206377950205">
                <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parentNode" id="1206377950206" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1206377950207">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1206377950208">
                    <link role="conceptDeclaration" targetNodeId="1.1138055978872" resolveInfo="SNodeOperationExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206377950209">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206377950210">
                <property name="name" value="leftOperation" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206377950211">
                  <link role="concept" targetNodeId="3.1197027803184" resolveInfo="IOperation" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206377950212">
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1206377950213">
                    <link role="concept" targetNodeId="3.1197027756228" resolveInfo="DotExpression" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206377950214">
                      <link role="variableDeclaration" targetNodeId="1206377950190" resolveInfo="leftExpression" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206377950215">
                    <link role="link" targetNodeId="3.1197027833540" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206377950216">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206377950217">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206377950218">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1206377950219">
                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206377950220">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1206377950221">
                        <link role="concept" targetNodeId="1.1138055978872" resolveInfo="SNodeOperationExpression" />
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206377950222">
                          <link role="variableDeclaration" targetNodeId="1206377950190" resolveInfo="leftExpression" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206377950223">
                        <link role="link" targetNodeId="1.1138411864174" />
                      </node>
                    </node>
                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206377950224">
                      <link role="variableDeclaration" targetNodeId="1206377950210" resolveInfo="leftOperation" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206377950225">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206377950226">
                  <link role="variableDeclaration" targetNodeId="1206377950190" resolveInfo="leftExpression" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1206377950227">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1206377950228">
                    <link role="conceptDeclaration" targetNodeId="1.1138055978872" resolveInfo="SNodeOperationExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206377950229">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206377950230">
                <property name="name" value="leftType" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206377950231" />
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206377950232">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206377950233">
                    <link role="variableDeclaration" targetNodeId="1206377950190" resolveInfo="leftExpression" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1206377950234" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206377950235">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206377950236">
                <property name="name" value="linkAccessT" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206377950237">
                  <link role="concept" targetNodeId="1.1204919674986" resolveInfo="_LinkAccessT" />
                </node>
                <node role="initializer" type="jetbrains.mps.bootstrap.helgins.structure.CoerceStrongExpression" id="1206377950238">
                  <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206377950239">
                    <link role="variableDeclaration" targetNodeId="1206377950230" resolveInfo="leftType" />
                  </node>
                  <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.ConceptReference" id="1206377950240">
                    <property name="name" value="_LinkAccessT" />
                    <link role="concept" targetNodeId="1.1204919674986" resolveInfo="_LinkAccessT" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206378031699">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1206378037501">
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206378038848">
                  <link role="variableDeclaration" targetNodeId="1206377950236" resolveInfo="linkAccessT" />
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206378033014">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206378332572">
                    <link role="variableDeclaration" targetNodeId="1206377976331" resolveInfo="result" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1206378035578">
                    <link role="fieldDeclaration" targetNodeId="1206377876392" resolveInfo="myLinkAccessT" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1206377950241">
              <property name="value" value="is concept ?" />
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206377950242">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206377950243">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206378044911">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1206378052135">
                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1206378053310">
                      <property name="value" value="true" />
                    </node>
                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206378046132">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206378343198">
                        <link role="variableDeclaration" targetNodeId="1206377976331" resolveInfo="result" />
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1206378050634">
                        <link role="fieldDeclaration" targetNodeId="1206377822467" resolveInfo="myToConcept" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1206377950244">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206377950245" />
                <node role="leftExpression" type="jetbrains.mps.bootstrap.helgins.structure.CoerceStrongExpression" id="1206377950246">
                  <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206377950247">
                    <link role="variableDeclaration" targetNodeId="1206377950230" resolveInfo="leftType" />
                  </node>
                  <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.ConceptReference" id="1206377950248">
                    <property name="name" value="sConceptType" />
                    <link role="concept" targetNodeId="1.1172420572800" resolveInfo="SConceptType" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1206377950249">
              <property name="value" value="is node ?" />
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206377950250">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206377950251">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206378056155">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1206378062629">
                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1206378063132">
                      <property name="value" value="true" />
                    </node>
                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206378057532">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206378347418">
                        <link role="variableDeclaration" targetNodeId="1206377976331" resolveInfo="result" />
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1206378061253">
                        <link role="fieldDeclaration" targetNodeId="1206377824736" resolveInfo="myToNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1206377950252">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206377950253" />
                <node role="leftExpression" type="jetbrains.mps.bootstrap.helgins.structure.CoerceStrongExpression" id="1206377950254">
                  <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206377950255">
                    <link role="variableDeclaration" targetNodeId="1206377950230" resolveInfo="leftType" />
                  </node>
                  <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.ConceptReference" id="1206377950256">
                    <property name="name" value="sNodeType" />
                    <link role="concept" targetNodeId="1.1138055754698" resolveInfo="SNodeType" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1206377950257">
              <property name="value" value="is smodel ?" />
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206377950258">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206377950259">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206378065789">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1206378075794">
                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1206378077516">
                      <property name="value" value="true" />
                    </node>
                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206378068557">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206378351294">
                        <link role="variableDeclaration" targetNodeId="1206377976331" resolveInfo="result" />
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1206378073497">
                        <link role="fieldDeclaration" targetNodeId="1206377825957" resolveInfo="myToModel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1206377950260">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206377950261" />
                <node role="leftExpression" type="jetbrains.mps.bootstrap.helgins.structure.CoerceStrongExpression" id="1206377950262">
                  <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206377950263">
                    <link role="variableDeclaration" targetNodeId="1206377950230" resolveInfo="leftType" />
                  </node>
                  <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.ConceptReference" id="1206377950264">
                    <property name="name" value="sModelType" />
                    <link role="concept" targetNodeId="1.1143226024141" resolveInfo="SModelType" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206378079705">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206378359186">
                <link role="variableDeclaration" targetNodeId="1206377976331" resolveInfo="result" />
              </node>
            </node>
          </node>
        </node>
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206377921638">
          <link role="classifier" targetNodeId="1206377804308" resolveInfo="ApplicableTypesInfo" />
        </node>
      </node>
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RemoveByConditionPart" id="1180467401112">
        <node role="condition" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RemoveBy_Condition" id="1180467401113">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180467401114">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1180539443584">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1180539443585">
                <property name="name" value="parameterOp" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1180539443586">
                  <link role="conceptDeclaraton" targetNodeId="1.1138411891628" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1180544282883">
                  <node role="expression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_concept" id="1180544282884" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1180544284966">
                    <link role="conceptDeclaraton" targetNodeId="1.1138411891628" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203550171326">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203550171327">
                <property name="name" value="leftExpression" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203550171328">
                  <link role="concept" targetNodeId="3.1068431790191" resolveInfo="Expression" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260666">
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1203550171331">
                    <link role="concept" targetNodeId="3.1197027756228" resolveInfo="DotExpression" />
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parentNode" id="1203550171332" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203550171330">
                    <link role="link" targetNodeId="3.1197027771414" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203550171333">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203550171334">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203550171335">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1203550171336">
                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255956">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1203550171339">
                        <link role="concept" targetNodeId="1.1138055978872" resolveInfo="SNodeOperationExpression" />
                        <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parentNode" id="1203550171340" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203550171338">
                        <link role="link" targetNodeId="1.1138056667223" />
                      </node>
                    </node>
                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203550171341">
                      <link role="variableDeclaration" targetNodeId="1203550171327" resolveInfo="leftExpression" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203550171342">
                <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parentNode" id="1203550171343" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1203550171344">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1203550171345">
                    <link role="conceptDeclaration" targetNodeId="1.1138055978872" resolveInfo="SNodeOperationExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203550228441">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203550228442">
                <property name="name" value="leftOperation" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203550228443">
                  <link role="concept" targetNodeId="3.1197027803184" resolveInfo="IOperation" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203550278559">
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1203550254963">
                    <link role="concept" targetNodeId="3.1197027756228" resolveInfo="DotExpression" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203550244695">
                      <link role="variableDeclaration" targetNodeId="1203550171327" resolveInfo="leftExpression" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203550327889">
                    <link role="link" targetNodeId="3.1197027833540" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203550336406">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203550336407">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203550336408">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1203550336409">
                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203550376905">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1203550336412">
                        <link role="concept" targetNodeId="1.1138055978872" resolveInfo="SNodeOperationExpression" />
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203550356326">
                          <link role="variableDeclaration" targetNodeId="1203550171327" resolveInfo="leftExpression" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203550382470">
                        <link role="link" targetNodeId="1.1138411864174" />
                      </node>
                    </node>
                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203550397440">
                      <link role="variableDeclaration" targetNodeId="1203550228442" resolveInfo="leftOperation" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203550336415">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203550346653">
                  <link role="variableDeclaration" targetNodeId="1203550171327" resolveInfo="leftExpression" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1203550336417">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1203550336418">
                    <link role="conceptDeclaration" targetNodeId="1.1138055978872" resolveInfo="SNodeOperationExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1203550480801">
              <property name="value" value="---" />
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203550485912">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203550485913">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203550520783">
                  <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203550520784">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203550520785">
                      <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203550520786">
                        <property name="name" value="dataType" />
                        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203550520787">
                          <link role="concept" targetNodeId="14.1082978164218" resolveInfo="DataTypeDeclaration" />
                        </node>
                        <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648256006">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648256023">
                            <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1203550520792">
                              <link role="concept" targetNodeId="1.1138056022639" resolveInfo="SPropertyAccess" />
                              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203550537928">
                                <link role="variableDeclaration" targetNodeId="1203550228442" resolveInfo="leftOperation" />
                              </node>
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203550520791">
                              <link role="link" targetNodeId="1.1138056395725" />
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203550520789">
                            <link role="link" targetNodeId="14.1082985295845" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203550520794">
                      <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203550520795">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203550520796">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1203550520797">
                            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260714">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203550520800">
                                <link role="variableDeclaration" targetNodeId="1180539443585" resolveInfo="parameterOp" />
                              </node>
                              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1203550520799">
                                <link role="conceptProperty" targetNodeId="1.1146171845591" resolveInfo="applicable_to_enum_property" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255935">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203550520804">
                          <link role="variableDeclaration" targetNodeId="1203550520786" resolveInfo="dataType" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1203550520802">
                          <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1203550520803">
                            <link role="conceptDeclaration" targetNodeId="14.1082978164219" resolveInfo="EnumerationDataTypeDeclaration" />
                          </node>
                        </node>
                      </node>
                      <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1203550520805">
                        <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203550520806">
                          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203550520807">
                            <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1203550520808">
                              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260739">
                                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203550520811">
                                  <link role="variableDeclaration" targetNodeId="1180539443585" resolveInfo="parameterOp" />
                                </node>
                                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1203550520810">
                                  <link role="conceptProperty" targetNodeId="1.1138763303089" resolveInfo="applicable_to_simple_property" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255909">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203550531536">
                      <link role="variableDeclaration" targetNodeId="1203550228442" resolveInfo="leftOperation" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1203550520813">
                      <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1203550520814">
                        <link role="conceptDeclaration" targetNodeId="1.1138056022639" resolveInfo="SPropertyAccess" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203550520816">
                  <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203550520817">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1203550520818">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1203550520819">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255807">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203550520822">
                            <link role="variableDeclaration" targetNodeId="1180539443585" resolveInfo="parameterOp" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1203550520821">
                            <link role="conceptProperty" targetNodeId="1.1145994733391" resolveInfo="applicable_to_concept_property" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260615">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203550608976">
                      <link role="variableDeclaration" targetNodeId="1203550228442" resolveInfo="leftOperation" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1203550520824">
                      <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1203550520825">
                        <link role="conceptDeclaration" targetNodeId="1.1145994841052" resolveInfo="SConceptPropertyAccess" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1203550495012">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1203550496953" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203550493261">
                  <link role="variableDeclaration" targetNodeId="1203550228442" resolveInfo="leftOperation" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1180468858469">
              <property name="value" value="==========" />
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205264401518">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205264401519">
                <property name="name" value="linkAccessT" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205264401520">
                  <link role="concept" targetNodeId="1.1204919674986" resolveInfo="_LinkAccessT" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206378201579">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SubstituteNodeBuilderVariableReference" id="1206378201580">
                    <link role="variableDeclaration" targetNodeId="1206377916680" resolveInfo="appTypesInfo" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1206378201581">
                    <link role="fieldDeclaration" targetNodeId="1206377876392" resolveInfo="myLinkAccessT" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205264300448">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205264300449">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205265335728">
                  <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205265335729">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205265352923">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1205265352924">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205265352925">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205265352926">
                            <link role="variableDeclaration" targetNodeId="1180539443585" resolveInfo="parameterOp" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1205265352927">
                            <link role="conceptProperty" targetNodeId="1.1138763325919" resolveInfo="applicable_to_link" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205265341436">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205265339872">
                      <link role="variableDeclaration" targetNodeId="1205264401519" resolveInfo="linkAccessT" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1205265344110">
                      <link role="property" targetNodeId="1.1205264860045" resolveInfo="isSingularCradinality" />
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205265361352">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1205265361353">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205265361354">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205265361355">
                        <link role="variableDeclaration" targetNodeId="1180539443585" resolveInfo="parameterOp" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1205265365888">
                        <link role="conceptProperty" targetNodeId="1.1138763350436" resolveInfo="applicable_to_linkList" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1205264333005">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205264334758" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205264401524">
                  <link role="variableDeclaration" targetNodeId="1205264401519" resolveInfo="linkAccessT" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1180478401630">
              <property name="value" value="is concept ?" />
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1180468991478">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180468991479">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180540198924">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1180540483138">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255783">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180540483141">
                        <link role="variableDeclaration" targetNodeId="1180539443585" resolveInfo="parameterOp" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1180540483140">
                        <link role="conceptProperty" targetNodeId="1.1172326539502" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206378215099">
                <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SubstituteNodeBuilderVariableReference" id="1206378212630">
                  <link role="variableDeclaration" targetNodeId="1206377916680" resolveInfo="appTypesInfo" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1206378233367">
                  <link role="fieldDeclaration" targetNodeId="1206377822467" resolveInfo="myToConcept" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1180474803961">
              <property name="value" value="is node ?" />
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1180468952664">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180468952665">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180540296704">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1180540486925">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255907">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180540486928">
                        <link role="variableDeclaration" targetNodeId="1180539443585" resolveInfo="parameterOp" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1180540486927">
                        <link role="conceptProperty" targetNodeId="1.1138763241883" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206378242182">
                <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SubstituteNodeBuilderVariableReference" id="1206378239368">
                  <link role="variableDeclaration" targetNodeId="1206377916680" resolveInfo="appTypesInfo" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1206378247043">
                  <link role="fieldDeclaration" targetNodeId="1206377824736" resolveInfo="myToNode" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1180474748506">
              <property name="value" value="is smodel ?" />
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1180468874562">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180468874563">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180540364619">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1180540491384">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255962">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180540491387">
                        <link role="variableDeclaration" targetNodeId="1180539443585" resolveInfo="parameterOp" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1180540491386">
                        <link role="conceptProperty" targetNodeId="1.1143235288634" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206378255577">
                <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SubstituteNodeBuilderVariableReference" id="1206378254451">
                  <link role="variableDeclaration" targetNodeId="1206377916680" resolveInfo="appTypesInfo" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" id="1206378258251">
                  <link role="fieldDeclaration" targetNodeId="1206377825957" resolveInfo="myToModel" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180469199071">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1180469201758">
                <property name="value" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActions" id="1138079717967">
    <property name="name" value="snodeOperation" />
    <property name="package" value="rightTransform" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActionsBuilder" id="1144103719164">
      <property name="description" value="add operation param: expr.op -&gt; expr.op&lt; .. &gt;" />
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="1.1138411891628" />
      <node role="precondition" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstitutePreconditionFunction" id="1154637518825">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1154637518826">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1154637603430">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1154637603431">
              <property name="name" value="alreadyHasParms" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1154637603433" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" id="1154637583145">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1154637587586">
                  <property name="value" value="0" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260635">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260660">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1173981185216" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1173981489633">
                      <link role="link" targetNodeId="1.1144104376918" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_GetCountOperation" id="1154637553691" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1154637616889">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1154637619204">
              <link role="variableDeclaration" targetNodeId="1154637603431" resolveInfo="alreadyHasParms" />
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1154637616891">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1154637621611">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1154637626754" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1179536421294">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" id="1179536476198">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1179536479690">
                <property name="value" value="0" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205263501943">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260487">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1179536421297" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptLinkAccess" id="1179536421296">
                    <link role="conceptLinkDeclaration" targetNodeId="1.1144102537873" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1179536430015" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1179536505969">
        <link role="concept" targetNodeId="1.1138411891628" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SimpleRightTransformMenuPart" id="1179536544487">
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_Handler" id="1179536544488">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179536544489">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1179536604385">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260668">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260406">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1179536604386" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1179536617907">
                      <link role="link" targetNodeId="1.1144104376918" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddNewChildOperation" id="1179536644420" />
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180465685342">
                <node role="expression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1180465688714" />
              </node>
            </node>
          </node>
          <node role="matchingText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1179536550573">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179536550574">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1179536572829">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1179536572830">
                  <property name="value" value="&lt; .. &gt;" />
                </node>
              </node>
            </node>
          </node>
          <node role="descriptionText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1179536582885">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179536582886">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1179536584831">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1179536584832">
                  <property name="value" value="add operation parameters" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeFactories" id="1171415341604">
    <property name="name" value="SModelLang_factories" />
    <node role="nodeFactory" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeFactory" id="1171415364777">
      <property name="description" value="inherits all parameters from 'sampleNode'" />
      <link role="applicableConcept" targetNodeId="1.1171407110247" />
      <node role="setupFunction" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction" id="1171415364778">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1171415364779">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1171415488202">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255880">
              <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1173981303903" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1171415492490">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1177556242860">
                  <link role="conceptDeclaration" targetNodeId="1.1138411891628" />
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1171415488204">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1171415520969">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1171415520970">
                  <property name="name" value="parms" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1171415520972">
                    <link role="elementConcept" targetNodeId="1.1144100743722" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260686">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1171415507151">
                      <link role="concept" targetNodeId="1.1138411891628" />
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1171415505259" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1173981368431">
                      <link role="link" targetNodeId="1.1144104376918" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1171415558927">
                <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1171415558928">
                  <property name="name" value="parm" />
                </node>
                <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1171415578869">
                  <link role="variableDeclaration" targetNodeId="1171415520970" resolveInfo="parms" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1171415558930">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1171415589043">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260584">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255954">
                        <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_NewNode" id="1171415589044" />
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1171415594470">
                          <link role="link" targetNodeId="1.1144104376918" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddChildOperation" id="1171415598427">
                        <node role="parameter" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1171415601444">
                          <link role="variable" targetNodeId="1171415558928" resolveInfo="parm" />
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
    <node role="nodeFactory" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeFactory" id="1203553726914">
      <link role="applicableConcept" targetNodeId="1.1180028149140" resolveInfo="Concept_IsSuperConceptOfOperation" />
      <node role="setupFunction" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction" id="1203553726915">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203553726916">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203553726917">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553726918">
              <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1203553726919" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1203553726920">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1203553726921">
                  <link role="conceptDeclaration" targetNodeId="1.1172421306145" resolveInfo="Concept_IsAssignableFromOperation" />
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203553726922">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203553726923">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203553726924">
                  <property name="name" value="conceptExpression" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203553726925">
                    <link role="concept" targetNodeId="3.1068431790191" resolveInfo="Expression" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553726926">
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203553726927">
                      <link role="link" targetNodeId="1.1172421412830" />
                    </node>
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1203553726928">
                      <link role="concept" targetNodeId="1.1172421306145" resolveInfo="Concept_IsAssignableFromOperation" />
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1203553726929" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1203553726930">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1203553726931">
                  <property name="name" value="refConceptExpression" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203553726932">
                    <link role="concept" targetNodeId="1.1177025403857" resolveInfo="RefConcept_Expression" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1203553726933">
                    <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1203553726934">
                      <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203553726935">
                        <link role="concept" targetNodeId="1.1177025403857" resolveInfo="RefConcept_Expression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203553726936">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553726937">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553726938">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203553726939">
                      <link role="variableDeclaration" targetNodeId="1203553726931" resolveInfo="refConceptExpression" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203553726940">
                      <link role="link" targetNodeId="1.1177025447014" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1203553726941">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203553726942">
                      <link role="variableDeclaration" targetNodeId="1203553726924" resolveInfo="conceptExpression" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203553726943">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553726944">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553726945">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_NewNode" id="1203553726946" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203553726947">
                      <link role="link" targetNodeId="1.1180028346304" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1203553726948">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203553726949">
                      <link role="variableDeclaration" targetNodeId="1203553726931" resolveInfo="refConceptExpression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203553726950">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203553726951">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203553726952">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553726953">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553726954">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_NewNode" id="1203553726955" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203553726956">
                      <link role="link" targetNodeId="1.1180028346304" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1203553726957">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553726958">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1203553726959">
                        <link role="concept" targetNodeId="1.1180031783296" resolveInfo="Concept_IsSubConceptOfOperation" />
                        <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1203553726960" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203553726961">
                        <link role="link" targetNodeId="1.1180031783297" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553726962">
              <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1203553726963" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1203553726964">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1203553726965">
                  <link role="conceptDeclaration" targetNodeId="1.1180031783296" resolveInfo="Concept_IsSubConceptOfOperation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="nodeFactory" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeFactory" id="1203553739270">
      <link role="applicableConcept" targetNodeId="1.1180031783296" resolveInfo="Concept_IsSubConceptOfOperation" />
      <node role="setupFunction" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction" id="1203553739271">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203553739272">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203553772991">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203553772992">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203553772993">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553772994">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553772995">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_NewNode" id="1203553772996" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1205353911988">
                      <link role="link" targetNodeId="1.1180031783297" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1203553772998">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553772999">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1203553773000">
                        <link role="concept" targetNodeId="1.1180028149140" resolveInfo="Concept_IsSuperConceptOfOperation" />
                        <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1203553773001" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1205353917895">
                        <link role="link" targetNodeId="1.1180028346304" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203553773003">
              <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1203553773004" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1203553773005">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1203553782727">
                  <link role="conceptDeclaration" targetNodeId="1.1180028149140" resolveInfo="Concept_IsSuperConceptOfOperation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="nodeFactory" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeFactory" id="1205353787833">
      <link role="applicableConcept" targetNodeId="1.1145383075378" resolveInfo="SNodeListType" />
      <node role="setupFunction" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction" id="1205353787834">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205353787835">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205353802820">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205353813043">
              <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1205353810417" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1205353826701">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1205353851953">
                  <link role="conceptDeclaration" targetNodeId="22.1151689724996" resolveInfo="SequenceType" />
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205353802822">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205354013137">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205354013138">
                  <property name="name" value="elementType" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205354013139">
                    <link role="concept" targetNodeId="3.1068431790189" resolveInfo="Type" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205354013140">
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1205354013141">
                      <link role="link" targetNodeId="22.1151689745422" />
                    </node>
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1205354013142">
                      <link role="concept" targetNodeId="22.1151689724996" resolveInfo="SequenceType" />
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1205354013143" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205353971857">
                <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205353971858">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205353939945">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205354037693">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205353940979">
                        <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_NewNode" id="1205353939946" />
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1205354036708">
                          <link role="link" targetNodeId="1.1145383142433" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1205354038367">
                        <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205354042432">
                          <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1205354461897">
                            <link role="concept" targetNodeId="1.1138055754698" resolveInfo="SNodeType" />
                            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205354041197">
                              <link role="variableDeclaration" targetNodeId="1205354013138" resolveInfo="elementType" />
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1205354472258">
                            <link role="link" targetNodeId="1.1138405853777" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205353988960">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205354013144">
                    <link role="variableDeclaration" targetNodeId="1205354013138" resolveInfo="elementType" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1205353992634">
                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1205353998277">
                      <link role="conceptDeclaration" targetNodeId="1.1138055754698" resolveInfo="SNodeType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205354298280">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205354298281">
              <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1205354298282" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1205354298283">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1205354316559">
                  <link role="conceptDeclaration" targetNodeId="22.1151688443754" resolveInfo="ListType" />
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205354298285">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205354298286">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205354298287">
                  <property name="name" value="elementType" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205354298288">
                    <link role="concept" targetNodeId="3.1068431790189" resolveInfo="Type" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205354298289">
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1205354332747">
                      <link role="link" targetNodeId="22.1151688676805" />
                    </node>
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1205354298291">
                      <link role="concept" targetNodeId="22.1151688443754" resolveInfo="ListType" />
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1205354298292" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205354298293">
                <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205354298294">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205354298295">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205354298296">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205354298297">
                        <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_NewNode" id="1205354298298" />
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1205354298299">
                          <link role="link" targetNodeId="1.1145383142433" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1205354298300">
                        <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205354478228">
                          <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1205354478229">
                            <link role="concept" targetNodeId="1.1138055754698" resolveInfo="SNodeType" />
                            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205354478230">
                              <link role="variableDeclaration" targetNodeId="1205354298287" resolveInfo="elementType" />
                            </node>
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1205354478231">
                            <link role="link" targetNodeId="1.1138405853777" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205354298304">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205354298305">
                    <link role="variableDeclaration" targetNodeId="1205354298287" resolveInfo="elementType" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1205354298306">
                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1205354298307">
                      <link role="conceptDeclaration" targetNodeId="1.1138055754698" resolveInfo="SNodeType" />
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
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActions" id="1179535152689">
    <property name="name" value="expression" />
    <property name="package" value="rightTransform" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActionsBuilder" id="1179535189125">
      <property name="description" value="node type cast: &lt;expr&gt; --&gt; &lt;expr&gt;:&lt;concept&gt;" />
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="3.1068431790191" />
      <node role="precondition" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstitutePreconditionFunction" id="1179535189126">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179535189127">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1179535189128">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1179535189129">
              <property name="name" value="nodeType" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1179535189130">
                <link role="concept" targetNodeId="1.1138055754698" />
              </node>
              <node role="initializer" type="jetbrains.mps.bootstrap.helgins.structure.CoerceExpression" id="1206554157507">
                <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206554157508">
                  <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1206554157509" />
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1206554157510" />
                </node>
                <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.ConceptReference" id="1206554157511">
                  <property name="name" value="v1" />
                  <link role="concept" targetNodeId="1.1138055754698" resolveInfo="SNodeType" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1179535189136">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1179535189137">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1179535189138" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1179535189139">
                <link role="variableDeclaration" targetNodeId="1179535189129" resolveInfo="nodeType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1179535189140">
        <link role="concept" targetNodeId="1.1140137987495" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SimpleRightTransformMenuPart" id="1179535189141">
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_Handler" id="1179535189142">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179535189143">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1179535189144">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1179535189145">
                  <property name="name" value="newNode" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1179535189146">
                    <link role="concept" targetNodeId="1.1140137987495" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648256025">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1179535189149" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithNewOperation" id="1179535189148">
                      <link role="concept" targetNodeId="1.1140137987495" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1179535189150">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255958">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255878">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1179535189156">
                      <link role="variableDeclaration" targetNodeId="1179535189145" resolveInfo="newNode" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1179535189155">
                      <link role="link" targetNodeId="1.1140138123956" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1179535189152">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1179535189153" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1179535189157">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1179535189158">
                  <link role="variableDeclaration" targetNodeId="1179535189145" resolveInfo="newNode" />
                </node>
              </node>
            </node>
          </node>
          <node role="matchingText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1179535189159">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179535189160">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1179535189161">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1179535189162">
                  <property name="value" value=":" />
                </node>
              </node>
            </node>
          </node>
          <node role="descriptionText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1179535189163">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179535189164">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1179535189165">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1179535189166">
                  <property name="value" value="node type cast" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActionsBuilder" id="1179535648214">
      <property name="description" value="semantic downcast: &lt;expr&gt; --&gt; &lt;expr&gt;/" />
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="3.1068431790191" />
      <node role="precondition" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstitutePreconditionFunction" id="1179535648215">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179535648216">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206059813313">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206059813314">
              <property name="name" value="expressionType" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206059813315" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206059813316">
                <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1206059813317" />
                <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1206059813318" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206059924539">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206059924540">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206059937315">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1206059940098">
                  <property name="value" value="true" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206059929028">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206059927293">
                <link role="variableDeclaration" targetNodeId="1206059813314" resolveInfo="expressionType" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1206059929890">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1206059933048">
                  <link role="conceptDeclaration" targetNodeId="1.1204919674986" resolveInfo="_LinkAccessT" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206059946787">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206059946788">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206059965563">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1206059967909">
                  <property name="value" value="true" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206059951605">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206059949604">
                <link role="variableDeclaration" targetNodeId="1206059813314" resolveInfo="expressionType" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1206059952732">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1206059963812">
                  <link role="conceptDeclaration" targetNodeId="1.1138055754698" resolveInfo="SNodeType" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206059971285">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206059971286">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206059971287">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1206059971288">
                  <property name="value" value="true" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206059971289">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206059971290">
                <link role="variableDeclaration" targetNodeId="1206059813314" resolveInfo="expressionType" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1206059971291">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1206059977152">
                  <link role="conceptDeclaration" targetNodeId="1.1172420572800" resolveInfo="SConceptType" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206059979762">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206059979763">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206059979764">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1206059979765">
                  <property name="value" value="true" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206059979766">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206059979767">
                <link role="variableDeclaration" targetNodeId="1206059813314" resolveInfo="expressionType" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1206059979768">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1206059984817">
                  <link role="conceptDeclaration" targetNodeId="1.1143226024141" resolveInfo="SModelType" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1179535648217">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1206059990615">
              <property name="value" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1179535648220">
        <link role="concept" targetNodeId="1.1145404486709" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SimpleRightTransformMenuPart" id="1179535648221">
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_Handler" id="1179535648222">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179535648223">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1179535648224">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1179535648225">
                  <property name="name" value="newNode" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1179535648226">
                    <link role="concept" targetNodeId="1.1145404486709" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260513">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1179535648229" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithNewOperation" id="1179535648228">
                      <link role="concept" targetNodeId="1.1145404486709" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1179535648230">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260505">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255834">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1179535648236">
                      <link role="variableDeclaration" targetNodeId="1179535648225" resolveInfo="newNode" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1179535648235">
                      <link role="link" targetNodeId="1.1145404616321" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1179535648232">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1179535648233" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1179535648237">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1179535648238">
                  <link role="variableDeclaration" targetNodeId="1179535648225" resolveInfo="newNode" />
                </node>
              </node>
            </node>
          </node>
          <node role="matchingText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1179535648239">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179535648240">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1179535648241">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1179535648242">
                  <property name="value" value="/" />
                </node>
              </node>
            </node>
          </node>
          <node role="descriptionText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1179535648243">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179535648244">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1179535648245">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1179535648246">
                  <property name="value" value="downcast to lower semantic level" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActions" id="1180538117573">
    <property name="name" value="conceptLinkAndPropertyAccess" />
    <property name="package" value="substitute" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActionsBuilder" id="1180538139816">
      <property name="description" value="substitute with concept-property-access or concept-link-access operations" />
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="1.1138411891628" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1180538937427">
        <link role="concept" targetNodeId="1.1145994841052" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ParameterizedSubstituteMenuPart" id="1180538937428">
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1180538937429">
            <link role="concept" targetNodeId="14.1105725006687" />
          </node>
          <node role="query" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedSubstitute_Query" id="1180538937430">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180538937431">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1180538937432">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1180538937433">
                  <property name="name" value="adapters" />
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1180538937434">
                    <link role="classifier" targetNodeId="8.~List" resolveInfo="List" />
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1180538937435">
                      <link role="classifier" targetNodeId="16.~ConceptPropertyDeclaration" resolveInfo="ConceptPropertyDeclaration" />
                    </node>
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204561689772">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SubstituteNodeBuilderVariableReference" id="1180538942405">
                      <link role="variableDeclaration" targetNodeId="1180538786419" resolveInfo="hierarchyScope" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204561689773">
                      <link role="baseMethodDeclaration" targetNodeId="13.~ISearchScope.getAdapters(java.lang.Class):java.util.List" resolveInfo="getAdapters" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1180538937438">
                        <link role="classifier" targetNodeId="16.~ConceptPropertyDeclaration" resolveInfo="ConceptPropertyDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180538937439">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1180538937440">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1180538937441">
                    <link role="classConcept" targetNodeId="7.~BaseAdapter" resolveInfo="BaseAdapter" />
                    <link role="baseMethodDeclaration" targetNodeId="7.~BaseAdapter.toNodes(java.util.List):java.util.List" resolveInfo="toNodes" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180538937442">
                      <link role="variableDeclaration" targetNodeId="1180538937433" resolveInfo="adapters" />
                    </node>
                  </node>
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1180538937443">
                    <link role="elementConcept" targetNodeId="14.1105725006687" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedSubstitute_Handler" id="1180538937444">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180538937445">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1180538937446">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1180538937447">
                  <property name="name" value="newNode" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1180538937448">
                    <link role="concept" targetNodeId="1.1145994841052" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1203539679427">
                    <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1203539679428">
                      <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203539679429">
                        <link role="concept" targetNodeId="1.1145994841052" resolveInfo="SConceptPropertyAccess" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1180538937452">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260741">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255803">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180538937458">
                      <link role="variableDeclaration" targetNodeId="1180538937447" resolveInfo="newNode" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1180538937457">
                      <link role="link" targetNodeId="1.1145994841055" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1180538937454">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1180538937455" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180538937459">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180538937460">
                  <link role="variableDeclaration" targetNodeId="1180538937447" resolveInfo="newNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1180539045801">
        <link role="concept" targetNodeId="1.1175618182947" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ParameterizedSubstituteMenuPart" id="1180539045802">
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1180539045803">
            <link role="concept" targetNodeId="14.1105736576531" />
          </node>
          <node role="query" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedSubstitute_Query" id="1180539045804">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180539045805">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1180539045806">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1180539045807">
                  <property name="name" value="adapters" />
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1180539045808">
                    <link role="classifier" targetNodeId="8.~List" resolveInfo="List" />
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1180539045809">
                      <link role="classifier" targetNodeId="16.~ConceptLinkDeclaration" resolveInfo="ConceptLinkDeclaration" />
                    </node>
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204561689774">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SubstituteNodeBuilderVariableReference" id="1180539050261">
                      <link role="variableDeclaration" targetNodeId="1180538786419" resolveInfo="hierarchyScope" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204561689775">
                      <link role="baseMethodDeclaration" targetNodeId="13.~ISearchScope.getAdapters(java.lang.Class):java.util.List" resolveInfo="getAdapters" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1180539045812">
                        <link role="classifier" targetNodeId="16.~ConceptLinkDeclaration" resolveInfo="ConceptLinkDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180539045813">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1180539045814">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1180539045815">
                    <link role="baseMethodDeclaration" targetNodeId="7.~BaseAdapter.toNodes(java.util.List):java.util.List" resolveInfo="toNodes" />
                    <link role="classConcept" targetNodeId="7.~BaseAdapter" resolveInfo="BaseAdapter" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180539045816">
                      <link role="variableDeclaration" targetNodeId="1180539045807" resolveInfo="adapters" />
                    </node>
                  </node>
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1180539045817">
                    <link role="elementConcept" targetNodeId="14.1105736576531" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedSubstitute_Handler" id="1180539045818">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180539045819">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1180539045820">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1180539045821">
                  <property name="name" value="newNode" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1180539045822">
                    <link role="concept" targetNodeId="1.1175618182947" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1203539718351">
                    <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1203539718352">
                      <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1203539718353">
                        <link role="concept" targetNodeId="1.1175618182947" resolveInfo="SConceptLinkAccess" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1180539045826">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260538">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255901">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180539045832">
                      <link role="variableDeclaration" targetNodeId="1180539045821" resolveInfo="newNode" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1180539045831">
                      <link role="link" targetNodeId="1.1175618223511" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1180539045828">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1180539045829" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180539045833">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180539045834">
                  <link role="variableDeclaration" targetNodeId="1180539045821" resolveInfo="newNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="variable" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SubstituteNodeBuilderVariableDeclaration" id="1180538409497">
        <property name="name" value="leftConcept" />
        <node role="initializerBlock" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_SubstituteVariableInitializer" id="1180538409498">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180538409499">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1180538449538">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1180538449539">
                <property name="name" value="leftExpression" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1180538449540">
                  <link role="concept" targetNodeId="3.1068431790191" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260507">
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1180538449543">
                    <link role="concept" targetNodeId="3.1197027756228" resolveInfo="DotExpression" />
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parentNode" id="1180538449544" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203104441801">
                    <link role="link" targetNodeId="3.1197027771414" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1203104379012">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203104379013">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1203104404931">
                  <property name="value" value="old" />
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203104414151">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1203104415403">
                    <node role="rValue" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255929">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1203104422783">
                        <link role="concept" targetNodeId="1.1138055978872" resolveInfo="SNodeOperationExpression" />
                        <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parentNode" id="1203104422784" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203104422782">
                        <link role="link" targetNodeId="1.1138056667223" />
                      </node>
                    </node>
                    <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1203104414152">
                      <link role="variableDeclaration" targetNodeId="1180538449539" resolveInfo="leftExpression" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260560">
                <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parentNode" id="1203104388955" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1203104394959">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1203104400273">
                    <link role="conceptDeclaration" targetNodeId="1.1138055978872" resolveInfo="SNodeOperationExpression" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1180538463526">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1180538463527">
                <property name="name" value="maybeConceptType" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1180538463528">
                  <link role="concept" targetNodeId="1.1172420572800" />
                </node>
                <node role="initializer" type="jetbrains.mps.bootstrap.helgins.structure.CoerceStrongExpression" id="1180538490395">
                  <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.ConceptReference" id="1180538503591">
                    <property name="name" value="v" />
                    <link role="concept" targetNodeId="1.1172420572800" />
                  </node>
                  <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260592">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180538495574">
                      <link role="variableDeclaration" targetNodeId="1180538449539" resolveInfo="leftExpression" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1180538500289" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1180538519820">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180538519821">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1180538575917">
                  <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180538575918">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180538595227">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255982">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180538597077">
                          <link role="variableDeclaration" targetNodeId="1180538463527" resolveInfo="maybeConceptType" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1180538608571">
                          <link role="link" targetNodeId="1.1180481110358" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1180538591391">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1180538593193" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255931">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180538583126">
                        <link role="variableDeclaration" targetNodeId="1180538463527" resolveInfo="maybeConceptType" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1180538589308">
                        <link role="link" targetNodeId="1.1180481110358" />
                      </node>
                    </node>
                  </node>
                  <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1180538614206">
                    <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180538614207">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180538616025">
                        <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptRefExpression" id="1180538618629">
                          <link role="conceptDeclaration" targetNodeId="14.1169125787135" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1180538534565">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1180538536508" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180538522357">
                  <link role="variableDeclaration" targetNodeId="1180538463527" resolveInfo="maybeConceptType" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1180538449545">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1180538449546">
                <property name="name" value="maybeNodeType" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1180538449547">
                  <link role="concept" targetNodeId="1.1138055754698" />
                </node>
                <node role="initializer" type="jetbrains.mps.bootstrap.helgins.structure.CoerceStrongExpression" id="1180538449548">
                  <node role="nodeToCoerce" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648255884">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180538449551">
                      <link role="variableDeclaration" targetNodeId="1180538449539" resolveInfo="leftExpression" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1180538449550" />
                  </node>
                  <node role="pattern" type="jetbrains.mps.bootstrap.helgins.structure.ConceptReference" id="1180538449552">
                    <property name="name" value="v" />
                    <link role="concept" targetNodeId="1.1138055754698" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1180538662397">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180538662398">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1180538688534">
                  <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180538688535">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180538688536">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260759">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180538701021">
                          <link role="variableDeclaration" targetNodeId="1180538449546" resolveInfo="maybeNodeType" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1180538705852">
                          <link role="link" targetNodeId="1.1138405853777" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1180538693651">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1203648260564">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180538693653">
                        <link role="variableDeclaration" targetNodeId="1180538449546" resolveInfo="maybeNodeType" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1180538693652">
                        <link role="link" targetNodeId="1.1138405853777" />
                      </node>
                    </node>
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1180538693650" />
                  </node>
                  <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1180538710022">
                    <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180538710023">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180538718296">
                        <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptRefExpression" id="1180538721466">
                          <link role="conceptDeclaration" targetNodeId="15.1133920641626" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1180538667087">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1180538668706" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1180538665516">
                  <link role="variableDeclaration" targetNodeId="1180538449546" resolveInfo="maybeNodeType" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1180538449562">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1180538740278" />
            </node>
          </node>
        </node>
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1180538411907" />
      </node>
      <node role="variable" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SubstituteNodeBuilderVariableDeclaration" id="1180538786419">
        <property name="name" value="hierarchyScope" />
        <node role="initializerBlock" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_SubstituteVariableInitializer" id="1180538786420">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1180538786421">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1180538822445">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NewExpression" id="1180538822446">
                <link role="baseMethodDeclaration" targetNodeId="13.~ConceptAndSuperConceptsScope.&lt;init&gt;(jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration)" resolveInfo="ConceptAndSuperConceptsScope" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204668169802">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SubstituteNodeBuilderVariableReference" id="1180538847618">
                    <link role="variableDeclaration" targetNodeId="1180538409497" resolveInfo="leftConcept" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1180538865394" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1180538793277">
          <link role="classifier" targetNodeId="13.~ISearchScope" resolveInfo="ISearchScope" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActions" id="1205263868336">
    <property name="package" value="rightTransform" />
    <property name="name" value="applyAncestorActions" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActionsBuilder" id="1205263933103">
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="1.1204762015203" resolveInfo="IAttributeAccessQualifier" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.IncludeRightTransformForNodePart" id="1205263951293">
        <node role="nodeBlock" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_NodeQuery" id="1205263951294">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205263951295">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205263963905">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205263965110">
                <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1205263963906" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1205263968331" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <visible index="2" modelUID="jetbrains.mps.bootstrap.smodelLanguage.constraints" />
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActions" id="1206021156875">
    <property name="package" value="substitute" />
    <property name="name" value="staticMethodAccess" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActionsBuilder" id="1206022149742">
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="3.1068431790191" resolveInfo="Expression" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1206022190296">
        <link role="concept" targetNodeId="1.1206019730951" resolveInfo="StaticConceptMethodCall" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ParameterizedSubstituteMenuPart" id="1206022196596">
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206022198649">
            <link role="concept" targetNodeId="14.1169125787135" resolveInfo="AbstractConceptDeclaration" />
          </node>
          <node role="query" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedSubstitute_Query" id="1206022196598">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206022196599">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206022231223">
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.StaticConceptMethodCall" id="1206022231224">
                  <link role="concept" targetNodeId="1.1206019730951" resolveInfo="StaticConceptMethodCall" />
                  <link role="baseMethodDeclaration" targetNodeId="2v.1206021753918" resolveInfo="getClassifiersWithStaticMethods" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1206022242713" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_scope" id="1206022247732" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parentNode" id="1206022250641" />
                </node>
              </node>
            </node>
          </node>
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedSubstitute_Handler" id="1206022196600">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206022196601">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206022285618">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206022285619">
                  <property name="name" value="result" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206022285620">
                    <link role="concept" targetNodeId="1.1206019730951" resolveInfo="StaticConceptMethodCall" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1206022291199">
                    <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1206022291200">
                      <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206022291201">
                        <link role="concept" targetNodeId="1.1206019730951" resolveInfo="StaticConceptMethodCall" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206022294752">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206022313112">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206022295035">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206022294753">
                      <link role="variableDeclaration" targetNodeId="1206022285619" resolveInfo="result" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206022312439">
                      <link role="link" targetNodeId="1.1206019820684" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1206022314395">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1206022315131" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206022292374">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206022293126">
                  <link role="variableDeclaration" targetNodeId="1206022285619" resolveInfo="result" />
                </node>
              </node>
            </node>
          </node>
          <node role="matchingText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedSubstitute_String" id="1206022256863">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206022256864">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206022260975">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1206022273753">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1206022274833">
                    <property name="value" value="." />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206022262023">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1206022260976" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1206022273018">
                      <link role="property" targetNodeId="15.1169194664001" resolveInfo="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="descriptionText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedSubstitute_String" id="1206022279069">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206022279070">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206022280056">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1206022280057">
                  <property name="value" value="static access" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1206377804308">
    <property name="package" value="substitute" />
    <property name="name" value="ApplicableTypesInfo" />
    <node role="constructor" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" id="1206378005506">
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1206378005507" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1206378005508" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206378005509" />
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration" id="1206377822467">
      <property name="name" value="myToConcept" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1206377822468" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1206377828679" />
      <node role="initializer" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1206377849025">
        <property name="value" value="false" />
      </node>
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration" id="1206377824736">
      <property name="name" value="myToNode" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1206377824737" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1206377851464" />
      <node role="initializer" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1206377860075">
        <property name="value" value="false" />
      </node>
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration" id="1206377825957">
      <property name="name" value="myToModel" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1206377825958" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1206377863920" />
      <node role="initializer" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1206377872501">
        <property name="value" value="false" />
      </node>
    </node>
    <node role="field" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration" id="1206377876392">
      <property name="name" value="myLinkAccessT" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1206377876393" />
      <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206377885458">
        <link role="concept" targetNodeId="1.1204919674986" resolveInfo="_LinkAccessT" />
      </node>
      <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206377900601" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1206377804309" />
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.regexp.actions">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.actionsLanguage" />
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.sharedConcepts" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <maxImportIndex value="11" />
  <import index="1" modelUID="jetbrains.mps.regexp.structure" version="-1" />
  <import index="2" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="3" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="4" modelUID="jetbrains.mps.helgins.inference@java_stub" version="-1" />
  <import index="5" modelUID="java.lang@java_stub" version="-1" />
  <import index="6" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="8" modelUID="jetbrains.mps.regexp.structure@java_stub" version="-1" />
  <import index="9" modelUID="jetbrains.mps.smodel.constraints@java_stub" version="-1" />
  <import index="11" modelUID="jetbrains.mps.smodel.search@java_stub" version="-1" />
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActions" id="1174484726883">
    <property name="name" value="stringOperations" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActionsBuilder" id="1175165206848">
      <property name="description" value="transforms String typed expression into replace or split expression " />
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="3.1068431790191" />
      <node role="precondition" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstitutePreconditionFunction" id="1175165238942">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1175165238943">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1175165360506">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1175165360507">
              <property name="name" value="type" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1175165360508">
                <link role="concept" targetNodeId="2.1078489098625" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1175165363394">
                <link role="baseMethodDeclaration" targetNodeId="4.~TypeChecker.getTypeOf(jetbrains.mps.smodel.SNode):jetbrains.mps.smodel.SNode" resolveInfo="getTypeOf" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1175165363395">
                  <link role="baseMethodDeclaration" targetNodeId="4.~TypeChecker.getInstance():jetbrains.mps.helgins.inference.TypeChecker" resolveInfo="getInstance" />
                  <link role="classConcept" targetNodeId="4.~TypeChecker" resolveInfo="TypeChecker" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1175165363396" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1175165470656">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1175165472926">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1175165474210" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1175165471503">
                <link role="variableDeclaration" targetNodeId="1175165360507" resolveInfo="type" />
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1175165470658">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1175165475164">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1175165476088" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1175165882851">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1175165884010">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227898165">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1175165884871">
                  <link role="variableDeclaration" targetNodeId="1175165360507" resolveInfo="type" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1175165892249">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1177556242938">
                    <link role="conceptDeclaration" targetNodeId="3.1107535904670" />
                  </node>
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1175165882853">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1175165895688">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1175165898221" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1175165374637">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1175165385723">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1175165388505">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1175165389757">
                  <property name="value" value="true" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1175165427528">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1175165454450">
                <link role="baseMethodDeclaration" targetNodeId="5.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1175165446775">
                  <link role="baseMethodDeclaration" targetNodeId="6.~SModel.getLongName():java.lang.String" resolveInfo="getLongName" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227845392">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227959888">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1175165911616">
                        <link role="concept" targetNodeId="3.1107535904670" />
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1175165430424">
                          <link role="variableDeclaration" targetNodeId="1175165360507" resolveInfo="type" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1175165922056">
                        <link role="link" targetNodeId="3.1107535924139" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1175165445195" />
                  </node>
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1175165461334">
                  <property name="value" value="java.lang" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1175165411508">
                <link role="baseMethodDeclaration" targetNodeId="5.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1175165406208">
                  <property name="value" value="String" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227932792">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227932632">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1175165901691">
                      <link role="concept" targetNodeId="3.1107535904670" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1175165419728">
                        <link role="variableDeclaration" targetNodeId="1175165360507" resolveInfo="type" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1175165907615">
                      <link role="link" targetNodeId="3.1107535924139" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1175165425840">
                    <link role="property" targetNodeId="2.1169194664001" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1175165378017">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1175165379519" />
          </node>
        </node>
      </node>
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1177533604972">
        <link role="concept" targetNodeId="3.1068431790191" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SimpleRightTransformMenuPart" id="1177533623939">
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_Handler" id="1177533623940">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177533623941">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1177533766762">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1177533766763">
                  <property name="name" value="replace" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177533766764">
                    <link role="concept" targetNodeId="1.1174655989549" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227838700">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1177533783046" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1177533785296">
                      <link role="concept" targetNodeId="1.1174655989549" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177533790956">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227818435">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177533790957" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1177533793290">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177533794350">
                      <link role="variableDeclaration" targetNodeId="1177533766763" resolveInfo="replace" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177533795694">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227820543">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227934115">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177533795695">
                      <link role="variableDeclaration" targetNodeId="1177533766763" resolveInfo="replace" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177533799878">
                      <link role="link" targetNodeId="1.1174656103019" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1177533909381">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177533910751" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177533788921">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177533789390">
                  <link role="variableDeclaration" targetNodeId="1177533766763" resolveInfo="replace" />
                </node>
              </node>
            </node>
          </node>
          <node role="matchingText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1177533754298">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177533754299">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177533756726">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1177533758028">
                  <property name="value" value=".replace with" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SimpleRightTransformMenuPart" id="1177533932036">
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_Handler" id="1177533932037">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177533932038">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1177533960296">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1177533960297">
                  <property name="name" value="split" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177533960298">
                    <link role="concept" targetNodeId="1.1175164405556" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227925898">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1177533964601" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1177533966399">
                      <link role="concept" targetNodeId="1.1175164405556" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177533972880">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227914440">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177533972881" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1177533976959">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177533979426">
                      <link role="variableDeclaration" targetNodeId="1177533960297" resolveInfo="split" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177533980585">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227922699">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227906066">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177533980586">
                      <link role="variableDeclaration" targetNodeId="1177533960297" resolveInfo="split" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177533982631">
                      <link role="link" targetNodeId="1.1175164443297" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1177533985771">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177533989509" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177533969255">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177533970445">
                  <link role="variableDeclaration" targetNodeId="1177533960297" resolveInfo="split" />
                </node>
              </node>
            </node>
          </node>
          <node role="matchingText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1177533947217">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177533947218">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177533948091">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1177533949455">
                  <property name="value" value=".split" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SimpleRightTransformMenuPart" id="1179357720475">
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_Handler" id="1179357720476">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179357720477">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1179357790223">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1179357790224">
                  <property name="name" value="matchRegexpExpression" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1179357790225">
                    <link role="concept" targetNodeId="1.1179357154354" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227848966">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1179357765896" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithNewOperation" id="1179357768841">
                      <link role="concept" targetNodeId="1.1179357154354" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1179357799384">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227928732">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227909368">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1179357799385">
                      <link role="variableDeclaration" targetNodeId="1179357790224" resolveInfo="matchRegexpExpression" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1179357804566">
                      <link role="link" targetNodeId="1.1179357286898" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1179357808704">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1179357809775" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1179357795388">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1179357795389">
                  <link role="variableDeclaration" targetNodeId="1179357790224" resolveInfo="matchRegexpExpression" />
                </node>
              </node>
            </node>
          </node>
          <node role="matchingText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1179357726915">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1179357726916">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1179357732016">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1179357732017">
                  <property name="value" value="matches" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActions" id="1177531227518">
    <property name="name" value="binary" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActionsBuilder" id="1177531247694">
      <property name="description" value="transfrom to binary regexp" />
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="1.1174482743037" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptRightTransformPart" id="1182825078340">
        <link role="concept" targetNodeId="1.1174485167097" />
        <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_ConceptHandler" id="1177531247697">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177531247698">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177531247699">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227895643">
                <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177531247701" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1177531247702">
                  <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_result" id="1177531247703" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177531247704">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227838645">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227818053">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_result" id="1177531247707" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177531247708">
                    <link role="link" targetNodeId="1.1174485176897" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1177531247709">
                  <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177531247710" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177531247711">
              <node role="expression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_result" id="1177531247712" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActions" id="1177531251201">
    <property name="name" value="unary" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActionsBuilder" id="1177531282394">
      <property name="description" value="transform to unary regexp" />
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="1.1174482743037" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptRightTransformPart" id="1182825078337">
        <link role="concept" targetNodeId="1.1174485235885" />
        <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_ConceptHandler" id="1177531282397">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177531282398">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177531282399">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227932790">
                <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177531282401" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1177531282402">
                  <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_result" id="1177531282403" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177531282404">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227889871">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227880957">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_result" id="1177531282407" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177531282408">
                    <link role="link" targetNodeId="1.1174485243418" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1177531282409">
                  <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177531282410" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177531282411">
              <node role="expression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_result" id="1177531282412" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActions" id="1177531319455">
    <property name="name" value="other" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActionsBuilder" id="1177531335474">
      <property name="description" value="transfrom to other regexps (create a sequence and add as the right)" />
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="1.1174482743037" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1177531335475">
        <link role="concept" targetNodeId="1.1174482743037" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ParameterizedRightTransformMenuPart" id="1182890259433">
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1182890291859">
            <link role="conceptDeclaraton" targetNodeId="1.1174482743037" />
          </node>
          <node role="query" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedRightTransform_Query" id="1182890259435">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1182890259436">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1182890339090">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1182890339091">
                  <property name="name" value="excludeList" />
                  <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1182890339092">
                    <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1182890342101" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1182890358444">
                    <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListCreatorWithInit" id="1182890360546">
                      <node role="initValue" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptRefExpression" id="1182890937567">
                        <link role="conceptDeclaration" targetNodeId="1.1174485167097" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptRefExpression" id="1182890944485">
                        <link role="conceptDeclaration" targetNodeId="1.1174485235885" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptRefExpression" id="1182890951527">
                        <link role="conceptDeclaration" targetNodeId="1.1174555732504" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptRefExpression" id="1182890960196">
                        <link role="conceptDeclaration" targetNodeId="1.1174662605354" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptRefExpression" id="1182890966099">
                        <link role="conceptDeclaration" targetNodeId="1.1174909099093" />
                      </node>
                      <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1182890363322" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1182890525521">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1182890525522">
                  <property name="name" value="regexps" />
                  <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1182890525523">
                    <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1182890525524">
                      <link role="conceptDeclaraton" targetNodeId="1.1174482743037" />
                    </node>
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227945838">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptRefExpression" id="1182890476950">
                      <link role="conceptDeclaration" targetNodeId="1.1174482743037" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Concept_GetAllSubConcepts" id="1182890485618">
                      <node role="smodel" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1182890491033" />
                      <node role="scope" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1182890508029">
                        <link role="baseMethodDeclaration" targetNodeId="6.~IOperationContext.getScope():jetbrains.mps.smodel.IScope" resolveInfo="getScope" />
                        <node role="instance" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_operationContext" id="1182890504478" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1182890535664">
                <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1182890593626">
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1182890599120" />
                  <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1182890539889">
                    <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1182890541818">
                      <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1182890541819">
                        <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1182890541820">
                          <property name="name" value="it" />
                        </node>
                        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1182890541821">
                          <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1182890549819">
                            <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1182890549820">
                              <property name="name" value="exclude" />
                            </node>
                            <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1182890556785">
                              <link role="variableDeclaration" targetNodeId="1182890339091" resolveInfo="excludeList" />
                            </node>
                            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1182890549822">
                              <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1182890562936">
                                <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227931016">
                                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1182890565292">
                                    <link role="closureParameter" targetNodeId="1182890541820" resolveInfo="it" />
                                  </node>
                                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Concept_IsSubConceptOfOperation" id="1182890570380">
                                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Expression" id="1182890573625">
                                      <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1182890576027">
                                        <link role="variable" targetNodeId="1182890549820" resolveInfo="exclude" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1182890562938">
                                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1182890581428">
                                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1182890583527">
                                      <property name="value" value="false" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1182890586095">
                            <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1182890588553">
                              <property name="value" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1182890538100">
                      <link role="variableDeclaration" targetNodeId="1182890525522" resolveInfo="regexps" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedRightTransform_Handler" id="1182890259437">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1182890259438">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1182890812059">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1182890812060">
                  <property name="name" value="newRegexp" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1182890812061">
                    <link role="concept" targetNodeId="1.1174482743037" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227895663">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1182890797857" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Concept_NewInstance" id="1182890801956" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1182890689927">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1182890689928">
                  <property name="name" value="result" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1182890689929">
                    <link role="concept" targetNodeId="1.1174484562151" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1182890672209">
                    <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1182890674360">
                      <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1182890674361">
                        <link role="concept" targetNodeId="1.1174484562151" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1182890715324">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227894782">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1182890715325" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1182890720486">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1182890722621">
                      <link role="variableDeclaration" targetNodeId="1182890689928" resolveInfo="result" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1182890743532">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227957479">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227880210">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1182890743533">
                      <link role="variableDeclaration" targetNodeId="1182890689928" resolveInfo="result" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1182890750757">
                      <link role="link" targetNodeId="1.1174485176897" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1182890755574">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1182890758116" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1182890762604">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227902938">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227925186">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1182890762605">
                      <link role="variableDeclaration" targetNodeId="1182890689928" resolveInfo="result" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1182890766861">
                      <link role="link" targetNodeId="1.1174485181039" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1182890771335">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1182890823899">
                      <link role="variableDeclaration" targetNodeId="1182890812060" resolveInfo="newRegexp" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1182890849245">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1182890851100">
                  <link role="variableDeclaration" targetNodeId="1182890689928" resolveInfo="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActions" id="1177531581952">
    <property name="name" value="predefinedSymbol" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActionsBuilder" id="1177531588848">
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="1.1174482743037" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1177531594353">
        <link role="concept" targetNodeId="1.1174555732504" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ParameterizedRightTransformMenuPart" id="1177531605933">
          <node role="query" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedRightTransform_Query" id="1177531605935">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177531605936">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1177531619242">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1177531619243">
                  <property name="name" value="model" />
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1177531619244">
                    <link role="classifier" targetNodeId="6.~SModel" resolveInfo="SModel" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1177531619245">
                    <link role="baseMethodDeclaration" targetNodeId="6.~SNode.getModel():jetbrains.mps.smodel.SModel" resolveInfo="getModel" />
                    <node role="instance" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177531622531" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177531619247">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1177531619248">
                  <link role="baseMethodDeclaration" targetNodeId="6.~BaseAdapter.toNodes(java.util.List):java.util.List" resolveInfo="toNodes" />
                  <link role="classConcept" targetNodeId="6.~BaseAdapter" resolveInfo="BaseAdapter" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1177531619249">
                    <link role="baseMethodDeclaration" targetNodeId="6.~SModel.allAdaptersIncludingImported(jetbrains.mps.smodel.IScope,java.lang.Class):java.util.List" resolveInfo="allAdaptersIncludingImported" />
                    <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177531619250">
                      <link role="variableDeclaration" targetNodeId="1177531619243" resolveInfo="model" />
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1177531619251">
                      <link role="baseMethodDeclaration" targetNodeId="6.~IOperationContext.getScope():jetbrains.mps.smodel.IScope" resolveInfo="getScope" />
                      <node role="instance" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_operationContext" id="1177531625180" />
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1177531619253">
                      <link role="classifier" targetNodeId="8.~PredefinedSymbolClassDeclaration" resolveInfo="PredefinedSymbolClassDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedRightTransform_Handler" id="1177531605937">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177531605938">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1177531646927">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1177531646928">
                  <property name="name" value="res" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177531646929">
                    <link role="concept" targetNodeId="1.1174484562151" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227901664">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1177531653929" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1177531655836">
                      <link role="concept" targetNodeId="1.1174484562151" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177531661966">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227901493">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177531661967" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1177531665553">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177531666723">
                      <link role="variableDeclaration" targetNodeId="1177531646928" resolveInfo="res" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177531668195">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227900269">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227881087">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177531668196">
                      <link role="variableDeclaration" targetNodeId="1177531646928" resolveInfo="res" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177531672833">
                      <link role="link" targetNodeId="1.1174485176897" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1177531676348">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177531677650" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1177531685742">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1177531685743">
                  <property name="name" value="ref" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177531685744">
                    <link role="concept" targetNodeId="1.1174555732504" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227847216">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1177531694022" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1177531696146">
                      <link role="concept" targetNodeId="1.1174555732504" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177531702985">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227904096">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227957735">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177531702986">
                      <link role="variableDeclaration" targetNodeId="1177531685743" resolveInfo="ref" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177531722881">
                      <link role="link" targetNodeId="1.1174555843709" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1177531724701">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1177531725483" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177531679239">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227886974">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227945463">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177531679240">
                      <link role="variableDeclaration" targetNodeId="1177531646928" resolveInfo="res" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177531733251">
                      <link role="link" targetNodeId="1.1174485181039" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1177531735036">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177531736911">
                      <link role="variableDeclaration" targetNodeId="1177531685743" resolveInfo="ref" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177531658877">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177531659443">
                  <link role="variableDeclaration" targetNodeId="1177531646928" resolveInfo="res" />
                </node>
              </node>
            </node>
          </node>
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177531611875">
            <link role="concept" targetNodeId="1.1174554386384" />
          </node>
          <node role="matchingText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1177531631585">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177531631586">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177531633660">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227957623">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1177531634649" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1177531639052">
                    <link role="property" targetNodeId="2.1169194664001" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="descriptionText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1177531640606">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177531640607">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177531641476">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227889386">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1177531642357" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1177531766495">
                    <link role="property" targetNodeId="1.1174554540628" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActions" id="1177531821869">
    <property name="name" value="regexpReference" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActionsBuilder" id="1177531829621">
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="1.1174482743037" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1177531837505">
        <link role="concept" targetNodeId="1.1174662605354" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ParameterizedRightTransformMenuPart" id="1177531852237">
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177531853957">
            <link role="concept" targetNodeId="1.1174483125581" />
          </node>
          <node role="query" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedRightTransform_Query" id="1177531852239">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177531852240">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177531864413">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1177531868567">
                  <link role="baseMethodDeclaration" targetNodeId="6.~BaseAdapter.toNodes(java.util.List):java.util.List" resolveInfo="toNodes" />
                  <link role="classConcept" targetNodeId="6.~BaseAdapter" resolveInfo="BaseAdapter" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1177531883732">
                    <link role="baseMethodDeclaration" targetNodeId="6.~SModel.allAdaptersIncludingImported(jetbrains.mps.smodel.IScope,java.lang.Class):java.util.List" resolveInfo="allAdaptersIncludingImported" />
                    <node role="instance" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227922070">
                      <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177531871525" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1177531877057" />
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1177531887661">
                      <link role="baseMethodDeclaration" targetNodeId="6.~IOperationContext.getScope():jetbrains.mps.smodel.IScope" resolveInfo="getScope" />
                      <node role="instance" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_operationContext" id="1177531885548" />
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1177531893836">
                      <link role="classifier" targetNodeId="8.~RegexpDeclaration" resolveInfo="RegexpDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedRightTransform_Handler" id="1177531852241">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177531852242">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1177531921275">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1177531921276">
                  <property name="name" value="seq" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177531921277">
                    <link role="concept" targetNodeId="1.1174484562151" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227917320">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1177531925861" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1177531927657">
                      <link role="concept" targetNodeId="1.1174484562151" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177531934465">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227926360">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177531934466" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1177531937060">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177531939713">
                      <link role="variableDeclaration" targetNodeId="1177531921276" resolveInfo="seq" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177531943794">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227842169">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227939419">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177531943795">
                      <link role="variableDeclaration" targetNodeId="1177531921276" resolveInfo="seq" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177531946578">
                      <link role="link" targetNodeId="1.1174485176897" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1177531948554">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177531952850" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1177531954995">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1177531954996">
                  <property name="name" value="ref" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177531954997">
                    <link role="concept" targetNodeId="1.1174662605354" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227910093">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1177531957058" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1177531959966">
                      <link role="concept" targetNodeId="1.1174662605354" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177531969580">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227925965">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227883379">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177531969581">
                      <link role="variableDeclaration" targetNodeId="1177531954996" resolveInfo="ref" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177531973504">
                      <link role="link" targetNodeId="1.1174662628918" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1177531975331">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1177531976019" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177531979967">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227820825">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227880667">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177531979968">
                      <link role="variableDeclaration" targetNodeId="1177531921276" resolveInfo="seq" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177531983192">
                      <link role="link" targetNodeId="1.1174485181039" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1177531985015">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177531986338">
                      <link role="variableDeclaration" targetNodeId="1177531954996" resolveInfo="ref" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177531988886">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177531992833">
                  <link role="variableDeclaration" targetNodeId="1177531921276" resolveInfo="seq" />
                </node>
              </node>
            </node>
          </node>
          <node role="matchingText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1177531904458">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177531904459">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177531905840">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227867006">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1177531907113" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1177531912159">
                    <link role="property" targetNodeId="2.1169194664001" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="descriptionText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1177531913164">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177531913165">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177531914147">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227890852">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1177531915400" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1177531918272">
                    <link role="property" targetNodeId="1.1174662978120" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActions" id="1177533152784">
    <property name="name" value="matchReference" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.RTransformHintSubstituteActionsBuilder" id="1177533163867">
      <property name="useNewActions" value="true" />
      <link role="applicableConcept" targetNodeId="1.1174482743037" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1177533168069">
        <link role="concept" targetNodeId="1.1174909099093" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ParameterizedRightTransformMenuPart" id="1177533175017">
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177533177678">
            <link role="concept" targetNodeId="1.1174564062919" />
          </node>
          <node role="query" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedRightTransform_Query" id="1177533175019">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177533175020">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1186083056287">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1186083056288">
                  <property name="name" value="status" />
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1186083056289">
                    <link role="classifier" targetNodeId="9.~SearchScopeStatus" resolveInfo="SearchScopeStatus" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1186083020595">
                    <link role="classConcept" targetNodeId="9.~ModelConstraintsUtil" resolveInfo="ModelConstraintsUtil" />
                    <link role="baseMethodDeclaration" targetNodeId="9.~ModelConstraintsUtil.getSearchScope(jetbrains.mps.smodel.SNode,jetbrains.mps.smodel.SNode,jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration,java.lang.String,jetbrains.mps.smodel.IOperationContext):jetbrains.mps.smodel.constraints.SearchScopeStatus" resolveInfo="getSearchScope" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1186083130909" />
                    <node role="actualArgument" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1186083134880" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204672721567">
                      <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptRefExpression" id="1186083170725">
                        <link role="conceptDeclaration" targetNodeId="1.1174909099093" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1186083209589" />
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1186083231871">
                      <property name="value" value="match" />
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_operationContext" id="1186083248904" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1186083072869">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1186083090049">
                  <link role="baseMethodDeclaration" targetNodeId="11.~ISearchScope.getNodes():java.util.List" resolveInfo="getNodes" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1186083079389">
                    <link role="baseMethodDeclaration" targetNodeId="9.~SearchScopeStatus.getSearchScope():jetbrains.mps.smodel.search.ISearchScope" resolveInfo="getSearchScope" />
                    <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1186083074433">
                      <link role="variableDeclaration" targetNodeId="1186083056288" resolveInfo="status" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedRightTransform_Handler" id="1177533175021">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177533175022">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1177533246186">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1177533246187">
                  <property name="name" value="seq" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177533246188">
                    <link role="concept" targetNodeId="1.1174484562151" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227880003">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1177533252905" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1177533256188">
                      <link role="concept" targetNodeId="1.1174484562151" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1177533270871">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1177533270872">
                  <property name="name" value="ref" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177533270873">
                    <link role="concept" targetNodeId="1.1174909099093" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227898320">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1177533275826" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1177533278527">
                      <link role="concept" targetNodeId="1.1174909099093" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177533301232">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227924785">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227957343">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177533301233">
                      <link role="variableDeclaration" targetNodeId="1177533270872" resolveInfo="ref" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177533306411">
                      <link role="link" targetNodeId="1.1174909113141" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1177533308234">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1177533320417" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177533326586">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227917537">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177533326587" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1177533328790">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177533330797">
                      <link role="variableDeclaration" targetNodeId="1177533246187" resolveInfo="seq" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177533332599">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227956659">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227938851">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177533332600">
                      <link role="variableDeclaration" targetNodeId="1177533246187" resolveInfo="seq" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177533334868">
                      <link role="link" targetNodeId="1.1174485176897" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1177533340758">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1177533349610" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1177533352630">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227892311">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227832651">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177533352631">
                      <link role="variableDeclaration" targetNodeId="1177533246187" resolveInfo="seq" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177533356177">
                      <link role="link" targetNodeId="1.1174485181039" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1177533357945">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177533359860">
                      <link role="variableDeclaration" targetNodeId="1177533270872" resolveInfo="ref" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177533362205">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1177533363324">
                  <link role="variableDeclaration" targetNodeId="1177533246187" resolveInfo="seq" />
                </node>
              </node>
            </node>
          </node>
          <node role="matchingText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1177533208808">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177533208809">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177533209647">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227888317">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1177533212408" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1177533214302">
                    <link role="property" targetNodeId="2.1169194664001" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="descriptionText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_RightTransform_String" id="1177533218654">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177533218655">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177533219499">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1177533220382" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeFactories" id="1202217970120">
    <property name="name" value="match" />
    <node role="nodeFactory" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeFactory" id="1202218039384">
      <link role="applicableConcept" targetNodeId="1.1174564062919" resolveInfo="MatchParensRegexp" />
      <node role="setupFunction" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction" id="1202218039385">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202218039386">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1202218089430">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227895188">
              <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1202218091892" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1202218097281">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1202218101481">
                  <link role="conceptDeclaration" targetNodeId="1.1174482743037" resolveInfo="Regexp" />
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1202218089432">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1202218059835">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227929251">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227884018">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_NewNode" id="1202218059836" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1202218077166">
                      <link role="link" targetNodeId="1.1174564160889" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1202218082705">
                    <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1202218103546">
                      <link role="concept" targetNodeId="1.1174482743037" resolveInfo="Regexp" />
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSetupFunction_SampleNode" id="1202218085422" />
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
</model>


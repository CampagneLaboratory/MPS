<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:1222075024858(jetbrains.mps.nanoj.actions)">
  <persistence version="3" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.actionsLanguage">
    <languageAspect modelUID="r:1222075024036(jetbrains.mps.bootstrap.actionsLanguage.constraints)" version="16" />
    <languageAspect modelUID="r:1222075024040(jetbrains.mps.bootstrap.actionsLanguage.structure)" version="22" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="r:1222075024065(jetbrains.mps.baseLanguage.constraints)" version="83" />
    <languageAspect modelUID="r:1222075024074(jetbrains.mps.baseLanguage.structure)" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="r:1222075024123(jetbrains.mps.bootstrap.smodelLanguage.constraints)" version="21" />
    <languageAspect modelUID="r:1222075024129(jetbrains.mps.bootstrap.smodelLanguage.structure)" version="1" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.sharedConcepts">
    <languageAspect modelUID="r:1222075024058(jetbrains.mps.bootstrap.sharedConcepts.constraints)" version="0" />
  </language>
  <language namespace="jetbrains.mps.regexp">
    <languageAspect modelUID="r:1222075024661(jetbrains.mps.regexp.constraints)" version="3" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.constraintsLanguage">
    <languageAspect modelUID="r:1222075024135(jetbrains.mps.bootstrap.constraintsLanguage.constraints)" version="9" />
    <languageAspect modelUID="r:1222075024141(jetbrains.mps.bootstrap.constraintsLanguage.structure)" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.helgins">
    <languageAspect modelUID="r:1222075024046(jetbrains.mps.bootstrap.helgins.constraints)" version="17" />
  </language>
  <languageAspect modelUID="jetbrains.mps.bootstrap.actionsLanguage.constraints" version="16" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.actionsLanguage.structure" version="22" />
  <languageAspect modelUID="jetbrains.mps.baseLanguage.constraints" version="83" />
  <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.constraints" version="21" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.sharedConcepts.constraints" version="0" />
  <languageAspect modelUID="jetbrains.mps.regexp.constraints" version="3" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.constraints" version="9" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.helgins.constraints" version="17" />
  <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.nanoj.constraints" version="45" />
  <languageAspect modelUID="jetbrains.mps.patterns.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.constraints" version="11" />
  <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.constraints" version="6" />
  <languageAspect modelUID="jetbrains.mps.closures.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.core.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.internal.collections.constraints" version="2" />
  <languageAspect modelUID="r:1222075024003(jetbrains.mps.core.constraints)" version="2" />
  <languageAspect modelUID="r:1222075024012(jetbrains.mps.bootstrap.structureLanguage.constraints)" version="11" />
  <languageAspect modelUID="r:1222075024184(jetbrains.mps.closures.structure)" version="0" />
  <languageAspect modelUID="r:1222075024180(jetbrains.mps.closures.constraints)" version="2" />
  <languageAspect modelUID="r:1222075024192(jetbrains.mps.patterns.constraints)" version="2" />
  <maxImportIndex value="7" />
  <import index="1" modelUID="jetbrains.mps.nanoj.structure" version="-1" />
  <import index="2" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="3" modelUID="jetbrains.mps.nanoj.editor" version="-1" />
  <import index="4" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="5" modelUID="java.lang@java_stub" version="-1" />
  <import index="6" modelUID="jetbrains.mps.regexp.jetbrains.mps.regexp.accessory" version="-1" />
  <import index="7" modelUID="jetbrains.mps.nanoj.actions" version="-1" />
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActions" id="1197638405387">
    <property name="name" value="RT_NumberExpression_Number" />
    <property name="package" value="Actions" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActionsBuilder" id="1197638405388">
      <link role="applicableConcept" targetNodeId="1.1197638404609" resolveInfo="Expression" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1197638405389">
        <link role="concept" targetNodeId="1.1197638404609" resolveInfo="Expression" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SimpleItemSubstitutePart" id="1197638405390">
          <node role="canSubstitute" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_CanSubstitute" id="1197638405391">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405392">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405393">
                <node role="expression" type="jetbrains.mps.regexp.structure.MatchRegexpExpression" id="1197638405394">
                  <node role="regexp" type="jetbrains.mps.regexp.structure.InlineRegexpExpression" id="1197638405395">
                    <node role="regexp" type="jetbrains.mps.regexp.structure.PlusRegexp" id="1197638405396">
                      <node role="regexp" type="jetbrains.mps.regexp.structure.PredefinedSymbolClassRegexp" id="1197638405397">
                        <link role="symbolClass" targetNodeId="6.1174554674770" resolveInfo="\d" />
                      </node>
                    </node>
                  </node>
                  <node role="inputExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_pattern" id="1197638405398" />
                </node>
              </node>
            </node>
          </node>
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_Substitute_Handler" id="1197638405399">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405400">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197638405401">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197638405402">
                  <property name="name" value="value" />
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1197638405403" />
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1197638405404">
                    <link role="baseMethodDeclaration" targetNodeId="5.~Integer.parseInt(java.lang.String):int" resolveInfo="parseInt" />
                    <link role="classConcept" targetNodeId="5.~Integer" resolveInfo="Integer" />
                    <node role="actualArgument" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_pattern" id="1197638405405" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197638405406">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197638405407">
                  <property name="name" value="result" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1197638405408">
                    <link role="concept" targetNodeId="1.1197638404614" resolveInfo="NumberExpression" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227933853">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1197638405410" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1197638405411">
                      <link role="concept" targetNodeId="1.1197638404614" resolveInfo="NumberExpression" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405412">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227917401">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227867505">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405415">
                      <link role="variableDeclaration" targetNodeId="1197638405407" resolveInfo="result" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1197638405416">
                      <link role="property" targetNodeId="1.1197638404616" resolveInfo="number" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1197638405417">
                    <node role="value" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405418">
                      <link role="variableDeclaration" targetNodeId="1197638405402" resolveInfo="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1197638405419">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405420">
                  <link role="variableDeclaration" targetNodeId="1197638405407" resolveInfo="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActions" id="1197638405421">
    <property name="name" value="LocalVariableDeclaration_Wrapper" />
    <property name="package" value="Actions" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActionsBuilder" id="1197638405422">
      <link role="applicableConcept" targetNodeId="1.1197638404589" resolveInfo="Statement" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1197638405423">
        <link role="concept" targetNodeId="1.1197638404589" resolveInfo="Statement" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.WrapperSubstituteMenuPart" id="1197638405424">
          <link role="wrappedConcept" targetNodeId="1.1197638404633" resolveInfo="LocalVariableDeclaration" />
          <node role="wrapperBlock" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_SubstituteWrapper" id="1197638405425">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405426">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197638405427">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197638405428">
                  <property name="name" value="result" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1197638405429">
                    <link role="concept" targetNodeId="1.1197638404600" resolveInfo="LocalVariableDeclarationStatement" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227831395">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1197638405431" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1197638405432">
                      <link role="concept" targetNodeId="1.1197638404600" resolveInfo="LocalVariableDeclarationStatement" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405433">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227833678">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227910535">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405436">
                      <link role="variableDeclaration" targetNodeId="1197638405428" resolveInfo="result" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1197638405437">
                      <link role="link" targetNodeId="1.1197638404601" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1197638405438">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_nodeToWrap" id="1197638405439" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1197638405440">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405441">
                  <link role="variableDeclaration" targetNodeId="1197638405428" resolveInfo="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActions" id="1197638405442">
    <property name="name" value="Expression_Wrapper" />
    <property name="package" value="Actions" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActionsBuilder" id="1197638405443">
      <link role="applicableConcept" targetNodeId="1.1197638404589" resolveInfo="Statement" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1197638405444">
        <link role="concept" targetNodeId="1.1197638404589" resolveInfo="Statement" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.WrapperSubstituteMenuPart" id="1197638405445">
          <link role="wrappedConcept" targetNodeId="1.1197638404609" resolveInfo="Expression" />
          <node role="wrapperBlock" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_SubstituteWrapper" id="1197638405446">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405447">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197638405448">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197638405449">
                  <property name="name" value="result" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1197638405450">
                    <link role="concept" targetNodeId="1.1197638404603" resolveInfo="ExpressionStatement" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227908607">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1197638405452" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1197638405453">
                      <link role="concept" targetNodeId="1.1197638404603" resolveInfo="ExpressionStatement" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405454">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227832891">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227849970">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405457">
                      <link role="variableDeclaration" targetNodeId="1197638405449" resolveInfo="result" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1197638405458">
                      <link role="link" targetNodeId="1.1197638404604" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1197638405459">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_nodeToWrap" id="1197638405460" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1197638405461">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405462">
                  <link role="variableDeclaration" targetNodeId="1197638405449" resolveInfo="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActions" id="1197638405463">
    <property name="name" value="Type_Wrapper" />
    <property name="package" value="Actions" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActionsBuilder" id="1197638405464">
      <link role="applicableConcept" targetNodeId="1.1197638404633" resolveInfo="LocalVariableDeclaration" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1197638405465">
        <link role="concept" targetNodeId="1.1197638404633" resolveInfo="LocalVariableDeclaration" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.WrapperSubstituteMenuPart" id="1197638405466">
          <link role="wrappedConcept" targetNodeId="1.1197638404563" resolveInfo="Type" />
          <node role="wrapperBlock" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_SubstituteWrapper" id="1197638405467">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405468">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197638405469">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197638405470">
                  <property name="name" value="result" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1197638405471">
                    <link role="concept" targetNodeId="1.1197638404633" resolveInfo="LocalVariableDeclaration" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227832175">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1197638405473" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1197638405474">
                      <link role="concept" targetNodeId="1.1197638404633" resolveInfo="LocalVariableDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405475">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227866789">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227892764">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405478">
                      <link role="variableDeclaration" targetNodeId="1197638405470" resolveInfo="result" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1197638405479">
                      <link role="link" targetNodeId="1.1197638404629" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1197638405480">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_nodeToWrap" id="1197638405481" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1197638405482">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405483">
                  <link role="variableDeclaration" targetNodeId="1197638405470" resolveInfo="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActions" id="1197638405484">
    <property name="name" value="Type_Wrapper" />
    <property name="package" value="Actions" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActionsBuilder" id="1197638405485">
      <link role="applicableConcept" targetNodeId="1.1197638404634" resolveInfo="ParameterDeclaration" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1197638405486">
        <link role="concept" targetNodeId="1.1197638404634" resolveInfo="ParameterDeclaration" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.WrapperSubstituteMenuPart" id="1197638405487">
          <link role="wrappedConcept" targetNodeId="1.1197638404563" resolveInfo="Type" />
          <node role="wrapperBlock" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_SubstituteWrapper" id="1197638405488">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405489">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197638405490">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197638405491">
                  <property name="name" value="result" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1197638405492">
                    <link role="concept" targetNodeId="1.1197638404634" resolveInfo="ParameterDeclaration" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227881690">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1197638405494" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1197638405495">
                      <link role="concept" targetNodeId="1.1197638404634" resolveInfo="ParameterDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405496">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227899668">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227903654">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405499">
                      <link role="variableDeclaration" targetNodeId="1197638405491" resolveInfo="result" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1197638405500">
                      <link role="link" targetNodeId="1.1197638404629" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1197638405501">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_nodeToWrap" id="1197638405502" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1197638405503">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405504">
                  <link role="variableDeclaration" targetNodeId="1197638405491" resolveInfo="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActions" id="1197638405505">
    <property name="name" value="Type_Wrapper" />
    <property name="package" value="Actions" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActionsBuilder" id="1197638405506">
      <link role="applicableConcept" targetNodeId="1.1197638404635" resolveInfo="FieldDeclaration" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1197638405507">
        <link role="concept" targetNodeId="1.1197638404635" resolveInfo="FieldDeclaration" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.WrapperSubstituteMenuPart" id="1197638405508">
          <link role="wrappedConcept" targetNodeId="1.1197638404563" resolveInfo="Type" />
          <node role="wrapperBlock" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_SubstituteWrapper" id="1197638405509">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405510">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197638405511">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197638405512">
                  <property name="name" value="result" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1197638405513">
                    <link role="concept" targetNodeId="1.1197638404635" resolveInfo="FieldDeclaration" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227832625">
                    <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1197638405515" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1197638405516">
                      <link role="concept" targetNodeId="1.1197638404635" resolveInfo="FieldDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405517">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227928753">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227851634">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405520">
                      <link role="variableDeclaration" targetNodeId="1197638405512" resolveInfo="result" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1197638405521">
                      <link role="link" targetNodeId="1.1197638404629" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1197638405522">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_nodeToWrap" id="1197638405523" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1197638405524">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405525">
                  <link role="variableDeclaration" targetNodeId="1197638405512" resolveInfo="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.SideTransformHintSubstituteActions" id="1197638405526">
    <property name="package" value="Actions" />
    <property name="name" value="RT_Dot" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SideTransformHintSubstituteActionsBuilder" id="1197638405527">
      <link role="applicableConcept" targetNodeId="1.1197638404609" resolveInfo="Expression" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1197638405528">
        <link role="concept" targetNodeId="1.1197638404672" resolveInfo="DotExpression" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SimpleSideTransformMenuPart" id="1197638405529">
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_SideTransform_Handler" id="1197638405530">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405531">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197638405532">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197638405533">
                  <property name="name" value="dotConceptInstance" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1197638405534">
                    <link role="concept" targetNodeId="1.1197638404672" resolveInfo="DotExpression" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1197638405535">
                    <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1197638405536">
                      <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1197638405537">
                        <link role="concept" targetNodeId="1.1197638404672" resolveInfo="DotExpression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405538">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227900587">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1197638405540" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1197638405541">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405542">
                      <link role="variableDeclaration" targetNodeId="1197638405533" resolveInfo="dotConceptInstance" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405543">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227927427">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227887752">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405546">
                      <link role="variableDeclaration" targetNodeId="1197638405533" resolveInfo="dotConceptInstance" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1197638405547">
                      <link role="link" targetNodeId="1.1197638404673" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1197638405548">
                    <node role="parameter" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1197638405549" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1197638405550">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405551">
                  <link role="variableDeclaration" targetNodeId="1197638405533" resolveInfo="dotConceptInstance" />
                </node>
              </node>
            </node>
          </node>
          <node role="matchingText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SideTransform_SimpleString" id="1197638405552">
            <property name="text" value=". dot" />
          </node>
        </node>
      </node>
    </node>
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SideTransformHintSubstituteActionsBuilder" id="1197638405553">
      <link role="applicableConcept" targetNodeId="1.1197638404675" resolveInfo="ExpressionDotOperation" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.IncludeRightTransformForNodePart" id="1197638405554">
        <node role="nodeBlock" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_SideTransform_NodeQuery" id="1197638405555">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405556">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405557">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227956899">
                <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1197638405559" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1197638405560" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActions" id="1197638405561">
    <property name="package" value="Actions" />
    <property name="name" value="Substitute_ClassAccess" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstituteActionsBuilder" id="1197638405562">
      <link role="applicableConcept" targetNodeId="1.1197638404675" resolveInfo="ExpressionDotOperation" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptSubstitutePart" id="1197638405563">
        <link role="concept" targetNodeId="1.1197638404641" resolveInfo="ClassAccess" />
      </node>
      <node role="precondition" type="jetbrains.mps.bootstrap.actionsLanguage.structure.NodeSubstitutePreconditionFunction" id="1197638405564">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405565">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1197638405566">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227913701">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227927034">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227913492">
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1197638405570">
                    <link role="concept" targetNodeId="1.1197638404672" resolveInfo="DotExpression" />
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parentNode" id="1197638405571" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1197638405572">
                    <link role="link" targetNodeId="1.1197638404673" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1197638405573" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1197638405574">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1197638405575">
                  <link role="conceptDeclaration" targetNodeId="1.1197638404565" resolveInfo="ClassifierType" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.actionsLanguage.structure.SideTransformHintSubstituteActions" id="1197638405576">
    <property name="package" value="Actions" />
    <property name="name" value="RT_BinaryOperation" />
    <node role="actionsBuilder" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SideTransformHintSubstituteActionsBuilder" id="1197638405577">
      <link role="applicableConcept" targetNodeId="1.1197638404609" resolveInfo="Expression" />
      <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.AddMenuPart" id="1197638405578">
        <link role="concept" targetNodeId="1.1197638404677" resolveInfo="BinaryExpression" />
        <node role="part" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ParameterizedSideTransformMenuPart" id="1197638405579">
          <node role="handler" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedSideTransform_Handler" id="1197638405580">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405581">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197638405582">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197638405583">
                  <property name="name" value="target" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1197638405584">
                    <link role="concept" targetNodeId="1.1197638404609" resolveInfo="Expression" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_sourceNode" id="1197638405585" />
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.WhileStatement" id="1197638405586">
                <node role="condition" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1197638405587">
                  <property name="value" value="true" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405588">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1197638405589">
                    <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405590">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197638405591">
                        <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197638405592">
                          <property name="name" value="concept" />
                          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1197638405593">
                            <link role="conceptDeclaraton" targetNodeId="1.1197638404677" resolveInfo="BinaryExpression" />
                          </node>
                          <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1197638405594">
                            <link role="concept" targetNodeId="1.1197638404677" resolveInfo="BinaryExpression" />
                            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227917142">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227936514">
                                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405597">
                                  <link role="variableDeclaration" targetNodeId="1197638405583" resolveInfo="target" />
                                </node>
                                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1197638405598" />
                              </node>
                              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetConceptOperation" id="1197638405599" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1197638405600">
                        <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405601">
                          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405602">
                            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1197638405603">
                              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405604">
                                <link role="variableDeclaration" targetNodeId="1197638405583" resolveInfo="target" />
                              </node>
                              <node role="rValue" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1197638405605">
                                <link role="concept" targetNodeId="1.1197638404609" resolveInfo="Expression" />
                                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227841071">
                                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405607">
                                    <link role="variableDeclaration" targetNodeId="1197638405583" resolveInfo="target" />
                                  </node>
                                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1197638405608" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1197638405609">
                          <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405610">
                            <node role="statement" type="jetbrains.mps.baseLanguage.structure.BreakStatement" id="1197638405611" />
                          </node>
                        </node>
                        <node role="condition" type="jetbrains.mps.baseLanguage.structure.LessThanExpression" id="1197638405612">
                          <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227893055">
                            <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1197638405614" />
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1197638405615">
                              <link role="conceptProperty" targetNodeId="1.1197638404681" resolveInfo="priority" />
                            </node>
                          </node>
                          <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227882874">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405617">
                              <link role="variableDeclaration" targetNodeId="1197638405592" resolveInfo="concept" />
                            </node>
                            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1197638405618">
                              <link role="conceptProperty" targetNodeId="1.1197638404681" resolveInfo="priority" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1197638405619">
                      <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405620">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.BreakStatement" id="1197638405621" />
                      </node>
                    </node>
                    <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227889488">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227890582">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405624">
                          <link role="variableDeclaration" targetNodeId="1197638405583" resolveInfo="target" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1197638405625" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1197638405626">
                        <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1197638405627">
                          <link role="conceptDeclaration" targetNodeId="1.1197638404677" resolveInfo="BinaryExpression" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197638405628">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197638405629">
                  <property name="name" value="result" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1197638405630">
                    <link role="concept" targetNodeId="1.1197638404677" resolveInfo="BinaryExpression" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227928032">
                    <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1197638405632" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Concept_NewInstance" id="1197638405633" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405634">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227818382">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405636">
                    <link role="variableDeclaration" targetNodeId="1197638405583" resolveInfo="target" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1197638405637">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405638">
                      <link role="variableDeclaration" targetNodeId="1197638405629" resolveInfo="result" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405639">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227902197">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227945431">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405642">
                      <link role="variableDeclaration" targetNodeId="1197638405629" resolveInfo="result" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1197638405643">
                      <link role="link" targetNodeId="1.1197638404678" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1197638405644">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405645">
                      <link role="variableDeclaration" targetNodeId="1197638405583" resolveInfo="target" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1197638405646">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197638405647">
                  <link role="variableDeclaration" targetNodeId="1197638405629" resolveInfo="result" />
                </node>
              </node>
            </node>
          </node>
          <node role="matchingText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_SideTransform_String" id="1197638405648">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405649">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405650">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227942192">
                  <node role="operand" type="jetbrains.mps.bootstrap.actionsLanguage.structure.ConceptFunctionParameter_parameterObject" id="1197638405652" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptPropertyAccess" id="1197638405653">
                    <link role="conceptProperty" targetNodeId="1.1197638404680" resolveInfo="sign" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="query" type="jetbrains.mps.bootstrap.actionsLanguage.structure.QueryFunction_ParameterizedSideTransform_Query" id="1197638405654">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197638405655">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1197638405656">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227943146">
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.ConceptRefExpression" id="1197638405658">
                    <link role="conceptDeclaration" targetNodeId="1.1197638404677" resolveInfo="BinaryExpression" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Concept_GetAllSubConcepts" id="1197638405659">
                    <node role="smodel" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_model" id="1197638405660" />
                    <node role="scope" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1209004346312">
                      <node role="operand" type="jetbrains.mps.bootstrap.sharedConcepts.structure.ConceptFunctionParameter_operationContext" id="1197638405662" />
                      <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1209004346313">
                        <link role="baseMethodDeclaration" targetNodeId="4.~IOperationContext.getScope():jetbrains.mps.smodel.IScope" resolveInfo="getScope" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1197638405663">
            <link role="conceptDeclaraton" targetNodeId="1.1197638404677" resolveInfo="BinaryExpression" />
          </node>
          <node role="descriptionText" type="jetbrains.mps.bootstrap.actionsLanguage.structure.SideTransform_SimpleString" id="1197638405664">
            <property name="text" value="binary operation" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


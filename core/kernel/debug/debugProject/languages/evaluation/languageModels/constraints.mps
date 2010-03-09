<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:edfcb13b-e239-462c-8aae-e4b4a03e7c8b(jetbrains.mps.debug.evaluation.constraints)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="7da4580f-9d75-4603-8162-51a896d78375(jetbrains.mps.debug.evaluation)" />
  <language namespace="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1(jetbrains.mps.lang.constraints)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590307(jetbrains.mps.lang.constraints.constraints)" version="9" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ba(jetbrains.mps.lang.sharedConcepts.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959030d(jetbrains.mps.lang.constraints.structure)" version="8" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ae(jetbrains.mps.lang.typesystem.constraints)" version="17" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590340(jetbrains.mps.lang.pattern.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959033d(jetbrains.mps.lang.annotations.structure)" version="0" />
  <devkit namespace="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  <maxImportIndex value="3" />
  <import index="1" modelUID="r:3a27a6eb-dfce-419d-9e4c-ca44cc01a2e2(jetbrains.mps.debug.evaluation.structure)" version="-1" />
  <import index="2" modelUID="f:java_stub#jetbrains.mps.baseLanguage.constraints(jetbrains.mps.baseLanguage.constraints@java_stub)" version="-1" />
  <import index="3" modelUID="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" version="-1" />
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints:8" id="6036237525966315979">
    <link role="concept:8" targetNodeId="1.6036237525966315974" resolveInfo="EvaluatorsThisExpression" />
    <node role="canBeChild:8" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild:8" id="6036237525966315980">
      <node role="body:8" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6036237525966315981">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6036237525966315982">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6036237525966315998">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6036237525966315993">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6036237525966315984">
                <node role="operand:3" type="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode:8" id="6036237525966315983" />
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation:16" id="6036237525966315988">
                  <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="6036237525966315989">
                    <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="6036237525966315992">
                      <link role="conceptDeclaration:16" targetNodeId="1.6036237525966182693" resolveInfo="EvaluatorConcept" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="6036237525966315997">
                <link role="link:16" targetNodeId="1.6036237525966243736" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation:16" id="6036237525966316002" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <visible index="2" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
  <node type="jetbrains.mps.lang.constraints.structure.ConceptConstraints:8" id="6036237525966325224">
    <link role="concept:8" targetNodeId="1.6036237525966316030" resolveInfo="EvaluatorsSuperMethodCall" />
    <node role="referent:8" type="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint:8" id="6036237525966325248">
      <link role="applicableLink:8" targetNodeId="1.6036237525966317627" />
      <node role="searchScopeFactory:8" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Factory:8" id="6036237525966325249">
        <node role="body:8" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6036237525966325250">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6036237525966325251">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6036237525966325252">
              <property name="name:3" value="enclosingClass" />
              <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="6036237525966325253">
                <link role="concept:16" targetNodeId="2v.1068390468198:3" resolveInfo="ClassConcept" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression:16" id="6036237525966325294">
                <link role="concept:16" targetNodeId="2v.1068390468198:3" resolveInfo="ClassConcept" />
                <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6036237525966325287">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6036237525966325280">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6036237525966325254">
                      <node role="operand:3" type="jetbrains.mps.lang.constraints.structure.ConceptParameter_ReferentSearchScope_enclosingNode:8" id="6036237525966325255" />
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation:16" id="6036237525966325256">
                        <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="6036237525966325274">
                          <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="6036237525966325278">
                            <link role="conceptDeclaration:16" targetNodeId="1.6036237525966182693" resolveInfo="EvaluatorConcept" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="6036237525966325285">
                      <link role="link:16" targetNodeId="1.6036237525966243736" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="6036237525966325292">
                    <link role="link:16" targetNodeId="2v.1107535924139:3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="6036237525966325260">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6036237525966325261">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="6036237525966325262">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~SuperMethodCall_InstanceMethodScope.&lt;init&gt;(jetbrains.mps.baseLanguage.structure.ClassifierType,jetbrains.mps.smodel.SNode)" resolveInfo="SuperMethodCall_InstanceMethodScope" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6036237525966325263">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6036237525966325264">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6036237525966325265">
                      <link role="variableDeclaration:3" targetNodeId="6036237525966325252" resolveInfo="enclosingClass" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall:16" id="6036237525966325266">
                      <link role="baseMethodDeclaration:16" targetNodeId="3.1240936569950" resolveInfo="getSuperclass" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAdapterOperation:16" id="6036237525966325267" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.lang.constraints.structure.ConceptParameter_ReferentSearchScope_enclosingNode:8" id="6036237525966325268" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="canBeChild:8" type="jetbrains.mps.lang.constraints.structure.ConstraintFunction_CanBeAChild:8" id="6036237525966325225">
      <node role="body:8" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6036237525966325226">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6036237525966325298">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6036237525966325299">
            <property name="name:3" value="classifierType" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="6036237525966325300">
              <link role="concept:16" targetNodeId="2v.1107535904670:3" resolveInfo="ClassifierType" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6036237525966325301">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6036237525966325302">
                <node role="operand:3" type="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_parentNode:8" id="6036237525966325303" />
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation:16" id="6036237525966325304">
                  <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="6036237525966325305">
                    <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="6036237525966325306">
                      <link role="conceptDeclaration:16" targetNodeId="1.6036237525966182693" resolveInfo="EvaluatorConcept" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="6036237525966325307">
                <link role="link:16" targetNodeId="1.6036237525966243736" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="6036237525966325310">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="6036237525966325314">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6036237525966325323">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6036237525966325318">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6036237525966325317">
                  <link role="variableDeclaration:3" targetNodeId="6036237525966325299" resolveInfo="classifierType" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="6036237525966325322">
                  <link role="link:16" targetNodeId="2v.1107535924139:3" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="6036237525966325327">
                <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="6036237525966325329">
                  <link role="conceptDeclaration:16" targetNodeId="2v.1068390468198:3" resolveInfo="ClassConcept" />
                </node>
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6036237525966325311">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6036237525966325312">
                <link role="variableDeclaration:3" targetNodeId="6036237525966325299" resolveInfo="classifierType" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation:16" id="6036237525966325313" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


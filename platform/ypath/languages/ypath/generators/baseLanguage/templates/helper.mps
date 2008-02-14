<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.ypath.generator.baseLanguage.template.helper">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.baseLanguage" />
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage" />
  <language namespace="jetbrains.mps.ypath" />
  <language namespace="jetbrains.mps.bootstrap.helgins" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  <maxImportIndex value="13" />
  <import index="1" modelUID="jetbrains.mps.util@java_stub" version="-1" />
  <import index="2" modelUID="jetbrains.mps.generator.template@java_stub" version="-1" />
  <import index="3" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="4" modelUID="java.lang@java_stub" version="-1" />
  <import index="5" modelUID="jetbrains.mps.ypath.structure" version="12" />
  <import index="7" modelUID="jetbrains.mps.generator@java_stub" version="-1" />
  <import index="9" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="11" modelUID="jetbrains.mps.ypath.constraints" version="-1" />
  <import index="12" modelUID="jetbrains.mps.ypath.runtime@java_stub" version="-1" />
  <import index="13" modelUID="jetbrains.mps.ypath.actions" version="-1" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1197714965304">
    <property name="name" value="AggregatorUtil" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1197714965305">
      <property name="name" value="accept" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1197714965306" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1197714965307" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197714965308">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197714965309">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197714965310">
            <property name="name" value="tokenKey" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197714965311">
              <link role="classifier" targetNodeId="4.~String" resolveInfo="String" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1197714965312">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1197714965313">
                <link role="variableDeclaration" targetNodeId="1197714965367" resolveInfo="tokenPrefix" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1197714965314">
                <link role="baseMethodDeclaration" targetNodeId="9.~SNode.getId():java.lang.String" resolveInfo="getId" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1197714965315">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1197714965316">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1197714965317">
                      <link role="variableDeclaration" targetNodeId="1197714965365" resolveInfo="rwps" />
                    </node>
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197714965318">
                      <link role="classifier" targetNodeId="9.~SNode" resolveInfo="SNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197714965319">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197714965320">
            <property name="name" value="token" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197714965321">
              <link role="classifier" targetNodeId="4.~Object" resolveInfo="Object" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1197714965322">
              <link role="baseMethodDeclaration" targetNodeId="7.~GenerationSessionContext.getTransientObject(java.lang.Object):java.lang.Object" resolveInfo="getTransientObject" />
              <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1197714965323">
                <link role="baseMethodDeclaration" targetNodeId="2.~ITemplateGenerator.getGeneratorSessionContext():jetbrains.mps.generator.GenerationSessionContext" resolveInfo="getGeneratorSessionContext" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1197714965324">
                  <link role="variableDeclaration" targetNodeId="1197714965371" resolveInfo="generator" />
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197714965325">
                <link role="variableDeclaration" targetNodeId="1197714965310" resolveInfo="tokenKey" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1197714965326">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1197714965327">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1197714965328">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1197714965329">
                <property name="value" value="false" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1197714965330">
            <link role="baseMethodDeclaration" targetNodeId="4.~Boolean.equals(java.lang.Object):boolean" resolveInfo="equals" />
            <node role="instance" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1197714965331">
              <link role="classifier" targetNodeId="4.~Boolean" resolveInfo="Boolean" />
              <link role="variableDeclaration" targetNodeId="4.~Boolean.TRUE" resolveInfo="TRUE" />
            </node>
            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197714965332">
              <link role="variableDeclaration" targetNodeId="1197714965320" resolveInfo="token" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1197714965333">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1197714965334">
            <property name="name" value="wrp" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1197714965335">
              <link role="concept" targetNodeId="5.1196713639232" resolveInfo="StatementWrapper" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1197714965336">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1197714965337">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1197714965338">
                  <link role="concept" targetNodeId="5.1196713639232" resolveInfo="StatementWrapper" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1197714965339">
                <link role="variableDeclaration" targetNodeId="1197714965365" resolveInfo="rwps" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1197714965340">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1197714965341">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1197714965342">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1197714965343">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1197714965344">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LessThanExpression" id="1197714965345">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1197714965346">
                      <property name="value" value="100" />
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1197714965347">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1197714965348">
                        <link role="property" targetNodeId="5.1196713684869" resolveInfo="priority" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197714965349">
                        <link role="variableDeclaration" targetNodeId="1197714965334" resolveInfo="wrp" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" id="1197714965350">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1197714965351">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1197714965352">
                        <link role="property" targetNodeId="5.1196713684869" resolveInfo="priority" />
                      </node>
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197714965353">
                        <link role="variableDeclaration" targetNodeId="1197714965334" resolveInfo="wrp" />
                      </node>
                    </node>
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1197714965354">
                      <property name="value" value="0" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" id="1197714965355">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1197714965356">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197714965357">
                    <link role="variableDeclaration" targetNodeId="1197714965334" resolveInfo="wrp" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1197714965358">
                    <link role="property" targetNodeId="5.1196713684869" resolveInfo="priority" />
                  </node>
                </node>
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.MulExpression" id="1197714965359">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1197714965360">
                    <property name="value" value="10" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1197714965361">
                    <link role="variableDeclaration" targetNodeId="1197714965369" resolveInfo="priority" />
                  </node>
                </node>
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1197714965362">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNullOperation" id="1197714965363" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1197714965364">
                <link role="variableDeclaration" targetNodeId="1197714965334" resolveInfo="wrp" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1197714965365">
        <property name="name" value="rwps" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1197714965366">
          <link role="concept" targetNodeId="5.1194621189019" resolveInfo="ReplaceWritePathStatement" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1197714965367">
        <property name="name" value="tokenPrefix" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197714965368">
          <link role="classifier" targetNodeId="4.~String" resolveInfo="String" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1197714965369">
        <property name="name" value="priority" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.IntegerType" id="1197714965370" />
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1197714965371">
        <property name="name" value="generator" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197714965372">
          <link role="classifier" targetNodeId="2.~ITemplateGenerator" resolveInfo="ITemplateGenerator" />
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1197714965373" />
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1199879785635">
    <property name="name" value="OperationsUtil" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1199879793929">
      <property name="name" value="substituteApplicableOperations" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1199879877239">
        <property name="name" value="wildCardOp" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199879877240">
          <link role="concept" targetNodeId="5.1168524996431" resolveInfo="IterateOperation" />
        </node>
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199879793932">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1200150593581">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200150593582">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1200150617938">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1200150621161">
                <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListCreatorWithInit" id="1200150621162">
                  <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1200150621163">
                    <link role="concept" targetNodeId="5.1168524996431" resolveInfo="IterateOperation" />
                  </node>
                  <node role="initValue" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1200150628135">
                    <link role="variableDeclaration" targetNodeId="1199879877239" resolveInfo="wildCardOp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1200150605708">
            <node role="rightExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1200150614881">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1200150616179" />
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1200150608482">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200150614488">
                  <link role="link" targetNodeId="5.1184776023529" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1200150607698">
                  <link role="variableDeclaration" targetNodeId="1199879877239" resolveInfo="wildCardOp" />
                </node>
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1200150600463">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1200150601538">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1200150603842">
                  <link role="conceptDeclaration" targetNodeId="5.1184659060758" resolveInfo="IParamFeature" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1200150597685">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200150600112">
                  <link role="link" targetNodeId="5.1184147586245" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1200150596805">
                  <link role="variableDeclaration" targetNodeId="1199879877239" resolveInfo="wildCardOp" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199879911057">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199879911058">
            <property name="name" value="tpoe" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199879911060">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1199879934760">
                <link role="variableDeclaration" targetNodeId="1199879877239" resolveInfo="node" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1199879911062">
                <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1199879911063">
                  <link role="concept" targetNodeId="5.1168468602533" resolveInfo="TreePathOperationExpression" />
                </node>
              </node>
            </node>
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199879911059">
              <link role="concept" targetNodeId="5.1168468602533" resolveInfo="TreePathOperationExpression" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199879911064">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199879911065">
            <property name="name" value="nodeType" />
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199879911067">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.helgins.structure.Node_TypeOperation" id="1199879911071" />
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199879911068">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199879911070">
                  <link role="link" targetNodeId="5.1168468622494" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199879911069">
                  <link role="variableDeclaration" targetNodeId="1199879911058" resolveInfo="tpoe" />
                </node>
              </node>
            </node>
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199879911066" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199879911072">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199879911073">
            <property name="name" value="tp" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199879911074">
              <link role="concept" targetNodeId="5.1179235924605" resolveInfo="TreePath" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199879911075">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199879911076">
                <link role="variableDeclaration" targetNodeId="1199879911058" resolveInfo="tpoe" />
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1199879911077">
                <link role="conceptMethodDeclaration" targetNodeId="11.1194366873089" resolveInfo="getTreePath" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199879911079">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199879911080">
            <property name="name" value="axis" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199879922913">
              <link role="classifier" targetNodeId="12.~TraversalAxis" resolveInfo="TraversalAxis" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1199879911082">
              <link role="classConcept" targetNodeId="12.~TraversalAxis" resolveInfo="TraversalAxis" />
              <link role="baseMethodDeclaration" targetNodeId="12.~TraversalAxis.parseValue(java.lang.String):jetbrains.mps.ypath.runtime.TraversalAxis" resolveInfo="parseValue" />
              <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199879911083">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1199879931535">
                  <link role="variableDeclaration" targetNodeId="1199879877239" resolveInfo="node" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199879932517">
                  <link role="property" targetNodeId="5.1168527174196" resolveInfo="axis" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199879911086">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199879911087">
            <property name="name" value="features" />
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" id="1199879911090">
              <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199879911111">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199879911112">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1199879937944">
                    <link role="variableDeclaration" targetNodeId="1199879877239" resolveInfo="node" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199879940131">
                    <link role="link" targetNodeId="5.1184147586245" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNullOperation" id="1199879911115" />
              </node>
              <node role="ifFalse" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1199879911105">
                <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListCreatorWithInit" id="1199879911106">
                  <node role="initValue" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199879911107">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199879952576">
                      <link role="link" targetNodeId="5.1184147586245" />
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1199879950316">
                      <link role="variableDeclaration" targetNodeId="1199879877239" resolveInfo="node" />
                    </node>
                  </node>
                  <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199879911110" />
                </node>
              </node>
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1199879911091">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1199879911093">
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1199879911094">
                    <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1199879911095">
                      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199879911097">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199879911098">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1199879911099">
                            <link role="baseMethodDeclaration" targetNodeId="13.1199384095556" resolveInfo="isAcceptableFeatureForAxis" />
                            <link role="classConcept" targetNodeId="13.1179161788761" resolveInfo="TraversalAxisUtil" />
                            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199879911100">
                              <link role="closureParameter" targetNodeId="1199879911096" resolveInfo="it" />
                            </node>
                            <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199879911101">
                              <link role="variableDeclaration" targetNodeId="1199879911080" resolveInfo="axis" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1199879911096">
                        <property name="name" value="it" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199879911102">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199879911103">
                      <link role="variableDeclaration" targetNodeId="1199879911073" resolveInfo="tp" />
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1199879911104">
                      <link role="link" targetNodeId="5.1183980376561" />
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1199879911092" />
              </node>
            </node>
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1199879911088">
              <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199879911089">
                <link role="concept" targetNodeId="5.1184066209434" resolveInfo="IFeature" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199879911116">
          <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1199879976263">
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceOperationExpression" id="1199879911117">
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.MappingOperation" id="1199879911119">
                <node role="mapper" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.MapperBlock" id="1199879911120">
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199879911122">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199972574520">
                      <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199972574521">
                        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1199972574522">
                          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199972574529">
                            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199972574530">
                              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199972574531">
                                <property name="name" value="io" />
                                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1199972574533">
                                  <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1199972574534">
                                    <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199972574535">
                                      <link role="concept" targetNodeId="5.1168524996431" resolveInfo="IterateOperation" />
                                    </node>
                                  </node>
                                </node>
                                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199972574532">
                                  <link role="concept" targetNodeId="5.1168524996431" resolveInfo="IterateOperation" />
                                </node>
                              </node>
                            </node>
                            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199972574536">
                              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972574537">
                                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199972574538">
                                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199972574539">
                                    <link role="closureParameter" targetNodeId="1199879911121" resolveInfo="it" />
                                  </node>
                                </node>
                                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972574540">
                                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199972574542">
                                    <link role="variableDeclaration" targetNodeId="1199972574531" resolveInfo="io" />
                                  </node>
                                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199972574541">
                                    <link role="link" targetNodeId="5.1184147586245" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199972574543">
                              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972574544">
                                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1199972574545">
                                  <node role="value" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199972574546">
                                    <link role="baseMethodDeclaration" targetNodeId="12.~TraversalAxis.getValue():java.lang.String" resolveInfo="getValue" />
                                    <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199972574547">
                                      <link role="variableDeclaration" targetNodeId="1199879911080" resolveInfo="axis" />
                                    </node>
                                  </node>
                                </node>
                                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972574548">
                                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199972574550">
                                    <link role="variableDeclaration" targetNodeId="1199972574531" resolveInfo="io" />
                                  </node>
                                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199972574549">
                                    <link role="property" targetNodeId="5.1168527174196" resolveInfo="axis" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199972574551">
                              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972574552">
                                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972574555">
                                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199972574557">
                                    <link role="variableDeclaration" targetNodeId="1199972574531" resolveInfo="io" />
                                  </node>
                                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199972574556">
                                    <link role="link" targetNodeId="5.1184776023529" />
                                  </node>
                                </node>
                                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199972574553">
                                  <node role="parameter" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1199972574554">
                                    <link role="variable" targetNodeId="1199972574523" resolveInfo="po" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.TraversalYieldStatement" id="1199972574558">
                              <node role="value" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199972574559">
                                <link role="variableDeclaration" targetNodeId="1199972574531" resolveInfo="io" />
                              </node>
                            </node>
                          </node>
                          <node role="inputSequence" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972574524">
                            <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1199972574527">
                              <link role="concept" targetNodeId="5.1184659060758" resolveInfo="IParamFeature" />
                              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199972574528">
                                <link role="closureParameter" targetNodeId="1199879911121" resolveInfo="it" />
                              </node>
                            </node>
                            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1199972574525">
                              <link role="conceptMethodDeclaration" targetNodeId="11.1197461148674" resolveInfo="getParameterObjects" />
                              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199972574526">
                                <link role="variableDeclaration" targetNodeId="1199879911065" resolveInfo="nodeType" />
                              </node>
                            </node>
                          </node>
                          <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1199972574523">
                            <property name="name" value="po" />
                          </node>
                        </node>
                      </node>
                      <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972574560">
                        <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1199972574561">
                          <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1199972574562">
                            <link role="conceptDeclaration" targetNodeId="5.1184659060758" resolveInfo="IParamFeature" />
                          </node>
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199972574563">
                          <link role="closureParameter" targetNodeId="1199879911121" resolveInfo="it" />
                        </node>
                      </node>
                      <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1199972930128">
                        <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199972930129">
                          <node role="statement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1199972930583">
                            <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199972930584">
                              <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1199972930585">
                                <node role="condition" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1199972930588">
                                  <node role="rightExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972930589">
                                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972930591">
                                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199972930592">
                                        <link role="link" targetNodeId="5.1197826813331" />
                                      </node>
                                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199972930593">
                                        <link role="closureParameter" targetNodeId="1199879911121" resolveInfo="it" />
                                      </node>
                                    </node>
                                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNullOperation" id="1199972930590" />
                                  </node>
                                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1199972930594">
                                    <link role="classConcept" targetNodeId="13.1179161788761" resolveInfo="TraversalAxisUtil" />
                                    <link role="baseMethodDeclaration" targetNodeId="13.1199895409190" resolveInfo="isUsingOpposite" />
                                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199972930595">
                                      <link role="variableDeclaration" targetNodeId="1199879911080" resolveInfo="axis" />
                                    </node>
                                  </node>
                                </node>
                                <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1199972930586">
                                  <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.TraversalSkipStatement" id="1199972930587" />
                                </node>
                              </node>
                              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1199972930596">
                                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1199972930597">
                                  <property name="name" value="io" />
                                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1199972930599">
                                    <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1199972930600">
                                      <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199972930601">
                                        <link role="concept" targetNodeId="5.1168524996431" resolveInfo="IterateOperation" />
                                      </node>
                                    </node>
                                  </node>
                                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199972930598">
                                    <link role="concept" targetNodeId="5.1168524996431" resolveInfo="IterateOperation" />
                                  </node>
                                </node>
                              </node>
                              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199972930602">
                                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972930603">
                                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1199972930604">
                                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1199972930605">
                                      <link role="closureParameter" targetNodeId="1199879911121" resolveInfo="it" />
                                    </node>
                                  </node>
                                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972930606">
                                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1199972930607">
                                      <link role="link" targetNodeId="5.1184147586245" />
                                    </node>
                                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199972930608">
                                      <link role="variableDeclaration" targetNodeId="1199972930597" resolveInfo="io" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1199972930609">
                                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972930610">
                                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1199972930614">
                                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199972930616">
                                      <link role="variableDeclaration" targetNodeId="1199972930597" resolveInfo="io" />
                                    </node>
                                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1199972930615">
                                      <link role="property" targetNodeId="5.1168527174196" resolveInfo="axis" />
                                    </node>
                                  </node>
                                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1199972930611">
                                    <node role="value" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1199972930612">
                                      <link role="baseMethodDeclaration" targetNodeId="12.~TraversalAxis.getValue():java.lang.String" resolveInfo="getValue" />
                                      <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199972930613">
                                        <link role="variableDeclaration" targetNodeId="1199879911080" resolveInfo="axis" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.TraversalYieldStatement" id="1199972930617">
                                <node role="value" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199972930618">
                                  <link role="variableDeclaration" targetNodeId="1199972930597" resolveInfo="io" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1199879911121">
                    <property name="name" value="it" />
                  </node>
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1199879911118">
                <link role="variableDeclaration" targetNodeId="1199879911087" resolveInfo="features" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ToListOperation" id="1199879977440" />
          </node>
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1199879793931" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1199879796923">
        <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1199879811716">
          <link role="concept" targetNodeId="5.1168524996431" resolveInfo="IterateOperation" />
        </node>
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1200052482280">
      <property name="name" value="unwrapExpression" />
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1200052487403">
        <link role="concept" targetNodeId="3.1068431790191" resolveInfo="Expression" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1200052482282" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200052482283">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200052526481">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200052526482">
            <property name="name" value="expression" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1200052526483">
              <link role="concept" targetNodeId="3.1068431790191" resolveInfo="Expression" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1200052533204">
              <link role="variableDeclaration" targetNodeId="1200052498464" resolveInfo="exp" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1200052526487">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200052526488">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200052526489">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1200052526490">
                <node role="rValue" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1200052526491">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200052526492">
                    <link role="link" targetNodeId="3.1079359253376" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1200052526493">
                    <link role="concept" targetNodeId="3.1079359253375" resolveInfo="ParenthesizedExpression" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200052526494">
                      <link role="variableDeclaration" targetNodeId="1200052526482" resolveInfo="expression" />
                    </node>
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200052526495">
                  <link role="variableDeclaration" targetNodeId="1200052526482" resolveInfo="expression" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1200052526496">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1200052526497">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1200052526498">
                <link role="conceptDeclaration" targetNodeId="3.1079359253375" resolveInfo="ParenthesizedExpression" />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200052526499">
              <link role="variableDeclaration" targetNodeId="1200052526482" resolveInfo="expression" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1200052526500">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200052526501">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200052526502">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1200052526503">
                <node role="rValue" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1200052526504">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200052526505">
                    <link role="link" targetNodeId="5.1168890213786" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1200052526506">
                    <link role="concept" targetNodeId="5.1168890168054" resolveInfo="TreePathAdapterExpression" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200052526507">
                      <link role="variableDeclaration" targetNodeId="1200052526482" resolveInfo="expression" />
                    </node>
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200052526508">
                  <link role="variableDeclaration" targetNodeId="1200052526482" resolveInfo="expression" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1200052526509">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1200052526510">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1200052526511">
                <link role="conceptDeclaration" targetNodeId="5.1168890168054" resolveInfo="TreePathAdapterExpression" />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200052526512">
              <link role="variableDeclaration" targetNodeId="1200052526482" resolveInfo="expression" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1200052526513">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200052526514">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200052526515">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1200052526516">
                <node role="rValue" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1200052526517">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200052526518">
                    <link role="link" targetNodeId="3.1070534934092" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1200052526519">
                    <link role="concept" targetNodeId="3.1070534934090" resolveInfo="CastExpression" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200052526520">
                      <link role="variableDeclaration" targetNodeId="1200052526482" resolveInfo="expression" />
                    </node>
                  </node>
                </node>
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200052526521">
                  <link role="variableDeclaration" targetNodeId="1200052526482" resolveInfo="expression" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1200052526522">
            <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1200052526523">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1200052526524">
                <link role="conceptDeclaration" targetNodeId="3.1070534934090" resolveInfo="CastExpression" />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200052544052">
              <link role="variableDeclaration" targetNodeId="1200052526482" resolveInfo="expression" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1200052550879">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200052552704">
            <link role="variableDeclaration" targetNodeId="1200052526482" resolveInfo="expression" />
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1200052498464">
        <property name="name" value="wrappedExp" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1200052498465">
          <link role="concept" targetNodeId="3.1068431790191" resolveInfo="Expression" />
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1199879785636" />
  </node>
</model>


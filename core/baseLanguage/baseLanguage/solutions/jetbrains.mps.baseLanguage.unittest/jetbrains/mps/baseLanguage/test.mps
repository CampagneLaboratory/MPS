<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test)">
  <persistence version="5" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <language namespace="8585453e-6bfb-4d80-98de-b16074f1d86c(jetbrains.mps.lang.test)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="f61473f9-130f-42f6-b98d-6c438812c2f6(jetbrains.mps.baseLanguage.unitTest)" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <language namespace="443f4c36-fcf5-4eb6-9500-8d06ed259e3e(jetbrains.mps.baseLanguage.classifiers)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" version="23" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" version="4" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test)" version="-1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" version="-1" />
  <maxImportIndex value="47" />
  <import index="5" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="16" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="32" modelUID="f:java_stub#java.io(java.io@java_stub)" version="-1" />
  <import index="45" modelUID="f:java_stub#org.jetbrains.annotations(org.jetbrains.annotations@java_stub)" version="-1" />
  <import index="47" modelUID="f:java_stub#java.util(java.util@java_stub)" version="-1" />
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217271585456">
    <property name="name:4" value="OnlyStatementsCanUnreachable" />
    <property name="package:4" value="dataFlow.unreachable" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217271585458">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1216231136438">
        <property name="name:3" value="C1" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1216231136440">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1216231136441" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216231136442" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216231136443">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1216231186242" />
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1216231187885">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216231187886" />
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1216232408681">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1216232408682">
                  <property name="value:3" value="2" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1216232408683">
                  <property name="value:3" value="1" />
                </node>
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1216231244757">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="1216231255040" />
              </node>
            </node>
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1216231228348">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1216231238662" />
          </node>
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1216231171304" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217271585523">
    <property name="name:4" value="ForLoop" />
    <property name="package:4" value="dataFlow" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217271585525">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1215444253195">
        <property name="name:3" value="Class" />
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1215444253196">
          <property name="name:3" value="method" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444253197" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444253198" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444253199">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444253200">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444253201">
                <property name="name:3" value="result" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444253202" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1215444253203">
                  <property name="value:3" value="1" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForStatement:3" id="1215444253204">
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444253205">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1215444253206">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1215444253207">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1215444253208">
                      <property name="value:3" value="0" />
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215444253209">
                      <link role="variableDeclaration:3" targetNodeId="1215444253201" resolveInfo="result" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444253210">
                <property name="name:3" value="i" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444253211" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1215444253212">
                  <property name="value:3" value="0" />
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LessThanExpression:3" id="1215444253213">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1215444253214">
                  <link role="variableDeclaration:3" targetNodeId="1215444253223" resolveInfo="a" />
                </node>
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215444253215">
                  <link role="variableDeclaration:3" targetNodeId="1215444253210" resolveInfo="i" />
                </node>
              </node>
              <node role="iteration:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1215444253216">
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1215444253217">
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1215444253218">
                    <property name="value:3" value="1" />
                  </node>
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215444253219">
                    <link role="variableDeclaration:3" targetNodeId="1215444253210" resolveInfo="i" />
                  </node>
                </node>
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215444253220">
                  <link role="variableDeclaration:3" targetNodeId="1215444253210" resolveInfo="i" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1215444253221">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215444253222">
                <link role="variableDeclaration:3" targetNodeId="1215444253201" resolveInfo="result" />
              </node>
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1215444253223">
            <property name="name:3" value="a" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444253224" />
          </node>
          <node role="testNode$attribute:3" type="jetbrains.mps.lang.test.structure.TestNodeAnnotation:4" id="1215444253225">
            <property name="name:4" value="method" />
          </node>
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444253226" />
      </node>
    </node>
    <node role="testMethods:4" type="jetbrains.mps.lang.test.structure.SimpleNodeTest:4" id="1225979304340">
      <property name="name:4" value="ForLoop" />
      <node role="returnType:4" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225979304341" />
      <node role="body:4" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444253192">
        <node role="statement:3" type="jetbrains.mps.lang.test.structure.CheckNodeForErrors:4" id="1215444253193">
          <node role="nodeToCheck:4" type="jetbrains.mps.lang.test.structure.TestNodeReference:4" id="1215444253194">
            <link role="declaration:4" targetNodeId="1215444253225" resolveInfo="method" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217271585641">
    <property name="name:4" value="MethodParametersTest" />
    <property name="package:4" value="dataFlow" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217271585643">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1215444224345">
        <property name="name:3" value="Class1" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444224346" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1215444224347">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1215444224348" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444224349" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444224350">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444224351">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444224352">
                <property name="name:3" value="b" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444224353" />
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444224354">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444224355">
                <property name="name:3" value="x" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444224356" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1215522795334">
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215522796447">
                    <link role="variableDeclaration:3" targetNodeId="1215444224352" resolveInfo="b" />
                    <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1215522821006">
                      <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="1215522839801" />
                    </node>
                  </node>
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1215444224360">
                    <link role="variableDeclaration:3" targetNodeId="1215444224362" resolveInfo="a" />
                  </node>
                </node>
                <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1215524666839">
                  <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeWarningProperty:4" id="1215524677431" />
                </node>
              </node>
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1215444224362">
            <property name="name:3" value="a" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444224363" />
          </node>
          <node role="testNode$attribute:3" type="jetbrains.mps.lang.test.structure.TestNodeAnnotation:4" id="1215444224364">
            <property name="name:4" value="method" />
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods:4" type="jetbrains.mps.lang.test.structure.SimpleNodeTest:4" id="1225979305378">
      <property name="name:4" value="MethodParametersTest" />
      <node role="returnType:4" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225979305379" />
      <node role="body:4" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444224365">
        <node role="statement:3" type="jetbrains.mps.lang.test.structure.CheckNodeForErrors:4" id="1215444224366">
          <node role="nodeToCheck:4" type="jetbrains.mps.lang.test.structure.TestNodeReference:4" id="1215444224367">
            <link role="declaration:4" targetNodeId="1215444224364" resolveInfo="method" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217271585692">
    <property name="name:4" value="UnusedAssignment" />
    <property name="package:4" value="dataFlow.unusedAssignment" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217271585694">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1215444198386">
        <property name="name:3" value="Class1" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444198387" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1215444198388">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1215444198389" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444198390" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444198391">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444198392">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444198393">
                <property name="name:3" value="a" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444198394" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1215444198395">
                  <property name="value:3" value="10" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444198396">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444198397">
                <property name="name:3" value="b" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444198398" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1215444198399">
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1215444198400">
                    <property name="value:3" value="1" />
                  </node>
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215444198401">
                    <link role="variableDeclaration:3" targetNodeId="1215444198393" resolveInfo="a" />
                  </node>
                </node>
                <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1215524703673">
                  <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeWarningProperty:4" id="1215524708345" />
                </node>
              </node>
            </node>
          </node>
          <node role="testNode$attribute:3" type="jetbrains.mps.lang.test.structure.TestNodeAnnotation:4" id="1215444198403">
            <property name="name:4" value="method" />
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods:4" type="jetbrains.mps.lang.test.structure.SimpleNodeTest:4" id="1225979305996">
      <property name="name:4" value="UnusedAssignment" />
      <node role="returnType:4" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225979305997" />
      <node role="body:4" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444198404">
        <node role="statement:3" type="jetbrains.mps.lang.test.structure.CheckNodeForErrors:4" id="1215444198405">
          <node role="nodeToCheck:4" type="jetbrains.mps.lang.test.structure.TestNodeReference:4" id="1215444198406">
            <link role="declaration:4" targetNodeId="1215444198403" resolveInfo="method" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217271586138">
    <property name="name:4" value="UnreachableStatements" />
    <property name="package:4" value="dataFlow" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217271586140">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1215444211006">
        <property name="name:3" value="Class1" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444211007" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1215444211008">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1215444211009" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444211010" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444211011">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1215444211012">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444211013">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1215444211014" />
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1215444211015">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1215444211016">
                  <property name="value:3" value="10" />
                </node>
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1215444211017">
                  <link role="variableDeclaration:3" targetNodeId="1215444211025" resolveInfo="t" />
                </node>
              </node>
              <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="1215444211018">
                <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444211019">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1215444211020" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215522889579">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215522889580">
                <property name="name:3" value="a" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215522889581" />
                <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1216895837956">
                  <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeWarningProperty:4" id="1216895846723" />
                </node>
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1216232720510">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="1216232724026" />
              </node>
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1215444211025">
            <property name="name:3" value="t" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444211026" />
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1216895627746">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1216895632608" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217271586324">
    <property name="name:4" value="ReadAction" />
    <property name="package:4" value="dataFlow.unusedAssignment" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217271586326">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1216549142326">
        <property name="name:3" value="class1" />
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1216549152296">
          <property name="name:3" value="method" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1216549152297" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216549152298" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216549152299">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1216549168625">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1216549168626">
                <property name="name:3" value="x" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1216549168627" />
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.lang.plugin.structure.ExecuteLightweightCommandStatement:23" id="1216549176576">
              <node role="commandClosureLiteral:23" type="jetbrains.mps.lang.plugin.structure.CommandClosureLiteral:23" id="1216549176577">
                <node role="body:23" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216549176578">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1216549179301">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1216549196528">
                      <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1216549197892">
                        <property name="value:3" value="20" />
                      </node>
                      <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1216549181728">
                        <link role="variableDeclaration:3" targetNodeId="1216549168626" resolveInfo="x" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1239288916740">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1239288920036">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1239288916741">
                  <link role="classifier:3" targetNodeId="5.~System" resolveInfo="System" />
                  <link role="variableDeclaration:3" targetNodeId="5.~System.out" resolveInfo="out" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1239288922667">
                  <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.println(int):void" resolveInfo="println" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1239288926911">
                    <link role="variableDeclaration:3" targetNodeId="1216549168626" resolveInfo="x" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1216549232816">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1216549241562" />
          </node>
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1216549146586" />
      </node>
    </node>
    <node role="testMethods:4" type="jetbrains.mps.lang.test.structure.SimpleNodeTest:4" id="1225979300041">
      <property name="name:4" value="ReadAction" />
      <node role="returnType:4" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225979300042" />
      <node role="body:4" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216549096937" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217271586411">
    <property name="name:4" value="DataFlowInClosure" />
    <property name="package:4" value="dataFlow" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217271586413">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1215444268403">
        <property name="name:3" value="Class2" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444268404" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1215444268405">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1215444268406" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444268407" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444268408">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444268409">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444268410">
                <property name="name:3" value="strList" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="1215444268411">
                  <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="81108310548976504" />
                </node>
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1215444268413">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit:7" id="1215444268414">
                    <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="81108310548976508" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1215444268416">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1215444268417">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215444268418">
                  <link role="variableDeclaration:3" targetNodeId="1215444268410" resolveInfo="strList" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation:7" id="1227876791305">
                  <node role="closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="1227876791306">
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="1227876791307">
                      <property name="name:7" value="it" />
                      <node role="type:7" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="1227876791308" />
                    </node>
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1227876791309">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1227876791310">
                        <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1227876791311">
                          <property name="name:3" value="a" />
                          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1227876791312" />
                          <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="6179963580891556336">
                            <property name="value:3" value="3" />
                          </node>
                        </node>
                      </node>
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="6389100286634543794" />
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1227876791314">
                        <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1227876791315">
                          <property name="name:3" value="b" />
                          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1227876791316" />
                          <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1227876791317">
                            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1227876791318">
                              <property name="value:3" value="1" />
                            </node>
                            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1227876791319">
                              <link role="variableDeclaration:3" targetNodeId="1227876791311" resolveInfo="a" />
                            </node>
                          </node>
                          <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1227876791320">
                            <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeWarningProperty:4" id="1227876791321" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="testNode$attribute:3" type="jetbrains.mps.lang.test.structure.TestNodeAnnotation:4" id="1215444268434">
            <property name="name:4" value="method" />
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods:4" type="jetbrains.mps.lang.test.structure.SimpleNodeTest:4" id="1225979301883">
      <property name="name:4" value="DataFlowInClosure" />
      <node role="returnType:4" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225979301884" />
      <node role="body:4" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444268435">
        <node role="statement:3" type="jetbrains.mps.lang.test.structure.CheckNodeForErrors:4" id="1215444268436">
          <node role="nodeToCheck:4" type="jetbrains.mps.lang.test.structure.TestNodeReference:4" id="1215444268437">
            <link role="declaration:4" targetNodeId="1215444268434" resolveInfo="method" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217271586585">
    <property name="name:4" value="UnexpectedReturnInAnonymousClass" />
    <property name="package:4" value="dataFlow.anonymous" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217271586587">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1215444400359">
        <property name="name:3" value="Class" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444400360" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1215444400361">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1215444400362" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444400363" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444400364">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444400365">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444400366">
                <property name="name:3" value="e" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1215444400367">
                  <link role="classifier:3" targetNodeId="5.~Exception" resolveInfo="Exception" />
                </node>
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1215444400368">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="1215444400369">
                    <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="1215444400370">
                      <link role="classifier:3" targetNodeId="5.~Exception" resolveInfo="Exception" />
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~Exception.&lt;init&gt;()" resolveInfo="Exception" />
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444400371" />
                      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1215444400372">
                        <property name="name:3" value="method" />
                        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444400373" />
                        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444400374" />
                        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215522863563">
                          <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1215522871846">
                            <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="1215522876408" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1239364952430">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1239364957271">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1239364952431">
                  <link role="classifier:3" targetNodeId="5.~System" resolveInfo="System" />
                  <link role="variableDeclaration:3" targetNodeId="5.~System.out" resolveInfo="out" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1239364960141">
                  <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.println(java.lang.Object):void" resolveInfo="println" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1239364964031">
                    <link role="variableDeclaration:3" targetNodeId="1215444400366" resolveInfo="e" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="testNode$attribute:3" type="jetbrains.mps.lang.test.structure.TestNodeAnnotation:4" id="1215444400379">
          <property name="name:4" value="class" />
        </node>
      </node>
    </node>
    <node role="testMethods:4" type="jetbrains.mps.lang.test.structure.SimpleNodeTest:4" id="1225979304892">
      <property name="name:4" value="UnexpectedReturnInAnonymousClass" />
      <node role="returnType:4" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225979304893" />
      <node role="body:4" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444400380">
        <node role="statement:3" type="jetbrains.mps.lang.test.structure.CheckNodeForErrors:4" id="1215444400381">
          <node role="nodeToCheck:4" type="jetbrains.mps.lang.test.structure.TestNodeReference:4" id="1215444400382">
            <link role="declaration:4" targetNodeId="1215444400379" resolveInfo="class" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217271587023">
    <property name="name:4" value="UnusedVariableDeclaration" />
    <property name="package:4" value="dataFlow.unusedVariableDeaclaration" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217271587025">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1216889573145">
        <property name="name:3" value="Test" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216889573146" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1216889573147">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1216889573148" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216889573149" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216889573150">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1216889592659">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1216889592660">
                <property name="name:3" value="a" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1216889592661" />
                <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1216889869455">
                  <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeWarningProperty:4" id="1216889875447" />
                </node>
              </node>
            </node>
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1216889615893">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1216889859700" />
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods:4" type="jetbrains.mps.lang.test.structure.SimpleNodeTest:4" id="1225979305492">
      <property name="name:4" value="UnusedVariableDeclaration" />
      <node role="returnType:4" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225979305493" />
      <node role="body:4" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216889483873" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217271587074">
    <property name="name:4" value="AnonymousClass" />
    <property name="package:4" value="dataFlow.anonymous" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217271587076">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1215444376212">
        <property name="name:3" value="Class2" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444376213" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1215444376214">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1215444376215" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444376216" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444376217">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444376218">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444376219">
                <property name="name:3" value="t" />
                <property name="isFinal:3" value="true" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444376220" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1215444376221">
                  <property name="value:3" value="10" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444376222">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444376223">
                <property name="name:3" value="e" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1215444376224">
                  <link role="classifier:3" targetNodeId="5.~NullPointerException" resolveInfo="NullPointerException" />
                </node>
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1215444376225">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="1215444376226">
                    <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="1215444376227">
                      <link role="classifier:3" targetNodeId="5.~NullPointerException" resolveInfo="NullPointerException" />
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~NullPointerException.&lt;init&gt;()" resolveInfo="NullPointerException" />
                      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444376228" />
                      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1215444376229">
                        <property name="name:3" value="maethod" />
                        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1215444376230" />
                        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444376231" />
                        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444376232">
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444376233">
                            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444376234">
                              <property name="name:3" value="a" />
                              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444376235" />
                              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215444376236">
                                <link role="variableDeclaration:3" targetNodeId="1215444376219" resolveInfo="t" />
                              </node>
                              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1215524603802">
                                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeWarningProperty:4" id="1215524607913" />
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
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1215444376238">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1215444376239">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215444376240">
                  <link role="variableDeclaration:3" targetNodeId="1215444376223" resolveInfo="e" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1215444376241">
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~Throwable.getMessage():java.lang.String" resolveInfo="getMessage" />
                </node>
              </node>
            </node>
          </node>
          <node role="testNode$attribute:3" type="jetbrains.mps.lang.test.structure.TestNodeAnnotation:4" id="1215444376242">
            <property name="name:4" value="method" />
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods:4" type="jetbrains.mps.lang.test.structure.SimpleNodeTest:4" id="1225979303691">
      <property name="name:4" value="AnonymousClass" />
      <node role="returnType:4" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225979303692" />
      <node role="body:4" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444376243">
        <node role="statement:3" type="jetbrains.mps.lang.test.structure.CheckNodeForErrors:4" id="1215444376244">
          <node role="nodeToCheck:4" type="jetbrains.mps.lang.test.structure.TestNodeReference:4" id="1215444376245">
            <link role="declaration:4" targetNodeId="1215444376242" resolveInfo="method" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217271587656">
    <property name="name:4" value="VariableUninitialized" />
    <property name="package:4" value="dataFlow" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217271587658">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1215444156809">
        <property name="name:3" value="c1" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444156810" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1215444156811">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1215444156812" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444156813" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444156814">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444156815">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444156816">
                <property name="name:3" value="v" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444156817" />
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444156818">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444156819">
                <property name="name:3" value="a" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444156820" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215522917860">
                  <link role="variableDeclaration:3" targetNodeId="1215444156816" resolveInfo="v" />
                  <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1215522923423">
                    <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="1215522927829" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444156823">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444156824">
                <property name="name:3" value="c" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215524525416" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215444156826">
                  <link role="variableDeclaration:3" targetNodeId="1215444156819" resolveInfo="a" />
                </node>
                <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1215524538403">
                  <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeWarningProperty:4" id="1215524547718" />
                </node>
              </node>
            </node>
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1216893944815">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1216893950801" />
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods:4" type="jetbrains.mps.lang.test.structure.SimpleNodeTest:4" id="1225979303302">
      <property name="name:4" value="VariableUninitialized" />
      <node role="returnType:4" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225979303303" />
      <node role="body:4" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444156829" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217271587918">
    <property name="name:4" value="IfStatementDataFlow" />
    <property name="package:4" value="dataFlow" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217271587920">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1215444237451">
        <property name="name:3" value="Class2" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444237452" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1215444237453">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1215444237454" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1215444237455" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444237456">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444237457">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444237458">
                <property name="name:3" value="a" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444237459" />
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1215444237460">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1215444237461">
                <property name="name:3" value="b" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444237462" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1215444237463">
                  <property name="value:3" value="11" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1215444237464">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444237465">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1215444237466">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1215444237467">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215444237468">
                      <link role="variableDeclaration:3" targetNodeId="1215444237461" resolveInfo="b" />
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1215444237469">
                      <link role="variableDeclaration:3" targetNodeId="1215444237458" resolveInfo="a" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1215444237470">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1215444237471">
                  <property name="value:3" value="10" />
                </node>
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1215444237472">
                  <link role="variableDeclaration:3" targetNodeId="1215444237478" resolveInfo="e" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1239365529495">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1239365532035">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1239365529496">
                  <link role="classifier:3" targetNodeId="5.~System" resolveInfo="System" />
                  <link role="variableDeclaration:3" targetNodeId="5.~System.out" resolveInfo="out" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1239365534399">
                  <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.println(int):void" resolveInfo="println" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1239365538951">
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1239365538952">
                      <property name="value:3" value="1" />
                    </node>
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1239365538953">
                      <link role="variableDeclaration:3" targetNodeId="1215444237458" resolveInfo="a" />
                      <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1239365538954">
                        <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="1239365538955" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1215444237478">
            <property name="name:3" value="e" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1215444237479" />
          </node>
          <node role="testNode$attribute:3" type="jetbrains.mps.lang.test.structure.TestNodeAnnotation:4" id="1215444237480">
            <property name="name:4" value="method" />
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods:4" type="jetbrains.mps.lang.test.structure.SimpleNodeTest:4" id="1225979303578">
      <property name="name:4" value="IfStatementDataFlow" />
      <node role="returnType:4" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225979303579" />
      <node role="body:4" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1215444237481">
        <node role="statement:3" type="jetbrains.mps.lang.test.structure.CheckNodeForErrors:4" id="1215444237482">
          <node role="nodeToCheck:4" type="jetbrains.mps.lang.test.structure.TestNodeReference:4" id="1215444237483">
            <link role="declaration:4" targetNodeId="1215444237480" resolveInfo="method" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217861204623">
    <property name="package:4" value="dataFlow.unreachable" />
    <property name="name:4" value="IfStatementWrongUnreachable" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217861232093">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1217861284983">
        <property name="name:3" value="Class1" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1217861284984" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1217861284985">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1217861284986" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1217861284987" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1217861284988">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1217861310950">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1217861546710">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1217861549042">
                  <link role="variableDeclaration:3" targetNodeId="1217861524062" resolveInfo="a" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1217861316678">
                  <property name="value:3" value="4" />
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1217861310952">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1217861320852">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1217861322825">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1217861323765">
                      <property name="value:3" value="10" />
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1217861553527">
                      <link role="variableDeclaration:3" targetNodeId="1217861524062" resolveInfo="a" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="elsifClauses:3" type="jetbrains.mps.baseLanguage.structure.ElsifClause:3" id="1217861326485">
                <node role="statementList:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1217861326487">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1217861344589">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1217861351422">
                      <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1217861352738">
                        <property name="value:3" value="20" />
                      </node>
                      <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1217861566311">
                        <link role="variableDeclaration:3" targetNodeId="1217861530283" resolveInfo="b" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1217861331991">
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1217861333619">
                    <property name="value:3" value="7" />
                  </node>
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1217861560794">
                    <link role="variableDeclaration:3" targetNodeId="1217861530283" resolveInfo="b" />
                  </node>
                </node>
              </node>
              <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="1217861426879">
                <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1217861426880">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ThrowStatement:3" id="1217861429709">
                    <node role="throwable:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1217861431462">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1217861487410">
                        <link role="baseMethodDeclaration:3" targetNodeId="5.~RuntimeException.&lt;init&gt;()" resolveInfo="RuntimeException" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1239365193190">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1239365196085">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1239365193191">
                  <link role="classifier:3" targetNodeId="5.~System" resolveInfo="System" />
                  <link role="variableDeclaration:3" targetNodeId="5.~System.out" resolveInfo="out" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1239365198062">
                  <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.println(int):void" resolveInfo="println" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1239365202783">
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1239365202784">
                      <link role="variableDeclaration:3" targetNodeId="1217861530283" resolveInfo="b" />
                    </node>
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1239365202785">
                      <link role="variableDeclaration:3" targetNodeId="1217861524062" resolveInfo="a" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1217861524062">
            <property name="name:3" value="a" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1217861524063" />
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1217861530283">
            <property name="name:3" value="b" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1217861531332" />
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1217861585946">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1217864879944" />
          </node>
        </node>
      </node>
    </node>
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217864474223">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1217864474224">
        <property name="name:3" value="Class1" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1217864474225" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1217864474226">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1217864474227" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1217864474228" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1217864474229">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1217864474230">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1217864474231">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1217864474232">
                  <link role="variableDeclaration:3" targetNodeId="1217864474257" resolveInfo="a" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1217864474233">
                  <property name="value:3" value="4" />
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1217864474234">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ThrowStatement:3" id="1217864516034">
                  <node role="throwable:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1217864516035">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1217864516036">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~RuntimeException.&lt;init&gt;()" resolveInfo="RuntimeException" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="elsifClauses:3" type="jetbrains.mps.baseLanguage.structure.ElsifClause:3" id="1217864474239">
                <node role="statementList:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1217864474240">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ThrowStatement:3" id="1217864514343">
                    <node role="throwable:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1217864514344">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1217864514345">
                        <link role="baseMethodDeclaration:3" targetNodeId="5.~RuntimeException.&lt;init&gt;()" resolveInfo="RuntimeException" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1217864474245">
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1217864474246">
                    <property name="value:3" value="7" />
                  </node>
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1217864474247">
                    <link role="variableDeclaration:3" targetNodeId="1217864474259" resolveInfo="b" />
                  </node>
                </node>
              </node>
              <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="1217864474248">
                <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1217864474249">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ThrowStatement:3" id="1217864474250">
                    <node role="throwable:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1217864474251">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1217864474252">
                        <link role="baseMethodDeclaration:3" targetNodeId="5.~RuntimeException.&lt;init&gt;()" resolveInfo="RuntimeException" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1239365217514">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1239365219783">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1239365217515">
                  <link role="classifier:3" targetNodeId="5.~System" resolveInfo="System" />
                  <link role="variableDeclaration:3" targetNodeId="5.~System.out" resolveInfo="out" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1239365223104">
                  <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.println(int):void" resolveInfo="println" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1239365226980">
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1239365226981">
                      <link role="variableDeclaration:3" targetNodeId="1217864474259" resolveInfo="b" />
                    </node>
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1239365226982">
                      <link role="variableDeclaration:3" targetNodeId="1217864474257" resolveInfo="a" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1239365264693">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="1239365278901" />
              </node>
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1217864474257">
            <property name="name:3" value="a" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1217864474258" />
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1217864474259">
            <property name="name:3" value="b" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1217864474260" />
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1217864474261">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1217864892290" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1217866056908">
    <property name="package:4" value="dataFlow.unusedVariableDeaclaration" />
    <property name="name:4" value="UnusedAssignmentWithIF" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1217866137447">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1217866140838">
        <property name="name:3" value="Class" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1217866140839" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1217866140840">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1217866140841" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1217866140858" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1217866140859">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1217866151398">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1217866151399">
                <property name="name:3" value="a" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1217866151400" />
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1217866154981">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1217866154982">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1217866170118">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1217866170808">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1217866170983">
                      <property name="value:3" value="10" />
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1217866170119">
                      <link role="variableDeclaration:3" targetNodeId="1217866151399" resolveInfo="a" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1217866198432">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1217866200294">
                  <property name="value:3" value="10" />
                </node>
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1217866166613">
                  <link role="variableDeclaration:3" targetNodeId="1217866162971" resolveInfo="p" />
                </node>
              </node>
              <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="1217866412243">
                <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1217866412244">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1217866414885">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1217866416450">
                      <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1217866417765">
                        <property name="value:3" value="7" />
                      </node>
                      <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1217866414886">
                        <link role="variableDeclaration:3" targetNodeId="1217866151399" resolveInfo="a" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1239289140218">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1239289144742">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1239289140219">
                  <link role="classifier:3" targetNodeId="5.~System" resolveInfo="System" />
                  <link role="variableDeclaration:3" targetNodeId="5.~System.out" resolveInfo="out" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1239289151632">
                  <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.println(int):void" resolveInfo="println" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1239289157059">
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1239289157060">
                      <property name="value:3" value="1" />
                    </node>
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1239289157061">
                      <link role="variableDeclaration:3" targetNodeId="1217866151399" resolveInfo="a" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1217866162971">
            <property name="name:3" value="p" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1217866162972" />
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1217866433720">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1217866439753" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1220012417777">
    <property name="package:4" value="dataFlow.unusedVariableDeaclaration" />
    <property name="name:4" value="CatchingUnthrownException" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1220012458871">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1220012464903">
        <property name="name:3" value="Class" />
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1220012475941">
          <property name="name:3" value="method" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1220012475942" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1220012475943" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1220012475944">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.TryCatchStatement:3" id="554709999454419157">
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="554709999454419158">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ThrowStatement:3" id="554709999454419159">
                  <node role="throwable:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="554709999454419160">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="554709999454419161">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~Exception.&lt;init&gt;()" resolveInfo="Exception" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="catchClause:3" type="jetbrains.mps.baseLanguage.structure.CatchClause:3" id="554709999454419162">
                <node role="throwable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="554709999454419163">
                  <property name="name:3" value="e" />
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="554709999454419164">
                    <link role="classifier:3" targetNodeId="5.~Exception" resolveInfo="Exception" />
                  </node>
                </node>
                <node role="catchBody:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="554709999454419165" />
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.TryCatchStatement:3" id="1220012491332">
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1220012491333" />
              <node role="catchClause:3" type="jetbrains.mps.baseLanguage.structure.CatchClause:3" id="1220012491334">
                <node role="throwable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1220012491335">
                  <property name="name:3" value="e" />
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8512491756795119585">
                    <link role="classifier:3" targetNodeId="32.~IOException" resolveInfo="IOException" />
                  </node>
                  <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="354371747683307892">
                    <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="354371747683307893" />
                  </node>
                </node>
                <node role="catchBody:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1220012491337" />
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.TryCatchStatement:3" id="354371747683324358">
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="354371747683324359">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ThrowStatement:3" id="354371747683324366">
                  <node role="throwable:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="354371747683324368">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="354371747683324370">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~RuntimeException.&lt;init&gt;()" resolveInfo="RuntimeException" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="catchClause:3" type="jetbrains.mps.baseLanguage.structure.CatchClause:3" id="354371747683324360">
                <node role="throwable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="354371747683324361">
                  <property name="name:3" value="e" />
                  <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8512491756795119586">
                    <link role="classifier:3" targetNodeId="32.~IOException" resolveInfo="IOException" />
                  </node>
                  <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="354371747683324363">
                    <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="354371747683324364" />
                  </node>
                </node>
                <node role="catchBody:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="354371747683324365" />
              </node>
            </node>
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1220012514559">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1220012521451" />
          </node>
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1220012464904" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1220013369431">
    <property name="package:4" value="dataFlow.unreachable" />
    <property name="name:4" value="IfStatementWithReturns" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1220013386885">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1220013389636">
        <property name="name:3" value="Class" />
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1220013400783">
          <property name="name:3" value="method" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1220013400785" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1220013400786">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1220013421731">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1220013421733">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1220013451158">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1220013456365">
                    <property name="value:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1220013434912">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1220013435399">
                  <property name="value:3" value="3" />
                </node>
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1220013481984">
                  <link role="variableDeclaration:3" targetNodeId="1220013478560" resolveInfo="a" />
                </node>
              </node>
              <node role="elsifClauses:3" type="jetbrains.mps.baseLanguage.structure.ElsifClause:3" id="1220013438947">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1220013441014">
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1220013441579">
                    <property name="value:3" value="2" />
                  </node>
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1220013484438">
                    <link role="variableDeclaration:3" targetNodeId="1220013478560" resolveInfo="a" />
                  </node>
                </node>
                <node role="statementList:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1220013438949">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1220013458334">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1220013459289">
                      <property name="value:3" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1220013461510">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1220013462309">
                <property name="value:3" value="2" />
              </node>
            </node>
          </node>
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1220013454831" />
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1220013478560">
            <property name="name:3" value="a" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1220013478561" />
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1220013503033">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1220013512724" />
          </node>
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1220013389637" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1220265193995">
    <property name="package:4" value="dataFlow.unusedVariableDeaclaration" />
    <property name="name:4" value="UnusedParameters" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1220265258910">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1220265263160">
        <property name="name:3" value="Test" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1220265313991">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1220265313992" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1220265313993" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1220265313994">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation:3" id="8101436443850173601">
              <link role="baseMethodDeclaration:3" targetNodeId="1220265318983" resolveInfo="Test" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="8101436443850176139">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1220265317131">
            <property name="name:3" value="a" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="3485746156533314957" />
          </node>
        </node>
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1220265318983">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1220265318984" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1220265318986" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1220265322954" />
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1220265325479">
            <property name="name:3" value="b" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1220265325480" />
            <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1220265448150">
              <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeWarningProperty:4" id="1220265454238" />
            </node>
          </node>
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1220265263161" />
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1220265284803">
          <property name="name:3" value="foo" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1220265284804" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1220265284805">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="8101436443850246485">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8101436443850246486">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="8101436443850246487">
                  <link role="baseMethodDeclaration:3" targetNodeId="1220265299889" resolveInfo="bar" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="8101436443850246489">
                    <property name="value:3" value="3" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8101436443850246488" />
              </node>
            </node>
          </node>
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1220265284806" />
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1220265298209">
            <property name="name:3" value="a" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1220265298210" />
          </node>
        </node>
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1220265299889">
          <property name="name:3" value="bar" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1220265299890" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1220265306415" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1220265299892" />
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1220265310509">
            <property name="name:3" value="b" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1220265310510" />
            <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="1220265478268">
              <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeWarningProperty:4" id="1220265482494" />
            </node>
          </node>
        </node>
        <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1220265428623">
          <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1220265437276" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1222443174371">
    <property name="package:4" value="dataFlow.unreachable" />
    <property name="name:4" value="ListWithConceptFunction" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1222443224345">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1222443227050">
        <property name="name:3" value="Clazz" />
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1222443280871">
          <property name="name:3" value="method" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1222443280873" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1222443280874">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1222443299191">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1222443299192">
                <property name="name:3" value="list" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="1222443299193">
                  <node role="elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1222443299194">
                    <link role="concept:16" targetNodeId="16.1133920641626:0" resolveInfo="BaseConcept" />
                  </node>
                </node>
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1232024189049">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit:7" id="1232024189050">
                    <node role="elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1232024189051">
                      <link role="concept:16" targetNodeId="16.1133920641626:0" resolveInfo="BaseConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1222443299196">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1222443299197">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1222443299198">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1222443299199">
                    <link role="variableDeclaration:3" targetNodeId="1222443299192" resolveInfo="list" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.WhereOperation:7" id="1227876805897">
                    <node role="closure:7" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="1227876805898">
                      <node role="parameter:3" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration:7" id="1227876805899">
                        <property name="name:7" value="it" />
                        <node role="type:7" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="1227876805900" />
                      </node>
                      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1227876805901">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1227876805902">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1227876805903">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1227876805904">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1227876815207">
                                <link role="variableDeclaration:3" targetNodeId="1227876805899" resolveInfo="it" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1227876805906">
                                <link role="property:16" targetNodeId="16.1156235010670:0" resolveInfo="alias" />
                              </node>
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1227876805907">
                              <link role="baseMethodDeclaration:3" targetNodeId="5.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1227876805908">
                                <property name="value:3" value="f" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation:7" id="1222443299211" />
              </node>
            </node>
          </node>
          <node role="returnType:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1222443291672" />
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1222443316200">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1222443330005" />
          </node>
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1222443227051" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1226936033402">
    <property name="package:4" value="dataFlow" />
    <property name="name:4" value="CommentCanBeUnreachable" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1226936061419">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1226936065326">
        <property name="name:3" value="Class" />
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1226936071520">
          <property name="name:3" value="method" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1226936085126" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1226936071522" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1226936071523">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1239288457693">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1239288457694">
                <property name="name:3" value="a" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1239288457695" />
                <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="2736903840391132361">
                  <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeWarningProperty:4" id="2736903840391132362" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1226936086674">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="2736903840391167421">
                <property name="value:3" value="3" />
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.CommentedStatementsBlock:3" id="1226936098446">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1239288461164">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1239288462790">
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1239288463069">
                    <property name="value:3" value="3" />
                  </node>
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1239288461165">
                    <link role="variableDeclaration:3" targetNodeId="1239288457694" resolveInfo="a" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1226936109744">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1226936244308" />
          </node>
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1226936065327" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="1229349783966">
    <property name="package:4" value="dataFlow" />
    <property name="name:4" value="CommandDataflowWithReturn" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="1229349830782">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1229349840377">
        <property name="name:3" value="method" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1229349899363">
          <link role="classifier:3" targetNodeId="5.~Object" resolveInfo="Object" />
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1229349840379" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1229349840380">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1229349885888">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1229349885889">
              <property name="name:3" value="obj" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1229349885890">
                <link role="classifier:3" targetNodeId="5.~Object" resolveInfo="Object" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1239272307469" />
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.plugin.structure.ExecuteLightweightCommandStatement:23" id="1229349879556">
            <node role="commandClosureLiteral:23" type="jetbrains.mps.lang.plugin.structure.CommandClosureLiteral:23" id="1229349879557">
              <node role="body:23" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1229349879558">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1229349911413">
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="1229349930037">
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1229349931243" />
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1229349914369">
                      <link role="variableDeclaration:3" targetNodeId="1229349906411" resolveInfo="param" />
                    </node>
                  </node>
                  <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1229349911415">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1229349933837">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1229349935558">
                        <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1229349939061">
                          <link role="variableDeclaration:3" targetNodeId="1229349906411" resolveInfo="param" />
                        </node>
                        <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1229349933838">
                          <link role="variableDeclaration:3" targetNodeId="1229349885889" resolveInfo="obj" />
                        </node>
                      </node>
                    </node>
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.CommentedStatementsBlock:3" id="2039071756760480142">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.SingleLineComment:3" id="2039071756760639333">
                        <node role="commentPart:3" type="jetbrains.mps.baseLanguage.structure.TextCommentPart:3" id="2039071756760639334">
                          <property name="text:3" value="MPS-6545" />
                        </node>
                      </node>
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.SingleLineComment:3" id="8508807536211130839">
                        <node role="commentPart:3" type="jetbrains.mps.baseLanguage.structure.TextCommentPart:3" id="8508807536211130840">
                          <property name="text:3" value="return;" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1229349889735">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1229349891706">
              <link role="variableDeclaration:3" targetNodeId="1229349885889" resolveInfo="obj" />
            </node>
          </node>
        </node>
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1229349906411">
          <property name="name:3" value="param" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="4859441577819743274" />
        </node>
        <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="1229349949893">
          <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="1229350096076" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="6017652711700374672">
    <property name="package:4" value="dataFlow" />
    <property name="name:4" value="TypesTest_BL" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="6017652711700376486">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="6017652711700376487">
        <property name="name:3" value="testBinaryOp" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6017652711700376488" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6017652711700376489" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6017652711700376490">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6017652711700376509">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6017652711700376510">
              <property name="name:3" value="a" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="6017652711700376511" />
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="6017652711700376515">
                <property name="value:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6017652711700376519">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6017652711700376520">
              <property name="name:3" value="b" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="6017652711700376521" />
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="6017652711700376525">
                <property name="value:3" value="2" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="6846030807779017469">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="6846030807779017481">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6846030807779017482">
                <link role="variableDeclaration:3" targetNodeId="6017652711700376520" resolveInfo="b" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6846030807779017483">
                <link role="variableDeclaration:3" targetNodeId="6017652711700376510" resolveInfo="a" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6846030807779017484">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="6846030807779017485">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="6846030807779017486" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="6846030807779017471">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.MinusExpression:3" id="6846030807779017487">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6846030807779017488">
                <link role="variableDeclaration:3" targetNodeId="6017652711700376520" resolveInfo="b" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6846030807779017489">
                <link role="variableDeclaration:3" targetNodeId="6017652711700376510" resolveInfo="a" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6846030807779017490">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="6846030807779017491">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="6846030807779017492" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="6846030807779017473">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.MulExpression:3" id="6846030807779017493">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6846030807779017494">
                <link role="variableDeclaration:3" targetNodeId="6017652711700376520" resolveInfo="b" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6846030807779017495">
                <link role="variableDeclaration:3" targetNodeId="6017652711700376510" resolveInfo="a" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6846030807779017496">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="6846030807779017497">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="6846030807779017498" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="6846030807779017475">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.DivExpression:3" id="6846030807779017499">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6846030807779017500">
                <link role="variableDeclaration:3" targetNodeId="6017652711700376520" resolveInfo="b" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6846030807779017501">
                <link role="variableDeclaration:3" targetNodeId="6017652711700376510" resolveInfo="a" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6846030807779017502">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="6846030807779017503">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="6846030807779017504" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="6846030807779017477">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="6846030807779017505">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6846030807779017506">
                <property name="value:3" value="" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6846030807779017507">
                <link role="variableDeclaration:3" targetNodeId="6017652711700376510" resolveInfo="a" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6846030807779017508">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="6846030807779017509">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6846030807779017510" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="6846030807779017479">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="6846030807779017511">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6846030807779017512">
                <property name="value:3" value="" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6846030807779017513">
                <property name="value:3" value="" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6846030807779017514">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="6846030807779017515">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6846030807779017516" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6017652711700376645">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6017652711700376646">
              <property name="name:3" value="s" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6017652711700376647" />
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.MinusExpression:3" id="6017652711700376651">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6017652711700376652">
                  <property name="value:3" value="" />
                </node>
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6017652711700376653">
                  <link role="variableDeclaration:3" targetNodeId="6017652711700376510" resolveInfo="a" />
                </node>
                <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="7039665527129878194">
                  <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="7039665527129878195" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6846030807779017528">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6846030807779017529">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="6846030807779017530">
                <link role="classifier:3" targetNodeId="5.~System" />
                <link role="variableDeclaration:3" targetNodeId="5.~System.err" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6846030807779017531">
                <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.println(java.lang.String):void" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6846030807779017534">
                  <link role="variableDeclaration:3" targetNodeId="6017652711700376646" resolveInfo="s" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="6017652711700376551">
          <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="6017652711700376553">
            <property name="operationName:4" value="testBinaryOp" />
          </node>
        </node>
      </node>
    </node>
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="8287832443125030316">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="8287832443125030318">
        <property name="name:3" value="testTernaryOp" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="8287832443125030319" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="8287832443125030320" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="8287832443125030321">
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="6846030807779017536">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="6846030807779017541">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6846030807779017542">
                <property name="value:3" value="" />
              </node>
              <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6846030807779017543">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="6846030807779017544">
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~Integer.&lt;init&gt;(int)" resolveInfo="Integer" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="6846030807779017545">
                    <property name="value:3" value="2" />
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="6846030807779017546">
                <property name="value:3" value="true" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6846030807779017547">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeSetProperty:4" id="6835053503248404233">
                  <node role="type:4" type="jetbrains.mps.lang.typesystem.structure.MeetType:3" id="6835053503248404235">
                    <node role="argument:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6835053503248404236">
                      <link role="classifier:3" targetNodeId="32.~Serializable" resolveInfo="Serializable" />
                    </node>
                    <node role="argument:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6835053503248404237">
                      <link role="classifier:3" targetNodeId="5.~Comparable" resolveInfo="Comparable" />
                    </node>
                  </node>
                  <node role="type:4" type="jetbrains.mps.lang.typesystem.structure.MeetType:3" id="6835053503248405932">
                    <node role="argument:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6835053503248405935">
                      <link role="classifier:3" targetNodeId="5.~Comparable" resolveInfo="Comparable" />
                    </node>
                    <node role="argument:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6835053503248405936">
                      <link role="classifier:3" targetNodeId="32.~Serializable" resolveInfo="Serializable" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6846030807779017560">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6846030807779017561">
              <property name="name:3" value="d" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.DoubleType:3" id="6846030807779017562" />
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.FloatingPointConstant:3" id="6846030807779017563">
                <property name="value:3" value="0.3" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="6846030807779017539">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="6846030807779017552">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="6846030807779017553">
                <property name="value:3" value="2" />
              </node>
              <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6846030807779017554">
                <link role="variableDeclaration:3" targetNodeId="6846030807779017561" resolveInfo="d" />
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="6846030807779017555">
                <property name="value:3" value="true" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6846030807779017556">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="6846030807779017557">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.DoubleType:3" id="6846030807779017558" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="6846030807779035849">
          <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="6846030807779035850">
            <property name="operationName:4" value="testTernaryOp" />
          </node>
        </node>
      </node>
    </node>
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="2685915532174971883">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="2685915532175039709">
        <property name="name:3" value="TestClass1" />
        <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="2685915532175039785">
          <property name="name:3" value="testErasureField1" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2685915532175039824" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference:3" id="2685915532175039788">
            <link role="typeVariableDeclaration:3" targetNodeId="2685915532175039757" resolveInfo="T" />
          </node>
        </node>
        <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="2685915532175039781">
          <property name="name:3" value="testErasureField2" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2685915532175039825" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference:3" id="2685915532175039784">
            <link role="typeVariableDeclaration:3" targetNodeId="2685915532175039777" resolveInfo="S" />
          </node>
        </node>
        <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="2685915532175039789">
          <property name="name:3" value="testErasureField3" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2685915532175039826" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2685915532175039792">
            <link role="classifier:3" targetNodeId="47.~List" resolveInfo="List" />
            <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference:3" id="2685915532175039794">
              <link role="typeVariableDeclaration:3" targetNodeId="2685915532175039777" resolveInfo="S" />
            </node>
          </node>
        </node>
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="2685915532175039758">
          <property name="name:3" value="testMethodInGenericClass1" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2685915532175039762">
            <link role="classifier:3" targetNodeId="47.~List" resolveInfo="List" />
            <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference:3" id="2685915532175039768">
              <link role="typeVariableDeclaration:3" targetNodeId="2685915532175039757" resolveInfo="T" />
            </node>
          </node>
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2685915532175039760" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2685915532175039761">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="2685915532175039770">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="2685915532175039772" />
            </node>
          </node>
        </node>
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="2685915532175039763">
          <property name="name:3" value="testMethodInGenericClass2" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference:3" id="2685915532175039769">
            <link role="typeVariableDeclaration:3" targetNodeId="2685915532175039757" resolveInfo="T" />
          </node>
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2685915532175039765" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2685915532175039766">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="2685915532175039773">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="2685915532175039776" />
            </node>
          </node>
        </node>
        <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="2685915532175039715">
          <property name="name:3" value="testGenericMethod1" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2685915532175039717" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2685915532175039718">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="2685915532175039730">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="2685915532175039732" />
            </node>
          </node>
          <node role="typeVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration:3" id="2685915532175039720">
            <property name="name:3" value="V" />
          </node>
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2685915532175039723">
            <link role="classifier:3" targetNodeId="47.~List" resolveInfo="List" />
            <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference:3" id="2685915532175039725">
              <link role="typeVariableDeclaration:3" targetNodeId="2685915532175039720" resolveInfo="V" />
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2685915532175039726">
            <property name="name:3" value="set" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2685915532175039727">
              <link role="classifier:3" targetNodeId="47.~Set" resolveInfo="Set" />
              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference:3" id="2685915532175039729">
                <link role="typeVariableDeclaration:3" targetNodeId="2685915532175039720" resolveInfo="V" />
              </node>
            </node>
          </node>
        </node>
        <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="2685915532175039733">
          <property name="name:3" value="testGenericMethod2" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2685915532175039734" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2685915532175039735">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="2685915532175039736">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="2685915532175039737" />
            </node>
          </node>
          <node role="typeVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration:3" id="2685915532175039738">
            <property name="name:3" value="V" />
          </node>
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2685915532175039739">
            <link role="classifier:3" targetNodeId="47.~List" resolveInfo="List" />
            <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference:3" id="2685915532175039740">
              <link role="typeVariableDeclaration:3" targetNodeId="2685915532175039738" resolveInfo="V" />
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2685915532175039741">
            <property name="name:3" value="v" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference:3" id="2685915532175039755">
              <link role="typeVariableDeclaration:3" targetNodeId="2685915532175039738" resolveInfo="V" />
            </node>
          </node>
        </node>
        <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="2685915532175039744">
          <property name="name:3" value="testGenericMethod3" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2685915532175039745" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2685915532175039746">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="2685915532175039747">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="2685915532175039748" />
            </node>
          </node>
          <node role="typeVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration:3" id="2685915532175039749">
            <property name="name:3" value="V" />
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2685915532175039752">
            <property name="name:3" value="set" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2685915532175039753">
              <link role="classifier:3" targetNodeId="47.~Set" resolveInfo="Set" />
              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference:3" id="2685915532175039754">
                <link role="typeVariableDeclaration:3" targetNodeId="2685915532175039749" resolveInfo="V" />
              </node>
            </node>
          </node>
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference:3" id="2685915532175039756">
            <link role="typeVariableDeclaration:3" targetNodeId="2685915532175039749" resolveInfo="V" />
          </node>
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2685915532175039710" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="2685915532175039711">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="2685915532175039712" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2685915532175039713" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2685915532175039714" />
        </node>
        <node role="typeVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration:3" id="2685915532175039757">
          <property name="name:3" value="T" />
        </node>
        <node role="typeVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration:3" id="2685915532175039777">
          <property name="name:3" value="S" />
          <node role="bound:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2685915532175039780">
            <link role="classifier:3" targetNodeId="47.~Set" resolveInfo="Set" />
          </node>
        </node>
      </node>
    </node>
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="2685915532175039795">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="2685915532175039796">
        <property name="name:3" value="testGenericFields" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="2685915532175039797" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2685915532175039798" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2685915532175039799">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2685915532175039800">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2685915532175039801">
              <property name="name:3" value="generic" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2685915532175039802">
                <link role="classifier:3" targetNodeId="2685915532175039709" resolveInfo="TestClass1" />
                <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="8227296800200035845" />
                <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2685915532175039808">
                  <link role="classifier:3" targetNodeId="47.~HashSet" resolveInfo="HashSet" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6889973432798448743">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="6889973432798448745">
                  <link role="baseMethodDeclaration:3" targetNodeId="2685915532175039711" resolveInfo="TestClass1" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2685915532175039812">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2685915532175039813">
              <property name="name:3" value="erasure" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2685915532175039814">
                <link role="classifier:3" targetNodeId="2685915532175039709" resolveInfo="TestClass1" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6889973432798448740">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="6889973432798448742">
                  <link role="baseMethodDeclaration:3" targetNodeId="2685915532175039711" resolveInfo="TestClass1" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="5374109160289271538">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5374109160289271539">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5374109160289271567">
                <link role="variableDeclaration:3" targetNodeId="2685915532175039801" resolveInfo="generic" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="5374109160289271541">
                <link role="fieldDeclaration:3" targetNodeId="2685915532175039785" resolveInfo="testErasureField1" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="5374109160289271542">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="5374109160289271543">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="8227296800200035852" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="5374109160289271545">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5374109160289271546">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5374109160289271570">
                <link role="variableDeclaration:3" targetNodeId="2685915532175039801" resolveInfo="generic" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="5374109160289271548">
                <link role="fieldDeclaration:3" targetNodeId="2685915532175039781" resolveInfo="testErasureField2" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="5374109160289271549">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="5374109160289271550">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5374109160289271581">
                    <link role="classifier:3" targetNodeId="47.~HashSet" resolveInfo="HashSet" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="5374109160289271552">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5374109160289271553">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5374109160289271573">
                <link role="variableDeclaration:3" targetNodeId="2685915532175039801" resolveInfo="generic" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="5374109160289271555">
                <link role="fieldDeclaration:3" targetNodeId="2685915532175039789" resolveInfo="testErasureField3" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="5374109160289271556">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="5374109160289271557">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5374109160289271558">
                    <link role="classifier:3" targetNodeId="47.~List" resolveInfo="List" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5374109160289271584">
                      <link role="classifier:3" targetNodeId="47.~HashSet" resolveInfo="HashSet" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="5374109160289268144">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5374109160289268146">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5374109160289268147">
                <link role="variableDeclaration:3" targetNodeId="2685915532175039813" resolveInfo="erasure" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="5374109160289268148">
                <link role="fieldDeclaration:3" targetNodeId="2685915532175039785" resolveInfo="testErasureField1" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="5374109160289268181">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="5374109160289268184">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5374109160289268187">
                    <link role="classifier:3" targetNodeId="5.~Object" resolveInfo="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="5374109160289268157">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5374109160289268159">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5374109160289268160">
                <link role="variableDeclaration:3" targetNodeId="2685915532175039813" resolveInfo="erasure" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="5374109160289268161">
                <link role="fieldDeclaration:3" targetNodeId="2685915532175039781" resolveInfo="testErasureField2" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="5374109160289268188">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="5374109160289268191">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5374109160289271530">
                    <link role="classifier:3" targetNodeId="47.~Set" resolveInfo="Set" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="5374109160289268172">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="5374109160289268174">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="5374109160289268175">
                <link role="variableDeclaration:3" targetNodeId="2685915532175039813" resolveInfo="erasure" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="5374109160289268176">
                <link role="fieldDeclaration:3" targetNodeId="2685915532175039789" resolveInfo="testErasureField3" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="5374109160289268193">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="5374109160289268197">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5374109160289271533">
                    <link role="classifier:3" targetNodeId="47.~List" resolveInfo="List" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="5374109160289271535">
                      <link role="classifier:3" targetNodeId="47.~Set" resolveInfo="Set" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="6846030807779035851">
          <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="454440546580065076">
            <property name="operationName:4" value="testGenericFields" />
          </node>
        </node>
      </node>
    </node>
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="6846030807779017564">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="6846030807779017565">
        <property name="name:3" value="testGenericInstanceMethods" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6846030807779017566" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6846030807779017567" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6846030807779017568">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6846030807779017569">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6846030807779017570">
              <property name="name:3" value="generic" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6846030807779017571">
                <link role="classifier:3" targetNodeId="2685915532175039709" resolveInfo="TestClass1" />
                <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="8227296800200035843" />
                <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6846030807779017573">
                  <link role="classifier:3" targetNodeId="47.~HashSet" resolveInfo="HashSet" />
                </node>
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6889973432798448746">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="6889973432798448748">
                  <link role="baseMethodDeclaration:3" targetNodeId="2685915532175039711" resolveInfo="TestClass1" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="6846030807779017579">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6846030807779017580">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6846030807779017581">
                <link role="variableDeclaration:3" targetNodeId="6846030807779017570" resolveInfo="generic" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6846030807779017644">
                <link role="baseMethodDeclaration:3" targetNodeId="2685915532175039758" resolveInfo="testMethodInGenericClass1" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6846030807779017583">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="6846030807779017584">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6846030807779017653">
                    <link role="classifier:3" targetNodeId="47.~List" resolveInfo="List" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="8227296800200035846" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.lang.test.structure.ExpressionContainer:4" id="6846030807779017586">
            <node role="expression:4" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6846030807779017587">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6846030807779017588">
                <link role="variableDeclaration:3" targetNodeId="6846030807779017570" resolveInfo="generic" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6846030807779017648">
                <link role="baseMethodDeclaration:3" targetNodeId="2685915532175039763" resolveInfo="testMethodInGenericClass2" />
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6846030807779017590">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="6846030807779017591">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="8227296800200035844" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="454440546580065077">
          <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="454440546580065078">
            <property name="operationName:4" value="testGenericInstanceMethods" />
          </node>
        </node>
      </node>
    </node>
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="6846030807779017660">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="6846030807779017661">
        <property name="name:3" value="testGenericMethods" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6846030807779017662" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6846030807779017663" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6846030807779017664">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6846030807779017691">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="6846030807779017693">
              <link role="baseMethodDeclaration:3" targetNodeId="2685915532175039715" resolveInfo="testGenericMethod1" />
              <link role="classConcept:3" targetNodeId="2685915532175039709" resolveInfo="TestClass1" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6846030807779017695">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="6846030807779035783">
                  <link role="baseMethodDeclaration:3" targetNodeId="47.~HashSet.&lt;init&gt;()" resolveInfo="HashSet" />
                  <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="8227296800200035842" />
                </node>
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="2066156582659196278">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="2066156582659196281">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2066156582659198057">
                    <link role="classifier:3" targetNodeId="47.~List" resolveInfo="List" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="8227296800200035849" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6846030807779035819">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="6846030807779035833">
              <link role="baseMethodDeclaration:3" targetNodeId="2685915532175039733" resolveInfo="testGenericMethod2" />
              <link role="classConcept:3" targetNodeId="2685915532175039709" resolveInfo="TestClass1" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6846030807779035834">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="6846030807779035835">
                  <link role="baseMethodDeclaration:3" targetNodeId="47.~HashSet.&lt;init&gt;()" resolveInfo="HashSet" />
                  <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="8227296800200035847" />
                </node>
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="454440546580065086">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="2066156582659196283">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2066156582659198064">
                    <link role="classifier:3" targetNodeId="47.~List" resolveInfo="List" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="2066156582659198066">
                      <link role="classifier:3" targetNodeId="47.~HashSet" resolveInfo="HashSet" />
                      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="8227296800200035851" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6846030807779035826">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="6846030807779035838">
              <link role="baseMethodDeclaration:3" targetNodeId="2685915532175039744" resolveInfo="testGenericMethod3" />
              <link role="classConcept:3" targetNodeId="2685915532175039709" resolveInfo="TestClass1" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6846030807779035839">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="6846030807779035840">
                  <link role="baseMethodDeclaration:3" targetNodeId="47.~HashSet.&lt;init&gt;()" resolveInfo="HashSet" />
                  <node role="typeParameter:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="8227296800200035848" />
                </node>
              </node>
              <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="2066156582659196276">
                <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeTypeProperty:4" id="2066156582659196285">
                  <node role="type:4" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="8227296800200035850" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="454440546580065079">
          <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="454440546580065080">
            <property name="operationName:4" value="testGenericMethods" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.TestInfo:4" id="5097124989039164757">
    <property name="projectPath:4" value="${mps_home}/core/baseLanguage/baseLanguage/baseLanguage.mpr" />
  </node>
  <node type="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" id="1326302914272879450">
    <property name="testCaseName" value="TestSafeEquals" />
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1326302914272879451" />
    <node role="constructor" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1326302914272879452">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1326302914272879453" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1326302914272879454" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1326302914272879455" />
    </node>
    <node role="testMethodList" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" id="1326302914272879456">
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="1326302914272880326">
        <property name="methodName" value="test_eq" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1326302914272880327" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1326302914272880328" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1326302914272880329">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1326302914272888800">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1326302914272888801">
              <property name="name:3" value="o" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1326302914272888802">
                <link role="classifier:3" targetNodeId="5.~Object" resolveInfo="Object" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1326302914272888804">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1326302914272888805">
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~Object.&lt;init&gt;()" resolveInfo="Object" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1326302914272888807">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression:3" id="1326302914272888810">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1326302914272888813">
                <link role="variableDeclaration:3" targetNodeId="1326302914272888801" resolveInfo="o" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1326302914272888809">
                <link role="variableDeclaration:3" targetNodeId="1326302914272888801" resolveInfo="o" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" id="1326302914272888818">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression:3" id="1326302914272888821">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1326302914272888824" />
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1326302914272888820">
                <link role="variableDeclaration:3" targetNodeId="1326302914272888801" resolveInfo="o" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" id="1326302914272888826">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression:3" id="1326302914272888829">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1326302914272888832">
                <link role="variableDeclaration:3" targetNodeId="1326302914272888801" resolveInfo="o" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1326302914272888828" />
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1326302914272888834">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression:3" id="1326302914272888837">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1326302914272888840" />
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1326302914272888836" />
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" type="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" id="1326302914272888841">
        <property name="methodName" value="test_ne" />
        <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1326302914272888842" />
        <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1326302914272888843" />
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1326302914272888844">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1326302914272888847">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1326302914272888848">
              <property name="name:3" value="o" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1326302914272888849">
                <link role="classifier:3" targetNodeId="5.~Object" resolveInfo="Object" />
              </node>
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1326302914272888851">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1326302914272888852">
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~Object.&lt;init&gt;()" resolveInfo="Object" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" id="1326302914272888854">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression:3" id="1326302914272888857">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1326302914272888860">
                <link role="variableDeclaration:3" targetNodeId="1326302914272888848" resolveInfo="o" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1326302914272888856">
                <link role="variableDeclaration:3" targetNodeId="1326302914272888848" resolveInfo="o" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1326302914272888862">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression:3" id="1326302914272888865">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1326302914272888868" />
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1326302914272888864">
                <link role="variableDeclaration:3" targetNodeId="1326302914272888848" resolveInfo="o" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" id="1326302914272888870">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression:3" id="1326302914272888877">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1326302914272888880">
                <link role="variableDeclaration:3" targetNodeId="1326302914272888848" resolveInfo="o" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1326302914272888876" />
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.unitTest.structure.AssertFalse" id="1326302914272888882">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression:3" id="1326302914272888885">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1326302914272888888" />
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1326302914272888884" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="6011730950863071455">
    <property name="name:4" value="NullableAnalyzer" />
    <property name="virtualPackage:4" value="dataFlow" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="6011730950863071456">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="6011730950863071457">
        <property name="nonStatic:3" value="true" />
        <property name="name:3" value="F" />
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="6011730950863071458">
          <property name="name:3" value="testDot" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6011730950863071459" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6011730950863071460" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071461">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6011730950863071462">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6011730950863071463">
                <property name="name:3" value="s2" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6011730950863071464" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6011730950863071465">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071512" resolveInfo="s" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071466">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071467">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071468">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071463" resolveInfo="s2" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071469">
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071470">
                    <property name="value:3" value="2" />
                  </node>
                </node>
                <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6011730950863071471">
                  <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="6011730950863071472" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071473">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071474">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="6011730950863071475">
                  <link role="classifier:3" targetNodeId="5.~System" resolveInfo="System" />
                  <link role="variableDeclaration:3" targetNodeId="5.~System.out" resolveInfo="out" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071476">
                  <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.print(java.lang.String):void" resolveInfo="print" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071477">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071478">
                      <link role="variableDeclaration:3" targetNodeId="6011730950863071463" resolveInfo="s2" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071479">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071480">
                        <property name="value:3" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071481">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071482">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="6011730950863071483">
                  <link role="classifier:3" targetNodeId="5.~System" resolveInfo="System" />
                  <link role="variableDeclaration:3" targetNodeId="5.~System.out" resolveInfo="out" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071484">
                  <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.print(java.lang.String):void" resolveInfo="print" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071485">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6011730950863071486">
                      <link role="variableDeclaration:3" targetNodeId="6011730950863071512" resolveInfo="s" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071487">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071488">
                        <property name="value:3" value="2" />
                      </node>
                    </node>
                    <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6011730950863071489">
                      <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="6011730950863071490" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6011730950863071491">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6011730950863071492">
                <property name="name:3" value="s3" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6011730950863071493" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="6011730950863071494">
                  <link role="baseMethodDeclaration:3" targetNodeId="6011730950863071700" resolveInfo="nullF" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="6011730950863071495">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071496">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071497">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071498">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071499">
                      <link role="variableDeclaration:3" targetNodeId="6011730950863071492" resolveInfo="s3" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071500">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071501">
                        <property name="value:3" value="" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="6011730950863071502">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="6011730950863071503" />
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071504">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071492" resolveInfo="s3" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071505">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071506">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071507">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071492" resolveInfo="s3" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071508">
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071509">
                    <property name="value:3" value="" />
                  </node>
                </node>
                <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6011730950863071510">
                  <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="6011730950863071511" />
                </node>
              </node>
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="6011730950863071512">
            <property name="name:3" value="s" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6011730950863071513" />
            <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="6011730950863071514">
              <link role="annotation:3" targetNodeId="45.~Nullable" resolveInfo="Nullable" />
            </node>
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="6011730950863071515">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="6011730950863071516">
              <property name="operationName:4" value="testDot" />
            </node>
          </node>
        </node>
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="6011730950863071583">
          <property name="name:3" value="test" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6011730950863071584" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6011730950863071585" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071586">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6011730950863071587">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6011730950863071588">
                <property name="name:3" value="r2" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6011730950863071589">
                  <link role="classifier:3" targetNodeId="32.~Reader" resolveInfo="Reader" />
                </node>
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6011730950863071590">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071623" resolveInfo="reader" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.WhileStatement:3" id="6011730950863071591">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="6011730950863071592">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="6011730950863071593" />
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071594">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071588" resolveInfo="r2" />
                </node>
              </node>
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071595">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071596">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071597">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071598">
                      <link role="variableDeclaration:3" targetNodeId="6011730950863071588" resolveInfo="r2" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071599">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~Object.hashCode():int" resolveInfo="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071600">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071601">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071602">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071588" resolveInfo="r2" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071603">
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~Object.hashCode():int" resolveInfo="hashCode" />
                </node>
                <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6011730950863071604">
                  <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="6011730950863071605" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071606">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="6011730950863071607">
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="6011730950863071608">
                  <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="6011730950863071609">
                    <link role="baseMethodDeclaration:3" targetNodeId="32.~FileReader.&lt;init&gt;(java.lang.String)" resolveInfo="FileReader" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071610">
                      <property name="value:3" value="" />
                    </node>
                  </node>
                </node>
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071611">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071588" resolveInfo="r2" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071612">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071613">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071614">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071588" resolveInfo="r2" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071615">
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~Object.hashCode():int" resolveInfo="hashCode" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071616">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071617">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="6011730950863071618">
                  <link role="baseMethodDeclaration:3" targetNodeId="6011730950863071700" resolveInfo="nullF" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071619">
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071620">
                    <property name="value:3" value="" />
                  </node>
                </node>
                <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6011730950863071621">
                  <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="6011730950863071622" />
                </node>
              </node>
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="6011730950863071623">
            <property name="name:3" value="reader" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6011730950863071624">
              <link role="classifier:3" targetNodeId="32.~FileReader" resolveInfo="FileReader" />
            </node>
            <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="6011730950863071625">
              <link role="annotation:3" targetNodeId="45.~Nullable" resolveInfo="Nullable" />
            </node>
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="6011730950863071626">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="6011730950863071627">
              <property name="operationName:4" value="testWhile" />
            </node>
          </node>
          <node role="throwsItem:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="6011730950863071628">
            <link role="classifier:3" targetNodeId="32.~FileNotFoundException" resolveInfo="FileNotFoundException" />
          </node>
        </node>
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="6011730950863071629">
          <property name="name:3" value="test2" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6011730950863071630" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6011730950863071631" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071632">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6011730950863071633">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6011730950863071634">
                <property name="name:3" value="s" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6011730950863071635" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="6011730950863071636" />
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="6011730950863071637">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071638">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071639">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="6011730950863071640">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071641">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6011730950863071642">
                        <link role="variableDeclaration:3" targetNodeId="6011730950863071662" resolveInfo="s2" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071643">
                        <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071644">
                          <property name="value:3" value="" />
                        </node>
                      </node>
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071645">
                      <link role="variableDeclaration:3" targetNodeId="6011730950863071634" resolveInfo="s" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="6011730950863071646">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="6011730950863071647" />
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6011730950863071648">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071662" resolveInfo="s2" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="6011730950863071649">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071650">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="6011730950863071651" />
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="6011730950863071652">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="6011730950863071653" />
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071654">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071634" resolveInfo="s" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071655">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071656">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6011730950863071657">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071662" resolveInfo="s2" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071658">
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071659">
                    <property name="value:3" value="" />
                  </node>
                </node>
                <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6011730950863071660">
                  <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="6011730950863071661" />
                </node>
              </node>
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="6011730950863071662">
            <property name="name:3" value="s2" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6011730950863071663" />
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="6011730950863071664">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="6011730950863071665">
              <property name="operationName:4" value="testWrite" />
            </node>
          </node>
        </node>
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="6011730950863071666">
          <property name="name:3" value="testEqualsNull" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6011730950863071667" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6011730950863071668" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071669">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6011730950863071670">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6011730950863071671">
                <property name="name:3" value="s" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6011730950863071672" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="6011730950863071673">
                  <link role="baseMethodDeclaration:3" targetNodeId="6011730950863071700" resolveInfo="nullF" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="6011730950863071674">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071675">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071676">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071677">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071678">
                      <link role="variableDeclaration:3" targetNodeId="6011730950863071671" resolveInfo="s" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071679">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071680">
                        <property name="value:3" value="" />
                      </node>
                    </node>
                    <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6011730950863071681">
                      <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="6011730950863071682" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="6011730950863071683">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="6011730950863071684" />
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071685">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071671" resolveInfo="s" />
                </node>
              </node>
              <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="6011730950863071686">
                <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071687">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071688">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071689">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071690">
                        <link role="variableDeclaration:3" targetNodeId="6011730950863071671" resolveInfo="s" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071691">
                        <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071692">
                          <property name="value:3" value="" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071693">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071694">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071695">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071671" resolveInfo="s" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071696">
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071697">
                    <property name="value:3" value="" />
                  </node>
                </node>
                <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6011730950863071698">
                  <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="6011730950863071699" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="6011730950863071700">
          <property name="name:3" value="nullF" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6011730950863071701" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6011730950863071702" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071703">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="6011730950863071704">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="6011730950863071705" />
            </node>
          </node>
          <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="6011730950863071706">
            <link role="annotation:3" targetNodeId="45.~Nullable" resolveInfo="Nullable" />
          </node>
        </node>
        <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="6689253151531885669">
          <property name="name:3" value="testFor" />
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6689253151531885670" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6689253151531885671" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6689253151531885672">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForStatement:3" id="6689253151531885673">
              <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6689253151531885674">
                <property name="name:3" value="s" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6689253151531885675" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6689253151531885676">
                  <property name="value:3" value="" />
                </node>
              </node>
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6689253151531885677">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6689253151531885678">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6689253151531885679">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6689253151531885680">
                      <link role="variableDeclaration:3" targetNodeId="6689253151531885674" resolveInfo="s" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6689253151531885681">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~String.charAt(int):char" resolveInfo="charAt" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="6689253151531885682">
                        <property name="value:3" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="6689253151531885683">
                  <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6689253151531885684">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6689253151531885685">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="6689253151531885686">
                        <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6689253151531885687">
                          <link role="variableDeclaration:3" targetNodeId="6689253151531885674" resolveInfo="s" />
                        </node>
                        <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="6689253151531885688" />
                      </node>
                    </node>
                  </node>
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="6689253151531885689">
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6689253151531885690">
                      <property name="value:3" value="aaa" />
                    </node>
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6689253151531885691">
                      <link role="variableDeclaration:3" targetNodeId="6689253151531885674" resolveInfo="s" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="6689253151531885692">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="6689253151531885693" />
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6689253151531885694">
                  <link role="variableDeclaration:3" targetNodeId="6689253151531885674" resolveInfo="s" />
                </node>
              </node>
            </node>
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="6689253151531890255">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="6689253151531890256">
              <property name="operationName:4" value="testForLoop" />
            </node>
          </node>
        </node>
        <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="6011730950863071707">
          <property name="name:3" value="myNotNull" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="6011730950863071708" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6011730950863071709" />
          <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071710">
            <property name="value:3" value="" />
          </node>
          <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="6011730950863071711">
            <link role="annotation:3" targetNodeId="45.~NotNull" resolveInfo="NotNull" />
          </node>
        </node>
        <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="6011730950863071712">
          <property name="name:3" value="myNullable" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="6011730950863071713" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6011730950863071714" />
          <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071715">
            <property name="value:3" value="" />
          </node>
          <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="6011730950863071716">
            <link role="annotation:3" targetNodeId="45.~Nullable" resolveInfo="Nullable" />
          </node>
        </node>
        <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="6011730950863071717">
          <property name="name:3" value="myField" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="6011730950863071718" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6011730950863071719" />
          <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071720">
            <property name="value:3" value="" />
          </node>
        </node>
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6011730950863071721" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="6011730950863071722">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6011730950863071723" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6011730950863071724" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071725" />
        </node>
      </node>
    </node>
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="6011730950863071726">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="6011730950863071727">
        <property name="name:3" value="testAnnotationParam" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="6011730950863071728" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="6011730950863071729" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071730">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6011730950863071731">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6011730950863071732">
              <property name="name:3" value="s2" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6011730950863071733" />
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6011730950863071734">
                <link role="variableDeclaration:3" targetNodeId="6011730950863071777" resolveInfo="s" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="6011730950863071735">
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071736">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="6011730950863071737" />
            </node>
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="6011730950863071738">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="6011730950863071739" />
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071740">
                <link role="variableDeclaration:3" targetNodeId="6011730950863071732" resolveInfo="s2" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071741">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071742">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="6011730950863071743">
                <link role="classifier:3" targetNodeId="5.~System" resolveInfo="System" />
                <link role="variableDeclaration:3" targetNodeId="5.~System.out" resolveInfo="out" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071744">
                <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.print(java.lang.String):void" resolveInfo="print" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071745">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071746">
                    <link role="variableDeclaration:3" targetNodeId="6011730950863071732" resolveInfo="s2" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071747">
                    <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071748">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="6011730950863071749">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="6011730950863071750">
              <property name="name:3" value="s3" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6011730950863071751" />
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6011730950863071752">
                <link role="variableDeclaration:3" targetNodeId="6011730950863071777" resolveInfo="s" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="6011730950863071753">
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6011730950863071754">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="6011730950863071755" />
            </node>
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="6011730950863071756">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="6011730950863071757" />
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071758">
                <link role="variableDeclaration:3" targetNodeId="6011730950863071750" resolveInfo="s3" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071759">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071760">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="6011730950863071761">
                <link role="classifier:3" targetNodeId="5.~System" resolveInfo="System" />
                <link role="variableDeclaration:3" targetNodeId="5.~System.out" resolveInfo="out" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071762">
                <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.print(java.lang.String):void" resolveInfo="print" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071763">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="6011730950863071764">
                    <link role="variableDeclaration:3" targetNodeId="6011730950863071750" resolveInfo="s3" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071765">
                    <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071766">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="881045087146382200">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="881045087146382201">
              <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="881045087146382202">
                <link role="variableDeclaration:3" targetNodeId="6011730950863071777" resolveInfo="s" />
              </node>
              <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="881045087146382203">
                <link role="variableDeclaration:3" targetNodeId="6011730950863071732" resolveInfo="s2" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="6011730950863071767">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071768">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="6011730950863071769">
                <link role="classifier:3" targetNodeId="5.~System" resolveInfo="System" />
                <link role="variableDeclaration:3" targetNodeId="5.~System.out" resolveInfo="out" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071770">
                <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.print(java.lang.String):void" resolveInfo="print" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6011730950863071771">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="6011730950863071772">
                    <link role="variableDeclaration:3" targetNodeId="6011730950863071777" resolveInfo="s" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="6011730950863071773">
                    <link role="baseMethodDeclaration:3" targetNodeId="5.~String.concat(java.lang.String):java.lang.String" resolveInfo="concat" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="6011730950863071774">
                      <property name="value:3" value="2" />
                    </node>
                  </node>
                  <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="6011730950863071775">
                    <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="6011730950863071776" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="881045087146382167">
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="881045087146382168">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="881045087146382186" />
            </node>
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.OrExpression:3" id="881045087146382172">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="881045087146382176">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="881045087146382175">
                  <property name="value:3" value="3" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="881045087146382182">
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="881045087146382185">
                    <property name="value:3" value="1" />
                  </node>
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="881045087146382181">
                    <property name="value:3" value="2" />
                  </node>
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="881045087146382187">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="881045087146382190" />
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="881045087146382198">
                  <link role="variableDeclaration:3" targetNodeId="6011730950863071732" resolveInfo="s2" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="881045087146382205">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="881045087146382207">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="881045087146382206">
                <link role="variableDeclaration:3" targetNodeId="6011730950863071732" resolveInfo="s2" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="881045087146383336">
                <link role="baseMethodDeclaration:3" targetNodeId="5.~String.charAt(int):char" resolveInfo="charAt" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="881045087146383337">
                  <property name="value:3" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="6011730950863071777">
          <property name="name:3" value="s" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="6011730950863071778" />
          <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="6011730950863071779">
            <link role="annotation:3" targetNodeId="45.~Nullable" resolveInfo="Nullable" />
          </node>
        </node>
        <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="6011730950863071780">
          <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="6011730950863071781">
            <property name="operationName:4" value="testAnnotationParam" />
          </node>
        </node>
      </node>
    </node>
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="3383816410303507421">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="3383816410303507422">
        <property name="name:3" value="testAnnotationParam" />
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="3383816410303507423" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="3383816410303507424" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="3383816410303507425">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="3383816410303507426">
            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="3383816410303507427">
              <property name="name:3" value="s2" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="3383816410303507428" />
              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="3383816410303507429">
                <link role="variableDeclaration:3" targetNodeId="3383816410303507493" resolveInfo="s" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="3383816410303582315">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3383816410303583261">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="3383816410303582316">
                <link role="classifier:3" targetNodeId="5.~System" resolveInfo="System" />
                <link role="variableDeclaration:3" targetNodeId="5.~System.out" resolveInfo="out" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3383816410303583265">
                <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.print(char):void" resolveInfo="print" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="3383816410303583266">
                  <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3383816410303583267">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="3383816410303583268">
                      <link role="variableDeclaration:3" targetNodeId="3383816410303507427" resolveInfo="s2" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3383816410303583269">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~String.charAt(int):char" resolveInfo="charAt" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="3383816410303583270">
                        <property name="value:3" value="2" />
                      </node>
                    </node>
                    <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="3383816410303583278">
                      <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="3383816410303583279" />
                    </node>
                  </node>
                  <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3383816410303583271">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="3383816410303583272">
                      <link role="variableDeclaration:3" targetNodeId="3383816410303507427" resolveInfo="s2" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3383816410303583273">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~String.charAt(int):char" resolveInfo="charAt" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="3383816410303583274">
                        <property name="value:3" value="2" />
                      </node>
                    </node>
                  </node>
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="3383816410303583275">
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="3383816410303583276" />
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="3383816410303583277">
                      <link role="variableDeclaration:3" targetNodeId="3383816410303507427" resolveInfo="s2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="3383816410303583326">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3383816410303583327">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="3383816410303583328">
                <link role="classifier:3" targetNodeId="5.~System" resolveInfo="System" />
                <link role="variableDeclaration:3" targetNodeId="5.~System.out" resolveInfo="out" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3383816410303583329">
                <link role="baseMethodDeclaration:3" targetNodeId="32.~PrintStream.print(char):void" resolveInfo="print" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="3383816410303583330">
                  <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3383816410303583331">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="3383816410303583332">
                      <link role="variableDeclaration:3" targetNodeId="3383816410303507427" resolveInfo="s2" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3383816410303583333">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~String.charAt(int):char" resolveInfo="charAt" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="3383816410303583334">
                        <property name="value:3" value="2" />
                      </node>
                    </node>
                  </node>
                  <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3383816410303583335">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="3383816410303583336">
                      <link role="variableDeclaration:3" targetNodeId="3383816410303507427" resolveInfo="s2" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3383816410303583337">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~String.charAt(int):char" resolveInfo="charAt" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="3383816410303583338">
                        <property name="value:3" value="2" />
                      </node>
                    </node>
                    <node role="nodePropertiesMarker$attribute:3" type="jetbrains.mps.lang.test.structure.NodePropertiesContainer:4" id="3383816410303583339">
                      <node role="properties:4" type="jetbrains.mps.lang.test.structure.NodeErrorPropety:4" id="3383816410303583340" />
                    </node>
                  </node>
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="3383816410303583341">
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="3383816410303583342">
                      <link role="variableDeclaration:3" targetNodeId="3383816410303507427" resolveInfo="s2" />
                    </node>
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="3383816410303583343" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="3383816410303507493">
          <property name="name:3" value="s" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="3383816410303507494" />
          <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="3383816410303507495">
            <link role="annotation:3" targetNodeId="45.~Nullable" resolveInfo="Nullable" />
          </node>
        </node>
        <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="3383816410303507496">
          <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="3383816410303507497">
            <property name="operationName:4" value="testTernaryOperation" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.test.structure.NodesTestCase:4" id="9092976468699800028">
    <property name="package:4" value="dataFlow.unreachable" />
    <property name="name:4" value="ForBreakUnreachable" />
    <node role="nodesToCheck:4" type="jetbrains.mps.lang.test.structure.TestNode:4" id="9092976468699800029">
      <node role="nodeToCheck:4" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="9092976468699800030">
        <property name="name:3" value="Class1" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="9092976468699800031" />
        <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="9092976468699800032">
          <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="9092976468699800033" />
          <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="9092976468699800034" />
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="9092976468699800035">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForStatement:3" id="9092976468699817059">
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="9092976468699817060">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.BreakStatement:3" id="9092976468699817074" />
              </node>
              <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="9092976468699817062">
                <property name="name:3" value="i" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="9092976468699817063" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="9092976468699817065">
                  <property name="value:3" value="1" />
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LessThanExpression:3" id="9092976468699817067">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="9092976468699817070">
                  <property name="value:3" value="10" />
                </node>
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="9092976468699817066">
                  <link role="variableDeclaration:3" targetNodeId="9092976468699817062" resolveInfo="i" />
                </node>
              </node>
              <node role="iteration:3" type="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression:3" id="9092976468699817072">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="9092976468699817073">
                  <link role="variableDeclaration:3" targetNodeId="9092976468699817062" resolveInfo="i" />
                </node>
              </node>
            </node>
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="9092976468699800066">
            <property name="name:3" value="a" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="9092976468699800067" />
          </node>
          <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="9092976468699800068">
            <property name="name:3" value="b" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="9092976468699800069" />
          </node>
          <node role="nodeOpraretionsMark$attribute:3" type="jetbrains.mps.lang.test.structure.NodeOperationsContainer:4" id="9092976468699800070">
            <node role="operations:4" type="jetbrains.mps.lang.test.structure.TypesCheckOperation:4" id="9092976468699800071" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


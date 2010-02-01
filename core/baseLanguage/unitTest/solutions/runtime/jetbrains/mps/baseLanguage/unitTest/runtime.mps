<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c89590405(jetbrains.mps.baseLanguage.unitTest.runtime)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="daafa647-f1f7-4b0b-b096-69cd7c8408c0(jetbrains.mps.baseLanguage.regexp)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590515(jetbrains.mps.baseLanguage.regexp.constraints)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903e4(jetbrains.mps.internal.collections.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590518(jetbrains.mps.baseLanguage.regexp.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903fe(jetbrains.mps.baseLanguage.strings.constraints)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590402(jetbrains.mps.baseLanguage.strings.structure)" version="9" />
  <maxImportIndex value="10" />
  <import index="1" modelUID="f:java_stub#junit.framework(junit.framework@java_stub)" version="-1" />
  <import index="2" modelUID="f:java_stub#junit.runner(junit.runner@java_stub)" version="-1" />
  <import index="3" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="4" modelUID="f:java_stub#java.io(java.io@java_stub)" version="-1" />
  <import index="8" modelUID="f:java_stub#java.util(java.util@java_stub)" version="-1" />
  <import index="9" modelUID="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" version="-1" />
  <import index="10" modelUID="f:java_stub#java.lang.reflect(java.lang.reflect@java_stub)" version="-1" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1208532148294">
    <property name="name:3" value="TestRunner" />
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208533712555">
      <property name="name:3" value="start" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208534037033" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208533717116" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208533712558">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208535008650">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208535008651">
            <property name="name:3" value="tests" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="1208535008652">
              <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208535014378">
                <link role="classifier:3" targetNodeId="1.~Test" resolveInfo="Test" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1208535020365">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit:7" id="1208535020366">
                <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208535020367">
                  <link role="classifier:3" targetNodeId="1.~Test" resolveInfo="Test" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForStatement:3" id="1208534515027">
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208534515028">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1208534559664">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208534559665">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208534691408">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression:3" id="1238145919775">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1238145919776">
                      <link role="variableDeclaration:3" targetNodeId="1208534515030" resolveInfo="i" />
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208535052408">
                  <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208535052409">
                    <property name="name:3" value="test" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208535052410">
                      <link role="classifier:3" targetNodeId="1.~Test" resolveInfo="Test" />
                    </node>
                    <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208535060075">
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208535060076">
                        <link role="baseMethodDeclaration:3" targetNodeId="2.~BaseTestRunner.getTest(java.lang.String):junit.framework.Test" resolveInfo="getTest" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1208535072411">
                          <node role="index:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208535072412">
                            <link role="variableDeclaration:3" targetNodeId="1208534515030" resolveInfo="i" />
                          </node>
                          <node role="array:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208535072413">
                            <link role="variableDeclaration:3" targetNodeId="1208533744199" resolveInfo="argv" />
                          </node>
                        </node>
                      </node>
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208535060077" />
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208535083998">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208535084538">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208535083999">
                      <link role="variableDeclaration:3" targetNodeId="1208535008651" resolveInfo="tests" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation:7" id="1208535086354">
                      <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208535088632">
                        <link role="variableDeclaration:3" targetNodeId="1208535052409" resolveInfo="test" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208534572907">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208534574948">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1208534563866">
                    <node role="index:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208534567812">
                      <link role="variableDeclaration:3" targetNodeId="1208534515030" resolveInfo="i" />
                    </node>
                    <node role="array:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208534562884">
                      <link role="variableDeclaration:3" targetNodeId="1208533744199" resolveInfo="argv" />
                    </node>
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1208534575447">
                  <property name="value:3" value="-c" />
                </node>
              </node>
              <node role="elsifClauses:3" type="jetbrains.mps.baseLanguage.structure.ElsifClause:3" id="1208534710940">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208534716146">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1208534714799">
                    <property name="value:3" value="-m" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208534717788">
                    <link role="baseMethodDeclaration:3" targetNodeId="3.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1208534722883">
                      <node role="index:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208534723921">
                        <link role="variableDeclaration:3" targetNodeId="1208534515030" resolveInfo="i" />
                      </node>
                      <node role="array:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208534722274">
                        <link role="variableDeclaration:3" targetNodeId="1208533744199" resolveInfo="argv" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statementList:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208534710942">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208534727237">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression:3" id="1238145920661">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1238145920662">
                        <link role="variableDeclaration:3" targetNodeId="1208534515030" resolveInfo="i" />
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208534744571">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208534744572">
                      <property name="name:3" value="s" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195948729" />
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1208534749895">
                        <node role="index:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208534751007">
                          <link role="variableDeclaration:3" targetNodeId="1208534515030" resolveInfo="i" />
                        </node>
                        <node role="array:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208534749352">
                          <link role="variableDeclaration:3" targetNodeId="1208533744199" resolveInfo="argv" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208534767068">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208534767069">
                      <property name="name:3" value="index" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1208534767070" />
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208534774599">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208534774566">
                          <link role="variableDeclaration:3" targetNodeId="1208534744572" resolveInfo="s" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208534781619">
                          <link role="baseMethodDeclaration:3" targetNodeId="3.~String.lastIndexOf(int):int" resolveInfo="lastIndexOf" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="1208534782003">
                            <property name="charConstant:3" value="." />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208534490394">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208534490395">
                      <property name="name:3" value="testCase" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195953834" />
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208535253248">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208535253249">
                          <link role="variableDeclaration:3" targetNodeId="1208534744572" resolveInfo="s" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208535253250">
                          <link role="baseMethodDeclaration:3" targetNodeId="3.~String.substring(int,int):java.lang.String" resolveInfo="substring" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1208535253251">
                            <property name="value:3" value="0" />
                          </node>
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208535253252">
                            <link role="variableDeclaration:3" targetNodeId="1208534767069" resolveInfo="index" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208534496219">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208534496220">
                      <property name="name:3" value="method" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195957577" />
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208535259362">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208535259363">
                          <link role="variableDeclaration:3" targetNodeId="1208534744572" resolveInfo="s" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208535259364">
                          <link role="baseMethodDeclaration:3" targetNodeId="3.~String.substring(int):java.lang.String" resolveInfo="substring" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1208535259365">
                            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1208535259366">
                              <property name="value:3" value="1" />
                            </node>
                            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208535259367">
                              <link role="variableDeclaration:3" targetNodeId="1208534767069" resolveInfo="index" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208535274165">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208535274166">
                      <property name="name:3" value="testClass" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208535274167">
                        <link role="classifier:3" targetNodeId="3.~Class" resolveInfo="Class" />
                        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.UpperBoundType:3" id="1208535279067">
                          <node role="bound:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208535282178">
                            <link role="classifier:3" targetNodeId="1.~TestCase" resolveInfo="TestCase" />
                          </node>
                        </node>
                      </node>
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208535289355">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208535289356">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~BaseTestRunner.loadSuiteClass(java.lang.String):java.lang.Class" resolveInfo="loadSuiteClass" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208535292377">
                            <link role="variableDeclaration:3" targetNodeId="1208534490395" resolveInfo="testCase" />
                          </node>
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208535289357" />
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208535319549">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208535319550">
                      <property name="name:3" value="test" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208535319551">
                        <link role="classifier:3" targetNodeId="1.~Test" resolveInfo="Test" />
                      </node>
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1208535332481">
                        <link role="baseMethodDeclaration:3" targetNodeId="1.~TestSuite.createTest(java.lang.Class,java.lang.String):junit.framework.Test" resolveInfo="createTest" />
                        <link role="classConcept:3" targetNodeId="1.~TestSuite" resolveInfo="TestSuite" />
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208535338855">
                          <link role="variableDeclaration:3" targetNodeId="1208535274166" resolveInfo="testClass" />
                        </node>
                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208535346216">
                          <link role="variableDeclaration:3" targetNodeId="1208534496220" resolveInfo="method" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208535354556">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208535358228">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208535357653">
                        <link role="variableDeclaration:3" targetNodeId="1208535008651" resolveInfo="tests" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation:7" id="1208535359503">
                        <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208535361364">
                          <link role="variableDeclaration:3" targetNodeId="1208535319550" resolveInfo="test" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208534515030">
            <property name="name:3" value="i" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1208534516099" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1208534520680">
              <property name="value:3" value="0" />
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LessThanExpression:3" id="1208534524047">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208944224561">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208534525713">
                <link role="variableDeclaration:3" targetNodeId="1208533744199" resolveInfo="argv" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation:3" id="1208944227588" />
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208534522706">
              <link role="variableDeclaration:3" targetNodeId="1208534515030" resolveInfo="i" />
            </node>
          </node>
          <node role="iteration:3" type="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression:3" id="1238145923615">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1238145923616">
              <link role="variableDeclaration:3" targetNodeId="1208534515030" resolveInfo="i" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208537978985">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208537978986">
            <property name="name:3" value="testResult" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208537978987">
              <link role="classifier:3" targetNodeId="1.~TestResult" resolveInfo="TestResult" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1216138766162">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="3467804703472964776">
                <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="3467804703472964777">
                  <property name="nonStatic:3" value="true" />
                  <link role="classifier:3" targetNodeId="1.~TestResult" resolveInfo="TestResult" />
                  <link role="baseMethodDeclaration:3" targetNodeId="1.~TestResult.&lt;init&gt;()" resolveInfo="TestResult" />
                  <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="3467804703472964778" />
                  <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="3467804703472964779">
                    <property name="name:3" value="run" />
                    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.ProtectedVisibility:3" id="3467804703472964780" />
                    <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="3467804703472964781" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="3467804703472964782">
                      <property name="name:3" value="test" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="3467804703472964783">
                        <link role="classifier:3" targetNodeId="1.~TestCase" resolveInfo="TestCase" />
                      </node>
                    </node>
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="3467804703472964784">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.TryCatchStatement:3" id="3467804703473062666">
                        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="3467804703473062667">
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="3467804703473062617">
                            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="3467804703473062618">
                              <property name="name:3" value="method" />
                              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="3467804703473062619">
                                <link role="classifier:3" targetNodeId="10.~Method" resolveInfo="Method" />
                              </node>
                              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3467804703473062640">
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3467804703473062635">
                                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="3467804703473062634">
                                    <link role="variableDeclaration:3" targetNodeId="3467804703472964782" resolveInfo="test" />
                                  </node>
                                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3467804703473062639">
                                    <link role="baseMethodDeclaration:3" targetNodeId="3.~Object.getClass():java.lang.Class" resolveInfo="getClass" />
                                  </node>
                                </node>
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3467804703473062644">
                                  <link role="baseMethodDeclaration:3" targetNodeId="3.~Class.getMethod(java.lang.String,java.lang.Class...):java.lang.reflect.Method" resolveInfo="getMethod" />
                                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3467804703473062646">
                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="3467804703473062645">
                                      <link role="variableDeclaration:3" targetNodeId="3467804703472964782" resolveInfo="test" />
                                    </node>
                                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3467804703473062650">
                                      <link role="baseMethodDeclaration:3" targetNodeId="1.~TestCase.getName():java.lang.String" resolveInfo="getName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="3467804703473062654">
                            <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="3467804703473062655">
                              <property name="name:3" value="isAbstractClass" />
                              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="3467804703473062656" />
                              <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="3467804703473062658">
                                <link role="baseMethodDeclaration:3" targetNodeId="10.~Modifier.isAbstract(int):boolean" resolveInfo="isAbstract" />
                                <link role="classConcept:3" targetNodeId="10.~Modifier" resolveInfo="Modifier" />
                                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3467804703473062659">
                                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3467804703473062660">
                                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3467804703473062661">
                                      <link role="baseMethodDeclaration:3" targetNodeId="10.~Method.getDeclaringClass():java.lang.Class" resolveInfo="getDeclaringClass" />
                                    </node>
                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="3467804703473062662">
                                      <link role="variableDeclaration:3" targetNodeId="3467804703473062618" resolveInfo="method" />
                                    </node>
                                  </node>
                                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3467804703473062663">
                                    <link role="baseMethodDeclaration:3" targetNodeId="3.~Class.getModifiers():int" resolveInfo="getModifiers" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="3467804703472971097">
                            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="3467804703472971098">
                              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="3467804703472971109" />
                            </node>
                            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="3467804703473062664">
                              <link role="variableDeclaration:3" targetNodeId="3467804703473062655" resolveInfo="isAbstractClass" />
                            </node>
                          </node>
                        </node>
                        <node role="catchClause:3" type="jetbrains.mps.baseLanguage.structure.CatchClause:3" id="3467804703473062669">
                          <node role="throwable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="3467804703473062670">
                            <property name="name:3" value="e" />
                            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="3467804703473062674">
                              <link role="classifier:3" targetNodeId="3.~NoSuchMethodException" resolveInfo="NoSuchMethodException" />
                            </node>
                          </node>
                          <node role="catchBody:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="3467804703473062672" />
                        </node>
                      </node>
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="3467804703472964786">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.SuperMethodCall:3" id="3467804703472964787">
                          <link role="baseMethodDeclaration:3" targetNodeId="1.~TestResult.run(junit.framework.TestCase):void" resolveInfo="run" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="3467804703472964788">
                            <link role="variableDeclaration:3" targetNodeId="3467804703472964782" resolveInfo="test" />
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
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208869878371">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208869878372">
            <property name="name:3" value="out" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208869878373">
              <link role="classifier:3" targetNodeId="1208869019719" resolveInfo="CommandOutputStream" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1216138771399">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1216138771432">
                <link role="baseMethodDeclaration:3" targetNodeId="1208869162850" resolveInfo="CommandOutputStream" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1208869891533">
                  <link role="classifier:3" targetNodeId="3.~System" resolveInfo="System" />
                  <link role="variableDeclaration:3" targetNodeId="3.~System.out" resolveInfo="out" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208869898226">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208869898227">
            <property name="name:3" value="err" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208869898228">
              <link role="classifier:3" targetNodeId="1208869019719" resolveInfo="CommandOutputStream" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1216138776074">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1216138776076">
                <link role="baseMethodDeclaration:3" targetNodeId="1208869162850" resolveInfo="CommandOutputStream" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1208869904927">
                  <link role="classifier:3" targetNodeId="3.~System" resolveInfo="System" />
                  <link role="variableDeclaration:3" targetNodeId="3.~System.err" resolveInfo="err" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208869919286">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1208869922294">
            <link role="baseMethodDeclaration:3" targetNodeId="3.~System.setOut(java.io.PrintStream):void" resolveInfo="setOut" />
            <link role="classConcept:3" targetNodeId="3.~System" resolveInfo="System" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1216138780234">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1216138780251">
                <link role="baseMethodDeclaration:3" targetNodeId="4.~PrintStream.&lt;init&gt;(java.io.OutputStream)" resolveInfo="PrintStream" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208869936891">
                  <link role="variableDeclaration:3" targetNodeId="1208869878372" resolveInfo="out" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208869941047">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1208869942642">
            <link role="baseMethodDeclaration:3" targetNodeId="3.~System.setErr(java.io.PrintStream):void" resolveInfo="setErr" />
            <link role="classConcept:3" targetNodeId="3.~System" resolveInfo="System" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1216138783081">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1216138783083">
                <link role="baseMethodDeclaration:3" targetNodeId="4.~PrintStream.&lt;init&gt;(java.io.OutputStream)" resolveInfo="PrintStream" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208869953469">
                  <link role="variableDeclaration:3" targetNodeId="1208869898227" resolveInfo="err" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208538862703">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208538864037">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208538862704">
              <link role="variableDeclaration:3" targetNodeId="1208537978986" resolveInfo="testResult" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208538868326">
              <link role="baseMethodDeclaration:3" targetNodeId="1.~TestResult.addListener(junit.framework.TestListener):void" resolveInfo="addListener" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1216138785646">
                <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1216138785648">
                  <link role="baseMethodDeclaration:3" targetNodeId="1208538852141" resolveInfo="MyTestListener" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208869912664">
                    <link role="variableDeclaration:3" targetNodeId="1208869878372" resolveInfo="out" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208869913998">
                    <link role="variableDeclaration:3" targetNodeId="1208869898227" resolveInfo="err" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement:7" id="1208535373939">
          <node role="variable:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable:7" id="1208535373940">
            <property name="name:7" value="test" />
          </node>
          <node role="inputSequence:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208535376927">
            <link role="variableDeclaration:3" targetNodeId="1208535008651" resolveInfo="tests" />
          </node>
          <node role="body:7" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208535373942">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="3402001546485224335">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="3402001546485224336">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="3402001546485225041">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="3402001546485225043">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="3402001546485225042">
                      <link role="classifier:3" targetNodeId="3.~System" resolveInfo="System" />
                      <link role="variableDeclaration:3" targetNodeId="3.~System.err" resolveInfo="err" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="3402001546485225047">
                      <link role="baseMethodDeclaration:3" targetNodeId="4.~PrintStream.println(java.lang.String):void" resolveInfo="println" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="3402001546485225048">
                        <property name="value:3" value="Can't run. Test is Null" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ContinueStatement:3" id="3402001546485875248" />
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="3402001546485224347">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="3402001546485224351" />
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="3402001546485224339">
                  <link role="variable:7" targetNodeId="1208535373940" resolveInfo="test" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="4098745120222609293">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4098745120222609294">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4098745120222609317">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4098745120222609994">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="4098745120222609318">
                      <link role="classifier:3" targetNodeId="3.~System" resolveInfo="System" />
                      <link role="variableDeclaration:3" targetNodeId="3.~System.err" resolveInfo="err" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4098745120222609998">
                      <link role="baseMethodDeclaration:3" targetNodeId="4.~PrintStream.println(java.lang.String):void" resolveInfo="println" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="4098745120222610000">
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4098745120222610015">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4098745120222610006">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4098745120222610003">
                              <link role="variable:7" targetNodeId="1208535373940" resolveInfo="test" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4098745120222610012">
                              <link role="baseMethodDeclaration:3" targetNodeId="3.~Object.getClass():java.lang.Class" resolveInfo="getClass" />
                            </node>
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4098745120222610021">
                            <link role="baseMethodDeclaration:3" targetNodeId="3.~Class.getName():java.lang.String" resolveInfo="getName" />
                          </node>
                        </node>
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="4098745120222609999">
                          <property name="value:3" value="No tests found in " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ContinueStatement:3" id="4098745120222610023" />
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="4098745120222609311">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="4098745120222609315">
                  <property name="value:3" value="0" />
                </node>
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4098745120222609300">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="4098745120222609297">
                    <link role="variable:7" targetNodeId="1208535373940" resolveInfo="test" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4098745120222609307">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.~Test.countTestCases():int" resolveInfo="countTestCases" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208537962350">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208537964970">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="1208537962351">
                  <link role="variable:7" targetNodeId="1208535373940" resolveInfo="test" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208537966583">
                  <link role="baseMethodDeclaration:3" targetNodeId="1.~Test.run(junit.framework.TestResult):void" resolveInfo="run" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208537994322">
                    <link role="variableDeclaration:3" targetNodeId="1208537978986" resolveInfo="testResult" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208533744199">
        <property name="name:3" value="argv" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ArrayType:3" id="1208533745614">
          <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195957107" />
        </node>
      </node>
      <node role="throwsItem:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208534031358">
        <link role="classifier:3" targetNodeId="3.~Throwable" resolveInfo="Throwable" />
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208536233460">
      <property name="name:3" value="testFailed" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208536233461" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208536233462" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208536233463">
        <property name="name:3" value="status" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1208536233464" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208536233465">
        <property name="name:3" value="test" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208536233466">
          <link role="classifier:3" targetNodeId="1.~Test" resolveInfo="Test" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208536233467">
        <property name="name:3" value="t" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208536233468">
          <link role="classifier:3" targetNodeId="3.~Throwable" resolveInfo="Throwable" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208536233469" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208536213094">
      <property name="name:3" value="testStarted" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208536213095" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208536213096" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208536213097">
        <property name="name:3" value="testName" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195947320" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208536213099" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208536252031">
      <property name="name:3" value="testEnded" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208536252032" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208536252033" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208536252034">
        <property name="name:3" value="testName" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195946380" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208536252036" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208536279797">
      <property name="name:3" value="runFailed" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208536279798" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208536279799" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208536279800">
        <property name="name:3" value="message" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195959910" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208536279802" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1208533676013">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208533676014" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208533676015" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208533676016" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1208532401638">
      <property name="name:3" value="main" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208532401639" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208532401640" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208532401641">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208533656063">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208533656064">
            <property name="name:3" value="runner" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208533656065">
              <link role="classifier:3" targetNodeId="1208532148294" resolveInfo="TestRunner" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1216142229177">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1216142229179">
                <link role="baseMethodDeclaration:3" targetNodeId="1208533676013" resolveInfo="TestRunner" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.TryCatchStatement:3" id="1208533695884">
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208533695885">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208534056124">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208534056988">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208534056989">
                  <link role="variableDeclaration:3" targetNodeId="1208533656064" resolveInfo="runner" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208534056990">
                  <link role="baseMethodDeclaration:3" targetNodeId="1208533712555" resolveInfo="start" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208534056991">
                    <link role="variableDeclaration:3" targetNodeId="1208532410181" resolveInfo="argv" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="catchClause:3" type="jetbrains.mps.baseLanguage.structure.CatchClause:3" id="1208533695887">
            <node role="throwable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208533695888">
              <property name="name:3" value="t" />
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208533854297">
                <link role="classifier:3" targetNodeId="3.~Throwable" resolveInfo="Throwable" />
              </node>
            </node>
            <node role="catchBody:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208533695890">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1209031340423">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1209031340852">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1209031340424">
                    <link role="variableDeclaration:3" targetNodeId="1208533695888" resolveInfo="t" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1209031348153">
                    <link role="baseMethodDeclaration:3" targetNodeId="3.~Throwable.printStackTrace(java.io.PrintStream):void" resolveInfo="printStackTrace" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1209031350203">
                      <link role="classifier:3" targetNodeId="3.~System" resolveInfo="System" />
                      <link role="variableDeclaration:3" targetNodeId="3.~System.err" resolveInfo="err" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208533880578">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1208533882546">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~System.exit(int):void" resolveInfo="exit" />
                  <link role="classConcept:3" targetNodeId="3.~System" resolveInfo="System" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1208533887435">
                    <property name="value:3" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208532410181">
        <property name="name:3" value="argv" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ArrayType:3" id="1208532411340">
          <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195954774" />
        </node>
      </node>
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208532148295" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208532287571">
      <link role="classifier:3" targetNodeId="2.~BaseTestRunner" resolveInfo="BaseTestRunner" />
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1208538259229">
    <property name="name:3" value="MyTestListener" />
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1208869960411">
      <property name="name:3" value="out" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1208869960412" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208869964110">
        <link role="classifier:3" targetNodeId="1208869019719" resolveInfo="CommandOutputStream" />
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1208869967391">
      <property name="name:3" value="err" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1208869967392" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208869969553">
        <link role="classifier:3" targetNodeId="1208869019719" resolveInfo="CommandOutputStream" />
      </node>
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1208538852141">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208538852142" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208538852143" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208538852144">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208869985005">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208869985720">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869988428">
              <link role="variableDeclaration:3" targetNodeId="1208869976404" resolveInfo="out" />
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869985006">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208869985007">
                <link role="fieldDeclaration:3" targetNodeId="1208869960411" resolveInfo="out" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208869985008" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208869990470">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208869991243">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869998005">
              <link role="variableDeclaration:3" targetNodeId="1208869977852" resolveInfo="err" />
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869990471">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208869990472">
                <link role="fieldDeclaration:3" targetNodeId="1208869967391" resolveInfo="err" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208869990473" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208869976404">
        <property name="name:3" value="out" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208869976405">
          <link role="classifier:3" targetNodeId="1208869019719" resolveInfo="CommandOutputStream" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208869977852">
        <property name="name:3" value="err" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208869981431">
          <link role="classifier:3" targetNodeId="1208869019719" resolveInfo="CommandOutputStream" />
        </node>
      </node>
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208538259230" />
    <node role="implementedInterface:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208538278894">
      <link role="classifier:3" targetNodeId="1.~TestListener" resolveInfo="TestListener" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208538281819">
      <property name="name:3" value="startTest" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208538281820" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208538281821" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208538281822">
        <property name="name:3" value="test" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208538281823">
          <link role="classifier:3" targetNodeId="1.~Test" resolveInfo="Test" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208538281824">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208785770525">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208785770526">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208785770527">
              <link role="baseMethodDeclaration:3" targetNodeId="1208785695409" resolveInfo="printSyncToken" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1208864748035">
                <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="Token" />
                <link role="variableDeclaration:3" targetNodeId="1208864505391" resolveInfo="START_TEST_PREFIX" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208859022647">
                <link role="variableDeclaration:3" targetNodeId="1208538281822" resolveInfo="test" />
              </node>
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208785770528" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208538281825">
      <property name="name:3" value="addError" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208538281826" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208538281827" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208538281828">
        <property name="name:3" value="test" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208538281829">
          <link role="classifier:3" targetNodeId="1.~Test" resolveInfo="Test" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208538281830">
        <property name="name:3" value="t" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208538281831">
          <link role="classifier:3" targetNodeId="3.~Throwable" resolveInfo="Throwable" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208538281832">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208785783601">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208785783602">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208785783603">
              <link role="baseMethodDeclaration:3" targetNodeId="1208785695409" resolveInfo="printSyncToken" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1208864764987">
                <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="Token" />
                <link role="variableDeclaration:3" targetNodeId="1208864505399" resolveInfo="ERROR_TEST_PREFIX" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208859019067">
                <link role="variableDeclaration:3" targetNodeId="1208538281828" resolveInfo="test" />
              </node>
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208785783604" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208538780190">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208538780502">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208538780191">
              <link role="variableDeclaration:3" targetNodeId="1208538281830" resolveInfo="t" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208538785724">
              <link role="baseMethodDeclaration:3" targetNodeId="3.~Throwable.printStackTrace(java.io.PrintStream):void" resolveInfo="printStackTrace" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1208538787710">
                <link role="classifier:3" targetNodeId="3.~System" resolveInfo="System" />
                <link role="variableDeclaration:3" targetNodeId="3.~System.err" resolveInfo="err" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208785804812">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208785804813">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208785804814">
              <link role="baseMethodDeclaration:3" targetNodeId="1208785695409" resolveInfo="printSyncToken" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1208864767474">
                <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="Token" />
                <link role="variableDeclaration:3" targetNodeId="1208864505404" resolveInfo="ERROR_TEST_SUFFIX" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208859015966">
                <link role="variableDeclaration:3" targetNodeId="1208538281828" resolveInfo="test" />
              </node>
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208785804815" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208538281834">
      <property name="name:3" value="addFailure" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208538281835" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208538281836" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208538281837">
        <property name="name:3" value="test" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208538281838">
          <link role="classifier:3" targetNodeId="1.~Test" resolveInfo="Test" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208538281839">
        <property name="name:3" value="a" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208538281840">
          <link role="classifier:3" targetNodeId="1.~AssertionFailedError" resolveInfo="AssertionFailedError" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208538281841">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208538793942">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208538793943">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208785822458" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208538793945">
              <link role="baseMethodDeclaration:3" targetNodeId="1208785695409" resolveInfo="printSyncToken" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1208864769947">
                <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="Token" />
                <link role="variableDeclaration:3" targetNodeId="1208864505408" resolveInfo="FAILURE_TEST_PREFIX" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208859011943">
                <link role="variableDeclaration:3" targetNodeId="1208538281837" resolveInfo="test" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208538793947">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208538793948">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208538797903">
              <link role="variableDeclaration:3" targetNodeId="1208538281839" resolveInfo="a" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208538793950">
              <link role="baseMethodDeclaration:3" targetNodeId="3.~Throwable.printStackTrace(java.io.PrintStream):void" resolveInfo="printStackTrace" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1208538793951">
                <link role="classifier:3" targetNodeId="3.~System" resolveInfo="System" />
                <link role="variableDeclaration:3" targetNodeId="3.~System.err" resolveInfo="err" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208538793952">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208538793953">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208785824444" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208538793955">
              <link role="baseMethodDeclaration:3" targetNodeId="1208785695409" resolveInfo="printSyncToken" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1208864771852">
                <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="Token" />
                <link role="variableDeclaration:3" targetNodeId="1208864505412" resolveInfo="FAILURE_TEST_SUFFIX" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208859008408">
                <link role="variableDeclaration:3" targetNodeId="1208538281837" resolveInfo="test" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208538281811">
      <property name="name:3" value="endTest" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208538281812" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208538281813" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208538281814">
        <property name="name:3" value="test" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208538281815">
          <link role="classifier:3" targetNodeId="1.~Test" resolveInfo="Test" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208538281816">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208538585156">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208538587127">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208785836324" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208538593297">
              <link role="baseMethodDeclaration:3" targetNodeId="1208785695409" resolveInfo="printSyncToken" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference:3" id="1208864774077">
                <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="Token" />
                <link role="variableDeclaration:3" targetNodeId="1208864505395" resolveInfo="END_TEST_PREFIX" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208859000956">
                <link role="variableDeclaration:3" targetNodeId="1208538281814" resolveInfo="test" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208785695409">
      <property name="name:3" value="printSyncToken" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208785695410" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1208785697880" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208785695412">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208863110060">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208863110061">
            <property name="name:3" value="token" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208863110062">
              <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="Token" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1216138791494">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1216138791496">
                <link role="baseMethodDeclaration:3" targetNodeId="1208860684897" resolveInfo="TestEvent" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208863125978">
                  <link role="variableDeclaration:3" targetNodeId="1208785707932" resolveInfo="token" />
                </node>
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208863128212">
                  <link role="variableDeclaration:3" targetNodeId="1208858784239" resolveInfo="test" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208858938580">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208858938581">
            <property name="name:3" value="out" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195964076" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208860498085">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208863446846">
                <link role="variableDeclaration:3" targetNodeId="1208863110061" resolveInfo="token" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208860500307">
                <link role="baseMethodDeclaration:3" targetNodeId="1208861623128" resolveInfo="toString" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.SynchronizedStatement:3" id="6324717196724599449">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="6324717196724599453">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="6324717196724599454">
              <link role="fieldDeclaration:3" targetNodeId="1208869960411" resolveInfo="out" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="6324717196724599455" />
          </node>
          <node role="block:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="6324717196724599451">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208785737317">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208785739611">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208870024464">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208870024465">
                    <link role="fieldDeclaration:3" targetNodeId="1208869960411" resolveInfo="out" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208870024466" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208785746873">
                  <link role="baseMethodDeclaration:3" targetNodeId="1208869697221" resolveInfo="writeCommand" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208858993023">
                    <link role="variableDeclaration:3" targetNodeId="1208858938581" resolveInfo="out" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208785707932">
        <property name="name:3" value="tokenPrefix" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195954304" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208858784239">
        <property name="name:3" value="test" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208858790216">
          <link role="classifier:3" targetNodeId="1.~Test" resolveInfo="Test" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1208860584607">
    <property name="name:3" value="TestEvent" />
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1208865442548">
      <property name="name:3" value="isTestEvent" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195962228" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208865442550" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208865442551">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208865463163">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208865463164">
            <property name="name:3" value="token" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195956168" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1208865467322" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement:7" id="1208865484688">
          <node role="variable:7" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable:7" id="1208865484689">
            <property name="name:7" value="expectedToken" />
          </node>
          <node role="inputSequence:7" type="jetbrains.mps.baseLanguage.structure.LocalStaticFieldReference:3" id="1208865484690">
            <link role="variableDeclaration:3" targetNodeId="1208864511737" resolveInfo="ALL_TOKENS" />
          </node>
          <node role="body:7" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208865484691">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1208865520203">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208865520204">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208865541004">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208865542190">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="1208865543936">
                      <link role="variable:7" targetNodeId="1208865484689" resolveInfo="expectedToken" />
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208865541005">
                      <link role="variableDeclaration:3" targetNodeId="1208865463164" resolveInfo="token" />
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.BreakStatement:3" id="1208865546716" />
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208865524092">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208865532122">
                  <link role="variableDeclaration:3" targetNodeId="1208865507231" resolveInfo="tokenString" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208865526867">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~String.startsWith(java.lang.String):boolean" resolveInfo="startsWith" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference:7" id="1208865535687">
                    <link role="variable:7" targetNodeId="1208865484689" resolveInfo="expectedToken" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1208865470951">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208865478457">
            <link role="variableDeclaration:3" targetNodeId="1208865463164" resolveInfo="token" />
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208865507231">
        <property name="name:3" value="messageString" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195950577" />
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1208864564893">
      <property name="name:3" value="parse" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208864568343">
        <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="Token" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208864564895" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208864564896">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208864582200">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208864582201">
            <property name="name:3" value="testEvent" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208864582202">
              <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="Token" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1208864585001" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208865555846">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208865555847">
            <property name="name:3" value="expectedToken" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195949199" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="1208865566441">
              <link role="baseMethodDeclaration:3" targetNodeId="1208865442548" resolveInfo="isTestEvent" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208865568681">
                <link role="variableDeclaration:3" targetNodeId="1208864573594" resolveInfo="tokenString" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1208865593169">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208865593170">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208865622101">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208865627164">
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="1208865656272">
                  <link role="baseMethodDeclaration:3" targetNodeId="1208861787573" resolveInfo="parseParameters" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208865665088">
                    <link role="variableDeclaration:3" targetNodeId="1208865555847" resolveInfo="expectedToken" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208865670290">
                    <link role="variableDeclaration:3" targetNodeId="1208864573594" resolveInfo="messageString" />
                  </node>
                </node>
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208865622102">
                  <link role="variableDeclaration:3" targetNodeId="1208864582201" resolveInfo="token" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="1208865596788">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1208865597841" />
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208865595898">
              <link role="variableDeclaration:3" targetNodeId="1208865555847" resolveInfo="expectedToken" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208865692824">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208865692825">
            <link role="variableDeclaration:3" targetNodeId="1208864582201" resolveInfo="testEvent" />
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208864573594">
        <property name="name:3" value="messageString" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195943577" />
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1208861787573">
      <property name="name:3" value="parse" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208861790423">
        <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="Token" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208861787576">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208861809752">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208861809753">
            <property name="name:3" value="testEvent" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208865751509">
              <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="TestEvent" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1208862692440" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1208862806969">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208862806970">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208862834803">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208862834804">
                <property name="name:3" value="params" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195955698" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208862850316">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208862848874">
                    <link role="variableDeclaration:3" targetNodeId="1208861799730" resolveInfo="tokenString" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208862853124">
                    <link role="baseMethodDeclaration:3" targetNodeId="3.~String.substring(int):java.lang.String" resolveInfo="substring" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208862860649">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208862855527">
                        <link role="variableDeclaration:3" targetNodeId="1208865641769" resolveInfo="expectedToken" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208862863567">
                        <link role="baseMethodDeclaration:3" targetNodeId="3.~String.length():int" resolveInfo="length" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.regexp.structure.MatchRegexpStatement:0" id="1208862417050">
              <node role="body:0" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208862417051">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208862687890">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208862687891">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1217888410480">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1217888410482">
                        <link role="baseMethodDeclaration:3" targetNodeId="1208861780064" resolveInfo="TestEvent" />
                      </node>
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208862687892">
                      <link role="variableDeclaration:3" targetNodeId="1208861809753" resolveInfo="token" />
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208862706504">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208862710206">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208862887577">
                      <link role="variableDeclaration:3" targetNodeId="1208865641769" resolveInfo="expectedToken" />
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208862706874">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208862706505">
                        <link role="variableDeclaration:3" targetNodeId="1208861809753" resolveInfo="token" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208862708460">
                        <link role="fieldDeclaration:3" targetNodeId="1208860591533" resolveInfo="token" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208862895299">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208862900926">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.regexp.structure.MatchVariableReference:0" id="1208862906906">
                      <link role="match:0" targetNodeId="1208862426388" resolveInfo="testCase" />
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208862895799">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208862895300">
                        <link role="variableDeclaration:3" targetNodeId="1208861809753" resolveInfo="token" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208862900118">
                        <link role="fieldDeclaration:3" targetNodeId="1208860609927" resolveInfo="testCaseName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208862911319">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208862916808">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.regexp.structure.MatchVariableReference:0" id="1208862919555">
                      <link role="match:0" targetNodeId="1208862499866" resolveInfo="testMethod" />
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208862912044">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208862911320">
                        <link role="variableDeclaration:3" targetNodeId="1208861809753" resolveInfo="token" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208862915325">
                        <link role="fieldDeclaration:3" targetNodeId="1208860621658" resolveInfo="testMethodName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208862927463">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208862937882">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1208862941200">
                      <link role="baseMethodDeclaration:3" targetNodeId="3.~Long.parseLong(java.lang.String):long" resolveInfo="parseLong" />
                      <link role="classConcept:3" targetNodeId="3.~Long" resolveInfo="Long" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.regexp.structure.MatchVariableReference:0" id="1208862944536">
                        <link role="match:0" targetNodeId="1208862617314" resolveInfo="memory" />
                      </node>
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208862927969">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208862927464">
                        <link role="variableDeclaration:3" targetNodeId="1208861809753" resolveInfo="token" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208862936048">
                        <link role="fieldDeclaration:3" targetNodeId="1208860631654" resolveInfo="memoryUsage" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208862951605">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208862956302">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1208862962915">
                      <link role="baseMethodDeclaration:3" targetNodeId="3.~Long.parseLong(java.lang.String):long" resolveInfo="parseLong" />
                      <link role="classConcept:3" targetNodeId="3.~Long" resolveInfo="Long" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.regexp.structure.MatchVariableReference:0" id="1208862967815">
                        <link role="match:0" targetNodeId="1208862646714" resolveInfo="time" />
                      </node>
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208862952133">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208862951606">
                        <link role="variableDeclaration:3" targetNodeId="1208861809753" resolveInfo="token" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208862955430">
                        <link role="fieldDeclaration:3" targetNodeId="1208860664059" resolveInfo="time" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="expr:0" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208862876631">
                <link role="variableDeclaration:3" targetNodeId="1208862834804" resolveInfo="params" />
              </node>
              <node role="regexp:0" type="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression:0" id="1208862422392">
                <node role="regexp:0" type="jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp:0" id="1208862461832">
                  <node role="right:0" type="jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp:0" id="1208862611149">
                    <node role="right:0" type="jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp:0" id="1208862617312">
                      <node role="right:0" type="jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp:0" id="1208862622627">
                        <node role="right:0" type="jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp:0" id="1208862644150">
                          <node role="right:0" type="jetbrains.mps.baseLanguage.regexp.structure.MatchParensRegexp:0" id="1208862646714">
                            <property name="name:0" value="time" />
                            <node role="regexp:0" type="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp:0" id="1208862653730">
                              <node role="regexp:0" type="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassRegexp:0" id="1208862651901">
                                <link role="symbolClass:0" targetNodeId="9.1174554674770" resolveInfo="\d" />
                              </node>
                            </node>
                          </node>
                          <node role="left:0" type="jetbrains.mps.baseLanguage.regexp.structure.StringLiteralRegexp:0" id="1208862624862">
                            <property name="text:0" value=":time=" />
                          </node>
                        </node>
                        <node role="left:0" type="jetbrains.mps.baseLanguage.regexp.structure.MatchParensRegexp:0" id="1208862617314">
                          <property name="name:0" value="memory" />
                          <node role="regexp:0" type="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp:0" id="1208862617315">
                            <node role="regexp:0" type="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassRegexp:0" id="1208862617316">
                              <link role="symbolClass:0" targetNodeId="9.1174554674770" resolveInfo="\d" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="left:0" type="jetbrains.mps.baseLanguage.regexp.structure.StringLiteralRegexp:0" id="1208862617317">
                        <property name="text:0" value=":memory=" />
                      </node>
                    </node>
                    <node role="left:0" type="jetbrains.mps.baseLanguage.regexp.structure.QuestionRegexp:0" id="1208862473625">
                      <node role="regexp:0" type="jetbrains.mps.baseLanguage.regexp.structure.ParensRegexp:0" id="1208862465918">
                        <node role="expr:0" type="jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp:0" id="1208862488078">
                          <node role="right:0" type="jetbrains.mps.baseLanguage.regexp.structure.MatchParensRegexp:0" id="1208862499866">
                            <property name="name:0" value="testMethod" />
                            <node role="regexp:0" type="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp:0" id="1208862531227">
                              <node role="regexp:0" type="jetbrains.mps.baseLanguage.regexp.structure.NegativeSymbolClassRegexp:0" id="1208862515375">
                                <node role="part:0" type="jetbrains.mps.baseLanguage.regexp.structure.CharacterSymbolClassPart:0" id="1208862522675">
                                  <property name="character:0" value=":" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="left:0" type="jetbrains.mps.baseLanguage.regexp.structure.StringLiteralRegexp:0" id="1208862481947">
                            <property name="text:0" value=":" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="left:0" type="jetbrains.mps.baseLanguage.regexp.structure.MatchParensRegexp:0" id="1208862426388">
                    <property name="name:0" value="testCase" />
                    <node role="regexp:0" type="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp:0" id="1208862445648">
                      <node role="regexp:0" type="jetbrains.mps.baseLanguage.regexp.structure.NegativeSymbolClassRegexp:0" id="1208862435109">
                        <node role="part:0" type="jetbrains.mps.baseLanguage.regexp.structure.CharacterSymbolClassPart:0" id="1208862438967">
                          <property name="character:0" value=":" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208862821377">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208862818831">
              <link role="variableDeclaration:3" targetNodeId="1208861799730" resolveInfo="tokenString" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208862824332">
              <link role="baseMethodDeclaration:3" targetNodeId="3.~String.startsWith(java.lang.String):boolean" resolveInfo="startsWith" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208862826814">
                <link role="variableDeclaration:3" targetNodeId="1208865641769" resolveInfo="expectedToken" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208861823233">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208861823235">
            <link role="variableDeclaration:3" targetNodeId="1208861809753" resolveInfo="token" />
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208865641769">
        <property name="name:3" value="expectedToken" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195961758" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208861799730">
        <property name="name:3" value="messageString" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195943107" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1208864563730" />
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1208860684897">
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208860687305">
        <property name="name:3" value="token" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195958047" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208860693325">
        <property name="name:3" value="test" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208860697237">
          <link role="classifier:3" targetNodeId="1.~Test" resolveInfo="Test" />
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208860684898" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208860684899" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208860684900">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208860716424">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208860719591">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208860721667">
              <link role="variableDeclaration:3" targetNodeId="1208860687305" resolveInfo="token" />
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208860716425">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208860717992">
                <link role="fieldDeclaration:3" targetNodeId="1208860591533" resolveInfo="token" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208860716427" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208860726313">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208860727526">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208860738584">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208860734226">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208860731943">
                  <link role="variableDeclaration:3" targetNodeId="1208860693325" resolveInfo="test" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208860738061">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~Object.getClass():java.lang.Class" resolveInfo="getClass" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208860740331">
                <link role="baseMethodDeclaration:3" targetNodeId="3.~Class.getName():java.lang.String" resolveInfo="getName" />
              </node>
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208860726314">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208860726315">
                <link role="fieldDeclaration:3" targetNodeId="1208860609927" resolveInfo="testCaseName" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208860726316" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1208860775837">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208860775838">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208860743531">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208860744810">
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208860805203">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="1208860795363">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1208860795364">
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208860799583">
                        <link role="classifier:3" targetNodeId="1.~TestCase" resolveInfo="TestCase" />
                      </node>
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208860802839">
                        <link role="variableDeclaration:3" targetNodeId="1208860693325" resolveInfo="test" />
                      </node>
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208860807840">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.~TestCase.getName():java.lang.String" resolveInfo="getName" />
                  </node>
                </node>
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208860743532">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208860743533">
                    <link role="fieldDeclaration:3" targetNodeId="1208860621658" resolveInfo="testMethodName" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208860743534" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="1208860780132">
            <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208860782355">
              <link role="classifier:3" targetNodeId="1.~TestCase" resolveInfo="TestCase" />
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208860779101">
              <link role="variableDeclaration:3" targetNodeId="1208860693325" resolveInfo="test" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208861107246">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208861107247">
            <property name="name:3" value="runtime" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208861107248">
              <link role="classifier:3" targetNodeId="3.~Runtime" resolveInfo="Runtime" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1208861107249">
              <link role="baseMethodDeclaration:3" targetNodeId="3.~Runtime.getRuntime():java.lang.Runtime" resolveInfo="getRuntime" />
              <link role="classConcept:3" targetNodeId="3.~Runtime" resolveInfo="Runtime" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208860817635">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208860819213">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.MinusExpression:3" id="1208861100984">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208861111794">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208861111128">
                  <link role="variableDeclaration:3" targetNodeId="1208861107247" resolveInfo="runtime" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208861115098">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~Runtime.freeMemory():long" resolveInfo="freeMemory" />
                </node>
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208860999482">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208861107251">
                  <link role="variableDeclaration:3" targetNodeId="1208861107247" resolveInfo="runtime" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208861041605">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~Runtime.totalMemory():long" resolveInfo="totalMemory" />
                </node>
              </node>
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208860817636">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208860817637">
                <link role="fieldDeclaration:3" targetNodeId="1208860631654" resolveInfo="memoryUsage" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208860817638" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208861120332">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208861121416">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1208861165530">
              <link role="baseMethodDeclaration:3" targetNodeId="3.~System.currentTimeMillis():long" resolveInfo="currentTimeMillis" />
              <link role="classConcept:3" targetNodeId="3.~System" resolveInfo="System" />
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208861120333">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208861120334">
                <link role="fieldDeclaration:3" targetNodeId="1208860664059" resolveInfo="time" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208861120335" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1208861780064">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208861780065" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1208861782018" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208861780067" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1208860591533">
      <property name="name:3" value="token" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1208860591534" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195947790" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1208860609927">
      <property name="name:3" value="testCaseName" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1208860609928" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195958501" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1208860621658">
      <property name="name:3" value="testMethodName" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1208860621659" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195945456" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1208860631654">
      <property name="name:3" value="memoryUsage" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1208860631655" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.LongType:3" id="1208860640323" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1208860664059">
      <property name="name:3" value="time" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1208860664060" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.LongType:3" id="1208860667645" />
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208860584608" />
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208861623128">
      <property name="name:3" value="toString" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208861623129" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195961304" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208861623131">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208861645280">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208861645281">
            <property name="name:3" value="builder" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208861645282">
              <link role="classifier:3" targetNodeId="3.~StringBuilder" resolveInfo="StringBuilder" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1217888418625">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1217888418627">
                <link role="baseMethodDeclaration:3" targetNodeId="3.~StringBuilder.&lt;init&gt;()" resolveInfo="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208861645319">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208861645320">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208861645321">
              <link role="variableDeclaration:3" targetNodeId="1208861645281" resolveInfo="builder" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208861645322">
              <link role="baseMethodDeclaration:3" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208861651509">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208861651510">
                  <link role="fieldDeclaration:3" targetNodeId="1208860591533" resolveInfo="token" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208861651511" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208861645324">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208861645325">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208861645326">
              <link role="variableDeclaration:3" targetNodeId="1208861645281" resolveInfo="builder" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208861645327">
              <link role="baseMethodDeclaration:3" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208861658095">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208861658096">
                  <link role="fieldDeclaration:3" targetNodeId="1208860609927" resolveInfo="testCaseName" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208861658097" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1208861645334">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="1208861663433">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1208861664489" />
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208861661763">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208861661764">
                <link role="fieldDeclaration:3" targetNodeId="1208860621658" resolveInfo="testMethodName" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208861661765" />
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208861645338">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208861645339">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208863012529">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208861645340">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208861645341">
                    <link role="variableDeclaration:3" targetNodeId="1208861645281" resolveInfo="builder" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208861645342">
                    <link role="baseMethodDeclaration:3" targetNodeId="3.~StringBuilder.append(char):java.lang.StringBuilder" resolveInfo="append" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="1208863001769">
                      <property name="charConstant:3" value=":" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208863015437">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208861719785">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208861719786">
                      <link role="fieldDeclaration:3" targetNodeId="1208860621658" resolveInfo="testMethodName" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208861719787" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208861883997">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208863036363">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208861884912">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208861883998">
                <link role="variableDeclaration:3" targetNodeId="1208861645281" resolveInfo="builder" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208861886231">
                <link role="baseMethodDeclaration:3" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1208861887011">
                  <property name="value:3" value=":memory=" />
                </node>
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208863037260">
              <link role="baseMethodDeclaration:3" targetNodeId="3.~StringBuilder.append(long):java.lang.StringBuilder" resolveInfo="append" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208863037261">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208863037262">
                  <link role="fieldDeclaration:3" targetNodeId="1208860631654" resolveInfo="memoryUsage" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208863037263" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208861911847">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208863041484">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208861912376">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208861911848">
                <link role="variableDeclaration:3" targetNodeId="1208861645281" resolveInfo="builder" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208861913591">
                <link role="baseMethodDeclaration:3" targetNodeId="3.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1208861914113">
                  <property name="value:3" value=":time=" />
                </node>
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208863046285">
              <link role="baseMethodDeclaration:3" targetNodeId="3.~StringBuilder.append(long):java.lang.StringBuilder" resolveInfo="append" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208863046286">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208863046287" />
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208863046288">
                  <link role="fieldDeclaration:3" targetNodeId="1208860664059" resolveInfo="time" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1208861727294">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208861731106">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208861730340">
              <link role="variableDeclaration:3" targetNodeId="1208861645281" resolveInfo="builder" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208861732270">
              <link role="baseMethodDeclaration:3" targetNodeId="3.~StringBuilder.toString():java.lang.String" resolveInfo="toString" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="1208864505391">
      <property name="name:3" value="START_TEST_PREFIX" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208864505392" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195952441" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1208864505394">
        <property name="value:3" value="&lt;START_TEST&gt;" />
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="1208864505395">
      <property name="name:3" value="END_TEST_PREFIX" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208864505396" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195951047" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1208864505398">
        <property name="value:3" value="&lt;END_TEST&gt;" />
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="1208864505399">
      <property name="name:3" value="ERROR_TEST_PREFIX" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208864505400" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195946850" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1208864505402">
        <property name="value:3" value="&lt;TEST_ERROR_BEGIN&gt;" />
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="1208864505404">
      <property name="name:3" value="ERROR_TEST_SUFFIX" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208864505405" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195962682" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1208864505407">
        <property name="value:3" value="&lt;TEST_ERROR_END&gt;" />
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="1208864505408">
      <property name="name:3" value="FAILURE_TEST_PREFIX" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208864505409" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195959440" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1208864505411">
        <property name="value:3" value="&lt;TEST_FAILURE_BEGIN&gt;" />
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="1208864505412">
      <property name="name:3" value="FAILURE_TEST_SUFFIX" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208864505413" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195953380" />
      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1208864505415">
        <property name="value:3" value="&lt;TEST_FAILURE_END&gt;" />
      </node>
    </node>
    <node role="staticField:3" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration:3" id="1208864511737">
      <property name="name:3" value="ALL_TOKENS" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1208864511738" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="1208864614111">
        <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195952895" />
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208865013303">
      <property name="name:3" value="getToken" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195963152" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208865013305" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208865013306">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1208865013307">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208865013308">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208865013309" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208865013310">
              <link role="fieldDeclaration:3" targetNodeId="1208860591533" resolveInfo="token" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208865019945">
      <property name="name:3" value="getTestCaseName" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195956637" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208865019947" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208865019948">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1208865019949">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208865019950">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208865019951" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208865019952">
              <link role="fieldDeclaration:3" targetNodeId="1208860609927" resolveInfo="testCaseName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208865025038">
      <property name="name:3" value="getTestMethodName" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195951971" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208865025040" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208865025041">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1208865025042">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208865025043">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208865025044" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208865025045">
              <link role="fieldDeclaration:3" targetNodeId="1208860621658" resolveInfo="testMethodName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208865028453">
      <property name="name:3" value="getMemoryUsage" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.LongType:3" id="1208865028454" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208865028455" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208865028456">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1208865028457">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208865028458">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208865028459" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208865028460">
              <link role="fieldDeclaration:3" targetNodeId="1208860631654" resolveInfo="memoryUsage" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208865031585">
      <property name="name:3" value="getTime" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.LongType:3" id="1208865031586" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208865031587" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208865031588">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1208865031589">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208865031590">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208865031591" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208865031592">
              <link role="fieldDeclaration:3" targetNodeId="1208860664059" resolveInfo="time" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="8478616046668035007">
      <property name="name:3" value="equals" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="8478616046668035008" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="8478616046668035009" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="8478616046668035010">
        <property name="name:3" value="p0" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8478616046668035011">
          <link role="classifier:3" targetNodeId="3.~Object" resolveInfo="Object" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="8478616046668035012">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="8478616046668035020">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.OrExpression:3" id="8478616046668035028">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="8478616046668035038">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="8478616046668035039">
                <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8478616046668035040">
                  <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="TestEvent" />
                </node>
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="8478616046668035041">
                  <link role="variableDeclaration:3" targetNodeId="8478616046668035010" resolveInfo="p0" />
                </node>
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="8478616046668035024">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="8478616046668035023">
                <link role="variableDeclaration:3" targetNodeId="8478616046668035010" resolveInfo="p0" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="8478616046668035027" />
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="8478616046668035022">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="8478616046668035042">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="8478616046668035044">
                <property name="value:3" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="8478616046668035046">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="8478616046668035047">
            <property name="name:3" value="event" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8478616046668035048">
              <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="TestEvent" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="8478616046668035051">
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="8478616046668035052">
                <link role="classifier:3" targetNodeId="1208860584607" resolveInfo="TestEvent" />
              </node>
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="8478616046668035053">
                <link role="variableDeclaration:3" targetNodeId="8478616046668035010" resolveInfo="p0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="8478616046668035055">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="8478616046668035113">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035122">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035117">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="8478616046668035116">
                  <link role="variableDeclaration:3" targetNodeId="8478616046668035047" resolveInfo="event" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8478616046668035121">
                  <link role="fieldDeclaration:3" targetNodeId="1208860621658" resolveInfo="testMethodName" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="8478616046668035126">
                <link role="baseMethodDeclaration:3" targetNodeId="3.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035127">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8478616046668035128">
                    <link role="fieldDeclaration:3" targetNodeId="1208860621658" resolveInfo="testMethodName" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8478616046668035129" />
                </node>
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="8478616046668035070">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035097">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035058">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="8478616046668035057">
                    <link role="variableDeclaration:3" targetNodeId="8478616046668035047" resolveInfo="event" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8478616046668035066">
                    <link role="fieldDeclaration:3" targetNodeId="1208860591533" resolveInfo="token" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="8478616046668035101">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035102">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8478616046668035103">
                      <link role="fieldDeclaration:3" targetNodeId="1208860591533" resolveInfo="token" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8478616046668035104" />
                  </node>
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035105">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035080">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="8478616046668035079">
                    <link role="variableDeclaration:3" targetNodeId="8478616046668035047" resolveInfo="event" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8478616046668035084">
                    <link role="fieldDeclaration:3" targetNodeId="1208860609927" resolveInfo="testCaseName" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="8478616046668035109">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035110">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8478616046668035111">
                      <link role="fieldDeclaration:3" targetNodeId="1208860609927" resolveInfo="testCaseName" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8478616046668035112" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="8478616046668035016">
        <link role="annotation:3" targetNodeId="3.~Override" />
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="8478616046668035003">
      <property name="name:3" value="hashCode" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="8478616046668035004" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="8478616046668035005" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="8478616046668035006">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="8478616046668035130">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="8478616046668035154">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.MulExpression:3" id="8478616046668035158">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035164">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035161">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8478616046668035162">
                    <link role="fieldDeclaration:3" targetNodeId="1208860621658" resolveInfo="testMethodName" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8478616046668035163" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="8478616046668035168">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~String.hashCode():int" resolveInfo="hashCode" />
                </node>
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="8478616046668035157">
                <property name="value:3" value="10" />
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="8478616046668035139">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035134">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035131">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8478616046668035132">
                    <link role="fieldDeclaration:3" targetNodeId="1208860591533" resolveInfo="token" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8478616046668035133" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="8478616046668035138">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~String.hashCode():int" resolveInfo="hashCode" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.MulExpression:3" id="8478616046668035143">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="8478616046668035142">
                  <property name="value:3" value="10" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035149">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="8478616046668035146">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="8478616046668035147">
                      <link role="fieldDeclaration:3" targetNodeId="1208860609927" resolveInfo="testCaseName" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="8478616046668035148" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="8478616046668035153">
                    <link role="baseMethodDeclaration:3" targetNodeId="3.~String.hashCode():int" resolveInfo="hashCode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="8478616046668035013">
        <link role="annotation:3" targetNodeId="3.~Override" />
      </node>
    </node>
    <node role="classInitializer:3" type="jetbrains.mps.baseLanguage.structure.StaticInitializer:3" id="1221741207444">
      <node role="statementList:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1221741207445">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1221741207446">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1221741207447">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1221741207448">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit:7" id="1221741207449">
                <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195950123" />
                <node role="initValue:7" type="jetbrains.mps.baseLanguage.structure.LocalStaticFieldReference:3" id="1221741207451">
                  <link role="variableDeclaration:3" targetNodeId="1208864505391" resolveInfo="START_TEST_PREFIX" />
                </node>
                <node role="initValue:7" type="jetbrains.mps.baseLanguage.structure.LocalStaticFieldReference:3" id="1221741207452">
                  <link role="variableDeclaration:3" targetNodeId="1208864505395" resolveInfo="END_TEST_PREFIX" />
                </node>
                <node role="initValue:7" type="jetbrains.mps.baseLanguage.structure.LocalStaticFieldReference:3" id="1221741207453">
                  <link role="variableDeclaration:3" targetNodeId="1208864505399" resolveInfo="ERROR_TEST_PREFIX" />
                </node>
                <node role="initValue:7" type="jetbrains.mps.baseLanguage.structure.LocalStaticFieldReference:3" id="1221741207454">
                  <link role="variableDeclaration:3" targetNodeId="1208864505404" resolveInfo="ERROR_TEST_SUFFIX" />
                </node>
                <node role="initValue:7" type="jetbrains.mps.baseLanguage.structure.LocalStaticFieldReference:3" id="1221741207455">
                  <link role="variableDeclaration:3" targetNodeId="1208864505408" resolveInfo="FAILURE_TEST_PREFIX" />
                </node>
                <node role="initValue:7" type="jetbrains.mps.baseLanguage.structure.LocalStaticFieldReference:3" id="1221741207456">
                  <link role="variableDeclaration:3" targetNodeId="1208864505412" resolveInfo="FAILURE_TEST_SUFFIX" />
                </node>
              </node>
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticFieldReference:3" id="1221741207457">
              <link role="variableDeclaration:3" targetNodeId="1208864511737" resolveInfo="ALL_TOKENS" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1208869019719">
    <property name="name:3" value="CommandOutputStream" />
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1208869162850">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208869162851" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208869162852" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208869162853">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation:3" id="1208869167256">
          <link role="constructorDeclaration:3" targetNodeId="4.~FilterOutputStream.&lt;init&gt;(java.io.OutputStream)" resolveInfo="FilterOutputStream" />
          <link role="baseMethodDeclaration:3" targetNodeId="4.~FilterOutputStream.&lt;init&gt;(java.io.OutputStream)" resolveInfo="FilterOutputStream" />
          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869177656">
            <link role="variableDeclaration:3" targetNodeId="1208869171607" resolveInfo="out" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208870863345">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208870866585">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208870868179">
              <link role="variableDeclaration:3" targetNodeId="1208869171607" resolveInfo="out" />
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208870863346">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208870863347">
                <link role="fieldDeclaration:3" targetNodeId="1208870835066" resolveInfo="printOut" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208870863348" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208869171607">
        <property name="name:3" value="out" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208870852284">
          <link role="classifier:3" targetNodeId="4.~PrintStream" resolveInfo="PrintStream" />
        </node>
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1208869078283">
      <property name="name:3" value="lastChar" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1208869078284" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1208869244564" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1208870835066">
      <property name="name:3" value="printOut" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1208870835067" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208870845134">
        <link role="classifier:3" targetNodeId="4.~PrintStream" resolveInfo="PrintStream" />
      </node>
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208869019720" />
    <node role="superclass:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208869040694">
      <link role="classifier:3" targetNodeId="4.~FilterOutputStream" resolveInfo="FilterOutputStream" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208869197164">
      <property name="name:3" value="write" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208869197165" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208869197166" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208869197167">
        <property name="name:3" value="b" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1208869197168" />
      </node>
      <node role="throwsItem:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208869197169">
        <link role="classifier:3" targetNodeId="4.~IOException" resolveInfo="IOException" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208869197170">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208869260738">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208869261731">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869263494">
              <link role="variableDeclaration:3" targetNodeId="1208869197167" resolveInfo="b" />
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869260739">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208869260740">
                <link role="fieldDeclaration:3" targetNodeId="1208869078283" resolveInfo="lastChar" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208869260741" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208869404681">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869405208">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869404682">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208869404683">
                <link role="fieldDeclaration:3" targetNodeId="4.~FilterOutputStream.out" resolveInfo="out" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208869404684" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208869408011">
              <link role="baseMethodDeclaration:3" targetNodeId="4.~OutputStream.write(int):void" resolveInfo="write" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869409031">
                <link role="variableDeclaration:3" targetNodeId="1208869197167" resolveInfo="b" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208869197171">
      <property name="name:3" value="write" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208869197172" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208869197173" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208869197174">
        <property name="name:3" value="b" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ArrayType:3" id="1208869197175">
          <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ByteType:3" id="1208869197176" />
        </node>
      </node>
      <node role="throwsItem:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208869197177">
        <link role="classifier:3" targetNodeId="4.~IOException" resolveInfo="IOException" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208869197178">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1208869293828">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.GreaterThanExpression:3" id="1208869302786">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1208869304213">
              <property name="value:3" value="0" />
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208944265226">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869295237">
                <link role="variableDeclaration:3" targetNodeId="1208869197174" resolveInfo="b" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation:3" id="1208944266805" />
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208869293830">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208869332872">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208869334998">
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1208869337828">
                  <node role="index:3" type="jetbrains.mps.baseLanguage.structure.MinusExpression:3" id="1208869343904">
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1208869344239">
                      <property name="value:3" value="1" />
                    </node>
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208944274261">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869339635">
                        <link role="variableDeclaration:3" targetNodeId="1208869197174" resolveInfo="b" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation:3" id="1208944276111" />
                    </node>
                  </node>
                  <node role="array:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869337257">
                    <link role="variableDeclaration:3" targetNodeId="1208869197174" resolveInfo="b" />
                  </node>
                </node>
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869332873">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208869332874">
                    <link role="fieldDeclaration:3" targetNodeId="1208869078283" resolveInfo="lastChar" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208869332875" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208869416582">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869417193">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869416583">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208869416584">
                <link role="fieldDeclaration:3" targetNodeId="4.~FilterOutputStream.out" resolveInfo="out" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208869416585" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208869420549">
              <link role="baseMethodDeclaration:3" targetNodeId="4.~OutputStream.write(byte[]):void" resolveInfo="write" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869421566">
                <link role="variableDeclaration:3" targetNodeId="1208869197174" resolveInfo="b" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208869197180">
      <property name="name:3" value="write" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208869197181" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208869197182" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208869197183">
        <property name="name:3" value="b" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ArrayType:3" id="1208869197184">
          <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ByteType:3" id="1208869197185" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208869197186">
        <property name="name:3" value="off" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1208869197187" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208869197188">
        <property name="name:3" value="len" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1208869197189" />
      </node>
      <node role="throwsItem:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1208869197190">
        <link role="classifier:3" targetNodeId="4.~IOException" resolveInfo="IOException" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208869197191">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1208869586972">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1208869586973">
            <property name="name:3" value="lastIndex" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1208869586974" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.MinusExpression:3" id="1208869602619">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1208869603230">
                <property name="value:3" value="1" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1208869599902">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869597649">
                  <link role="variableDeclaration:3" targetNodeId="1208869197186" resolveInfo="off" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869600958">
                  <link role="variableDeclaration:3" targetNodeId="1208869197188" resolveInfo="len" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1208869457242">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1208869622405">
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression:3" id="1208869647942">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1208869647943">
                <property name="value:3" value="0" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208869647944">
                <link role="variableDeclaration:3" targetNodeId="1208869586973" resolveInfo="lastIndex" />
              </node>
            </node>
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LessThanExpression:3" id="1208869663911">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208869663912">
                <link role="variableDeclaration:3" targetNodeId="1208869586973" resolveInfo="lastIndex" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208944286808">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869663914">
                  <link role="variableDeclaration:3" targetNodeId="1208869197183" resolveInfo="b" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation:3" id="1208944288335" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208869457244">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208869669225">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208869670336">
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1208869673074">
                  <node role="index:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1208869714543">
                    <link role="variableDeclaration:3" targetNodeId="1208869586973" resolveInfo="lastIndex" />
                  </node>
                  <node role="array:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869672117">
                    <link role="variableDeclaration:3" targetNodeId="1208869197183" resolveInfo="b" />
                  </node>
                </node>
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869669226">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208869669227">
                    <link role="fieldDeclaration:3" targetNodeId="1208869078283" resolveInfo="lastChar" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208869669228" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208869488086">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869491577">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869489917">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208869488087" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208869490757">
                <link role="fieldDeclaration:3" targetNodeId="4.~FilterOutputStream.out" resolveInfo="out" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208869493930">
              <link role="baseMethodDeclaration:3" targetNodeId="4.~OutputStream.write(byte[],int,int):void" resolveInfo="write" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869494983">
                <link role="variableDeclaration:3" targetNodeId="1208869197183" resolveInfo="b" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869496601">
                <link role="variableDeclaration:3" targetNodeId="1208869197186" resolveInfo="off" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208869499274">
                <link role="variableDeclaration:3" targetNodeId="1208869197188" resolveInfo="len" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1208869697221">
      <property name="name:3" value="writeCommand" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1208869697222" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1208869697223" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208869697224">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1208869731658">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1208869740707">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="1208869745622">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="1208869747327">
                <property name="charConstant:3" value="\r" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869743266">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208869743267">
                  <link role="fieldDeclaration:3" targetNodeId="1208869078283" resolveInfo="lastChar" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208869743268" />
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="1208869735711">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869734938">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208869734939">
                  <link role="fieldDeclaration:3" targetNodeId="1208869078283" resolveInfo="lastChar" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208869734940" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="1208869737037">
                <property name="charConstant:3" value="\n" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1208869731660">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208869759588">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208870901755">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869759589">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208870899403">
                    <link role="fieldDeclaration:3" targetNodeId="1208870835066" resolveInfo="printOut" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208869759591" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208870904904">
                  <link role="baseMethodDeclaration:3" targetNodeId="4.~PrintStream.println():void" resolveInfo="println" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208869774393">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869776293">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208869774717">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208869774394" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208870879672">
                <link role="fieldDeclaration:3" targetNodeId="1208870835066" resolveInfo="printOut" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1208870889954">
              <link role="baseMethodDeclaration:3" targetNodeId="4.~PrintStream.println(java.lang.String):void" resolveInfo="println" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1208870891941">
                <link role="variableDeclaration:3" targetNodeId="1208869706542" resolveInfo="command" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1208870930824">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1208870932149">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.CharConstant:3" id="1208870932805">
              <property name="charConstant:3" value="\n" />
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1208870930825">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1208870930826">
                <link role="fieldDeclaration:3" targetNodeId="1208869078283" resolveInfo="lastChar" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1208870930827" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1208869706542">
        <property name="name:3" value="command" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195944971" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1216639541736">
    <property name="name:3" value="TestRunParameters" />
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1216639845296">
      <property name="name:3" value="setTestRunner" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1216639845297" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216639845298" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216639845299">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1216639872630">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1216639874400">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1216639878841">
              <link role="variableDeclaration:3" targetNodeId="1216639860550" resolveInfo="name" />
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216639872631">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216639872632">
                <link role="fieldDeclaration:3" targetNodeId="1216639589590" resolveInfo="myTestRunner" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216639872633" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1216639860550">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195963622" />
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1216639973192">
      <property name="name:3" value="getTestRunner" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195958971" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216639973194" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216639973195">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1216640001916">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216640009138">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216640009139">
              <link role="fieldDeclaration:3" targetNodeId="1216639589590" resolveInfo="myTestRunner" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216640009140" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1216639879592">
      <property name="name:3" value="setVmParameters" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1216639879593" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216639879594" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216639879595">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1216639894971">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1216639901962">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1216639930375">
              <link role="variableDeclaration:3" targetNodeId="1216639907824" resolveInfo="parameters" />
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216639895379">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216639894972" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216639899414">
                <link role="fieldDeclaration:3" targetNodeId="1216639703460" resolveInfo="myVmParameters" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1216639907824">
        <property name="name:3" value="parameters" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="1237046544381">
          <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1237046544382" />
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1216640011625">
      <property name="name:3" value="getVmParameters" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="1216640016254">
        <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195944517" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216640011627" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216640011628">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1216640028617">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216640031619">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216640031620">
              <link role="fieldDeclaration:3" targetNodeId="1216639703460" resolveInfo="myVmParameters" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216640031621" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1216639932205">
      <property name="name:3" value="setClassPath" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1216639932206" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216639932207" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216639932208">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1216639958119">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1216639963110">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1216639965081">
              <link role="variableDeclaration:3" targetNodeId="1216639948428" resolveInfo="classPath" />
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216639958434">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216639958120" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216639961577">
                <link role="fieldDeclaration:3" targetNodeId="1216639746467" resolveInfo="myClassPath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1216639948428">
        <property name="name:3" value="classPath" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="1237046544525">
          <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1237046544526" />
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1216640033137">
      <property name="name:3" value="getClassPath" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="1216640037251">
        <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195949653" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216640033139" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216640033140">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1216640047317">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216640051975">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216640051976">
              <link role="fieldDeclaration:3" targetNodeId="1216639746467" resolveInfo="myClassPath" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216640051977" />
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1216640059134">
      <property name="name:3" value="equals" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1216640062669" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216640059136" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216640059137">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1216640133220">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="1216640140005">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="1216640144180">
              <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1216640144182">
                <link role="classifier:3" targetNodeId="1216639541736" resolveInfo="TestRunParameters" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1216640142757">
                <link role="variableDeclaration:3" targetNodeId="1216640075546" resolveInfo="obj" />
              </node>
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216640133222">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1216640157762">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1216640159092">
                <property name="value:3" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1216640166235">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1216640166236">
            <property name="name:3" value="parameters" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1216640166237">
              <link role="classifier:3" targetNodeId="1216639541736" resolveInfo="TestRunParameters" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1216640172786">
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1216640172787">
                <link role="classifier:3" targetNodeId="1216639541736" resolveInfo="TestRunParameters" />
              </node>
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1216640175101">
                <link role="variableDeclaration:3" targetNodeId="1216640075546" resolveInfo="obj" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1237046777276">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1237046777277">
            <property name="name:3" value="result" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1237046777278" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression:3" id="1237046785462">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237046777280">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1237046777281">
                  <link role="fieldDeclaration:3" targetNodeId="1216639589590" resolveInfo="myTestRunner" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1237046777282" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237046805338">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1237046805339">
                  <link role="variableDeclaration:3" targetNodeId="1216640166236" resolveInfo="parameters" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1237046805340">
                  <link role="fieldDeclaration:3" targetNodeId="1216639589590" resolveInfo="myTestRunner" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1216641071575">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1216641072999">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1216641077409">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1216641075439">
                <link role="variableDeclaration:3" targetNodeId="1237046777277" resolveInfo="result" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression:3" id="1237046823051">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216641083663">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216641083664">
                    <link role="fieldDeclaration:3" targetNodeId="1216639703460" resolveInfo="myVmParameters" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216641083665" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237046830050">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1237046830051">
                    <link role="variableDeclaration:3" targetNodeId="1216640166236" resolveInfo="parameters" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1237046830052">
                    <link role="fieldDeclaration:3" targetNodeId="1216639703460" resolveInfo="myVmParameters" />
                  </node>
                </node>
              </node>
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1216641071576">
              <link role="variableDeclaration:3" targetNodeId="1237046777277" resolveInfo="result" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1216641101065">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1216641103176">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="1216641107696">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1216641105461">
                <link role="variableDeclaration:3" targetNodeId="1237046777277" resolveInfo="result" />
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression:3" id="1237046849236">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216641110841">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216641117707">
                    <link role="fieldDeclaration:3" targetNodeId="1216639746467" resolveInfo="myClassPath" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216641110843" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237046852934">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1237046852935">
                    <link role="variableDeclaration:3" targetNodeId="1216640166236" resolveInfo="parameters" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1237046852936">
                    <link role="fieldDeclaration:3" targetNodeId="1216639746467" resolveInfo="myClassPath" />
                  </node>
                </node>
              </node>
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1216641101066">
              <link role="variableDeclaration:3" targetNodeId="1237046777277" resolveInfo="result" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1216640183760">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1216641089249">
            <link role="variableDeclaration:3" targetNodeId="1237046777277" resolveInfo="result" />
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1216640075546">
        <property name="name:3" value="obj" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1216640075547">
          <link role="classifier:3" targetNodeId="3.~Object" resolveInfo="Object" />
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1216641124491">
      <property name="name:3" value="hashCode" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.IntegerType:3" id="1216641127573" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216641124493" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216641124494">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1216641144887">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1216641179331">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237046766764">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.DowncastExpression:7" id="1237046764847">
                <node role="expression:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216641185631">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216641185632">
                    <link role="fieldDeclaration:3" targetNodeId="1216639703460" resolveInfo="myVmParameters" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216641185633" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1237046767048">
                <link role="baseMethodDeclaration:3" targetNodeId="8.~List.hashCode():int" resolveInfo="hashCode" />
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1216641164740">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216641159501">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216641154982">
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216641154983">
                    <link role="fieldDeclaration:3" targetNodeId="1216639589590" resolveInfo="myTestRunner" />
                  </node>
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216641154984" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1216641162535">
                  <link role="baseMethodDeclaration:3" targetNodeId="3.~String.hashCode():int" resolveInfo="hashCode" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237046542731">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.DowncastExpression:7" id="1237046541740">
                  <node role="expression:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216641168870">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216641168759" />
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216641173670">
                      <link role="fieldDeclaration:3" targetNodeId="1216639746467" resolveInfo="myClassPath" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1237046543316">
                  <link role="baseMethodDeclaration:3" targetNodeId="8.~List.hashCode():int" resolveInfo="hashCode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1216639589590">
      <property name="name:3" value="myTestRunner" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1216639589591" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195945910" />
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1216639703460">
      <property name="name:3" value="myVmParameters" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1216639703461" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="1237046544262">
        <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1237046544263" />
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1216639746467">
      <property name="name:3" value="myClassPath" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1216639746468" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="1237046544467">
        <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1237046544468" />
      </node>
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216639541737" />
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1216639541738">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1216639541739" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1216639541740" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1216639541741">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1216639618936">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1216639666088">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216639679702">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression:3" id="1216639674716">
                <link role="classifier:3" targetNodeId="1208532148294" resolveInfo="TestRunner" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1216639700459">
                <link role="baseMethodDeclaration:3" targetNodeId="3.~Class.getName():java.lang.String" resolveInfo="getName" />
              </node>
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216639618937">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216639618938">
                <link role="fieldDeclaration:3" targetNodeId="1216639589590" resolveInfo="myTestRunner" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216639618939" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1216639774365">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1216640978675">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1216640979975">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit:7" id="1237206610197">
                <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195960834" />
              </node>
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216639774366">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216639774367">
                <link role="fieldDeclaration:3" targetNodeId="1216639703460" resolveInfo="myVmParameters" />
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216639774368" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1216639821502">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1216640986447">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1216640986919">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit:7" id="1237206610149">
                <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1225195955228" />
              </node>
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1216639821817">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1216639821503" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1216639826179">
                <link role="fieldDeclaration:3" targetNodeId="1216639746467" resolveInfo="myClassPath" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


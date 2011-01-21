<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:a06b40a1-18fe-4d7f-a68d-34a763e68c1f(jetbrains.mps.workbench.make)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <language namespace="a247e09e-2435-45ba-b8d2-07e93feba96a(jetbrains.mps.baseLanguage.tuples)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" version="23" />
  <languageAspect modelUID="r:a06b40a1-18fe-4d7f-a68d-34a763e68c1f(jetbrains.mps.workbench.make)" version="-1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:309aeee7-bee8-445c-b31d-35928d1da75f(jetbrains.mps.baseLanguage.tuples.structure)" version="2" />
  <maxImportIndex value="15" />
  <import index="1" modelUID="f:java_stub#com.intellij.openapi.components(com.intellij.openapi.components@java_stub)" version="-1" />
  <import index="2" modelUID="f:java_stub#jetbrains.mps.make.script(jetbrains.mps.make.script@java_stub)" version="-1" />
  <import index="3" modelUID="r:b25dd364-bc3f-4a66-97d1-262009610c5e(jetbrains.mps.make)" version="-1" />
  <import index="4" modelUID="f:java_stub#com.intellij.ide(com.intellij.ide@java_stub)" version="-1" />
  <import index="5" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="6" modelUID="r:8e0d2787-667a-41b8-9f98-9bb45c087fba(jetbrains.mps.internal.make.runtime.script)" version="-1" />
  <import index="7" modelUID="r:71895ceb-c89d-4545-aa38-89d1cd891f17(jetbrains.mps.make.facet)" version="-1" />
  <import index="8" modelUID="f:java_stub#jetbrains.mps.ide.messages(jetbrains.mps.ide.messages@java_stub)" version="-1" />
  <import index="9" modelUID="r:13ec431d-483d-451c-a648-ffefde4fef51(jetbrains.mps.internal.make.runtime.backports)" version="-1" />
  <import index="10" modelUID="r:9e5578e0-37f0-4c9b-a301-771bcb453678(jetbrains.mps.make.script)" version="-1" />
  <import index="11" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="12" modelUID="f:java_stub#jetbrains.mps.messages(jetbrains.mps.messages@java_stub)" version="-1" />
  <import index="13" modelUID="r:4ea5a78b-cb8a-4831-b227-f7860a22491d(jetbrains.mps.make.resources)" version="-1" />
  <import index="14" modelUID="f:java_stub#com.intellij.openapi.progress(com.intellij.openapi.progress@java_stub)" version="-1" />
  <import index="15" modelUID="f:java_stub#com.intellij.openapi.project(com.intellij.openapi.project@java_stub)" version="-1" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1312638714832611842">
    <property name="name:3" value="WorkbenchMakeService" />
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832611843" />
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="1312638714832611844">
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832611845">
        <property name="name:3" value="context" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832611846">
          <link role="classifier:3" targetNodeId="11.~IOperationContext" resolveInfo="IOperationContext" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832611847">
        <property name="name:3" value="cleanMake" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1312638714832611848" />
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1312638714832611849" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832611850" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832611851">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832611852">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1312638714832611853">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611854">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1312638714832611855" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1312638714832611856">
                <link role="fieldDeclaration:3" targetNodeId="1312638714832612236" resolveInfo="context" />
              </node>
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832611857">
              <link role="variableDeclaration:3" targetNodeId="1312638714832611845" resolveInfo="context" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832611858">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1312638714832611859">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611860">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1312638714832611861" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1312638714832611862">
                <link role="fieldDeclaration:3" targetNodeId="1312638714832612239" resolveInfo="cleanMake" />
              </node>
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832611863">
              <link role="variableDeclaration:3" targetNodeId="1312638714832611847" resolveInfo="cleanMake" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1312638714832611864">
      <property name="name:3" value="make" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832611865" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1312638714832611866" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832611867">
        <property name="name:3" value="script" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832611868">
          <link role="classifier:3" targetNodeId="2.~IScript" resolveInfo="IScript" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832611869">
        <property name="name:3" value="resources" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType:7" id="1312638714832611870">
          <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.UpperBoundType:3" id="1312638714832611871">
            <node role="bound:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832611872">
              <link role="classifier:3" targetNodeId="13.6168415856807657256" resolveInfo="IResource" />
            </node>
          </node>
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832611873">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832611874">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1312638714832611875">
            <link role="baseMethodDeclaration:3" targetNodeId="1312638714832611903" resolveInfo="doMake" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832611876">
              <link role="variableDeclaration:3" targetNodeId="1312638714832611867" resolveInfo="script" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832611877">
              <link role="variableDeclaration:3" targetNodeId="1312638714832611869" resolveInfo="resources" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="1312638714832611878">
              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832611879">
                <property name="name:3" value="runnable" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832611880">
                  <link role="classifier:3" targetNodeId="5.~Runnable" resolveInfo="Runnable" />
                </node>
              </node>
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832611881">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832611882">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611883">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832611884">
                      <link role="variableDeclaration:3" targetNodeId="1312638714832611879" resolveInfo="runnable" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832611885">
                      <link role="baseMethodDeclaration:3" targetNodeId="5.~Runnable.run():void" resolveInfo="run" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1312638714832611886">
      <property name="name:3" value="make" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832611887">
        <property name="name:3" value="script" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832611888">
          <link role="classifier:3" targetNodeId="2.~IScript" resolveInfo="IScript" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832611889">
        <property name="name:3" value="resources" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType:7" id="1312638714832611890">
          <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.UpperBoundType:3" id="1312638714832611891">
            <node role="bound:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832611892">
              <link role="classifier:3" targetNodeId="13.6168415856807657256" resolveInfo="IResource" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832611893">
        <property name="name:3" value="executor" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832611894">
          <link role="classifier:3" targetNodeId="3.8273032235152867693" resolveInfo="Executor" />
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1312638714832611895" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832611896" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832611897">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832611898">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceMethodCall:3" id="1312638714832611899">
            <link role="baseMethodDeclaration:3" targetNodeId="1312638714832611903" resolveInfo="doMake" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832611900">
              <link role="variableDeclaration:3" targetNodeId="1312638714832611887" resolveInfo="script" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832611901">
              <link role="variableDeclaration:3" targetNodeId="1312638714832611889" resolveInfo="resources" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832611902">
              <link role="variableDeclaration:3" targetNodeId="1312638714832611893" resolveInfo="executor" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1312638714832611903">
      <property name="name:3" value="doMake" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832611904">
        <property name="name:3" value="script" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832611905">
          <link role="classifier:3" targetNodeId="2.~IScript" resolveInfo="IScript" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832611906">
        <property name="name:3" value="inputRes" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.SequenceType:7" id="1312638714832611907">
          <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.UpperBoundType:3" id="1312638714832611908">
            <node role="bound:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832611909">
              <link role="classifier:3" targetNodeId="13.6168415856807657256" resolveInfo="IResource" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832611910">
        <property name="name:3" value="executor" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832611911">
          <link role="classifier:3" targetNodeId="3.8273032235152867693" resolveInfo="Executor" />
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1312638714832611912" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1312638714832611913" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832611914">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1312638714832611915">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1312638714832611916">
            <property name="name:3" value="scr" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832611917">
              <link role="classifier:3" targetNodeId="2.~IScript" resolveInfo="IScript" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611918">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1312638714832611919" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832611920">
                <link role="baseMethodDeclaration:3" targetNodeId="1312638714832612000" resolveInfo="completeScript" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832611921">
                  <link role="variableDeclaration:3" targetNodeId="1312638714832611904" resolveInfo="script" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="1312638714832611922" />
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1312638714832611923">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832611924">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832611925">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611926">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611927">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611928">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="1312638714832611929">
                      <link role="variableDeclaration:3" targetNodeId="1312638714832612236" resolveInfo="context" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832611930">
                      <link role="baseMethodDeclaration:3" targetNodeId="11.~IOperationContext.getProject():com.intellij.openapi.project.Project" resolveInfo="getProject" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832611931">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.~ComponentManager.getComponent(java.lang.Class):java.lang.Object" resolveInfo="getComponent" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression:3" id="1312638714832611932">
                      <link role="classifier:3" targetNodeId="8.~MessagesViewTool" resolveInfo="MessagesViewTool" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832611933">
                  <link role="baseMethodDeclaration:3" targetNodeId="8.~MessagesViewTool.add(jetbrains.mps.messages.Message):void" resolveInfo="add" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1312638714832611934">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1312638714832611935">
                      <link role="baseMethodDeclaration:3" targetNodeId="12.~Message.&lt;init&gt;(jetbrains.mps.messages.MessageKind,java.lang.String)" resolveInfo="Message" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.EnumConstantReference:3" id="1312638714832611936">
                        <link role="enumClass:3" targetNodeId="12.~MessageKind" resolveInfo="MessageKind" />
                        <link role="enumConstantDeclaration:3" targetNodeId="12.~MessageKind.ERROR" resolveInfo="ERROR" />
                      </node>
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1312638714832611937">
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1312638714832611938">
                          <property name="value:3" value=" failed. Invalid script." />
                        </node>
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1312638714832611939">
                          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1312638714832611940">
                            <property name="value:3" value="Rebuild" />
                          </node>
                          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="1312638714832611941">
                            <link role="variableDeclaration:3" targetNodeId="1312638714832612239" resolveInfo="cleanMake" />
                          </node>
                          <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1312638714832611942">
                            <property name="value:3" value="Make" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1312638714832611943" />
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="1312638714832611944">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611945">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832611946">
                <link role="variableDeclaration:3" targetNodeId="1312638714832611916" resolveInfo="scr" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832611947">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~IScript.isValid():boolean" resolveInfo="isValid" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="1312638714832611948" />
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.SingleLineComment:3" id="1312638714832611949">
          <node role="commentPart:3" type="jetbrains.mps.baseLanguage.structure.TextCommentPart:3" id="1312638714832611950">
            <property name="text:3" value="save all before launching the script" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.lang.plugin.structure.ExecuteCommandStatement:23" id="1312638714832611951">
          <node role="commandClosureLiteral:23" type="jetbrains.mps.lang.plugin.structure.CommandClosureLiteral:23" id="1312638714832611952">
            <node role="body:23" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832611953">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832611954">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611955">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1312638714832611956">
                    <link role="classConcept:3" targetNodeId="11.~SModelRepository" resolveInfo="SModelRepository" />
                    <link role="baseMethodDeclaration:3" targetNodeId="11.~SModelRepository.getInstance():jetbrains.mps.smodel.SModelRepository" resolveInfo="getInstance" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832611957">
                    <link role="baseMethodDeclaration:3" targetNodeId="11.~SModelRepository.saveAll():void" resolveInfo="saveAll" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="1312638714832611958" />
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1312638714832611959">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1312638714832611960">
            <property name="name:3" value="res" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832611961">
              <link role="classifier:3" targetNodeId="2.~IResult" resolveInfo="IResult" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832611962">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611963">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832611964">
              <link role="variableDeclaration:3" targetNodeId="1312638714832611910" resolveInfo="executor" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832611965">
              <link role="baseMethodDeclaration:3" targetNodeId="3.8273032235152867695" resolveInfo="doExecute" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="1312638714832611966">
                <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832611967">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832611968">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1312638714832611969">
                      <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611970">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832611971">
                          <link role="variableDeclaration:3" targetNodeId="1312638714832611916" resolveInfo="scr" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832611972">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~IScript.execute(java.lang.Iterable):jetbrains.mps.make.script.IResult" resolveInfo="execute" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832611973">
                            <link role="variableDeclaration:3" targetNodeId="1312638714832611906" resolveInfo="inputRes" />
                          </node>
                        </node>
                      </node>
                      <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832611974">
                        <link role="variableDeclaration:3" targetNodeId="1312638714832611960" resolveInfo="res" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="1312638714832611975" />
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1312638714832611976">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832611977">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832611978">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611979">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611980">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611981">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="1312638714832611982">
                      <link role="variableDeclaration:3" targetNodeId="1312638714832612236" resolveInfo="context" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832611983">
                      <link role="baseMethodDeclaration:3" targetNodeId="11.~IOperationContext.getProject():com.intellij.openapi.project.Project" resolveInfo="getProject" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832611984">
                    <link role="baseMethodDeclaration:3" targetNodeId="1.~ComponentManager.getComponent(java.lang.Class):java.lang.Object" resolveInfo="getComponent" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression:3" id="1312638714832611985">
                      <link role="classifier:3" targetNodeId="8.~MessagesViewTool" resolveInfo="MessagesViewTool" />
                    </node>
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832611986">
                  <link role="baseMethodDeclaration:3" targetNodeId="8.~MessagesViewTool.add(jetbrains.mps.messages.Message):void" resolveInfo="add" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1312638714832611987">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1312638714832611988">
                      <link role="baseMethodDeclaration:3" targetNodeId="12.~Message.&lt;init&gt;(jetbrains.mps.messages.MessageKind,java.lang.String)" resolveInfo="Message" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.EnumConstantReference:3" id="1312638714832611989">
                        <link role="enumClass:3" targetNodeId="12.~MessageKind" resolveInfo="MessageKind" />
                        <link role="enumConstantDeclaration:3" targetNodeId="12.~MessageKind.ERROR" resolveInfo="ERROR" />
                      </node>
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="1312638714832611990">
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1312638714832611991">
                          <property name="value:3" value=" failed. See previous messages for details." />
                        </node>
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1312638714832611992">
                          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1312638714832611993">
                            <property name="value:3" value="Rebuild" />
                          </node>
                          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="1312638714832611994">
                            <link role="variableDeclaration:3" targetNodeId="1312638714832612239" resolveInfo="cleanMake" />
                          </node>
                          <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1312638714832611995">
                            <property name="value:3" value="Make" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="1312638714832611996">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832611997">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832611998">
                <link role="variableDeclaration:3" targetNodeId="1312638714832611960" resolveInfo="res" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832611999">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~IResult.isSucessful():boolean" resolveInfo="isSucessful" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1312638714832612000">
      <property name="name:3" value="completeScript" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1312638714832612001" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612002">
        <link role="classifier:3" targetNodeId="2.~IScript" resolveInfo="IScript" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832612003">
        <property name="name:3" value="scr" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612004">
          <link role="classifier:3" targetNodeId="2.~IScript" resolveInfo="IScript" />
        </node>
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832612005">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1312638714832612006">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1312638714832612007">
            <property name="name:3" value="progStrat" />
            <property name="isFinal:3" value="true" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1312638714832612008">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1312638714832612009">
                <link role="baseMethodDeclaration:3" targetNodeId="9.5589305777382258421" resolveInfo="ProgressIndicatorProgressStrategy" />
              </node>
            </node>
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612010">
              <link role="classifier:3" targetNodeId="9.5589305777382258419" resolveInfo="ProgressIndicatorProgressStrategy" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1312638714832612011">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1312638714832612012">
            <property name="name:3" value="jmon" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612013">
              <link role="classifier:3" targetNodeId="2.~IJobMonitor" resolveInfo="IJobMonitor" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1312638714832612014">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="1312638714832612015">
                <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="1312638714832612016">
                  <property name="nonStatic:3" value="true" />
                  <link role="classifier:3" targetNodeId="10.6168415856807657250" resolveInfo="IJobMonitor" />
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~Object.&lt;init&gt;()" resolveInfo="Object" />
                  <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832612017" />
                  <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1312638714832612018">
                    <property name="isAbstract:3" value="false" />
                    <property name="name:3" value="stopRequested" />
                    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832612019" />
                    <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1312638714832612020" />
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832612021">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612022">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1312638714832612023">
                          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612024">
                            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832612025">
                              <link role="baseMethodDeclaration:3" targetNodeId="14.~ProgressIndicator.isCanceled():boolean" resolveInfo="isCanceled" />
                            </node>
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612026">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612027">
                                <link role="variableDeclaration:3" targetNodeId="1312638714832612007" resolveInfo="progStrat" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832612028">
                                <link role="baseMethodDeclaration:3" targetNodeId="9.5589305777382265115" resolveInfo="getProgressIndicator" />
                              </node>
                            </node>
                          </node>
                          <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1312638714832612029">
                            <property name="value:3" value="false" />
                          </node>
                          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="1312638714832612030">
                            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1312638714832612031" />
                            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612032">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612033">
                                <link role="variableDeclaration:3" targetNodeId="1312638714832612007" resolveInfo="progStrat" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832612034">
                                <link role="baseMethodDeclaration:3" targetNodeId="9.5589305777382265115" resolveInfo="getProgressIndicator" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1312638714832612035">
                    <property name="name:3" value="currentProgress" />
                    <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612036">
                      <link role="classifier:3" targetNodeId="2.~IProgress" resolveInfo="IProgress" />
                    </node>
                    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832612037" />
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832612038">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612039">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612040">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612041">
                            <link role="variableDeclaration:3" targetNodeId="1312638714832612007" resolveInfo="progStrat" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832612042">
                            <link role="baseMethodDeclaration:3" targetNodeId="6.5589305777382267707" resolveInfo="currentProgress" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1312638714832612043">
                    <property name="name:3" value="reportFeedback" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832612044">
                      <property name="name:3" value="fdbk" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612045">
                        <link role="classifier:3" targetNodeId="2.~IFeedback" resolveInfo="IFeedback" />
                      </node>
                    </node>
                    <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1312638714832612046" />
                    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832612047" />
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832612048">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612049">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612050">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1312638714832612051">
                            <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1312638714832612052">
                              <link role="baseMethodDeclaration:3" targetNodeId="6.7797884084018670114" resolveInfo="LoggingFeedbackStrategy" />
                            </node>
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832612053">
                            <link role="baseMethodDeclaration:3" targetNodeId="6.7797884084018670120" resolveInfo="reportFeedback" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832612054">
                              <link role="variableDeclaration:3" targetNodeId="1312638714832612044" resolveInfo="fdbk" />
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
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1312638714832612055">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1312638714832612056">
            <property name="name:3" value="cmon" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612057">
              <link role="classifier:3" targetNodeId="2.~IConfigMonitor" resolveInfo="IConfigMonitor" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1312638714832612058">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="1312638714832612059">
                <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="1312638714832612060">
                  <property name="nonStatic:3" value="true" />
                  <link role="classifier:3" targetNodeId="10.8339029394034910088" resolveInfo="IConfigMonitor" />
                  <link role="baseMethodDeclaration:3" targetNodeId="5.~Object.&lt;init&gt;()" resolveInfo="Object" />
                  <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832612061" />
                  <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1312638714832612062">
                    <property name="isAbstract:3" value="false" />
                    <property name="name:3" value="relayQuery" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832612063">
                      <property name="name:3" value="query" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612064">
                        <link role="classifier:3" targetNodeId="2.~IQuery" resolveInfo="IQuery" />
                        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference:3" id="1312638714832612065">
                          <link role="typeVariableDeclaration:3" targetNodeId="1312638714832612067" resolveInfo="T" />
                        </node>
                      </node>
                    </node>
                    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832612066" />
                    <node role="typeVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration:3" id="1312638714832612067">
                      <property name="name:3" value="T" />
                      <node role="bound:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612068">
                        <link role="classifier:3" targetNodeId="2.~IOption" resolveInfo="IOption" />
                      </node>
                    </node>
                    <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.TypeVariableReference:3" id="1312638714832612069">
                      <link role="typeVariableDeclaration:3" targetNodeId="1312638714832612067" resolveInfo="T" />
                    </node>
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832612070">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612071">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612072">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1312638714832612073">
                            <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1312638714832612074">
                              <link role="baseMethodDeclaration:3" targetNodeId="6.2798840071352747005" resolveInfo="UIQueryRelayStrategy" />
                            </node>
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832612075">
                            <link role="baseMethodDeclaration:3" targetNodeId="6.2798840071352747441" resolveInfo="relayQuery" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832612076">
                              <link role="variableDeclaration:3" targetNodeId="1312638714832612063" resolveInfo="query" />
                            </node>
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612077">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1312638714832612078">
                                <link role="classConcept:3" targetNodeId="1312638714832611842" resolveInfo="WorkbenchMakeService" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1312638714832612079">
                                <link role="fieldDeclaration:3" targetNodeId="1312638714832612236" resolveInfo="context" />
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
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="1312638714832612080" />
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1312638714832612081">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1312638714832612082">
            <property name="name:3" value="pind" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612083">
              <link role="classifier:3" targetNodeId="14.~ProgressIndicator" resolveInfo="ProgressIndicator" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1312638714832612084" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1312638714832612085">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1312638714832612086">
            <property name="name:3" value="mons" />
            <property name="isFinal:3" value="true" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1312638714832612087">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="1312638714832612088">
                <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="1312638714832612089">
                  <property name="nonStatic:3" value="true" />
                  <link role="baseMethodDeclaration:3" targetNodeId="10.5646063728432391391" resolveInfo="IMonitors.Stub" />
                  <link role="classifier:3" targetNodeId="10.5646063728432391389" resolveInfo="IMonitors.Stub" />
                  <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832612090" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612091">
                    <link role="variableDeclaration:3" targetNodeId="1312638714832612056" resolveInfo="cmon" />
                  </node>
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612092">
                    <link role="variableDeclaration:3" targetNodeId="1312638714832612012" resolveInfo="jmon" />
                  </node>
                  <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1312638714832612093">
                    <property name="name:3" value="runJobWithMonitor" />
                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832612094">
                      <property name="name:3" value="code" />
                      <node role="type:3" type="jetbrains.mps.baseLanguage.closures.structure.FunctionType:3" id="1312638714832612095">
                        <node role="resultType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1312638714832612096" />
                        <node role="parameterType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612097">
                          <link role="classifier:3" targetNodeId="2.~IJobMonitor" resolveInfo="IJobMonitor" />
                        </node>
                      </node>
                    </node>
                    <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1312638714832612098" />
                    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832612099" />
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832612100">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612101">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612102">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1312638714832612103">
                            <link role="baseMethodDeclaration:3" targetNodeId="4.~IdeEventQueue.getInstance():com.intellij.ide.IdeEventQueue" resolveInfo="getInstance" />
                            <link role="classConcept:3" targetNodeId="4.~IdeEventQueue" resolveInfo="IdeEventQueue" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832612104">
                            <link role="baseMethodDeclaration:3" targetNodeId="4.~IdeEventQueue.flushQueue():void" resolveInfo="flushQueue" />
                          </node>
                        </node>
                      </node>
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612105">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612106">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1312638714832612107">
                            <link role="classConcept:3" targetNodeId="11.~ModelAccess" resolveInfo="ModelAccess" />
                            <link role="baseMethodDeclaration:3" targetNodeId="11.~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolveInfo="instance" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832612108">
                            <link role="baseMethodDeclaration:3" targetNodeId="11.~ModelCommandExecutor.runWriteActionWithProgressSynchronously(com.intellij.openapi.progress.Progressive,java.lang.String,boolean,com.intellij.openapi.project.Project):void" resolveInfo="runWriteActionWithProgressSynchronously" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="1312638714832612109">
                              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832612110">
                                <property name="name:3" value="realInd" />
                                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612111">
                                  <link role="classifier:3" targetNodeId="14.~ProgressIndicator" resolveInfo="ProgressIndicator" />
                                </node>
                              </node>
                              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832612112">
                                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612113">
                                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612114">
                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612115">
                                      <link role="variableDeclaration:3" targetNodeId="1312638714832612007" resolveInfo="progStrat" />
                                    </node>
                                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832612116">
                                      <link role="baseMethodDeclaration:3" targetNodeId="9.5589305777382265049" resolveInfo="setProgressIndicator" />
                                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832612117">
                                        <link role="variableDeclaration:3" targetNodeId="1312638714832612110" resolveInfo="realInd" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612118">
                                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1312638714832612119">
                                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612120">
                                      <link role="variableDeclaration:3" targetNodeId="1312638714832612082" resolveInfo="pind" />
                                    </node>
                                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1312638714832612121">
                                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1312638714832612122">
                                        <link role="baseMethodDeclaration:3" targetNodeId="9.6199524110956704945" resolveInfo="JobMonitorProgressIndicator" />
                                        <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612123">
                                          <link role="variableDeclaration:3" targetNodeId="1312638714832612012" resolveInfo="jmon" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612124">
                                  <node role="expression:3" type="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression:3" id="1312638714832612125">
                                    <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612126">
                                      <link role="variableDeclaration:3" targetNodeId="1312638714832612012" resolveInfo="jmon" />
                                    </node>
                                    <node role="function:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832612127">
                                      <link role="variableDeclaration:3" targetNodeId="1312638714832612094" resolveInfo="code" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1312638714832612128">
                              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1312638714832612129">
                                <property name="value:3" value="Rebuild" />
                              </node>
                              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.LocalInstanceFieldReference:3" id="1312638714832612130">
                                <link role="variableDeclaration:3" targetNodeId="1312638714832612239" resolveInfo="cleanMake" />
                              </node>
                              <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1312638714832612131">
                                <property name="value:3" value="Make" />
                              </node>
                            </node>
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1312638714832612132">
                              <property name="value:3" value="true" />
                            </node>
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612133">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612134">
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1312638714832612135">
                                  <link role="classConcept:3" targetNodeId="1312638714832611842" resolveInfo="WorkbenchMakeService" />
                                </node>
                                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1312638714832612136">
                                  <link role="fieldDeclaration:3" targetNodeId="1312638714832612236" resolveInfo="context" />
                                </node>
                              </node>
                              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832612137">
                                <link role="baseMethodDeclaration:3" targetNodeId="11.~IOperationContext.getProject():com.intellij.openapi.project.Project" resolveInfo="getProject" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="1312638714832612138">
                      <link role="annotation:3" targetNodeId="5.~Override" resolveInfo="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612139">
              <link role="classifier:3" targetNodeId="2.~IMonitors" resolveInfo="IMonitors" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="1312638714832612140" />
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1312638714832612141">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1312638714832612142">
            <property name="name:3" value="pindGet" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.closures.structure.FunctionType:3" id="1312638714832612143">
              <node role="resultType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612144">
                <link role="classifier:3" targetNodeId="14.~ProgressIndicator" resolveInfo="ProgressIndicator" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="1312638714832612145">
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832612146">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612147">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612148">
                    <link role="variableDeclaration:3" targetNodeId="1312638714832612082" resolveInfo="pind" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1312638714832612149">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1312638714832612150">
            <property name="name:3" value="init" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.closures.structure.FunctionType:3" id="1312638714832612151">
              <node role="parameterType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612152">
                <link role="classifier:3" targetNodeId="2.~IParametersPool" resolveInfo="IParametersPool" />
              </node>
              <node role="resultType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1312638714832612153" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral:3" id="1312638714832612154">
              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832612155">
                <property name="name:3" value="pool" />
                <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612156">
                  <link role="classifier:3" targetNodeId="2.~IParametersPool" resolveInfo="IParametersPool" />
                </node>
              </node>
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832612157">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1312638714832612158">
                  <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1312638714832612159">
                    <property name="name:3" value="vars" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType:2" id="1312638714832612160">
                      <node role="componentType:2" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612161">
                        <link role="classifier:3" targetNodeId="15.~Project" resolveInfo="Project" />
                      </node>
                      <node role="componentType:2" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612162">
                        <link role="classifier:3" targetNodeId="11.~IOperationContext" resolveInfo="IOperationContext" />
                      </node>
                      <node role="componentType:2" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1312638714832612163" />
                      <node role="componentType:2" type="jetbrains.mps.baseLanguage.closures.structure.FunctionType:3" id="1312638714832612164">
                        <node role="resultType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612165">
                          <link role="classifier:3" targetNodeId="14.~ProgressIndicator" resolveInfo="ProgressIndicator" />
                        </node>
                      </node>
                    </node>
                    <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1312638714832612166">
                      <node role="type:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType:2" id="1312638714832612167">
                        <node role="componentType:2" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612168">
                          <link role="classifier:3" targetNodeId="15.~Project" resolveInfo="Project" />
                        </node>
                        <node role="componentType:2" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612169">
                          <link role="classifier:3" targetNodeId="11.~IOperationContext" resolveInfo="IOperationContext" />
                        </node>
                        <node role="componentType:2" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1312638714832612170" />
                        <node role="componentType:2" type="jetbrains.mps.baseLanguage.closures.structure.FunctionType:3" id="1312638714832612171">
                          <node role="resultType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612172">
                            <link role="classifier:3" targetNodeId="14.~ProgressIndicator" resolveInfo="ProgressIndicator" />
                          </node>
                        </node>
                      </node>
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612173">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832612174">
                          <link role="variableDeclaration:3" targetNodeId="1312638714832612155" resolveInfo="pool" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832612175">
                          <link role="baseMethodDeclaration:3" targetNodeId="2.~IParametersPool.parameters(jetbrains.mps.make.facet.ITarget$Name,java.lang.Class):java.lang.Object" resolveInfo="parameters" />
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1312638714832612176">
                            <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1312638714832612177">
                              <link role="baseMethodDeclaration:3" targetNodeId="7.6168415856807657137" resolveInfo="ITarget.Name" />
                              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1312638714832612178">
                                <property name="value:3" value="checkParameters" />
                              </node>
                            </node>
                          </node>
                          <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression:3" id="1312638714832612179">
                            <link role="classifier:3" targetNodeId="5.~Object" resolveInfo="Object" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612180">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1312638714832612181">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612182">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612183">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1312638714832612184" />
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1312638714832612185">
                          <link role="fieldDeclaration:3" targetNodeId="1312638714832612236" resolveInfo="context" />
                        </node>
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1312638714832612186">
                        <link role="baseMethodDeclaration:3" targetNodeId="11.~IOperationContext.getProject():com.intellij.openapi.project.Project" resolveInfo="getProject" />
                      </node>
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="1312638714832612187">
                      <node role="index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1312638714832612188">
                        <property name="value:3" value="0" />
                      </node>
                      <node role="tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612189">
                        <link role="variableDeclaration:3" targetNodeId="1312638714832612159" resolveInfo="vars" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612190">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1312638714832612191">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612192">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1312638714832612193" />
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1312638714832612194">
                        <link role="fieldDeclaration:3" targetNodeId="1312638714832612236" resolveInfo="context" />
                      </node>
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="1312638714832612195">
                      <node role="index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1312638714832612196">
                        <property name="value:3" value="1" />
                      </node>
                      <node role="tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612197">
                        <link role="variableDeclaration:3" targetNodeId="1312638714832612159" resolveInfo="vars" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612198">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1312638714832612199">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1312638714832612200">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="1312638714832612201" />
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="1312638714832612202">
                        <link role="fieldDeclaration:3" targetNodeId="1312638714832612239" resolveInfo="cleanMake" />
                      </node>
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="1312638714832612203">
                      <node role="index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1312638714832612204">
                        <property name="value:3" value="2" />
                      </node>
                      <node role="tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612205">
                        <link role="variableDeclaration:3" targetNodeId="1312638714832612159" resolveInfo="vars" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612206">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1312638714832612207">
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612208">
                      <link role="variableDeclaration:3" targetNodeId="1312638714832612142" resolveInfo="pindGet" />
                    </node>
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression:2" id="1312638714832612209">
                      <node role="index:2" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1312638714832612210">
                        <property name="value:3" value="3" />
                      </node>
                      <node role="tuple:2" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612211">
                        <link role="variableDeclaration:3" targetNodeId="1312638714832612159" resolveInfo="vars" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1312638714832612212">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1312638714832612213">
            <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator:3" id="1312638714832612214">
              <node role="cls:3" type="jetbrains.mps.baseLanguage.structure.AnonymousClass:3" id="1312638714832612215">
                <property name="nonStatic:3" value="true" />
                <link role="baseMethodDeclaration:3" targetNodeId="10.9015678256557364127" resolveInfo="IScript.StubBoss" />
                <link role="classifier:3" targetNodeId="10.9015678256557364125" resolveInfo="IScript.StubBoss" />
                <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832612216" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832612217">
                  <link role="variableDeclaration:3" targetNodeId="1312638714832612003" resolveInfo="scr" />
                </node>
                <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1312638714832612218">
                  <property name="name:3" value="init" />
                  <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1312638714832612219" />
                  <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832612220" />
                  <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1312638714832612221">
                    <property name="name:3" value="ppool" />
                    <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612222">
                      <link role="classifier:3" targetNodeId="2.~IParametersPool" resolveInfo="IParametersPool" />
                    </node>
                  </node>
                  <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832612223">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612224">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression:3" id="1312638714832612225">
                        <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1312638714832612226">
                          <link role="variableDeclaration:3" targetNodeId="1312638714832612221" resolveInfo="ppool" />
                        </node>
                        <node role="function:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612227">
                          <link role="variableDeclaration:3" targetNodeId="1312638714832612150" resolveInfo="init" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="1312638714832612228">
                    <link role="annotation:3" targetNodeId="5.~Override" resolveInfo="Override" />
                  </node>
                </node>
                <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1312638714832612229">
                  <property name="name:3" value="monitors" />
                  <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612230">
                    <link role="classifier:3" targetNodeId="2.~IMonitors" resolveInfo="IMonitors" />
                  </node>
                  <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1312638714832612231" />
                  <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1312638714832612232">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1312638714832612233">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1312638714832612234">
                        <link role="variableDeclaration:3" targetNodeId="1312638714832612086" resolveInfo="mons" />
                      </node>
                    </node>
                  </node>
                  <node role="annotation:3" type="jetbrains.mps.baseLanguage.structure.AnnotationInstance:3" id="1312638714832612235">
                    <link role="annotation:3" targetNodeId="5.~Override" resolveInfo="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1312638714832612236">
      <property name="name:3" value="context" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1312638714832612237" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612238">
        <link role="classifier:3" targetNodeId="11.~IOperationContext" resolveInfo="IOperationContext" />
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="1312638714832612239">
      <property name="name:3" value="cleanMake" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1312638714832612240" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="1312638714832612241" />
    </node>
    <node role="implementedInterface:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1312638714832612242">
      <link role="classifier:3" targetNodeId="3.2082624981609760242" resolveInfo="IMakeService" />
    </node>
  </node>
</model>


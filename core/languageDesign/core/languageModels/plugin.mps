<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c89590286(jetbrains.mps.lang.core.plugin)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="443f4c36-fcf5-4eb6-9500-8d06ed259e3e(jetbrains.mps.baseLanguage.classifiers)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590361(jetbrains.mps.lang.plugin.constraints)" version="19" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" version="23" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959036e(jetbrains.mps.baseLanguage.classifiers.constraints)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903e4(jetbrains.mps.internal.collections.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903fe(jetbrains.mps.baseLanguage.strings.constraints)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590402(jetbrains.mps.baseLanguage.strings.structure)" version="9" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959057f(jetbrains.mps.baseLanguage.logging.structure)" version="0" />
  <maxImportIndex value="25" />
  <import index="2" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="4" modelUID="f:java_stub#jetbrains.mps.ide.findusages.model(jetbrains.mps.ide.findusages.model@java_stub)" version="-1" />
  <import index="6" modelUID="f:java_stub#jetbrains.mps.ide.findusages.findalgorithm.finders.specific(jetbrains.mps.ide.findusages.findalgorithm.finders.specific@java_stub)" version="-1" />
  <import index="7" modelUID="f:java_stub#jetbrains.mps.project(jetbrains.mps.project@java_stub)" version="-1" />
  <import index="10" modelUID="f:java_stub#jetbrains.mps.ide.findusages.view(jetbrains.mps.ide.findusages.view@java_stub)" version="-1" />
  <import index="12" modelUID="f:java_stub#jetbrains.mps.nodeEditor(jetbrains.mps.nodeEditor@java_stub)" version="-1" />
  <import index="14" modelUID="f:java_stub#javax.swing(javax.swing@java_stub)" version="-1" />
  <import index="15" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="19" modelUID="f:java_stub#jetbrains.mps.workbench(jetbrains.mps.workbench@java_stub)" version="-1" />
  <import index="20" modelUID="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" version="-1" />
  <import index="23" modelUID="f:java_stub#java.awt(java.awt@java_stub)" version="-1" />
  <import index="24" modelUID="f:java_stub#java.awt.event(java.awt.event@java_stub)" version="-1" />
  <import index="25" modelUID="f:java_stub#jetbrains.mps.ide.dialogs(jetbrains.mps.ide.dialogs@java_stub)" version="-1" />
  <node type="jetbrains.mps.lang.plugin.structure.ActionDeclaration:23" id="1209308509191">
    <property name="name:23" value="FindModelUsages" />
    <property name="caption:23" value="Find Usages" />
    <property name="executeInNewThread:23" value="true" />
    <property name="iconPath:23" value="${language_descriptor}/icons/find.png" />
    <node role="executeFunction:23" type="jetbrains.mps.lang.plugin.structure.ExecuteBlock:23" id="1209308509192">
      <node role="body:23" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1209308509193">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1212510263877">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1212510263878">
            <property name="name:3" value="query" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ArrayType:3" id="1212510263879">
              <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1212510263880">
                <link role="classifier:3" targetNodeId="4.~SearchQuery" resolveInfo="SearchQuery" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1212510263881">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ArrayCreator:3" id="1212510263882">
                <node role="dimensionExpression:3" type="jetbrains.mps.baseLanguage.structure.DimensionExpression:3" id="1212510263883">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1212510263884">
                    <property name="value:3" value="1" />
                  </node>
                </node>
                <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1212510263885">
                  <link role="classifier:3" targetNodeId="4.~SearchQuery" resolveInfo="SearchQuery" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1212510263886">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1212510263887">
            <property name="name:3" value="provider" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ArrayType:3" id="1212510263888">
              <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1212510263889">
                <link role="classifier:3" targetNodeId="4.~IResultProvider" resolveInfo="IResultProvider" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1212510263890">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ArrayCreator:3" id="1212510263891">
                <node role="dimensionExpression:3" type="jetbrains.mps.baseLanguage.structure.DimensionExpression:3" id="1212510263892">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1212510263893">
                    <property name="value:3" value="1" />
                  </node>
                </node>
                <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1212510263894">
                  <link role="classifier:3" targetNodeId="4.~IResultProvider" resolveInfo="IResultProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1213881488061">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1213881488062">
            <property name="name:3" value="model" />
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1217420853699">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1213881488064">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1213881488065" />
                <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1217420648078">
                  <link role="member:23" targetNodeId="1217420648077" resolveInfo="model" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1217420855187">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~SModelDescriptor.getSModel():jetbrains.mps.smodel.SModel" resolveInfo="getSModel" />
              </node>
            </node>
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SModelType:16" id="1239568349836" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1213881499688">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1213881499689">
            <property name="name:3" value="scope" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1213881499690">
              <link role="classifier:3" targetNodeId="2.~IScope" resolveInfo="IScope" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1213881499691">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1213881499692" />
              <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1217420645634">
                <link role="member:23" targetNodeId="1217420645601" resolveInfo="scope" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.lang.plugin.structure.ExecuteLightweightCommandStatement:23" id="1212510263905">
          <node role="commandClosureLiteral:23" type="jetbrains.mps.lang.plugin.structure.CommandClosureLiteral:23" id="1212510263906">
            <node role="body:23" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1212510263907">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1212510263908">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1212510263909">
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1213874717233">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1213874717235">
                      <link role="baseMethodDeclaration:3" targetNodeId="4.~SearchQuery.&lt;init&gt;(jetbrains.mps.smodel.SModel,jetbrains.mps.smodel.IScope)" resolveInfo="SearchQuery" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1213881484102">
                        <link role="variableDeclaration:3" targetNodeId="1213881488062" resolveInfo="model" />
                      </node>
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1213881495947">
                        <link role="variableDeclaration:3" targetNodeId="1213881499689" resolveInfo="scope" />
                      </node>
                    </node>
                  </node>
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1212510263915">
                    <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1212510263916">
                      <property name="value:3" value="0" />
                    </node>
                    <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1212510263917">
                      <link role="variableDeclaration:3" targetNodeId="1212510263878" resolveInfo="query" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1212510263918">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1212510263919">
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1212510263920">
                    <link role="classConcept:3" targetNodeId="10.~FindUtils" resolveInfo="FindUtils" />
                    <link role="baseMethodDeclaration:3" targetNodeId="10.~FindUtils.makeProvider(jetbrains.mps.ide.findusages.findalgorithm.finders.IFinder...):jetbrains.mps.ide.findusages.model.IResultProvider" resolveInfo="makeProvider" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1213874720628">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1213874720632">
                        <link role="baseMethodDeclaration:3" targetNodeId="6.~ModelUsagesFinder.&lt;init&gt;()" resolveInfo="ModelUsagesFinder" />
                      </node>
                    </node>
                  </node>
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1212510263922">
                    <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1212510263923">
                      <property name="value:3" value="0" />
                    </node>
                    <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1212510263924">
                      <link role="variableDeclaration:3" targetNodeId="1212510263887" resolveInfo="provider" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1212510263925">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1212510263926">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1212510263927">
              <link role="baseMethodDeclaration:3" targetNodeId="10.~UsagesViewTool.findUsages(jetbrains.mps.ide.findusages.model.IResultProvider,jetbrains.mps.ide.findusages.model.SearchQuery,boolean,boolean,boolean,java.lang.String):void" resolveInfo="findUsages" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1212510263928">
                <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1212510263929">
                  <property name="value:3" value="0" />
                </node>
                <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1212510263930">
                  <link role="variableDeclaration:3" targetNodeId="1212510263887" resolveInfo="provider" />
                </node>
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1212510263931">
                <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1212510263932">
                  <property name="value:3" value="0" />
                </node>
                <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1212510263933">
                  <link role="variableDeclaration:3" targetNodeId="1212510263878" resolveInfo="query" />
                </node>
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1212510263934">
                <property name="value:3" value="true" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1212510263935">
                <property name="value:3" value="true" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1212510263936">
                <property name="value:3" value="false" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1224868595863">
                <property name="value:3" value="Model has no usages" />
              </node>
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1212510263937">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1212510263941">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~IOperationContext.getComponent(java.lang.Class):java.lang.Object" resolveInfo="getComponent" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression:3" id="1212510263942">
                  <link role="classifier:3" targetNodeId="10.~UsagesViewTool" resolveInfo="UsagesViewTool" />
                </node>
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1213874740012">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1213874740013" />
                <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1217420647959">
                  <link role="member:23" targetNodeId="1217420647958" resolveInfo="context" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="keystroke:23" type="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke:23" id="1209308529773">
      <property name="modifiers:23" value="alt" />
      <property name="keycode:23" value="VK_F7" />
    </node>
    <node role="parameter:23" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration:23" id="1217420645601">
      <property name="name:23" value="scope" />
      <link role="key:23" targetNodeId="19.~MPSDataKeys.SCOPE" resolveInfo="SCOPE" />
    </node>
    <node role="parameter:23" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration:23" id="1217420647958">
      <property name="name:23" value="context" />
      <link role="key:23" targetNodeId="19.~MPSDataKeys.OPERATION_CONTEXT" resolveInfo="OPERATION_CONTEXT" />
    </node>
    <node role="parameter:23" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration:23" id="1217420648077">
      <property name="name:23" value="model" />
      <link role="key:23" targetNodeId="19.~MPSDataKeys.MODEL" resolveInfo="MODEL" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration:23" id="1209309487963">
    <property name="name:23" value="FindModelUsages" />
    <node role="modifier:23" type="jetbrains.mps.lang.plugin.structure.ModificationStatement:23" id="1209309519622">
      <link role="modifiedGroup:23" targetNodeId="20.1204991218714" resolveInfo="ProjectPaneModelActions" />
    </node>
    <node role="contents:23" type="jetbrains.mps.lang.plugin.structure.ElementListContents:23" id="1209309494792">
      <node role="reference:23" type="jetbrains.mps.lang.plugin.structure.ActionInstance:23" id="1209309503949">
        <link role="action:23" targetNodeId="1209308509191" resolveInfo="FindModelUsages" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.plugin.structure.ActionDeclaration:23" id="1209824745368">
    <property name="name:23" value="FindLanguageUsages" />
    <property name="caption:23" value="Find Usages" />
    <property name="outsideCommandExecution:23" value="false" />
    <property name="executeInNewThread:23" value="true" />
    <property name="iconPath:23" value="${language_descriptor}/icons/find.png" />
    <node role="executeFunction:23" type="jetbrains.mps.lang.plugin.structure.ExecuteBlock:23" id="1209824745372">
      <node role="body:23" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1209824745373">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1212508818624">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1212508818625">
            <property name="name:3" value="query" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ArrayType:3" id="1212508829085">
              <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1212508818626">
                <link role="classifier:3" targetNodeId="4.~SearchQuery" resolveInfo="SearchQuery" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1212508842981">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ArrayCreator:3" id="1212508842982">
                <node role="dimensionExpression:3" type="jetbrains.mps.baseLanguage.structure.DimensionExpression:3" id="1212508842983">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1212508845875">
                    <property name="value:3" value="1" />
                  </node>
                </node>
                <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1212508842984">
                  <link role="classifier:3" targetNodeId="4.~SearchQuery" resolveInfo="SearchQuery" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1212508818627">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1212508818628">
            <property name="name:3" value="provider" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ArrayType:3" id="1212508834681">
              <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1212508818629">
                <link role="classifier:3" targetNodeId="4.~IResultProvider" resolveInfo="IResultProvider" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1212508852518">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ArrayCreator:3" id="1212508852519">
                <node role="dimensionExpression:3" type="jetbrains.mps.baseLanguage.structure.DimensionExpression:3" id="1212508852520">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1212508854897">
                    <property name="value:3" value="1" />
                  </node>
                </node>
                <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1212508852521">
                  <link role="classifier:3" targetNodeId="4.~IResultProvider" resolveInfo="IResultProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1212509212700">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1212509212701">
            <property name="name:3" value="module" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1212509212702">
              <link role="classifier:3" targetNodeId="7.~IModule" resolveInfo="IModule" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1212509223177">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1212509221938" />
              <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1217420647992">
                <link role="member:23" targetNodeId="1217420647991" resolveInfo="module" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1213881523711">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1213881523712">
            <property name="name:3" value="scope" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1213881523713">
              <link role="classifier:3" targetNodeId="2.~IScope" resolveInfo="IScope" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1213881523714">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1213881523715" />
              <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1217420648399">
                <link role="member:23" targetNodeId="1217420648398" resolveInfo="scope" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.lang.plugin.structure.ExecuteLightweightCommandStatement:23" id="1212509897275">
          <node role="commandClosureLiteral:23" type="jetbrains.mps.lang.plugin.structure.CommandClosureLiteral:23" id="1212509897276">
            <node role="body:23" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1212509897277">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1212509902424">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1212509902425">
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1213874167104">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1213874167106">
                      <link role="baseMethodDeclaration:3" targetNodeId="4.~SearchQuery.&lt;init&gt;(jetbrains.mps.project.IModule,jetbrains.mps.smodel.IScope)" resolveInfo="SearchQuery" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1212509902427">
                        <link role="variableDeclaration:3" targetNodeId="1212509212701" resolveInfo="module" />
                      </node>
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1213881520251">
                        <link role="variableDeclaration:3" targetNodeId="1213881523712" resolveInfo="scope" />
                      </node>
                    </node>
                  </node>
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1212509902431">
                    <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1212509902432">
                      <property name="value:3" value="0" />
                    </node>
                    <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1212509902433">
                      <link role="variableDeclaration:3" targetNodeId="1212508818625" resolveInfo="query" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1212509902434">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1212509902435">
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1212509902436">
                    <link role="classConcept:3" targetNodeId="10.~FindUtils" resolveInfo="FindUtils" />
                    <link role="baseMethodDeclaration:3" targetNodeId="10.~FindUtils.makeProvider(jetbrains.mps.ide.findusages.findalgorithm.finders.IFinder...):jetbrains.mps.ide.findusages.model.IResultProvider" resolveInfo="makeProvider" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1213874169998">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1213874170002">
                        <link role="baseMethodDeclaration:3" targetNodeId="6.~LanguageUsagesFinder.&lt;init&gt;()" resolveInfo="LanguageUsagesFinder" />
                      </node>
                    </node>
                  </node>
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1212509902438">
                    <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1212509902439">
                      <property name="value:3" value="0" />
                    </node>
                    <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1212509902440">
                      <link role="variableDeclaration:3" targetNodeId="1212508818628" resolveInfo="provider" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1209824745404">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1209824745405">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1209824745407">
              <link role="baseMethodDeclaration:3" targetNodeId="10.~UsagesViewTool.findUsages(jetbrains.mps.ide.findusages.model.IResultProvider,jetbrains.mps.ide.findusages.model.SearchQuery,boolean,boolean,boolean,java.lang.String):void" resolveInfo="findUsages" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1212508905803">
                <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1212508909593">
                  <property name="value:3" value="0" />
                </node>
                <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1209824745408">
                  <link role="variableDeclaration:3" targetNodeId="1212508818628" resolveInfo="provider" />
                </node>
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1212508912067">
                <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1212508913151">
                  <property name="value:3" value="0" />
                </node>
                <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1209824745409">
                  <link role="variableDeclaration:3" targetNodeId="1212508818625" resolveInfo="query" />
                </node>
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1209824745410">
                <property name="value:3" value="true" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1209824745411">
                <property name="value:3" value="true" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1209824745412">
                <property name="value:3" value="false" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1224868618435">
                <property name="value:3" value="Language has no usages" />
              </node>
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1211530062952">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1211530064378">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~IOperationContext.getComponent(java.lang.Class):java.lang.Object" resolveInfo="getComponent" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression:3" id="1211530066896">
                  <link role="classifier:3" targetNodeId="10.~UsagesViewTool" resolveInfo="UsagesViewTool" />
                </node>
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1213874199613">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1213874199614" />
                <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1217420648180">
                  <link role="member:23" targetNodeId="1217420648179" resolveInfo="context" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="keystroke:23" type="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke:23" id="1209824745413">
      <property name="modifiers:23" value="alt" />
      <property name="keycode:23" value="VK_F7" />
    </node>
    <node role="updateBlock:23" type="jetbrains.mps.lang.plugin.structure.IsApplicableBlock:23" id="1209825222420">
      <node role="body:23" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1209825222421">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1209825243697">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="1209825245043">
            <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1209825251126">
              <link role="classifier:3" targetNodeId="2.~Language" resolveInfo="Language" />
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1209825245045">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1209825245046" />
              <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1217420647993">
                <link role="member:23" targetNodeId="1217420647991" resolveInfo="module" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="parameter:23" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration:23" id="1217420647991">
      <property name="name:23" value="module" />
      <link role="key:23" targetNodeId="19.~MPSDataKeys.MODULE" resolveInfo="MODULE" />
    </node>
    <node role="parameter:23" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration:23" id="1217420648179">
      <property name="name:23" value="context" />
      <link role="key:23" targetNodeId="19.~MPSDataKeys.OPERATION_CONTEXT" resolveInfo="OPERATION_CONTEXT" />
    </node>
    <node role="parameter:23" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration:23" id="1217420648398">
      <property name="name:23" value="scope" />
      <link role="key:23" targetNodeId="19.~MPSDataKeys.SCOPE" resolveInfo="SCOPE" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration:23" id="1209825453635">
    <property name="name:23" value="FindLanguageUsages" />
    <node role="modifier:23" type="jetbrains.mps.lang.plugin.structure.ModificationStatement:23" id="1209825453636">
      <link role="modifiedGroup:23" targetNodeId="20.1204991224874" resolveInfo="LanguageActions" />
      <link role="point:23" targetNodeId="20.1237991719437" resolveInfo="find_usages" />
    </node>
    <node role="contents:23" type="jetbrains.mps.lang.plugin.structure.ElementListContents:23" id="1209825453637">
      <node role="reference:23" type="jetbrains.mps.lang.plugin.structure.ActionInstance:23" id="1209825453638">
        <link role="action:23" targetNodeId="1209824745368" resolveInfo="FindLanguageUsages" />
      </node>
      <node role="reference:23" type="jetbrains.mps.lang.plugin.structure.ActionInstance:23" id="1225978251202">
        <link role="action:23" targetNodeId="1225978220759" resolveInfo="FindLanguageConceptsUsages" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.plugin.structure.ActionDeclaration:23" id="1210951952325">
    <property name="name:23" value="ShowNodeMessages" />
    <property name="caption:23" value="Show Node Messages" />
    <node role="executeFunction:23" type="jetbrains.mps.lang.plugin.structure.ExecuteBlock:23" id="1210951952326">
      <node role="body:23" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1210951952327">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1210953046695">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1210953046696">
            <property name="name:3" value="messages" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="1237047119248">
              <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1237047119249">
                <link role="classifier:3" targetNodeId="12.~EditorMessage" resolveInfo="EditorMessage" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1210953046699">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1210953046700">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1210953046701">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1210953046702" />
                  <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1217420648995">
                    <link role="member:23" targetNodeId="1217420648994" resolveInfo="editorComponent" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1210953046704">
                  <link role="baseMethodDeclaration:3" targetNodeId="12.~EditorComponent.getHighlightManager():jetbrains.mps.nodeEditor.NodeHighlightManager" resolveInfo="getHighlightManager" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1210953046705">
                <link role="baseMethodDeclaration:3" targetNodeId="12.~NodeHighlightManager.getMessagesFor(jetbrains.mps.smodel.SNode):java.util.List" resolveInfo="getMessagesFor" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1210953046706">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1210953046707" />
                  <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1217420648897">
                    <link role="member:23" targetNodeId="1217420648896" resolveInfo="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1210953376370">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1210953376371">
            <property name="name:3" value="sb" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1210953376372">
              <link role="classifier:3" targetNodeId="15.~StringBuilder" resolveInfo="StringBuilder" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1213727895121">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1213727895123">
                <link role="baseMethodDeclaration:3" targetNodeId="15.~StringBuilder.&lt;init&gt;()" resolveInfo="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="1210953414956">
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1210953414957">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1210953446377">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1210953446865">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1210953446378">
                  <link role="variableDeclaration:3" targetNodeId="1210953376371" resolveInfo="sb" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1210953454386">
                  <link role="baseMethodDeclaration:3" targetNodeId="15.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1210953476694">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1210953475535">
                      <link role="variableDeclaration:3" targetNodeId="1210953414960" resolveInfo="message" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1210953493034">
                      <link role="baseMethodDeclaration:3" targetNodeId="12.~EditorMessage.getMessage():java.lang.String" resolveInfo="getMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1210953498759">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1210953499185">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1210953498760">
                  <link role="variableDeclaration:3" targetNodeId="1210953376371" resolveInfo="sb" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1210953501283">
                  <link role="baseMethodDeclaration:3" targetNodeId="15.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1210953502208">
                    <property name="value:3" value="; owner is " />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1210953523715">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1210953524187">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1210953523716">
                  <link role="variableDeclaration:3" targetNodeId="1210953376371" resolveInfo="sb" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1210953525974">
                  <link role="baseMethodDeclaration:3" targetNodeId="15.~StringBuilder.append(java.lang.Object):java.lang.StringBuilder" resolveInfo="append" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1210953530511">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1210953529399">
                      <link role="variableDeclaration:3" targetNodeId="1210953414960" resolveInfo="message" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1210953533157">
                      <link role="baseMethodDeclaration:3" targetNodeId="12.~EditorMessage.getOwner():jetbrains.mps.nodeEditor.EditorMessageOwner" resolveInfo="getOwner" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1210953540140">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1210953540659">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1210953540141">
                  <link role="variableDeclaration:3" targetNodeId="1210953376371" resolveInfo="sb" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1210953542414">
                  <link role="baseMethodDeclaration:3" targetNodeId="15.~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolveInfo="append" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1210953543870">
                    <property name="value:3" value="\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1210953442108">
            <link role="variableDeclaration:3" targetNodeId="1210953046696" resolveInfo="messages" />
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1210953414960">
            <property name="name:3" value="message" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1210953436370">
              <link role="classifier:3" targetNodeId="12.~EditorMessage" resolveInfo="EditorMessage" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7100928452798584947">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="7100928452798584948">
            <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="7100928452798599334">
              <link role="baseMethodDeclaration:3" targetNodeId="25.~ScrollingMessageDialog.&lt;init&gt;(java.awt.Frame,java.lang.String,java.lang.String)" resolveInfo="ScrollingMessageDialog" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7100928452798599337">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="7100928452798599338" />
                <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="7100928452798599339">
                  <link role="member:23" targetNodeId="7100928452798599336" resolveInfo="frame" />
                </node>
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7100928452798599341">
                <property name="value:3" value="node messages" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7100928452798599344">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7100928452798599343">
                  <link role="variableDeclaration:3" targetNodeId="1210953376371" resolveInfo="sb" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7100928452798599348">
                  <link role="baseMethodDeclaration:3" targetNodeId="15.~StringBuilder.toString():java.lang.String" resolveInfo="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="keystroke:23" type="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke:23" id="1210952509952">
      <property name="modifiers:23" value="alt+shift" />
      <property name="keycode:23" value="VK_M" />
    </node>
    <node role="updateBlock:23" type="jetbrains.mps.lang.plugin.structure.IsApplicableBlock:23" id="1210952584861">
      <node role="body:23" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1210952584862">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1210952947639">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="1210953024856">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1210953024857">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="1238601748268">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1238601748269">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1238601748270">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1238601748271">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1238601748272">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1238601748273" />
                        <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1238601748274">
                          <link role="member:23" targetNodeId="1217420648994" resolveInfo="editorComponent" />
                        </node>
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1238601748275">
                        <link role="baseMethodDeclaration:3" targetNodeId="12.~EditorComponent.getHighlightManager():jetbrains.mps.nodeEditor.NodeHighlightManager" resolveInfo="getHighlightManager" />
                      </node>
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1238601748276">
                      <link role="baseMethodDeclaration:3" targetNodeId="12.~NodeHighlightManager.getMessagesFor(jetbrains.mps.smodel.SNode):java.util.List" resolveInfo="getMessagesFor" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1238601748277">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1238601748278" />
                        <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1238601748279">
                          <link role="member:23" targetNodeId="1217420648896" resolveInfo="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="1238601751216">
                    <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1238601776805">
                      <link role="classifier:3" targetNodeId="12.~EditorMessage" resolveInfo="EditorMessage" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation:7" id="1238601789387" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="parameter:23" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration:23" id="1217420648896">
      <property name="name:23" value="node" />
      <link role="key:23" targetNodeId="19.~MPSDataKeys.NODE" resolveInfo="NODE" />
    </node>
    <node role="parameter:23" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration:23" id="1217420648994">
      <property name="name:23" value="editorComponent" />
      <link role="key:23" targetNodeId="19.~MPSDataKeys.EDITOR_COMPONENT" resolveInfo="EDITOR_COMPONENT" />
    </node>
    <node role="parameter:23" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration:23" id="7100928452798599336">
      <property name="name:23" value="frame" />
      <link role="key:23" targetNodeId="19.~MPSDataKeys.FRAME" resolveInfo="FRAME" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration:23" id="1210953591078">
    <property name="name:23" value="CoreActions" />
    <node role="contents:23" type="jetbrains.mps.lang.plugin.structure.ElementListContents:23" id="1210953612813">
      <node role="reference:23" type="jetbrains.mps.lang.plugin.structure.ActionInstance:23" id="1210953638916">
        <link role="action:23" targetNodeId="1210951952325" resolveInfo="ShowNodeErrors" />
      </node>
    </node>
    <node role="modifier:23" type="jetbrains.mps.lang.plugin.structure.ModificationStatement:23" id="1210953672824">
      <link role="modifiedGroup:23" targetNodeId="20.1204991231476" resolveInfo="EditorPopup" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.plugin.structure.ActionDeclaration:23" id="1225978220759">
    <property name="name:23" value="FindLanguageConceptsUsages" />
    <property name="caption:23" value="Find Concepts Usages" />
    <property name="outsideCommandExecution:23" value="false" />
    <property name="executeInNewThread:23" value="true" />
    <property name="iconPath:23" value="${language_descriptor}/icons/find.png" />
    <node role="executeFunction:23" type="jetbrains.mps.lang.plugin.structure.ExecuteBlock:23" id="1225978220760">
      <node role="body:23" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225978220761">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1225978220762">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1225978220763">
            <property name="name:3" value="query" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ArrayType:3" id="1225978220764">
              <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1225978220765">
                <link role="classifier:3" targetNodeId="4.~SearchQuery" resolveInfo="SearchQuery" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1225978220766">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ArrayCreator:3" id="1225978220767">
                <node role="dimensionExpression:3" type="jetbrains.mps.baseLanguage.structure.DimensionExpression:3" id="1225978220768">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1225978220769">
                    <property name="value:3" value="1" />
                  </node>
                </node>
                <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1225978220770">
                  <link role="classifier:3" targetNodeId="4.~SearchQuery" resolveInfo="SearchQuery" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1225978220771">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1225978220772">
            <property name="name:3" value="provider" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ArrayType:3" id="1225978220773">
              <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1225978220774">
                <link role="classifier:3" targetNodeId="4.~IResultProvider" resolveInfo="IResultProvider" />
              </node>
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1225978220775">
              <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ArrayCreator:3" id="1225978220776">
                <node role="dimensionExpression:3" type="jetbrains.mps.baseLanguage.structure.DimensionExpression:3" id="1225978220777">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1225978220778">
                    <property name="value:3" value="1" />
                  </node>
                </node>
                <node role="componentType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1225978220779">
                  <link role="classifier:3" targetNodeId="4.~IResultProvider" resolveInfo="IResultProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1225978220780">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1225978220781">
            <property name="name:3" value="module" />
            <property name="isFinal:3" value="true" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1225978220782">
              <link role="classifier:3" targetNodeId="7.~IModule" resolveInfo="IModule" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225978220783">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1225978220784" />
              <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1225978220785">
                <link role="member:23" targetNodeId="1225978220840" resolveInfo="module" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1225978220786">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1225978220787">
            <property name="name:3" value="scope" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1225978220788">
              <link role="classifier:3" targetNodeId="2.~IScope" resolveInfo="IScope" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225978220789">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1225978220790" />
              <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1225978220791">
                <link role="member:23" targetNodeId="1225978220842" resolveInfo="scope" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.lang.plugin.structure.ExecuteLightweightCommandStatement:23" id="1225978220792">
          <node role="commandClosureLiteral:23" type="jetbrains.mps.lang.plugin.structure.CommandClosureLiteral:23" id="1225978220793">
            <node role="body:23" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225978220794">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1225978220795">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1225978220796">
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1225978220797">
                    <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1225978220798">
                      <link role="baseMethodDeclaration:3" targetNodeId="4.~SearchQuery.&lt;init&gt;(jetbrains.mps.project.IModule,jetbrains.mps.smodel.IScope)" resolveInfo="SearchQuery" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1225978220799">
                        <link role="variableDeclaration:3" targetNodeId="1225978220781" resolveInfo="module" />
                      </node>
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1225978220800">
                        <link role="variableDeclaration:3" targetNodeId="1225978220787" resolveInfo="scope" />
                      </node>
                    </node>
                  </node>
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1225978220801">
                    <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1225978220802">
                      <property name="value:3" value="0" />
                    </node>
                    <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1225978220803">
                      <link role="variableDeclaration:3" targetNodeId="1225978220763" resolveInfo="query" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1225978220804">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="1225978220805">
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1225978220806">
                    <link role="classConcept:3" targetNodeId="10.~FindUtils" resolveInfo="FindUtils" />
                    <link role="baseMethodDeclaration:3" targetNodeId="10.~FindUtils.makeProvider(jetbrains.mps.ide.findusages.findalgorithm.finders.IFinder...):jetbrains.mps.ide.findusages.model.IResultProvider" resolveInfo="makeProvider" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1225978220807">
                      <node role="creator:3" type="jetbrains.mps.baseLanguage.structure.ClassCreator:3" id="1225979807964">
                        <link role="baseMethodDeclaration:3" targetNodeId="6.~LanguageConceptsUsagesFinder.&lt;init&gt;()" resolveInfo="LanguageConceptsUsagesFinder" />
                      </node>
                    </node>
                  </node>
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1225978220809">
                    <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1225978220810">
                      <property name="value:3" value="0" />
                    </node>
                    <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1225978220811">
                      <link role="variableDeclaration:3" targetNodeId="1225978220772" resolveInfo="provider" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1225978220812">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225978220813">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1225978220814">
              <link role="baseMethodDeclaration:3" targetNodeId="10.~UsagesViewTool.findUsages(jetbrains.mps.ide.findusages.model.IResultProvider,jetbrains.mps.ide.findusages.model.SearchQuery,boolean,boolean,boolean,java.lang.String):void" resolveInfo="findUsages" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1225978220815">
                <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1225978220816">
                  <property name="value:3" value="0" />
                </node>
                <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1225978220817">
                  <link role="variableDeclaration:3" targetNodeId="1225978220772" resolveInfo="provider" />
                </node>
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression:3" id="1225978220818">
                <node role="index:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="1225978220819">
                  <property name="value:3" value="0" />
                </node>
                <node role="array:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1225978220820">
                  <link role="variableDeclaration:3" targetNodeId="1225978220763" resolveInfo="query" />
                </node>
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1225978220821">
                <property name="value:3" value="true" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1225978220822">
                <property name="value:3" value="true" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1225978220823">
                <property name="value:3" value="false" />
              </node>
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1225978220824">
                <property name="value:3" value="There are no usages of language's concepts" />
              </node>
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225978220825">
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1225978220826">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~IOperationContext.getComponent(java.lang.Class):java.lang.Object" resolveInfo="getComponent" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression:3" id="1225978220827">
                  <link role="classifier:3" targetNodeId="10.~UsagesViewTool" resolveInfo="UsagesViewTool" />
                </node>
              </node>
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225978220828">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1225978220829" />
                <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1225978220830">
                  <link role="member:23" targetNodeId="1225978220841" resolveInfo="context" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="keystroke:23" type="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke:23" id="1225978220831">
      <property name="modifiers:23" value="alt" />
      <property name="keycode:23" value="VK_F8" />
    </node>
    <node role="updateBlock:23" type="jetbrains.mps.lang.plugin.structure.IsApplicableBlock:23" id="1225978220832">
      <node role="body:23" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225978220833">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1225978353908">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225978353909">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1225979441294">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1225979442625">
                <property name="value:3" value="false" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotExpression:3" id="1225979438053">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression:3" id="1225979438789">
              <node role="classType:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1225979438790">
                <link role="classifier:3" targetNodeId="2.~Language" resolveInfo="Language" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225979438791">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1225979438792" />
                <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1225979438793">
                  <link role="member:23" targetNodeId="1225978220840" resolveInfo="module" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1225979453804">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1225979453805">
            <property name="name:3" value="language" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1225979453806">
              <link role="classifier:3" targetNodeId="2.~Language" resolveInfo="Language" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1225979483450">
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1225979483451">
                <link role="classifier:3" targetNodeId="2.~Language" resolveInfo="Language" />
              </node>
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225979486500">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression:0" id="1225979487112" />
                <node role="operation:3" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation:23" id="1225979486502">
                  <link role="member:23" targetNodeId="1225978220840" resolveInfo="module" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1225979524713">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1225979524714">
            <property name="name:3" value="structureModelDescriptor" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1225979524715">
              <link role="classifier:3" targetNodeId="2.~SModelDescriptor" resolveInfo="SModelDescriptor" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225979524716">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1225979524717">
                <link role="variableDeclaration:3" targetNodeId="1225979453805" resolveInfo="language" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1225979524718">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~Language.getStructureModelDescriptor():jetbrains.mps.smodel.SModelDescriptor" resolveInfo="getStructureModelDescriptor" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1225979445830">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225979445831">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1225979502798">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1225979504191">
                <property name="value:3" value="false" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1225979498966">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1225979499610" />
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1225979524719">
              <link role="variableDeclaration:3" targetNodeId="1225979524714" resolveInfo="structureModelDescriptor" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1225979507209">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225979507210">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1225979544421">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1225979547564">
                <property name="value:3" value="false" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225979541354">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression:3" id="1238601725411">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="1238601725412">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1238601725413">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1238601725414">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1238601725415">
                      <link role="variableDeclaration:3" targetNodeId="1225979524714" resolveInfo="structureModelDescriptor" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1238601725416">
                      <link role="baseMethodDeclaration:3" targetNodeId="2.~SModelDescriptor.getSModel():jetbrains.mps.smodel.SModel" resolveInfo="getSModel" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1238601725417">
                    <link role="baseMethodDeclaration:3" targetNodeId="2.~SModel.getRoots():java.util.List" resolveInfo="getRoots" />
                  </node>
                </node>
                <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="1238601729691">
                  <node role="elementType:7" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1238601736499" />
                </node>
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation:7" id="1238601789458" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1225978220834">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1225979549816">
            <property name="value:3" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node role="parameter:23" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration:23" id="1225978220840">
      <property name="name:23" value="module" />
      <link role="key:23" targetNodeId="19.~MPSDataKeys.MODULE" resolveInfo="MODULE" />
    </node>
    <node role="parameter:23" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration:23" id="1225978220841">
      <property name="name:23" value="context" />
      <link role="key:23" targetNodeId="19.~MPSDataKeys.OPERATION_CONTEXT" resolveInfo="OPERATION_CONTEXT" />
    </node>
    <node role="parameter:23" type="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration:23" id="1225978220842">
      <property name="name:23" value="scope" />
      <link role="key:23" targetNodeId="19.~MPSDataKeys.SCOPE" resolveInfo="SCOPE" />
    </node>
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:5ded834e-7aa1-4421-99c4-8c6f57ab5057(jetbrains.mps.lang.textGen.scripts)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="0eddeefa-c2d6-4437-bc2c-de50fd4ce470(jetbrains.mps.lang.script)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <languageAspect modelUID="r:de0d3c0c-d049-41cf-bbf9-a920ba513cd3(jetbrains.mps.lang.textGen.structure)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959031e(jetbrains.mps.lang.script.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590323(jetbrains.mps.lang.script.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ae(jetbrains.mps.lang.typesystem.constraints)" version="17" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959033d(jetbrains.mps.lang.annotations.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590340(jetbrains.mps.lang.pattern.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" version="0" />
  <devkit namespace="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  <maxImportIndex value="3" />
  <import index="1" modelUID="r:de0d3c0c-d049-41cf-bbf9-a920ba513cd3(jetbrains.mps.lang.textGen.structure)" version="11" />
  <visible index="2" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
  <node type="jetbrains.mps.lang.script.structure.MigrationScript:0" id="1237978428015">
    <property name="name:0" value="OperationCall" />
    <property name="migrationFromBuild:0" value="5270" />
    <property name="title:0" value="modify operation call" />
    <node role="part:0" type="jetbrains.mps.lang.script.structure.MigrationScriptPart_Instance:0" id="1237978442532">
      <property name="description:0" value="operation call" />
      <link role="affectedInstanceConcept:0" targetNodeId="2v.1068580123136:3" resolveInfo="StatementList" />
      <node role="affectedInstanceUpdater:0" type="jetbrains.mps.lang.script.structure.MigrationScriptPart_Instance_Updater:0" id="1237978442533">
        <node role="body:0" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1237978442534">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="1237980813771">
            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1237980813772">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1237980842067">
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1237980842068">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1237980852579">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1237980852580">
                      <property name="name:3" value="append" />
                      <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1237980852581">
                        <link role="concept:16" targetNodeId="1.1237306079178:11" resolveInfo="AppendOperation" />
                      </node>
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1237980875646">
                        <node role="creator:3" type="jetbrains.mps.lang.smodel.structure.SNodeCreator:16" id="1237980875647">
                          <node role="createdType:16" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1237980875648">
                            <link role="concept:16" targetNodeId="1.1237306079178:11" resolveInfo="AppendOperation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1237980879166">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237980883174">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237980879512">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1237980879167">
                          <link role="variableDeclaration:3" targetNodeId="1237980852580" resolveInfo="append" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="1237980882626">
                          <link role="link:16" targetNodeId="1.1237306115446:11" />
                        </node>
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation:7" id="1810715974610193548" />
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1237980886697">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237980892689">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237980887370">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1237980886698">
                          <link role="variableDeclaration:3" targetNodeId="1237980852580" resolveInfo="append" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="1237980890141">
                          <link role="link:16" targetNodeId="1.1237306115446:11" />
                        </node>
                      </node>
                      <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation:7" id="1810715974610193457">
                        <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237980900104">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1237980899634">
                            <link role="variableDeclaration:3" targetNodeId="1237980813775" resolveInfo="st" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_CopyOperation:16" id="1237980902266" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1237980909910">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237980911803">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1237980909911">
                        <link role="variableDeclaration:3" targetNodeId="1237980813775" resolveInfo="st" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation:16" id="1237980913932">
                        <node role="replacementNode:16" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1237980916465">
                          <link role="variableDeclaration:3" targetNodeId="1237980852580" resolveInfo="append" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237980843963">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1237980843634">
                    <link role="variableDeclaration:3" targetNodeId="1237980813775" resolveInfo="st" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="1237980846061">
                    <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="1237980849532">
                      <link role="conceptDeclaration:16" targetNodeId="1.1233924848298:11" resolveInfo="OperationCall" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237980838885">
              <node role="operand:3" type="jetbrains.mps.lang.script.structure.MigrationScriptPart_node:0" id="1237980836974" />
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="1237980840063">
                <link role="link:16" targetNodeId="2v.1068581517665:3" />
              </node>
            </node>
            <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1237980813775">
              <property name="name:3" value="st" />
              <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1237980814951" />
            </node>
          </node>
        </node>
      </node>
      <node role="affectedInstancePredicate:0" type="jetbrains.mps.lang.script.structure.MigrationScriptPart_Instance_Predicate:0" id="1237978456364">
        <node role="body:0" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1237978456365">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="1237978465228">
            <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237978474136">
              <node role="operand:3" type="jetbrains.mps.lang.script.structure.MigrationScriptPart_node:0" id="1237978473725" />
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="1237978476486">
                <link role="link:16" targetNodeId="2v.1068581517665:3" />
              </node>
            </node>
            <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1237978465230">
              <property name="name:3" value="st" />
              <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1237978466297">
                <link role="concept:16" targetNodeId="2v.1068580123157:3" resolveInfo="Statement" />
              </node>
            </node>
            <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1237978465232">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1237978479099">
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237978481916">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1237978481555">
                    <link role="variableDeclaration:3" targetNodeId="1237978465230" resolveInfo="st" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="1237978483951">
                    <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="1237978487844">
                      <link role="conceptDeclaration:16" targetNodeId="1.1233924848298:11" resolveInfo="OperationCall" />
                    </node>
                  </node>
                </node>
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1237978479101">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1237978490173">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1237978491910">
                      <property name="value:3" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1237978494756">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="1237978497180">
              <property name="value:3" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


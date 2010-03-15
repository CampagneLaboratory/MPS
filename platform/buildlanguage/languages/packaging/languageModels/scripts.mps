<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:f8865b9f-a812-4e82-aa10-5f3c41123c24(jetbrains.mps.build.packaging.scripts)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="4e6c5313-7662-4c44-9bc7-b488cec17508(jetbrains.mps.build.packaging)" />
  <language namespace="0eddeefa-c2d6-4437-bc2c-de50fd4ce470(jetbrains.mps.lang.script)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895904de(jetbrains.mps.build.property.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895904d4(jetbrains.mps.build.packaging.constraints)" version="20" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895904c8(jetbrains.mps.buildlanguage.structure)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590323(jetbrains.mps.lang.script.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895904e2(jetbrains.mps.build.property.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895904d8(jetbrains.mps.build.packaging.structure)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895904c1(jetbrains.mps.buildlanguage.constraints)" version="32" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959031e(jetbrains.mps.lang.script.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895904c7(jetbrains.mps.buildlanguage.plugin)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895904c2(jetbrains.mps.buildlanguage.editor)" version="0" />
  <devkit namespace="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  <maxImportIndex value="1" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c895904d8(jetbrains.mps.build.packaging.structure)" version="7" />
  <visible index="2" modelUID="r:00000000-0000-4000-0000-011c895904d3(jetbrains.mps.build.packaging.behavior)" />
  <visible index="3" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  <visible index="4" modelUID="f:java_stub#java.lang(java.lang@java_stub)" />
  <node type="jetbrains.mps.lang.script.structure.MigrationScript:0" id="7323449223785111020">
    <property name="name:0" value="RemoveBuiltInVariables" />
    <property name="title:0" value="Remove Built-In Variables" />
    <property name="category:0" value="Build Languages" />
    <node role="part:0" type="jetbrains.mps.lang.script.structure.MigrationScriptPart_Instance:0" id="7323449223785111021">
      <property name="description:0" value="Remove Built-In Variables From Build Scripts And Uses Declarations From Accessories Instead" />
      <property name="showAsIntention:0" value="true" />
      <link role="affectedInstanceConcept:0" targetNodeId="1.1202916958754:7" resolveInfo="MPSLayout" />
      <node role="affectedInstanceUpdater:0" type="jetbrains.mps.lang.script.structure.MigrationScriptPart_Instance_Updater:0" id="7323449223785111022">
        <node role="body:0" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7323449223785111023">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" id="7323449223785132368">
            <node role="variable" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" id="7323449223785132369">
              <property name="name" value="ref" />
            </node>
            <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785132374">
              <node role="operand:3" type="jetbrains.mps.lang.script.structure.MigrationScriptPart_node:0" id="7323449223785132373" />
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" id="7323449223785132379">
                <node role="parameter" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" id="7323449223785132380">
                  <node role="conceptArgument" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" id="7323449223785132384">
                    <link role="conceptDeclaration" targetNodeId="1.1205339464939:7" resolveInfo="VariableReference" />
                  </node>
                </node>
              </node>
            </node>
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7323449223785132371">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7323449223785132386">
                <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7323449223785132388">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7323449223785135321">
                    <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7323449223785135322">
                      <property name="name:3" value="newVariable" />
                      <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="7323449223785135323">
                        <link role="concept" targetNodeId="1.1205335290326:7" resolveInfo="Variable" />
                      </node>
                      <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785135324">
                        <node role="operand:3" type="jetbrains.mps.lang.smodel.structure.StaticConceptMethodCall" id="7323449223785135325">
                          <link role="concept" targetNodeId="1.1205335290326:7" resolveInfo="Variable" />
                          <link role="baseMethodDeclaration" targetNodeId="2v.7323449223785133410" resolveInfo="getDefaultVariables" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" id="7323449223785135326">
                          <node role="closure" type="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" id="7323449223785135327">
                            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7323449223785135328">
                              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7323449223785135329">
                                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785135330">
                                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785135331">
                                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7323449223785135332">
                                      <link role="variableDeclaration:3" targetNodeId="7323449223785135340" resolveInfo="var" />
                                    </node>
                                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="7323449223785135333">
                                      <link role="property" targetNodeId="3v.1169194664001:0" resolveInfo="name" />
                                    </node>
                                  </node>
                                  <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7323449223785135334">
                                    <link role="baseMethodDeclaration:3" targetNodeId="4v.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785135335">
                                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785135336">
                                        <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" id="7323449223785135337">
                                          <link role="variable" targetNodeId="7323449223785132369" resolveInfo="ref" />
                                        </node>
                                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="7323449223785135338">
                                          <link role="link" targetNodeId="1.1205339484191:7" />
                                        </node>
                                      </node>
                                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess" id="7323449223785135339">
                                        <link role="property" targetNodeId="3v.1169194664001:0" resolveInfo="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="parameter" type="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" id="7323449223785135340">
                              <property name="name" value="var" />
                              <node role="type" type="jetbrains.mps.baseLanguage.structure.WildCardType:3" id="7323449223785135341" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7323449223785135348">
                    <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785135360">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785135352">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" id="7323449223785135349">
                          <link role="variable" targetNodeId="7323449223785132369" resolveInfo="ref" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="7323449223785135358">
                          <link role="link" targetNodeId="1.1205339484191:7" />
                        </node>
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" id="7323449223785135364">
                        <node role="linkTarget" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7323449223785151911">
                          <link role="variableDeclaration:3" targetNodeId="7323449223785135322" resolveInfo="newVariable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785132395">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785132390">
                    <node role="operand:3" type="jetbrains.mps.lang.script.structure.MigrationScriptPart_node:0" id="7323449223785132389" />
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="7323449223785132394">
                      <link role="link" targetNodeId="1.1205337304382:7" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" id="7323449223785132399">
                    <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785132405">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" id="7323449223785132402">
                        <link role="variable" targetNodeId="7323449223785132369" resolveInfo="ref" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="7323449223785132412">
                        <link role="link" targetNodeId="1.1205339484191:7" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7323449223785151914">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785151921">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785151916">
                <node role="operand:3" type="jetbrains.mps.lang.script.structure.MigrationScriptPart_node:0" id="7323449223785151915" />
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="7323449223785151920">
                  <link role="link" targetNodeId="1.1205337304382:7" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" id="7323449223785151925" />
            </node>
          </node>
        </node>
      </node>
      <node role="affectedInstancePredicate:0" type="jetbrains.mps.lang.script.structure.MigrationScriptPart_Instance_Predicate:0" id="7323449223785111024">
        <node role="body:0" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7323449223785111025">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7323449223785111026">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785132363">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7323449223785111028">
                <node role="operand:3" type="jetbrains.mps.lang.script.structure.MigrationScriptPart_node:0" id="7323449223785111027" />
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="7323449223785132362">
                  <link role="link" targetNodeId="1.1205337304382:7" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" id="7323449223785132367" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:7119da0f-4b4d-46d9-adcc-2ac001a0ec2b(jetbrains.mps.lang.plugin.generator.baseLanguage.template.commands@generator)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903fe(jetbrains.mps.baseLanguage.strings.constraints)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902f3(jetbrains.mps.lang.generator.generationContext.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ba(jetbrains.mps.lang.sharedConcepts.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" version="23" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590402(jetbrains.mps.baseLanguage.strings.structure)" version="9" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590361(jetbrains.mps.lang.plugin.constraints)" version="19" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959036e(jetbrains.mps.baseLanguage.classifiers.constraints)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)" version="0" />
  <maxImportIndex value="5" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" version="23" />
  <import index="2" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="3" modelUID="r:00000000-0000-4000-0000-011c89590369(jetbrains.mps.lang.plugin.generator.baseLanguage.template.main@generator)" version="-1" />
  <node type="jetbrains.mps.lang.generator.structure.MappingConfiguration:2" id="1225441503865">
    <property name="name:2" value="mc_commands" />
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="1225441503866">
      <link role="applicableConcept:2" targetNodeId="1.1225441285519:23" resolveInfo="ExecuteCommandStatement" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference:2" id="1225441503867">
        <link role="template:2" targetNodeId="1225441503876" resolveInfo="reduce_ExecuteCommand" />
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="1225441503868">
      <link role="applicableConcept:2" targetNodeId="1.1225441341971:23" resolveInfo="ExecuteLightweightCommandStatement" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference:2" id="1225441503869">
        <link role="template:2" targetNodeId="1225441503936" resolveInfo="reduce_ExecuteLightweightCommand" />
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="1225441503870">
      <link role="applicableConcept:2" targetNodeId="1.1225441312937:23" resolveInfo="ExecuteEDTCommandStatement" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference:2" id="1225441503871">
        <link role="template:2" targetNodeId="1225441503916" resolveInfo="reduce_ExecuteEDTCommand" />
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="1225441503872">
      <link role="applicableConcept:2" targetNodeId="1.1225441380935:23" resolveInfo="ExecuteWriteActionStatement" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference:2" id="1225441503873">
        <link role="template:2" targetNodeId="1225441503956" resolveInfo="reduce_ExecuteWriteAction" />
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="1225441503874">
      <link role="applicableConcept:2" targetNodeId="1.1225441257564:23" resolveInfo="ExecuteCommandInEDTStatement" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference:2" id="1225441503875">
        <link role="template:2" targetNodeId="1225441503896" resolveInfo="reduce_ExecuteCommandInEDTStatement" />
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="3062002558005338729">
      <property name="package:2" value="Tool.Methods" />
      <link role="applicableConcept:2" targetNodeId="1.5896642449625987000:23" resolveInfo="AddTabOperation" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference:2" id="3062002558005338731">
        <link role="template:2" targetNodeId="3.3062002558005753444" resolveInfo="reduce_AddTabOperation" />
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="3062002558005860135">
      <property name="package:2" value="Tool.Methods" />
      <link role="applicableConcept:2" targetNodeId="1.5896642449625987000:23" resolveInfo="AddTabOperation" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference:2" id="3062002558005860137">
        <link role="template:2" targetNodeId="3.3062002558005753444" resolveInfo="reduce_AddTabOperation" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.TemplateDeclaration:2" id="1225441503876">
    <property name="name:2" value="reduce_ExecuteCommand" />
    <link role="applicableConcept:2" targetNodeId="1.1225441285519:23" resolveInfo="ExecuteCommandStatement" />
    <node role="contentNode:2" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1225441503877">
      <property name="name:3" value="ABC" />
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1225441503878">
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225441503879" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1225441503880" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225441503881">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1225441503882">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225441503883">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1225441503884">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolveInfo="instance" />
                <link role="classConcept:3" targetNodeId="2.~ModelAccess" resolveInfo="ModelAccess" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1225441503885">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ModelAccess.runWriteActionInCommand(java.lang.Runnable):void" resolveInfo="runWriteActionInCommand" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1225441503886">
                  <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro:2" id="1225441503887">
                    <node role="sourceNodeQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery:2" id="1225441503888">
                      <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225441503889">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1225441503890">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225441503891">
                            <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1225441503892" />
                            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1225441503893">
                              <link role="link:16" targetNodeId="1.1225441160167:23" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute:3" type="jetbrains.mps.lang.generator.structure.TemplateFragment:2" id="1225441503894" />
          </node>
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1225441503895" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.TemplateDeclaration:2" id="1225441503896">
    <property name="name:2" value="reduce_ExecuteCommandInEDTStatement" />
    <link role="applicableConcept:2" targetNodeId="1.1225441257564:23" resolveInfo="ExecuteCommandInEDTStatement" />
    <node role="contentNode:2" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1225441503897">
      <property name="name:3" value="ABC" />
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1225441503898">
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225441503899" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1225441503900" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225441503901">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1225441503902">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225441503903">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1225441503904">
                <link role="classConcept:3" targetNodeId="2.~ModelAccess" resolveInfo="ModelAccess" />
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolveInfo="instance" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1225441503905">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ModelAccess.runWriteActionInCommandAsync(java.lang.Runnable):void" resolveInfo="runWriteActionInCommandAsync" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1225441503906">
                  <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro:2" id="1225441503907">
                    <node role="sourceNodeQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery:2" id="1225441503908">
                      <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225441503909">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1225441503910">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225441503911">
                            <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1225441503912" />
                            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1225441503913">
                              <link role="link:16" targetNodeId="1.1225441160167:23" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute:3" type="jetbrains.mps.lang.generator.structure.TemplateFragment:2" id="1225441503914" />
          </node>
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1225441503915" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.TemplateDeclaration:2" id="1225441503916">
    <property name="name:2" value="reduce_ExecuteEDTCommand" />
    <link role="applicableConcept:2" targetNodeId="1.1225441312937:23" resolveInfo="ExecuteEDTCommandStatement" />
    <node role="contentNode:2" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1225441503917">
      <property name="name:3" value="ABC" />
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1225441503918">
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225441503919" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1225441503920" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225441503921">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1225441503922">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225441503923">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1225441503924">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolveInfo="instance" />
                <link role="classConcept:3" targetNodeId="2.~ModelAccess" resolveInfo="ModelAccess" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1225441503925">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ModelAccess.runReadInEDT(java.lang.Runnable):void" resolveInfo="runReadInEDT" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1225441503926">
                  <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro:2" id="1225441503927">
                    <node role="sourceNodeQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery:2" id="1225441503928">
                      <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225441503929">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1225441503930">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225441503931">
                            <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1225441503932" />
                            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1225441503933">
                              <link role="link:16" targetNodeId="1.1225441160167:23" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute:3" type="jetbrains.mps.lang.generator.structure.TemplateFragment:2" id="1225441503934" />
          </node>
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1225441503935" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.TemplateDeclaration:2" id="1225441503936">
    <property name="name:2" value="reduce_ExecuteLightweightCommand" />
    <link role="applicableConcept:2" targetNodeId="1.1225441341971:23" resolveInfo="ExecuteLightweightCommandStatement" />
    <node role="contentNode:2" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1225441503937">
      <property name="name:3" value="ABC" />
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1225441503938">
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225441503939" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1225441503940" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225441503941">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1225441503942">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225441503943">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1225441503944">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolveInfo="instance" />
                <link role="classConcept:3" targetNodeId="2.~ModelAccess" resolveInfo="ModelAccess" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1225441503945">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ModelAccess.runReadAction(java.lang.Runnable):void" resolveInfo="runReadAction" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1225441503946">
                  <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro:2" id="1225441503947">
                    <node role="sourceNodeQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery:2" id="1225441503948">
                      <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225441503949">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1225441503950">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225441503951">
                            <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1225441503952" />
                            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1225441503953">
                              <link role="link:16" targetNodeId="1.1225441160167:23" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute:3" type="jetbrains.mps.lang.generator.structure.TemplateFragment:2" id="1225441503954" />
          </node>
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1225441503955" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.TemplateDeclaration:2" id="1225441503956">
    <property name="name:2" value="reduce_ExecuteWriteAction" />
    <link role="applicableConcept:2" targetNodeId="1.1225441380935:23" resolveInfo="ExecuteWriteActionStatement" />
    <node role="contentNode:2" type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1225441503957">
      <property name="name:3" value="ABC" />
      <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="1225441503958">
        <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1225441503959" />
        <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1225441503960" />
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225441503961">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1225441503962">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225441503963">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1225441503964">
                <link role="classConcept:3" targetNodeId="2.~ModelAccess" resolveInfo="ModelAccess" />
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolveInfo="instance" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="1225441503965">
                <link role="baseMethodDeclaration:3" targetNodeId="2.~ModelAccess.runWriteAction(java.lang.Runnable):void" resolveInfo="runWriteAction" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1225441503966">
                  <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro:2" id="1225441503967">
                    <node role="sourceNodeQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery:2" id="1225441503968">
                      <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1225441503969">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1225441503970">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1225441503971">
                            <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1225441503972" />
                            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1225441503973">
                              <link role="link:16" targetNodeId="1.1225441160167:23" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute:3" type="jetbrains.mps.lang.generator.structure.TemplateFragment:2" id="1225441503974" />
          </node>
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1225441503975" />
    </node>
  </node>
</model>


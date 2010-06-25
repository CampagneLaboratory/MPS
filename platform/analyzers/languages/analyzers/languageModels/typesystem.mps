<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:139daa25-c5a7-4ac9-85a2-eb14d22e8f56(jetbrains.mps.analyzers.typesystem)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="97a52717-898f-4598-8150-573d9fd03868(jetbrains.mps.analyzers)" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ae(jetbrains.mps.lang.typesystem.constraints)" version="17" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959033d(jetbrains.mps.lang.annotations.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590340(jetbrains.mps.lang.pattern.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:8b09f5e2-b403-4747-aaa3-eac5acb1f753(jetbrains.mps.analyzers.structure)" version="0" />
  <devkit namespace="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  <maxImportIndex value="3" />
  <import index="1" modelUID="r:8b09f5e2-b403-4747-aaa3-eac5acb1f753(jetbrains.mps.analyzers.structure)" version="0" />
  <import index="2" modelUID="f:java_stub#jetbrains.mps.lang.dataFlow.framework(jetbrains.mps.lang.dataFlow.framework@java_stub)" version="-1" />
  <node type="jetbrains.mps.lang.typesystem.structure.InferenceRule:3" id="9177062368042317188">
    <property name="name:3" value="typeof_AnalyzerFunParameterProgramState" />
    <property name="package:3" value="Analyzer.AnalyzerFunctions" />
    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="9177062368042317189">
      <node role="statement:3" type="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement:3" id="9177062368042322944">
        <node role="leftExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="9177062368042322947">
          <node role="normalType:3" type="jetbrains.mps.lang.typesystem.structure.TypeOfExpression:3" id="9177062368042319985">
            <node role="term:3" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference:3" id="9177062368042322943">
              <link role="applicableNode:3" targetNodeId="9177062368042317190" resolveInfo="programState" />
            </node>
          </node>
        </node>
        <node role="rightExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="9177062368042359694">
          <node role="normalType:3" type="jetbrains.mps.lang.quotation.structure.Quotation:0" id="9177062368042359695">
            <node role="quotedNode:0" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="9177062368042359698">
              <link role="classifier:3" targetNodeId="2.~ProgramState" resolveInfo="ProgramState" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode:3" type="jetbrains.mps.lang.typesystem.structure.ConceptReference:3" id="9177062368042317190">
      <property name="name:3" value="programState" />
      <link role="concept:3" targetNodeId="1.4746038179140588754:0" resolveInfo="AnalyzerFunParameterProgramState" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.typesystem.structure.InferenceRule:3" id="9177062368042359783">
    <property name="name:3" value="typeof_AnalyzerMergeParameterInput" />
    <property name="package:3" value="Analyzer.AnalyzerFunctions" />
    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="9177062368042359784">
      <node role="statement:3" type="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement:3" id="9177062368042359803">
        <node role="rightExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="9177062368042359838">
          <node role="normalType:3" type="jetbrains.mps.lang.quotation.structure.Quotation:0" id="9177062368042359852">
            <node role="quotedNode:0" type="jetbrains.mps.baseLanguage.collections.structure.ListType:7" id="9177062368042359853">
              <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.Type:3" id="9177062368042359854">
                <node role="_attr_$attribute:3" type="jetbrains.mps.lang.quotation.structure.Antiquotation:0" id="9177062368042359855">
                  <node role="expression:0" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="9177062368042359856">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="9177062368042359857">
                      <node role="operand:3" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference:3" id="9177062368042359858">
                        <link role="applicableNode:3" targetNodeId="9177062368042359785" resolveInfo="input" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation:16" id="9177062368042359859">
                        <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="9177062368042359860">
                          <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="9177062368042359861">
                            <link role="conceptDeclaration:16" targetNodeId="1.6618572076229093257:0" resolveInfo="Analyzer" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="9177062368042359862">
                      <link role="link:16" targetNodeId="1.9177062368042359739:0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="leftExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="9177062368042359806">
          <node role="normalType:3" type="jetbrains.mps.lang.typesystem.structure.TypeOfExpression:3" id="9177062368042359800">
            <node role="term:3" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference:3" id="9177062368042359802">
              <link role="applicableNode:3" targetNodeId="9177062368042359785" resolveInfo="input" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode:3" type="jetbrains.mps.lang.typesystem.structure.ConceptReference:3" id="9177062368042359785">
      <property name="name:3" value="input" />
      <link role="concept:3" targetNodeId="1.4746038179140566725:0" resolveInfo="AnalyzerMergeParameterInput" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.typesystem.structure.InferenceRule:3" id="9177062368042364854">
    <property name="name:3" value="typeof_AnalyzerFunParameterInput" />
    <property name="package:3" value="Analyzer.AnalyzerFunctions" />
    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="9177062368042364855">
      <node role="statement:3" type="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement:3" id="9177062368042364861">
        <node role="leftExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="9177062368042364864">
          <node role="normalType:3" type="jetbrains.mps.lang.typesystem.structure.TypeOfExpression:3" id="9177062368042364858">
            <node role="term:3" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference:3" id="9177062368042364860">
              <link role="applicableNode:3" targetNodeId="9177062368042364856" resolveInfo="input" />
            </node>
          </node>
        </node>
        <node role="rightExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="430844094082063133">
          <node role="normalType:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="430844094082085821">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="430844094082063141">
              <node role="operand:3" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference:3" id="430844094082063134">
                <link role="applicableNode:3" targetNodeId="9177062368042364856" resolveInfo="input" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation:16" id="430844094082085816">
                <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="430844094082085817">
                  <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="430844094082085820">
                    <link role="conceptDeclaration:16" targetNodeId="1.6618572076229093257:0" resolveInfo="Analyzer" />
                  </node>
                </node>
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="430844094082085825">
              <link role="link:16" targetNodeId="1.9177062368042359739:0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode:3" type="jetbrains.mps.lang.typesystem.structure.ConceptReference:3" id="9177062368042364856">
      <property name="name:3" value="input" />
      <link role="concept:3" targetNodeId="1.4746038179140588756:0" resolveInfo="AnalyzerFunParameterInput" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.typesystem.structure.InferenceRule:3" id="9177062368042364884">
    <property name="name:3" value="typeof_AnalyzerFunctionResultType" />
    <property name="package:3" value="Analyzer.AnalyzerFunctions" />
    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="9177062368042364885">
      <node role="statement:3" type="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement:3" id="430844094082159326">
        <node role="rightExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="430844094082159330">
          <node role="normalType:3" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference:3" id="430844094082159331">
            <link role="applicableNode:3" targetNodeId="9177062368042364886" resolveInfo="resultType" />
          </node>
        </node>
        <node role="leftExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="430844094082159329">
          <node role="normalType:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="430844094082159319">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="430844094082159320">
              <node role="operand:3" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference:3" id="430844094082159321">
                <link role="applicableNode:3" targetNodeId="9177062368042364886" resolveInfo="resultType" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation:16" id="430844094082159322">
                <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="430844094082159323">
                  <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="430844094082159324">
                    <link role="conceptDeclaration:16" targetNodeId="1.6618572076229093257:0" resolveInfo="Analyzer" />
                  </node>
                </node>
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="430844094082159325">
              <link role="link:16" targetNodeId="1.9177062368042359739:0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode:3" type="jetbrains.mps.lang.typesystem.structure.ConceptReference:3" id="9177062368042364886">
      <property name="name:3" value="resultType" />
      <link role="concept:3" targetNodeId="1.9177062368042364839:0" resolveInfo="AnalyzerFunctionResultType" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.typesystem.structure.InferenceRule:3" id="9177062368042364920">
    <property name="name:3" value="typeof_AnalyzerParameterProgram" />
    <property name="package:3" value="Analyzer.AnalyzerFunctions" />
    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="9177062368042364921">
      <node role="statement:3" type="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement:3" id="9177062368042364923">
        <node role="leftExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="9177062368042364924">
          <node role="normalType:3" type="jetbrains.mps.lang.typesystem.structure.TypeOfExpression:3" id="9177062368042364925">
            <node role="term:3" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference:3" id="9177062368042364930">
              <link role="applicableNode:3" targetNodeId="9177062368042364922" resolveInfo="program" />
            </node>
          </node>
        </node>
        <node role="rightExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="9177062368042364927">
          <node role="normalType:3" type="jetbrains.mps.lang.quotation.structure.Quotation:0" id="9177062368042364928">
            <node role="quotedNode:0" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="9177062368042364931">
              <link role="classifier:3" targetNodeId="2.~Program" resolveInfo="Program" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode:3" type="jetbrains.mps.lang.typesystem.structure.ConceptReference:3" id="9177062368042364922">
      <property name="name:3" value="program" />
      <link role="concept:3" targetNodeId="1.4746038179140566716:0" resolveInfo="AnalyzerParameterProgram" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.typesystem.structure.InferenceRule:3" id="4217760266503638769">
    <property name="name:3" value="typeof_InstructionReference" />
    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4217760266503638770">
      <node role="statement:3" type="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement:3" id="4217760266503638783">
        <node role="leftExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="4217760266503638786">
          <node role="normalType:3" type="jetbrains.mps.lang.typesystem.structure.TypeOfExpression:3" id="4217760266503638773">
            <node role="term:3" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference:3" id="4217760266503638775">
              <link role="applicableNode:3" targetNodeId="4217760266503638771" resolveInfo="instructionReference" />
            </node>
          </node>
        </node>
        <node role="rightExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="4217760266503638787">
          <node role="normalType:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4217760266503638789">
            <node role="operand:3" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference:3" id="4217760266503638788">
              <link role="applicableNode:3" targetNodeId="4217760266503638771" resolveInfo="instructionReference" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="4217760266503638793">
              <link role="link:16" targetNodeId="1.4217760266503638757:0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode:3" type="jetbrains.mps.lang.typesystem.structure.ConceptReference:3" id="4217760266503638771">
      <property name="name:3" value="reference" />
      <link role="concept:3" targetNodeId="1.4217760266503638748:0" resolveInfo="InstructionReference" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.typesystem.structure.InferenceRule:3" id="178770917832494464">
    <property name="name:3" value="typeof_AnalyzerRunnerCreator" />
    <property name="package:3" value="Analyzer" />
    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="178770917832494465">
      <node role="statement:3" type="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement:3" id="178770917832644953">
        <node role="leftExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="178770917832644956">
          <node role="normalType:3" type="jetbrains.mps.lang.typesystem.structure.TypeOfExpression:3" id="178770917832644950">
            <node role="term:3" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference:3" id="178770917832644952">
              <link role="applicableNode:3" targetNodeId="178770917832494466" resolveInfo="analyzerRunnerCreator" />
            </node>
          </node>
        </node>
        <node role="rightExpression:3" type="jetbrains.mps.lang.typesystem.structure.NormalTypeClause:3" id="4072414341992344846">
          <node role="normalType:3" type="jetbrains.mps.lang.quotation.structure.Quotation:0" id="4072414341992344847">
            <node role="quotedNode:0" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="4072414341992344849">
              <link role="classifier:3" targetNodeId="2.~AnalyzerRunner" resolveInfo="AnalyzerRunner" />
              <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.Type:3" id="4072414341992344850">
                <node role="_attr_$attribute:3" type="jetbrains.mps.lang.quotation.structure.Antiquotation:0" id="4072414341992344851">
                  <node role="expression:0" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4072414341992346223">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4072414341992344854">
                      <node role="operand:3" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference:3" id="4072414341992344853">
                        <link role="applicableNode:3" targetNodeId="178770917832494466" resolveInfo="analyzerRunnerCreator" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="4072414341992346222">
                        <link role="link:16" targetNodeId="1.95073643532950039:0" />
                      </node>
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="4072414341992346227">
                      <link role="link:16" targetNodeId="1.9177062368042359739:0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode:3" type="jetbrains.mps.lang.typesystem.structure.ConceptReference:3" id="178770917832494466">
      <property name="name:3" value="analyzerRunnerCreator" />
      <link role="concept:3" targetNodeId="1.95073643532950038:0" resolveInfo="AnalyzerRunnerCreator" />
    </node>
  </node>
  <visible index="2" modelUID="r:f75f396b-f66a-4c8f-9533-fd8bd4d19e49(jetbrains.mps.analyzers.behavior)" />
  <node type="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule:3" id="1483902774837531410">
    <property name="name:3" value="checkDuplicatedRules" />
    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1483902774837531411">
      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1483902774837531469">
        <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1483902774837531470">
          <property name="name:3" value="names" />
          <node role="type:3" type="jetbrains.mps.baseLanguage.collections.structure.SetType:7" id="1483902774837531471">
            <node role="elementType:7" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="1483902774837531473" />
          </node>
          <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1483902774837531484">
            <node role="creator:3" type="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator:7" id="1483902774837535748" />
          </node>
        </node>
      </node>
      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="1483902774837531414">
        <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1483902774837531415">
          <property name="name:3" value="ruleRef" />
          <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1483902774837531424">
            <link role="concept:16" targetNodeId="1.752944717341640112:0" resolveInfo="RuleReference" />
          </node>
        </node>
        <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1483902774837531419">
          <node role="operand:3" type="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference:3" id="1483902774837531418">
            <link role="applicableNode:3" targetNodeId="1483902774837531413" resolveInfo="analyzer" />
          </node>
          <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="1483902774837531423">
            <link role="link:16" targetNodeId="1.752944717341642916:0" />
          </node>
        </node>
        <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1483902774837531417">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1483902774837540543">
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1483902774837540544">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ContinueStatement:3" id="1483902774837540552" />
            </node>
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.OrExpression:3" id="1483902774837542134">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1483902774837542143">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1483902774837542146" />
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1483902774837542138">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1483902774837542137">
                    <link role="variableDeclaration:3" targetNodeId="1483902774837531415" resolveInfo="ruleRef" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1483902774837542142">
                    <link role="link:16" targetNodeId="1.752944717341640113:0" />
                  </node>
                </node>
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1483902774837540548">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1483902774837540547">
                  <link role="variableDeclaration:3" targetNodeId="1483902774837531415" resolveInfo="ruleRef" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1483902774837540551" />
              </node>
            </node>
          </node>
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1483902774837535764">
            <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1483902774837535765">
              <node role="statement:3" type="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement:3" id="1483902774837535780">
                <node role="errorString:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1483902774837535783">
                  <property name="value:3" value="Data flow constructor name duplication" />
                </node>
                <node role="nodeToReport:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1483902774837535784">
                  <link role="variableDeclaration:3" targetNodeId="1483902774837531415" resolveInfo="ruleRef" />
                </node>
              </node>
            </node>
            <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1483902774837535769">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1483902774837535768">
                <link role="variableDeclaration:3" targetNodeId="1483902774837531470" resolveInfo="names" />
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation:7" id="1483902774837535773">
                <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1483902774837535775">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1483902774837535776">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1483902774837535777">
                      <link role="variableDeclaration:3" targetNodeId="1483902774837531415" resolveInfo="ruleRef" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1483902774837535778">
                      <link role="link:16" targetNodeId="1.752944717341640113:0" />
                    </node>
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall:16" id="1483902774837535779">
                    <link role="baseMethodDeclaration:16" targetNodeId="2v.8716397433969716516" resolveInfo="getFqName" />
                  </node>
                </node>
              </node>
            </node>
            <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="1483902774837535785">
              <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1483902774837535786">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1483902774837535787">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1483902774837535788">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1483902774837535789">
                      <link role="variableDeclaration:3" targetNodeId="1483902774837531470" resolveInfo="names" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.AddSetElementOperation:7" id="1483902774837535790">
                      <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1483902774837535791">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1483902774837535792">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1483902774837535793">
                            <link role="variableDeclaration:3" targetNodeId="1483902774837531415" resolveInfo="ruleRef" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1483902774837535794">
                            <link role="link:16" targetNodeId="1.752944717341640113:0" />
                          </node>
                        </node>
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall:16" id="1483902774837535795">
                          <link role="baseMethodDeclaration:16" targetNodeId="2v.8716397433969716516" resolveInfo="getFqName" />
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
    <node role="applicableNode:3" type="jetbrains.mps.lang.typesystem.structure.ConceptReference:3" id="1483902774837531413">
      <property name="name:3" value="analyzer" />
      <link role="concept:3" targetNodeId="1.6618572076229093257:0" resolveInfo="Analyzer" />
    </node>
  </node>
</model>


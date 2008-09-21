<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="jetbrains.mps.formulaLanguage.generator.baseLanguage@generator">
  <persistence version="3" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.constraints" version="83" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.transformation.TLBase">
    <languageAspect modelUID="jetbrains.mps.transformation.TLBase.constraints" version="16" />
    <languageAspect modelUID="jetbrains.mps.transformation.TLBase.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.constraints" version="21" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="1" />
  </language>
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.constraints" version="11" />
  <languageAspect modelUID="jetbrains.mps.core.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.sharedConcepts.constraints" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.constraints" version="2" />
  <maxImportIndex value="5" />
  <import index="2" modelUID="java.lang@java_stub" version="-1" />
  <import index="3" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="4" modelUID="jetbrains.mps.formulaLanguage.api@java_stub" version="-1" />
  <import index="5" modelUID="jetbrains.mps.formulaLanguage.structure" version="-1" />
  <node type="jetbrains.mps.transformation.TLBase.structure.TemplateSwitch" id="1112818835473">
    <property name="name" value="SWITCH_Expression_NewFunction_Default" />
    <node role="reductionMappingRule" type="jetbrains.mps.transformation.TLBase.structure.Reduction_MappingRule" id="1200427732199">
      <link role="applicableConcept" targetNodeId="5.1112384225757" resolveInfo="MultOperation" />
      <node role="ruleConsequence" type="jetbrains.mps.transformation.TLBase.structure.TemplateDeclarationReference" id="1200427801014">
        <link role="template" targetNodeId="1112819613607" resolveInfo="_new_MultiplyOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" type="jetbrains.mps.transformation.TLBase.structure.Reduction_MappingRule" id="1200427808999">
      <link role="applicableConcept" targetNodeId="5.1111785030296" resolveInfo="IfFunction" />
      <node role="ruleConsequence" type="jetbrains.mps.transformation.TLBase.structure.TemplateDeclarationReference" id="1200427818860">
        <link role="template" targetNodeId="1112820065510" resolveInfo="_new_IfFunction_Default" />
      </node>
    </node>
    <node role="reductionMappingRule" type="jetbrains.mps.transformation.TLBase.structure.Reduction_MappingRule" id="1200427864815">
      <link role="applicableConcept" targetNodeId="5.1111784926012" resolveInfo="FloatingPointConstant" />
      <node role="ruleConsequence" type="jetbrains.mps.transformation.TLBase.structure.TemplateDeclarationReference" id="1200427881520">
        <link role="template" targetNodeId="1112819378866" resolveInfo="_new_DoubleConstant_FromFloatingPointConstant" />
      </node>
    </node>
    <node role="reductionMappingRule" type="jetbrains.mps.transformation.TLBase.structure.Reduction_MappingRule" id="1200427896208">
      <link role="applicableConcept" targetNodeId="5.1111784858617" resolveInfo="IntegerConstant" />
      <node role="ruleConsequence" type="jetbrains.mps.transformation.TLBase.structure.TemplateDeclarationReference" id="1200427952476">
        <link role="template" targetNodeId="1112980489607" resolveInfo="_new_DoubleConstant_FromIntegerConstant" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.transformation.TLBase.structure.TemplateDeclaration" id="1112819378866">
    <property name="name" value="_new_DoubleConstant_FromFloatingPointConstant" />
    <link role="applicableConcept" targetNodeId="5.1111784926012" resolveInfo="FloatingPointConstant" />
    <node role="contentNode" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1214259270629">
      <node role="templateFragment$attribute" type="jetbrains.mps.transformation.TLBase.structure.TemplateFragment" id="1214259270631" />
      <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1214259270632">
        <link role="baseMethodDeclaration" targetNodeId="4.~DoubleConstant.&lt;init&gt;(double)" resolveInfo="DoubleConstant" />
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" id="1113000385880">
          <property name="value" value="0.0" />
          <node role="propertyMacro$property_attribute$value" type="jetbrains.mps.transformation.TLBase.structure.PropertyMacro" id="1113259187703">
            <node role="propertyValueFunction" type="jetbrains.mps.transformation.TLBase.structure.PropertyMacro_GetPropertyValue" id="1200430777976">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200430777977">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200430780338">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214259268912">
                    <node role="operand" type="jetbrains.mps.transformation.TLBase.structure.TemplateFunctionParameter_sourceNode" id="1200430780339" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1200430783155">
                      <link role="property" targetNodeId="5.1113257000626" resolveInfo="value" />
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
  <node type="jetbrains.mps.transformation.TLBase.structure.TemplateDeclaration" id="1112819613607">
    <property name="name" value="_new_MultiplyOperation" />
    <link role="applicableConcept" targetNodeId="5.1112384225757" resolveInfo="MultOperation" />
    <node role="contentNode" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1214259270578">
      <node role="templateFragment$attribute" type="jetbrains.mps.transformation.TLBase.structure.TemplateFragment" id="1214259270580" />
      <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1214259270581">
        <link role="baseMethodDeclaration" targetNodeId="4.~MultiplyOperation.&lt;init&gt;(jetbrains.mps.formulaLanguage.api.Function,jetbrains.mps.formulaLanguage.api.Function)" resolveInfo="MultiplyOperation" />
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1112819851630">
          <node role="nodeMacro$attribute" type="jetbrains.mps.transformation.TLBase.structure.SwitchMacro" id="1112820006930">
            <link role="templateSwitch" targetNodeId="1112979325952" />
            <node role="sourceNodeQuery" type="jetbrains.mps.transformation.TLBase.structure.SourceSubstituteMacro_SourceNodeQuery" id="1200430494834">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200430494835">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200430498102">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214259269675">
                    <node role="operand" type="jetbrains.mps.transformation.TLBase.structure.TemplateFunctionParameter_sourceNode" id="1200430498103" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200430516529">
                      <link role="link" targetNodeId="5.1111784613299" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1112819856304">
          <node role="nodeMacro$attribute" type="jetbrains.mps.transformation.TLBase.structure.SwitchMacro" id="1112820006931">
            <link role="templateSwitch" targetNodeId="1112979325952" />
            <node role="sourceNodeQuery" type="jetbrains.mps.transformation.TLBase.structure.SourceSubstituteMacro_SourceNodeQuery" id="1200430529811">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200430529812">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200430531657">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214259269026">
                    <node role="operand" type="jetbrains.mps.transformation.TLBase.structure.TemplateFunctionParameter_sourceNode" id="1200430531658" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200430535693">
                      <link role="link" targetNodeId="5.1111784647019" />
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
  <node type="jetbrains.mps.transformation.TLBase.structure.TemplateDeclaration" id="1112820065510">
    <property name="name" value="_new_IfFunction_Default" />
    <link role="applicableConcept" targetNodeId="5.1111785030296" resolveInfo="IfFunction" />
    <node role="contentNode" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1214259270543">
      <node role="templateFragment$attribute" type="jetbrains.mps.transformation.TLBase.structure.TemplateFragment" id="1214259270545" />
      <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1214259270546">
        <link role="baseMethodDeclaration" targetNodeId="4.~IfFunction.&lt;init&gt;(jetbrains.mps.formulaLanguage.api.Function,jetbrains.mps.formulaLanguage.api.Function,jetbrains.mps.formulaLanguage.api.Function)" resolveInfo="IfFunction" />
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1112820099529">
          <node role="nodeMacro$attribute" type="jetbrains.mps.transformation.TLBase.structure.SwitchMacro" id="1112820163066">
            <link role="templateSwitch" targetNodeId="1112818835473" />
            <node role="sourceNodeQuery" type="jetbrains.mps.transformation.TLBase.structure.SourceSubstituteMacro_SourceNodeQuery" id="1200430591959">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200430591960">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200430593868">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214259269188">
                    <node role="operand" type="jetbrains.mps.transformation.TLBase.structure.TemplateFunctionParameter_sourceNode" id="1200430593869" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200430604091">
                      <link role="link" targetNodeId="5.1111785044750" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1112820103749">
          <node role="nodeMacro$attribute" type="jetbrains.mps.transformation.TLBase.structure.SwitchMacro" id="1112820163067">
            <link role="templateSwitch" targetNodeId="1112818835473" />
            <node role="sourceNodeQuery" type="jetbrains.mps.transformation.TLBase.structure.SourceSubstituteMacro_SourceNodeQuery" id="1200430618421">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200430618422">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200430620298">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214259269577">
                    <node role="operand" type="jetbrains.mps.transformation.TLBase.structure.TemplateFunctionParameter_sourceNode" id="1200430620299" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200430625084">
                      <link role="link" targetNodeId="5.1111785091720" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1112820108814">
          <node role="nodeMacro$attribute" type="jetbrains.mps.transformation.TLBase.structure.SwitchMacro" id="1112820163068">
            <link role="templateSwitch" targetNodeId="1112818835473" />
            <node role="sourceNodeQuery" type="jetbrains.mps.transformation.TLBase.structure.SourceSubstituteMacro_SourceNodeQuery" id="1200430632007">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200430632008">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200430633868">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214259270017">
                    <node role="operand" type="jetbrains.mps.transformation.TLBase.structure.TemplateFunctionParameter_sourceNode" id="1200430633869" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200430640607">
                      <link role="link" targetNodeId="5.1111785124143" />
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
  <node type="jetbrains.mps.transformation.TLBase.structure.TemplateSwitch" id="1112979325952">
    <property name="name" value="SWITCH_Expression_NewFunction_Double" />
    <node role="reductionMappingRule" type="jetbrains.mps.transformation.TLBase.structure.Reduction_MappingRule" id="1200427994977">
      <link role="applicableConcept" targetNodeId="5.1112384225757" resolveInfo="MultOperation" />
      <node role="ruleConsequence" type="jetbrains.mps.transformation.TLBase.structure.TemplateDeclarationReference" id="1200428006469">
        <link role="template" targetNodeId="1112819613607" resolveInfo="_new_MultiplyOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" type="jetbrains.mps.transformation.TLBase.structure.Reduction_MappingRule" id="1200427994979">
      <link role="applicableConcept" targetNodeId="5.1111785030296" resolveInfo="IfFunction" />
      <node role="ruleConsequence" type="jetbrains.mps.transformation.TLBase.structure.TemplateDeclarationReference" id="1200428013908">
        <link role="template" targetNodeId="1112979486128" resolveInfo="_new_IfFunction_Double" />
      </node>
    </node>
    <node role="reductionMappingRule" type="jetbrains.mps.transformation.TLBase.structure.Reduction_MappingRule" id="1200427994981">
      <link role="applicableConcept" targetNodeId="3.1111509017652" resolveInfo="FloatingPointConstant" />
      <node role="ruleConsequence" type="jetbrains.mps.transformation.TLBase.structure.TemplateDeclarationReference" id="1200428023815">
        <link role="template" targetNodeId="1112819378866" resolveInfo="_new_DoubleConstant_FromFloatingPointConstant" />
      </node>
    </node>
    <node role="reductionMappingRule" type="jetbrains.mps.transformation.TLBase.structure.Reduction_MappingRule" id="1200427994983">
      <link role="applicableConcept" targetNodeId="3.1068580320020" resolveInfo="IntegerConstant" />
      <node role="ruleConsequence" type="jetbrains.mps.transformation.TLBase.structure.TemplateDeclarationReference" id="1200428031925">
        <link role="template" targetNodeId="1112980489607" resolveInfo="_new_DoubleConstant_FromIntegerConstant" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.transformation.TLBase.structure.TemplateDeclaration" id="1112979486128">
    <property name="name" value="_new_IfFunction_Double" />
    <link role="applicableConcept" targetNodeId="5.1111785030296" resolveInfo="IfFunction" />
    <node role="contentNode" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1214259270476">
      <node role="templateFragment$attribute" type="jetbrains.mps.transformation.TLBase.structure.TemplateFragment" id="1214259270478" />
      <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1214259270479">
        <link role="baseMethodDeclaration" targetNodeId="4.~IfFunction.&lt;init&gt;(jetbrains.mps.formulaLanguage.api.Function,jetbrains.mps.formulaLanguage.api.Function,jetbrains.mps.formulaLanguage.api.Function)" resolveInfo="IfFunction" />
        <node role="typeParameter" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1112979600996">
          <link role="classifier" targetNodeId="2.~Double" resolveInfo="Double" />
        </node>
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1112979500145">
          <node role="nodeMacro$attribute" type="jetbrains.mps.transformation.TLBase.structure.SwitchMacro" id="1112979623857">
            <link role="templateSwitch" targetNodeId="1112818835473" />
            <node role="sourceNodeQuery" type="jetbrains.mps.transformation.TLBase.structure.SourceSubstituteMacro_SourceNodeQuery" id="1200430664124">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200430664125">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200430665657">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214259270295">
                    <node role="operand" type="jetbrains.mps.transformation.TLBase.structure.TemplateFunctionParameter_sourceNode" id="1200430665658" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200430669631">
                      <link role="link" targetNodeId="5.1111785044750" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1112979623858">
          <node role="nodeMacro$attribute" type="jetbrains.mps.transformation.TLBase.structure.SwitchMacro" id="1112979623859">
            <link role="templateSwitch" targetNodeId="1112979325952" />
            <node role="sourceNodeQuery" type="jetbrains.mps.transformation.TLBase.structure.SourceSubstituteMacro_SourceNodeQuery" id="1200430674101">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200430674102">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200430675743">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214259269919">
                    <node role="operand" type="jetbrains.mps.transformation.TLBase.structure.TemplateFunctionParameter_sourceNode" id="1200430675744" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200430680780">
                      <link role="link" targetNodeId="5.1111785091720" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1112979623860">
          <node role="nodeMacro$attribute" type="jetbrains.mps.transformation.TLBase.structure.SwitchMacro" id="1112979623861">
            <link role="templateSwitch" targetNodeId="1112979325952" />
            <node role="sourceNodeQuery" type="jetbrains.mps.transformation.TLBase.structure.SourceSubstituteMacro_SourceNodeQuery" id="1200430685109">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200430685110">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200430686783">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214259269075">
                    <node role="operand" type="jetbrains.mps.transformation.TLBase.structure.TemplateFunctionParameter_sourceNode" id="1200430686784" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200430692460">
                      <link role="link" targetNodeId="5.1111785124143" />
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
  <node type="jetbrains.mps.transformation.TLBase.structure.TemplateDeclaration" id="1112980489607">
    <property name="name" value="_new_DoubleConstant_FromIntegerConstant" />
    <link role="applicableConcept" targetNodeId="5.1111784858617" resolveInfo="IntegerConstant" />
    <node role="contentNode" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1214259270426">
      <node role="templateFragment$attribute" type="jetbrains.mps.transformation.TLBase.structure.TemplateFragment" id="1214259270428" />
      <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1214259270444">
        <link role="baseMethodDeclaration" targetNodeId="4.~DoubleConstant.&lt;init&gt;(double)" resolveInfo="DoubleConstant" />
        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" id="1113000581975">
          <property name="value" value="0.0" />
          <node role="propertyMacro$property_attribute$value" type="jetbrains.mps.transformation.TLBase.structure.PropertyMacro" id="1113259187704">
            <node role="propertyValueFunction" type="jetbrains.mps.transformation.TLBase.structure.PropertyMacro_GetPropertyValue" id="1200430828672">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200430828673">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200430831111">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1200430834180">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1200430837964">
                      <property name="value" value=".0" />
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214259269513">
                      <node role="operand" type="jetbrains.mps.transformation.TLBase.structure.TemplateFunctionParameter_sourceNode" id="1200430831112" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1200430832991">
                        <link role="property" targetNodeId="5.1111784874587" resolveInfo="value" />
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
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c89590293(jetbrains.mps.lang.structure.generator_new.baseLanguage@generator)">
  <persistence version="7" />
  <language namespace="b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)" />
  <language namespace="d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <language namespace="3a13115c-633c-4c5c-bbcc-75c4219e9555(jetbrains.mps.lang.quotation)" />
  <import index="vhgx" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="8n6q" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="yvor" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <import index="6eoo" modelUID="f:java_stub#jetbrains.mps.util(jetbrains.mps.util@java_stub)" version="-1" />
  <import index="yvnr" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <import index="yvno" modelUID="r:00000000-0000-4000-0000-011c89590294(jetbrains.mps.lang.structure.generator_new.util)" version="-1" />
  <import index="yvnu" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="txlh" modelUID="f:java_stub#jetbrains.mps.project(jetbrains.mps.project@java_stub)" version="-1" />
  <import index="yvnv" modelUID="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" version="-1" />
  <import index="33gb" modelUID="f:java_stub#jetbrains.mps.lang.core.structure(jetbrains.mps.lang.core.structure@java_stub)" version="-1" />
  <import index="glhg" modelUID="f:java_stub#jetbrains.mps.project.structure.modules(jetbrains.mps.project.structure.modules@java_stub)" version="-1" />
  <import index="yvp6" modelUID="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" version="2" implicit="yes" />
  <import index="yvim" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="yvix" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="yviq" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="yvko" modelUID="r:00000000-0000-4000-0000-011c895903ac(jetbrains.mps.baseLanguageInternal.structure)" version="1" implicit="yes" />
  <import index="yvjf" modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" implicit="yes" />
  <import index="yvp3" modelUID="r:00000000-0000-4000-0000-011c895902f3(jetbrains.mps.lang.generator.generationContext.structure)" version="0" implicit="yes" />
  <import index="yvns" modelUID="r:00000000-0000-4000-0000-011c89590293(jetbrains.mps.lang.structure.generator_new.baseLanguage@generator)" version="-1" implicit="yes" />
  <roots>
    <node type="yvp6.MappingConfiguration" typeId="yvp6.1095416546421:2" id="1095423876828">
      <property name="name" nameId="yvnu.1169194664001:0" value="MAPPING_main" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1095424864671">
      <property name="name" nameId="yvnu.1169194664001:0" value="class_ConceptAdapterDeclaration" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1095670167921">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_PropertyDeclaration_String_class" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288299:0" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1095688526406">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_PropertyDeclaration_Boolean_class" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288299:0" resolveInfo="PropertyDeclaration" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1095689039689">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_PropertyDeclaration_Integer_class" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288299:0" resolveInfo="PropertyDeclaration" />
    </node>
    <node type="yvor.EnumClass" typeId="yvor.1083245097125:3" id="1095695120718">
      <property name="name" nameId="yvnu.1169194664001:0" value="class_EnumerationDataTypeDeclaration_Enum" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1095702521225">
      <property name="name" nameId="yvnu.1169194664001:0" value="class_EnumerationDataTypeDeclaration_PropertySupport" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1095704552328">
      <property name="name" nameId="yvnu.1169194664001:0" value="weave_EnumerationDataTypeDeclaration_String" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1082978164219:0" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1095929530832">
      <property name="name" nameId="yvnu.1169194664001:0" value="weave_EnumerationDataTypeDeclaration_Integer" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1095952760656">
      <property name="name" nameId="yvnu.1169194664001:0" value="weave_EnumerationDataTypeDeclaration_Boolean" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1096017864527">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_PropertyDeclaration_Enum_class" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288299:0" resolveInfo="PropertyDeclaration" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1096027342453">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_LinkDeclaration_ref_card_1_class_nospec" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1096044357786">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_LinkDeclaration_child_card_1_class_nospec" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1096045101843">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_LinkDeclaration_child_card_n_class_nospec" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1096449765609">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_LinkDeclaration_ref_card_1_class_spec" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1096451776179">
      <property name="name" nameId="yvnu.1169194664001:0" value="class_ConstraintDataTypeDeclaration_PropertySupport" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1111091435208">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_LinkDeclaration_child_card_1_class_spec" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1149763013687">
      <property name="name" nameId="yvnu.1169194664001:0" value="class_AnnotationLink" />
    </node>
    <node type="yvor.Interface" typeId="yvor.1107796713796:3" id="1169126581801">
      <property name="name" nameId="yvnu.1169194664001:0" value="interface_ConceptAdapterDeclaration" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1225099204495">
      <property name="name" nameId="yvnu.1169194664001:0" value="XYZ_Language" />
    </node>
    <node type="yvp6.TemplateSwitch" typeId="yvp6.1112730859144:2" id="7544071561380124589">
      <property name="name" nameId="yvnu.1169194664001:0" value="switch_LinkDeclaration_class" />
    </node>
    <node type="yvp6.TemplateSwitch" typeId="yvp6.1112730859144:2" id="545838410333270266">
      <property name="name" nameId="yvnu.1169194664001:0" value="switch_PropertyDeclaration_class" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="545838410333598724">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_LinkDeclaration_child_card_1_interface" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="545838410333598907">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_LinkDeclaration_child_card_n_interface_nospec" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="545838410333599266">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_LinkDeclaration_ref_card_1_interface" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
    </node>
    <node type="yvp6.TemplateSwitch" typeId="yvp6.1112730859144:2" id="545838410333599422">
      <property name="name" nameId="yvnu.1169194664001:0" value="switch_LinkDeclaration_interface" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="545838410333599471">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_PropertyDeclaration_interface" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288299:0" resolveInfo="PropertyDeclaration" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="545838410333599654">
      <property name="name" nameId="yvnu.1169194664001:0" value="insert_PropertyDeclaration_Enum_interface" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvnr.1071489288299:0" resolveInfo="PropertyDeclaration" />
    </node>
    <node type="yvp6.TemplateSwitch" typeId="yvp6.1112730859144:2" id="545838410333599810">
      <property name="name" nameId="yvnu.1169194664001:0" value="switch_PropertyDeclaration_interface" />
    </node>
  </roots>
  <root id="1095423876828">
    <node role="rootMappingRule" roleId="yvp6.1167514678247:2" type="yvp6.Root_MappingRule" typeId="yvp6.1167514355419:2" id="1167753468269">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489090640:0" />
      <link role="template" roleId="yvp6.1167514355421:2" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="1215475935865" resolveInfo="javaClass" />
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="3345876218930170217">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3345876218930170218">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="808331971409603055">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="808331971409603056">
              <property name="name" nameId="yvnu.1169194664001:0" value="inputLanguage" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="808331971409603057">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~Language" resolveInfo="Language" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="808331971409603058">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1225099380388" resolveInfo="getInputLanguage" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="808331971409603059">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="808331971409603060" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOriginalInputModel" typeId="yvp3.1217026863835:0" id="808331971409603061" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3345876218930170219">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="337543306967249146">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="337543306967249147">
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249148">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603056" resolveInfo="inputLanguage" />
                </node>
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="337543306967249149" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="337543306967249150">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249151">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603056" resolveInfo="inputLanguage" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="337543306967249152">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~Language%disGenerateAdapters()%cboolean" resolveInfo="isGenerateAdapters" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rootMappingRule" roleId="yvp6.1167514678247:2" type="yvp6.Root_MappingRule" typeId="yvp6.1167514355419:2" id="1169126526404">
      <property name="applyToConceptInheritors" nameId="yvp6.1167272244852:2" value="true" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1169125989551:0" />
      <link role="template" roleId="yvp6.1167514355421:2" targetNodeId="1169126581801" resolveInfo="interface_ConceptAdaptorDeclaration" />
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="1215475935865" resolveInfo="javaClass" />
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="3345876218930171382">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3345876218930171383">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="808331971409603072">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="808331971409603073">
              <property name="name" nameId="yvnu.1169194664001:0" value="inputLanguage" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="808331971409603074">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~Language" resolveInfo="Language" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="808331971409603075">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1225099380388" resolveInfo="getInputLanguage" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="808331971409603076">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="808331971409603077" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOriginalInputModel" typeId="yvp3.1217026863835:0" id="808331971409603078" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="808331971409603079">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="337543306967249156">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="337543306967249157">
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249158">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603073" resolveInfo="inputLanguage" />
                </node>
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="337543306967249159" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="337543306967249160">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249161">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603073" resolveInfo="inputLanguage" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="337543306967249162">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~Language%disGenerateAdapters()%cboolean" resolveInfo="isGenerateAdapters" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rootMappingRule" roleId="yvp6.1167514678247:2" type="yvp6.Root_MappingRule" typeId="yvp6.1167514355419:2" id="1167753614881">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1082978164219:0" />
      <link role="template" roleId="yvp6.1167514355421:2" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="1215475935865" resolveInfo="javaClass" />
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="3345876218930171391">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3345876218930171392">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="808331971409603087">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="808331971409603088">
              <property name="name" nameId="yvnu.1169194664001:0" value="inputLanguage" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="808331971409603089">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~Language" resolveInfo="Language" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="808331971409603090">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1225099380388" resolveInfo="getInputLanguage" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="808331971409603091">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="808331971409603092" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOriginalInputModel" typeId="yvp3.1217026863835:0" id="808331971409603093" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="808331971409603094">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="337543306967249166">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="337543306967249167">
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249168">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603088" resolveInfo="inputLanguage" />
                </node>
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="337543306967249169" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="337543306967249170">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249171">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603088" resolveInfo="inputLanguage" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="337543306967249172">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~Language%disGenerateAdapters()%cboolean" resolveInfo="isGenerateAdapters" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rootMappingRule" roleId="yvp6.1167514678247:2" type="yvp6.Root_MappingRule" typeId="yvp6.1167514355419:2" id="1167753665286">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1082978164219:0" />
      <link role="template" roleId="yvp6.1167514355421:2" targetNodeId="1095702521225" resolveInfo="class_EnumerationDataTypeDeclaration_PropertySupport" />
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="1215475939071" resolveInfo="propertySupportClass" />
    </node>
    <node role="rootMappingRule" roleId="yvp6.1167514678247:2" type="yvp6.Root_MappingRule" typeId="yvp6.1167514355419:2" id="1167753723756">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1082978499127:0" />
      <link role="template" roleId="yvp6.1167514355421:2" targetNodeId="1096451776179" resolveInfo="class_ConstraintDataTypeDeclaration_PropertySupport" />
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="1215475939071" resolveInfo="propertySupportClass" />
    </node>
    <node role="rootMappingRule" roleId="yvp6.1167514678247:2" type="yvp6.Root_MappingRule" typeId="yvp6.1167514355419:2" id="1167753803898">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1149608206811:0" />
      <link role="template" roleId="yvp6.1167514355421:2" targetNodeId="1149763013687" resolveInfo="class_AnnotationLink" />
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="1215475939089" resolveInfo="annotation" />
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="3345876218930171400">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3345876218930171401">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="808331971409603103">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="808331971409603104">
              <property name="name" nameId="yvnu.1169194664001:0" value="inputLanguage" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="808331971409603105">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~Language" resolveInfo="Language" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="808331971409603106">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1225099380388" resolveInfo="getInputLanguage" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="808331971409603107">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="808331971409603108" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOriginalInputModel" typeId="yvp3.1217026863835:0" id="808331971409603109" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="808331971409603110">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="337543306967249176">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="337543306967249177">
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249178">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603104" resolveInfo="inputLanguage" />
                </node>
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="337543306967249179" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="337543306967249180">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249181">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603104" resolveInfo="inputLanguage" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="337543306967249182">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~Language%disGenerateAdapters()%cboolean" resolveInfo="isGenerateAdapters" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="weavingMappingRule" roleId="yvp6.1167172143858:2" type="yvp6.Weaving_MappingRule" typeId="yvp6.1167171569011:2" id="1167266161699">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1082978164219:0" />
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="1167266219124">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1167266219125">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="808331971409603119">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="808331971409603120">
              <property name="name" nameId="yvnu.1169194664001:0" value="inputLanguage" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="808331971409603121">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~Language" resolveInfo="Language" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="808331971409603122">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1225099380388" resolveInfo="getInputLanguage" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="808331971409603123">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="808331971409603124" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOriginalInputModel" typeId="yvp3.1217026863835:0" id="808331971409603125" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="3345876218930172943">
            <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3345876218930172944">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="3345876218930192790">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="3345876218930192792">
                  <property name="value" nameId="yvor.1068580123138:3" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" roleId="yvor.1068580123160:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="337543306967249186">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.NotEqualsExpression" typeId="yvor.1073239437375:3" id="337543306967249187">
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249188">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603120" resolveInfo="inputLanguage" />
                </node>
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="337543306967249189" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="337543306967249190">
                <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="337543306967249191">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249192">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603120" resolveInfo="inputLanguage" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="337543306967249193">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~Language%disGenerateAdapters()%cboolean" resolveInfo="isGenerateAdapters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1167266747641">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1167266747642">
              <property name="name" nameId="yvnu.1169194664001:0" value="type" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1167266747644">
                <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvnr.1083243159079:0" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759010">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1167266585172" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1167266585173">
                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1083171729157:0" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1167266558754">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220343797963">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1220343797384">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1167266747642" resolveInfo="type" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220343798982">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvnv.1220268752134" resolveInfo="isString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="ruleConsequence" roleId="yvp6.1169570368028:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1169595755012">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1095704552328" resolveInfo="weave_EnumerationDataTypeDeclaration_String" />
      </node>
      <node role="contextNodeQuery" roleId="yvp6.1184616230853:2" type="yvp6.Weaving_MappingRule_ContextNodeQuery" typeId="yvp6.1184616041890:2" id="1187043830800">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1187043830801">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1187043866948">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1216848432913">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1216867026251" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1216867012589">
                <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1215475935865" resolveInfo="javaClass" />
                <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1187043882376" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="weavingMappingRule" roleId="yvp6.1167172143858:2" type="yvp6.Weaving_MappingRule" typeId="yvp6.1167171569011:2" id="1167266685048">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1082978164219:0" />
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="1167266685049">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1167266685050">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="808331971409603146">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="808331971409603147">
              <property name="name" nameId="yvnu.1169194664001:0" value="inputLanguage" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="808331971409603148">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~Language" resolveInfo="Language" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="808331971409603149">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1225099380388" resolveInfo="getInputLanguage" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="808331971409603150">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="808331971409603151" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOriginalInputModel" typeId="yvp3.1217026863835:0" id="808331971409603152" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="808331971409603153">
            <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="808331971409603154">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="808331971409603155">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="808331971409603156">
                  <property name="value" nameId="yvor.1068580123138:3" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" roleId="yvor.1068580123160:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="337543306967249197">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.NotEqualsExpression" typeId="yvor.1073239437375:3" id="337543306967249198">
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249199">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603147" resolveInfo="inputLanguage" />
                </node>
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="337543306967249200" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="337543306967249201">
                <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="337543306967249202">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249203">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603147" resolveInfo="inputLanguage" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="337543306967249204">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~Language%disGenerateAdapters()%cboolean" resolveInfo="isGenerateAdapters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1167266769458">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1167266769459">
              <property name="name" nameId="yvnu.1169194664001:0" value="type" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1167266769461">
                <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvnr.1083243159079:0" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758983">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1167266685055" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1167266685056">
                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1083171729157:0" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1167266685051">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220343803234">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1220343802749">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1167266769459" resolveInfo="type" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220343803878">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvnv.1220268791641" resolveInfo="isBoolean" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="ruleConsequence" roleId="yvp6.1169570368028:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1169596046326">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1095952760656" resolveInfo="weave_EnumerationDataTypeDeclaration_Boolean" />
      </node>
      <node role="contextNodeQuery" roleId="yvp6.1184616230853:2" type="yvp6.Weaving_MappingRule_ContextNodeQuery" typeId="yvp6.1184616041890:2" id="1187043918082">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1187043918083">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1187043918084">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1216848432211">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1216867025610" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1216867019740">
                <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1215475935865" resolveInfo="javaClass" />
                <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1187043918087" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="weavingMappingRule" roleId="yvp6.1167172143858:2" type="yvp6.Weaving_MappingRule" typeId="yvp6.1167171569011:2" id="1167266687531">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1082978164219:0" />
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="1167266687532">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1167266687533">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="808331971409603166">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="808331971409603167">
              <property name="name" nameId="yvnu.1169194664001:0" value="inputLanguage" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="808331971409603168">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~Language" resolveInfo="Language" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="808331971409603169">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1225099380388" resolveInfo="getInputLanguage" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="808331971409603170">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="808331971409603171" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOriginalInputModel" typeId="yvp3.1217026863835:0" id="808331971409603172" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="808331971409603173">
            <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="808331971409603174">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="808331971409603175">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="808331971409603176">
                  <property name="value" nameId="yvor.1068580123138:3" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" roleId="yvor.1068580123160:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="337543306967249238">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.NotEqualsExpression" typeId="yvor.1073239437375:3" id="337543306967249239">
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249240">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603167" resolveInfo="inputLanguage" />
                </node>
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="337543306967249241" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="337543306967249242">
                <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="337543306967249243">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="337543306967249244">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="808331971409603167" resolveInfo="inputLanguage" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="337543306967249245">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~Language%disGenerateAdapters()%cboolean" resolveInfo="isGenerateAdapters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1167266774245">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1167266774246">
              <property name="name" nameId="yvnu.1169194664001:0" value="type" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1167266774248">
                <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvnr.1083243159079:0" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758720">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1167266687538" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1167266687539">
                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1083171729157:0" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1167266687534">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220343814056">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1220343813680">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1167266774246" resolveInfo="type" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220343816324">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvnv.1220268780075" resolveInfo="isInteger" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="ruleConsequence" roleId="yvp6.1169570368028:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1169596053123">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1095929530832" resolveInfo="weave_EnumerationDataTypeDeclaration_Integer" />
      </node>
      <node role="contextNodeQuery" roleId="yvp6.1184616230853:2" type="yvp6.Weaving_MappingRule_ContextNodeQuery" typeId="yvp6.1184616041890:2" id="1187043927698">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1187043927699">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1187043927700">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1216848432077">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1216867030166" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1216867018780">
                <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1215475935865" resolveInfo="javaClass" />
                <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1187043927703" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1215475935865">
      <property name="name" nameId="yvnu.1169194664001:0" value="javaClass" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1215475939071">
      <property name="name" nameId="yvnu.1169194664001:0" value="propertySupportClass" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1215475939089">
      <property name="name" nameId="yvnu.1169194664001:0" value="annotation" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1215478114755">
      <property name="name" nameId="yvnu.1169194664001:0" value="linkGetterMethod" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1215478114836">
      <property name="name" nameId="yvnu.1169194664001:0" value="linkSetterMethod" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1215479320689">
      <property name="name" nameId="yvnu.1169194664001:0" value="outputEnumConstant" />
    </node>
    <node role="dropRootRule" roleId="yvp6.1219952894531:2" type="yvp6.DropRootRule" typeId="yvp6.1219952072943:2" id="1219962514247">
      <link role="applicableConcept" roleId="yvp6.1219952338328:2" targetNodeId="yvnr.1083243159079:0" resolveInfo="PrimitiveDataTypeDeclaration" />
    </node>
    <node role="createRootRule" roleId="yvp6.1167088157977:2" type="yvp6.CreateRootRule" typeId="yvp6.1167087469898:2" id="1225099640119">
      <link role="templateNode" roleId="yvp6.1167087469901:2" targetNodeId="1225099204495" resolveInfo="XYZ_Language" />
      <node role="conditionFunction" roleId="yvp6.1167087469900:2" type="yvp6.CreateRootRule_Condition" typeId="yvp6.1167087518662:2" id="1226343664102">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1226343664103">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2486218064530621398">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="5837245684360024373">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5837245684360024387">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5837245684360024382">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5837245684360024377">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="5837245684360024376" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOriginalInputModel" typeId="yvp3.1217026863835:0" id="5837245684360024381" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Model_RootsOperation" typeId="yvim.1171315804604:16" id="5837245684360024386">
                    <link role="concept" roleId="yvim.1171315804605:16" targetNodeId="yvnr.1082978164218:0" resolveInfo="DataTypeDeclaration" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.IsNotEmptyOperation" typeId="yvix.1176501494711:7" id="5837245684360024391" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2486218064530625982">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2486218064530621405">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2486218064530621400">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="2486218064530621399" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOriginalInputModel" typeId="yvp3.1217026863835:0" id="2486218064530621404" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Model_RootsOperation" typeId="yvim.1171315804604:16" id="2486218064530625981">
                    <link role="concept" roleId="yvim.1171315804605:16" targetNodeId="yvnr.1169125787135:0" resolveInfo="AbstractConceptDeclaration" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.IsNotEmptyOperation" typeId="yvix.1176501494711:7" id="2486218064530625986" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1095424864671">
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333270295">
      <property name="name" nameId="yvnu.1169194664001:0" value="propertydecl_child" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="545838410333270296" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333270297" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333270298" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="545838410333270311">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="545838410333270312">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333270313">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="545838410333270467">
              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333270468">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333270489">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="545838410333270490">
                    <node role="creator" roleId="yvor.1145553007750:3" type="yvix.SequenceCreator" typeId="yvix.1224414427926:7" id="545838410333270491">
                      <node role="elementType" roleId="yvix.1224414456414:7" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="545838410333270492" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="545838410333635839">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="545838410333635853">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="545838410333635856">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635848">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635843">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333635842" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="545838410333635847">
                        <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1071489727084:0" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="545838410333635852" />
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="545838410333635832">
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635827">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635822">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333635821" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="545838410333635826">
                        <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1169129564478:0" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="545838410333635831" />
                  </node>
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="545838410333635835">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.Statement" typeId="yvor.1068580123157:3" id="545838410333270425" />
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="545838410333270316">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="545838410333270317">
                <property name="name" nameId="yvnu.1169194664001:0" value="concepts" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="545838410333270318">
                  <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvnr.1169125787135:0" resolveInfo="AbstractConceptDeclaration" />
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333270319">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169579362211" resolveInfo="conceptAndItsInterfaces" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333270372" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.SingleLineComment" typeId="yvor.6329021646629104954:3" id="545838410333270321">
              <node role="commentPart" roleId="yvor.6329021646629175155:3" type="yvor.TextCommentPart" typeId="yvor.6329021646629104957:3" id="545838410333270322">
                <property name="text" nameId="yvor.6329021646629104958:3" value="all boolean-type-properties from implemented interfaces" />
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="545838410333270323">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="545838410333270324">
                <property name="name" nameId="yvnu.1169194664001:0" value="names" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="545838410333270325">
                  <node role="elementType" roleId="yvix.1151688676805:7" type="yvor.StringType" typeId="yvor.1225271177708:3" id="545838410333270326" />
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="545838410333270327">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvix.ListCreatorWithInit" typeId="yvix.1160600644654:7" id="545838410333270328">
                    <node role="elementType" roleId="yvix.1237721435807:7" type="yvor.StringType" typeId="yvor.1225271177708:3" id="545838410333270329" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333270330">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333635861">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.545838410333635415" resolveInfo="sortedProperties" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635862">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="545838410333635863">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333270317" resolveInfo="concepts" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.TranslateOperation" typeId="yvix.1201792049884:7" id="545838410333635864">
                    <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="545838410333635865">
                      <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="545838410333635866">
                        <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="545838410333635867" />
                      </node>
                      <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333635868">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="545838410333635869">
                          <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="545838410333635870">
                            <property name="name" nameId="yvnu.1169194664001:0" value="p" />
                          </node>
                          <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635871">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="545838410333635872">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333635866" resolveInfo="it" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="545838410333635873">
                              <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1071489727084:0" />
                            </node>
                          </node>
                          <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333635874">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="545838410333635875">
                              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333635876">
                                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ContinueStatement" typeId="yvor.1082113931046:3" id="545838410333635877" />
                              </node>
                              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635878">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="545838410333635879">
                                  <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="545838410333635870" resolveInfo="p" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333635880">
                                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.9026942911489198753:0" resolveInfo="doNotGenerate" />
                                </node>
                              </node>
                            </node>
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="545838410333635881">
                              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333635882">
                                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333635883">
                                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635884">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="545838410333635885">
                                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333270324" resolveInfo="names" />
                                    </node>
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.AddElementOperation" typeId="yvix.1160612413312:7" id="545838410333635886">
                                      <node role="argument" roleId="yvix.1160612519549:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635887">
                                        <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="545838410333635888">
                                          <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="545838410333635870" resolveInfo="p" />
                                        </node>
                                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333635889">
                                          <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="statement" roleId="yvor.1068581517665:3" type="yviq.YieldStatement" typeId="yviq.1200830824066:3" id="545838410333635890">
                                  <node role="expression" roleId="yviq.1200830928149:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="545838410333635891">
                                    <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="545838410333635870" resolveInfo="p" />
                                  </node>
                                </node>
                              </node>
                              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="545838410333635892">
                                <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635893">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="545838410333635894">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333270324" resolveInfo="names" />
                                  </node>
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.ContainsOperation" typeId="yvix.1172254888721:7" id="545838410333635895">
                                    <node role="argument" roleId="yvix.1172256416782:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635896">
                                      <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="545838410333635897">
                                        <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="545838410333635870" resolveInfo="p" />
                                      </node>
                                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333635898">
                                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
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
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.SwitchMacro" typeId="yvp6.1112731569622:2" id="545838410333270315">
        <link role="templateSwitch" roleId="yvp6.1112731629154:2" targetNodeId="545838410333270266" resolveInfo="switch_PropertyDeclaration" />
      </node>
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="7544071561380125535">
      <property name="name" nameId="yvnu.1169194664001:0" value="linkdecl_child" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="7544071561380125536" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="7544071561380125537" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7544071561380125538" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="7544071561380125544">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="7544071561380125545">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7544071561380125546">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="545838410333635749">
              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333635750">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333635792">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="545838410333635787">
                    <node role="creator" roleId="yvor.1145553007750:3" type="yvix.SequenceCreator" typeId="yvix.1224414427926:7" id="545838410333635789">
                      <node role="elementType" roleId="yvix.1224414456414:7" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="545838410333635790" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="545838410333635768">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="545838410333635782">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="545838410333635785">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635777">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635772">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333635771" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="545838410333635776">
                        <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1071489727083:0" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="545838410333635781" />
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="545838410333635764">
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635759">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635754">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333635753" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="545838410333635758">
                        <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1169129564478:0" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="545838410333635763" />
                  </node>
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="545838410333635767">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333635802">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333635804">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.545838410333635586" resolveInfo="sortedLinks" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635805">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635806">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333635807">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169579362211" resolveInfo="conceptAndItsInterfaces" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333635808" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkImplicitSelect" typeId="yvim.3562215692195599741:16" id="545838410333635809">
                      <link role="link" roleId="yvim.3562215692195600259:16" targetNodeId="yvnr.1071489727083:0" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.WhereOperation" typeId="yvix.1202120902084:7" id="545838410333635810">
                    <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="545838410333635811">
                      <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333635812">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333635813">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="545838410333635814">
                            <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333635815">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="545838410333635816">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333635818" resolveInfo="it" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333635817">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.3236994869861844876:0" resolveInfo="doNotGenerate" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="545838410333635818">
                        <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="545838410333635819" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.SwitchMacro" typeId="yvp6.1112731569622:2" id="7544071561380125581">
        <link role="templateSwitch" roleId="yvp6.1112731629154:2" targetNodeId="7544071561380124589" resolveInfo="weave_LinkDeclaration_child_card_switch" />
      </node>
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="4618075713846641184">
      <property name="name" nameId="yvnu.1169194664001:0" value="getAttributedNode_internal" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4618075713846641185">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4618075713846641186">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="4618075713846641187">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="4618075713846641188">
            <node role="type" roleId="yvor.1070534934091:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4618075713846641189">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
            </node>
            <node role="expression" roleId="yvor.1070534934092:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4618075713846641190">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="4618075713846641191" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4618075713846641192">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetParent()%cjetbrains%dmps%dsmodel%dINodeAdapter" resolveInfo="getParent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4618075713846641194" />
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="4618075713846641280">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="4618075713846641281">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4618075713846641282">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4618075713846641286">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4618075713846641287">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4618075713846641288">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4618075713846641289" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="4618075713846641290">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Simple" typeId="yvim.1146253292180:16" id="4618075713846641291">
                  <node role="value" roleId="yvim.1146253292181:16" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="4618075713846641292">
                    <property name="value" nameId="yvor.1070475926801:3" value="AttributeConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="4618075713846641225">
      <property name="name" nameId="yvnu.1169194664001:0" value="getReferent" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4618075713846641226">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4618075713846641227">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="4618075713846641228">
          <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4618075713846641229">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="4618075713846641230">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4618075713846641231">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="4618075713846641232" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4618075713846641233">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4618075713846641184" resolveInfo="getAttributedNode_internal" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4618075713846641234">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="4618075713846641235">
              <property name="value" nameId="yvor.1070475926801:3" value="attributedNode" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4618075713846641236">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4618075713846641237">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4618075713846641243" resolveInfo="role" />
              </node>
            </node>
          </node>
          <node role="ifFalseStatement" roleId="yvor.1082485599094:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="4618075713846641238">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="4618075713846641239">
              <node role="type" roleId="yvor.1070534934091:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4618075713846641240">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
              </node>
              <node role="expression" roleId="yvor.1070534934092:3" type="yvor.SuperMethodCall" typeId="yvor.1073063089578:3" id="4618075713846641241">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetReferent(java%dlang%dString)%cjetbrains%dmps%dsmodel%dINodeAdapter" resolveInfo="getReferent" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4618075713846641242">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4618075713846641243" resolveInfo="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="4618075713846641243">
        <property name="name" nameId="yvnu.1169194664001:0" value="role" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="4618075713846641244" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4618075713846641246" />
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="4618075713846641273">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="4618075713846641274">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4618075713846641275">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4618075713846641293">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4618075713846641294">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4618075713846641295">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4618075713846641296" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="4618075713846641297">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Simple" typeId="yvim.1146253292180:16" id="4618075713846641298">
                  <node role="value" roleId="yvim.1146253292181:16" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="4618075713846641299">
                    <property name="value" nameId="yvor.1070475926801:3" value="AttributeConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1170238891731">
      <property name="name" nameId="yvnu.1169194664001:0" value="newInstance" />
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1170238920326">
        <property name="name" nameId="yvnu.1169194664001:0" value="sm" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="8679183774719012254">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~SModel" resolveInfo="SModel" />
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1171889473135">
        <property name="name" nameId="yvnu.1169194664001:0" value="init" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1171889485489" />
      </node>
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1170238915263">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1170238891733">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1170239031647">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="1170239083175">
            <node role="type" roleId="yvor.1070534934091:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1170239083177">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
            </node>
            <node role="expression" roleId="yvor.1070534934092:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459531">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1170239085909">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="8n6q.~SModelUtil_new" resolveInfo="SModelUtil_new" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~SModelUtil_new%dinstantiateConceptDeclaration(java%dlang%dString,jetbrains%dmps%dsmodel%dSModel,jetbrains%dmps%dsmodel%dIScope,boolean)%cjetbrains%dmps%dsmodel%dSNode" resolveInfo="instantiateConceptDeclaration" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1170239085910">
                  <property name="value" nameId="yvor.1070475926801:3" value="conceptFqName" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1170239141485">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1170239141486">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1170239141487">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1189815467499">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1170239355414">
                            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dnodeFQName(jetbrains%dmps%dsmodel%dSNode)%cjava%dlang%dString" resolveInfo="nodeFQName" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1170239383133" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1170239085911">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1170238920326" resolveInfo="sm" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1170239085912">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~GlobalScope%dgetInstance()%cjetbrains%dmps%dproject%dGlobalScope" resolveInfo="getInstance" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="txlh.~GlobalScope" resolveInfo="GlobalScope" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1171889514008">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1171889473135" resolveInfo="init" />
                </node>
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459532">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~SNode%dgetAdapter()%cjetbrains%dmps%dsmodel%dBaseAdapter" resolveInfo="getAdapter" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546097059" />
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1171889526393">
      <property name="name" nameId="yvnu.1169194664001:0" value="newInstance" />
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1171889526394">
        <property name="name" nameId="yvnu.1169194664001:0" value="sm" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="8679183774719012264">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~SModel" resolveInfo="SModel" />
        </node>
      </node>
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1171889526398">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1171889526399">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1171889526400">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1171889557795">
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1170238891731" resolveInfo="newInstance" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1171889561593">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1171889526394" resolveInfo="sm" />
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1171889570298" />
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546096818" />
    </node>
    <node role="implementedInterface" roleId="yvor.1095933932569:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198508055446">
      <property name="fqClassName" nameId="yvko.1174914081067:1" value="implementedConcept" />
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~BaseScope" resolveInfo="BaseScope" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1198508062249">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1198508062250">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198508062251">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198508067332">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240301371657">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759450">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198508067333" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1198508069543">
                    <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1169129564478:0" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.WhereOperation" typeId="yvix.1202120902084:7" id="1240301373180">
                  <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="1240301373181">
                    <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240301373182">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240301378477">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240301386580">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240301378590">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1240301378478">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1240301373183" resolveInfo="it" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1240301385899">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1169127628841:0" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1240301387764" />
                        </node>
                      </node>
                    </node>
                    <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="1240301373183">
                      <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="1240301373184" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198508092516">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198508092517">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198508092518">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1198508184409">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1198508184410">
                <property name="name" nameId="yvnu.1169194664001:0" value="conceptDeclaration" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1198508184411">
                  <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvnr.1169125989551:0" resolveInfo="InterfaceConceptDeclaration" />
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759320">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198508114206" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198508172343">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1169127628841:0" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198508109051">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1198508109053">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759083">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1198508189574">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1198508184410" resolveInfo="conceptDeclaration" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1198508192797">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1198508109052">
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459653">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SemanticDowncastExpression" typeId="yvim.1145404486709:16" id="1198508109059">
                      <node role="leftExpression" roleId="yvim.1145404616321:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758852">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1198508184412">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1198508184410" resolveInfo="conceptDeclaration" />
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetModelOperation" typeId="yvim.1143234257716:16" id="1198508109061" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459654">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~SModel%dgetLongName()%cjava%dlang%dString" resolveInfo="getLongName" />
                    </node>
                  </node>
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1198508109057">
                    <property name="value" nameId="yvor.1070475926801:3" value="." />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="1189815404315">
      <property name="isFinal" nameId="yvor.1176718929932:3" value="true" />
      <property name="name" nameId="yvnu.1169194664001:0" value="concept" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1189815411849" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192520370" />
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1189815439182">
        <property name="value" nameId="yvor.1070475926801:3" value="conceptFqName" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1189815461293">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1189815461294">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1189815461295">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1189815474892">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1189815482175">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dnodeFQName(jetbrains%dmps%dsmodel%dSNode)%cjava%dlang%dString" resolveInfo="nodeFQName" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1189815485442" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="1167754725790">
      <property name="name" nameId="yvnu.1169194664001:0" value="_CONCEPT_PROPERTY_" />
      <property name="isFinal" nameId="yvor.1176718929932:3" value="true" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521560" />
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1167754757341">
        <property name="value" nameId="yvor.1070475926801:3" value="_cp_" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1167755140474">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1168020996282">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1168020996283">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1168020996291">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758752">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1168021008176" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1168021008177">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1167754832766">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1167954157081">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1167954157082">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1167954249092">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759635">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1167954254938" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1206577021957">
                  <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1137467167200:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1167754964566">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1168020858179">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1168020858180">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1168020885987">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1168020905302">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1168020915588">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759505">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1168023039892" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1168023044972">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1168020892114">
                  <property name="value" nameId="yvor.1070475926801:3" value="CPR_" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1224773937074" />
    </node>
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="1167754780567">
      <property name="name" nameId="yvnu.1169194664001:0" value="_CONCEPT_LINK_" />
      <property name="isFinal" nameId="yvor.1176718929932:3" value="true" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521335" />
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1167754780569">
        <property name="value" nameId="yvor.1070475926801:3" value="_cl_" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1167755217350">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1168021031848">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1168021031849">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1168021031850">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759190">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1168021031853" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1168021034667">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1167754853018">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1168019837671">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1168019837672">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1168019840347">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758880">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1168019840351" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1206577021969">
                  <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1137532086877:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1167755120786">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1168020946114">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1168020946115">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1168020946123">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1168020946124">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1168020946125">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759081">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1168023064401" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1168023068012">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1168020946127">
                  <property name="value" nameId="yvor.1070475926801:3" value="CLNK_" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1224773940591" />
    </node>
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="545838410333247966">
      <property name="name" nameId="yvnu.1169194664001:0" value="_property_constant_" />
      <property name="isFinal" nameId="yvor.1176718929932:3" value="true" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="545838410333247967" />
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="545838410333247968">
        <property name="value" nameId="yvor.1070475926801:3" value="_property_value_" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333247969">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333247970">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333247971">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333247972">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333247973">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333270258" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333270261">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333247977">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333247978">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333247979">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333247980">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333247981">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dtoConstantName(java%dlang%dString)%cjava%dlang%dString" resolveInfo="toConstantName" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333247982">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333270253" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333270256">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333247985" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="545838410333248005">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="545838410333248006">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333248007">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="545838410333343363">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="545838410333343364">
                <property name="name" nameId="yvnu.1169194664001:0" value="properties" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.SequenceType" typeId="yvix.1151689724996:7" id="545838410333360634">
                  <node role="elementType" roleId="yvix.1151689745422:7" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="545838410333360653">
                    <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvnr.1071489288299:0" resolveInfo="PropertyDeclaration" />
                  </node>
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333360620">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333343366">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169579362211" resolveInfo="conceptAndItsInterfaces" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333343367" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkImplicitSelect" typeId="yvim.3562215692195599741:16" id="545838410333360626">
                    <link role="link" roleId="yvim.3562215692195600259:16" targetNodeId="yvnr.1071489727084:0" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="545838410333343370">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="545838410333343371">
                <property name="name" nameId="yvnu.1169194664001:0" value="names" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.SetType" typeId="yvix.1226511727824:7" id="545838410333360578">
                  <node role="elementType" roleId="yvix.1226511765987:7" type="yvor.StringType" typeId="yvor.1225271177708:3" id="545838410333360579" />
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="545838410333343374">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvix.HashSetCreator" typeId="yvix.1226516258405:7" id="545838410333360582">
                    <node role="elementType" roleId="yvix.1237721435807:7" type="yvor.StringType" typeId="yvor.1225271177708:3" id="545838410333360583" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="545838410333360530">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="545838410333360531">
                <property name="name" nameId="yvnu.1169194664001:0" value="nodes" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.SequenceType" typeId="yvix.1151689724996:7" id="545838410333360532">
                  <node role="elementType" roleId="yvix.1151689745422:7" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="545838410333360533">
                    <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvnr.1071489288299:0" resolveInfo="PropertyDeclaration" />
                  </node>
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333360534">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="545838410333360535">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333343364" resolveInfo="concepts" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.TranslateOperation" typeId="yvix.1201792049884:7" id="545838410333360536">
                    <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="545838410333360537">
                      <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="545838410333360538">
                        <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="545838410333360539" />
                      </node>
                      <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333360540">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="545838410333360665">
                          <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333360666">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333360667">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333360668">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="545838410333360669">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333343371" resolveInfo="names" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.AddSetElementOperation" typeId="yvix.1226566855640:7" id="545838410333360670">
                                  <node role="argument" roleId="yvix.1226567214363:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333360671">
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333360673">
                                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                                    </node>
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="545838410333360932">
                                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333360538" resolveInfo="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="statement" roleId="yvor.1068581517665:3" type="yviq.YieldStatement" typeId="yviq.1200830824066:3" id="545838410333360674">
                              <node role="expression" roleId="yviq.1200830928149:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="545838410333360939">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333360538" resolveInfo="it" />
                              </node>
                            </node>
                          </node>
                          <node role="condition" roleId="yvor.1068580123160:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="545838410333360676">
                            <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333360677">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="545838410333360678">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333343371" resolveInfo="names" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvix.ContainsOperation" typeId="yvix.1172254888721:7" id="545838410333360679">
                                <node role="argument" roleId="yvix.1172256416782:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333360680">
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333360682">
                                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                                  </node>
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="545838410333360837">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333360538" resolveInfo="it" />
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
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333360570">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333653497">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.545838410333635415" resolveInfo="sortedProperties" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="545838410333653500">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333360531" resolveInfo="nodes" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="7544071561380146717">
      <property name="name" nameId="yvnu.1169194664001:0" value="_link_constant_" />
      <property name="isFinal" nameId="yvor.1176718929932:3" value="true" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="7544071561380146718" />
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="7544071561380146719">
        <property name="value" nameId="yvor.1070475926801:3" value="_property_value_" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="7544071561380146720">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="7544071561380146721">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7544071561380146722">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7544071561380146723">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7544071561380146724">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7544071561380146725" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="7544071561380146828">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="7544071561380146728">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="7544071561380146729">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7544071561380146730">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7544071561380146731">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="7544071561380146732">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dtoConstantName(java%dlang%dString)%cjava%dlang%dString" resolveInfo="toConstantName" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7544071561380146733">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7544071561380146734" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="7544071561380146826">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="7544071561380146736" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="7544071561380146746">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="7544071561380146747">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7544071561380146748">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="545838410333653508">
              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333653509">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333653577">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="545838410333653583">
                    <node role="creator" roleId="yvor.1145553007750:3" type="yvix.SequenceCreator" typeId="yvix.1224414427926:7" id="545838410333653584">
                      <node role="elementType" roleId="yvix.1224414456414:7" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="545838410333653585">
                        <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="545838410333653543">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="545838410333653567">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="545838410333653572">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333653558">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333653549">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333653548" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="545838410333653555">
                        <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1071489727083:0" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="545838410333653564" />
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="545838410333653535">
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333653526">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333653517">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333653516" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="545838410333653523">
                        <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1169129564478:0" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="545838410333653532" />
                  </node>
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="545838410333653540">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="545838410333724167">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="545838410333724168">
                <property name="name" nameId="yvnu.1169194664001:0" value="res" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.SequenceType" typeId="yvix.1151689724996:7" id="545838410333724169">
                  <node role="elementType" roleId="yvix.1151689745422:7" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="545838410333724173">
                    <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
                  </node>
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333724181">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333724182">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333724183">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169579362211" resolveInfo="conceptAndItsInterfaces" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333724184" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkImplicitSelect" typeId="yvim.3562215692195599741:16" id="545838410333724185">
                      <link role="link" roleId="yvim.3562215692195600259:16" targetNodeId="yvnr.1071489727083:0" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.WhereOperation" typeId="yvix.1202120902084:7" id="545838410333724186">
                    <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="545838410333724187">
                      <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333724188">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333724189">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="545838410333724298">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="545838410333724303">
                              <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333724310">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="545838410333724309">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333724198" resolveInfo="it" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333724316">
                                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.3236994869861844876:0" resolveInfo="doNotGenerate" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="545838410333724287">
                              <node role="expression" roleId="yvor.1079359253376:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="545838410333724288">
                                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333724289">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167263502163" resolveInfo="isRefLink_card_1_nospec" />
                                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="545838410333724290">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333724198" resolveInfo="it" />
                                  </node>
                                </node>
                                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="545838410333724291">
                                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333724292">
                                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167265030512" resolveInfo="isAggLink_card_1_nospec" />
                                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="545838410333724293">
                                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333724198" resolveInfo="it" />
                                    </node>
                                  </node>
                                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333724294">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167265145921" resolveInfo="isAggLink_card_n_nospec" />
                                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="545838410333724295">
                                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333724198" resolveInfo="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="545838410333724198">
                        <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="545838410333724199" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333653598">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333653612">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.545838410333635586" resolveInfo="sortedLinks" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333724228">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="545838410333724225">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333724168" resolveInfo="res" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.UnionOperation" typeId="yvix.1176903168877:7" id="545838410333724246">
                    <node role="rightExpression" roleId="yvix.1176906787974:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333724260">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333724251">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333724250" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="545838410333724257">
                          <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1071489727083:0" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvix.WhereOperation" typeId="yvix.1202120902084:7" id="545838410333724266">
                        <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="545838410333724267">
                          <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333724268">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333724273">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333724275">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="545838410333724274">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333724269" resolveInfo="it" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333724281">
                                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.3236994869861844876:0" resolveInfo="doNotGenerate" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="545838410333724269">
                            <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="545838410333724270" />
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
    <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="1095433426218">
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1170228562797">
        <property name="name" nameId="yvnu.1169194664001:0" value="node" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="8679183774719012269">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~SNode" resolveInfo="SNode" />
        </node>
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095433426219">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.SuperConstructorInvocation" typeId="yvor.1070475587102:3" id="1095434764468">
          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1170228576042">
            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1170228562797" resolveInfo="node" />
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546096196" />
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1146653489946" />
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1095428289562">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1168019908729">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1168019908730">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1168019910731">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759111">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1168019912639" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1168019930080">
                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="superclass" roleId="yvor.1165602531693:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198507255529">
      <property name="fqClassName" nameId="yvko.1174914081067:1" value="extendedConcept" />
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
      <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198507396462">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198507396463">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198507396464">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1198517771349">
              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198517771350">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1198517870421">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1198517872175">
                    <property name="value" nameId="yvor.1070475926801:3" value="jetbrains.mps.smodel.BaseAdapter" />
                  </node>
                </node>
              </node>
              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1216299655080">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1216299653998">
                  <property name="value" nameId="yvor.1070475926801:3" value="jetbrains.mps.lang.core.structure.BaseConcept" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1216299656794">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1216299657282">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dnodeFQName(jetbrains%dmps%dsmodel%dSNode)%cjava%dlang%dString" resolveInfo="nodeFQName" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1216299657283" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1198507419522">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1198507419523">
                <property name="name" nameId="yvnu.1169194664001:0" value="conceptDeclaration" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1198507419524">
                  <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvnr.1071489090640:0" resolveInfo="ConceptDeclaration" />
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758722">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198507401013" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198507404673">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071489389519:0" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1198507600568">
              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198507600569">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1198507621115">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1198507622288">
                    <property name="value" nameId="yvor.1070475926801:3" value="jetbrains.mps.lang.core.structure.BaseConcept" />
                  </node>
                </node>
              </node>
              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759422">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1198507610997">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1198507419523" resolveInfo="conceptDeclaration" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNullOperation" typeId="yvim.1171999116870:16" id="1198507616769" />
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198507401012">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1198507456172">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759192">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1198507464442">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1198507419523" resolveInfo="conceptDeclaration" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1198507478854">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1198507429027">
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459651">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SemanticDowncastExpression" typeId="yvim.1145404486709:16" id="1198507436474">
                      <node role="leftExpression" roleId="yvim.1145404616321:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759584">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1198507419525">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1198507419523" resolveInfo="conceptDeclaration" />
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetModelOperation" typeId="yvim.1143234257716:16" id="1198507433707" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459652">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~SModel%dgetLongName()%cjava%dlang%dString" resolveInfo="getLongName" />
                    </node>
                  </node>
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1198507454483">
                    <property name="value" nameId="yvor.1070475926801:3" value="." />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="1169130001833">
      <link role="applicableConcept" roleId="yvp6.1168619429071:2" targetNodeId="yvnr.1071489090640:0" />
    </node>
  </root>
  <root id="1095670167921">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1095670167922">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_class_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096027906069">
        <property name="name" nameId="yvnu.1169194664001:0" value="_getter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096027917148">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1107471929673">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459624">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1107471941708" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459625">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetProperty(java%dlang%dString)%cjava%dlang%dString" resolveInfo="getProperty" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="545838410333305491">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333247966" resolveInfo="_property_constant_" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192520822" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096027917154">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1169581753467">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169581753468">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169581755063">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1169581769691">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169581778398">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759215">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169581784883" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1169581788432">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1169581759065">
                    <property name="value" nameId="yvor.1070475926801:3" value="get" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096027917155" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095461" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095670167923">
        <property name="name" nameId="yvnu.1169194664001:0" value="_setter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095670167924">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1107471975230">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459553">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1107471975229" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459554">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dsetProperty(java%dlang%dString,java%dlang%dString)%cvoid" resolveInfo="setProperty" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="545838410333305494">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333247966" resolveInfo="_property_constant_" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1107472002220">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095670167931" resolveInfo="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1095670167932" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1095670167931">
          <property name="name" nameId="yvnu.1169194664001:0" value="value" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521117" />
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1095670610803">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1169581814828">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169581814829">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169581814830">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1169581814831">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169581814832">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759166">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169581814834" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1169581814835">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1169581814836">
                    <property name="value" nameId="yvor.1070475926801:3" value="set" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095676419640" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095291" />
      </node>
      <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1170359665316">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~BaseAdapter" resolveInfo="BaseAdapter" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081028" />
    </node>
  </root>
  <root id="1095688526406">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1095688526422">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_class_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096027949073">
        <property name="name" nameId="yvnu.1169194664001:0" value="_getter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096027956230">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1107472174675">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459458">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1107472176943" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459459">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetBooleanProperty(java%dlang%dString)%cboolean" resolveInfo="getBooleanProperty" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="545838410333305495">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333247966" resolveInfo="_property_constant_" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1096027956237" />
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096027956236" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096027956235">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219110545179">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219110545180">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219110545181">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1219110545182">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1219110545183">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219110545184">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219110545185" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219110545186">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1219110545187">
                    <property name="value" nameId="yvor.1070475926801:3" value="get" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095463" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095688526423">
        <property name="name" nameId="yvnu.1169194664001:0" value="_setter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095688526424">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1107472227028">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459817">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1107472227027" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459818">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dsetBooleanProperty(java%dlang%dString,boolean)%cvoid" resolveInfo="setBooleanProperty" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="545838410333305498">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333247966" resolveInfo="_property_constant_" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1107472242205">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095688526433" resolveInfo="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1095688526432" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1095688526433">
          <property name="name" nameId="yvnu.1169194664001:0" value="value" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1095688526434" />
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1095688526435">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219110655219">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219110655220">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219110655221">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1219110655222">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1219110655223">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219110655224">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219110655225" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219110655226">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1219110655227">
                    <property name="value" nameId="yvor.1070475926801:3" value="set" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095688526436" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095458" />
      </node>
      <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1170359601204">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~BaseAdapter" resolveInfo="BaseAdapter" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081002" />
    </node>
  </root>
  <root id="1095689039689">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1095689039690">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_class_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096027917922">
        <property name="name" nameId="yvnu.1169194664001:0" value="_getter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096027932532">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1107472062706">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459673">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1107472065380" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459674">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetIntegerProperty(java%dlang%dString)%cint" resolveInfo="getIntegerProperty" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="545838410333305486">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333247966" resolveInfo="_property_constant_" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="1096027932539" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096027932537">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219110458895">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219110458896">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219110466040">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1219110469042">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1219110476633">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219110481229">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219110479993" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219110481763">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1219110466041">
                    <property name="value" nameId="yvor.1070475926801:3" value="get" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096027932538" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095076" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095689039691">
        <property name="name" nameId="yvnu.1169194664001:0" value="_setter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095689039692">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1107472092731">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459671">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1107472092714" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459672">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dsetIntegerProperty(java%dlang%dString,int)%cvoid" resolveInfo="setIntegerProperty" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="545838410333305490">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333247966" resolveInfo="_property_constant_" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1107472108564">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095689039699" resolveInfo="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1095689039700" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1095689039699">
          <property name="name" nameId="yvnu.1169194664001:0" value="value" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="1095689039701" />
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1095689039702">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219110685494">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219110685495">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219110685496">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1219110685497">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1219110685498">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219110685499">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219110685500" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219110685501">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1219110685502">
                    <property name="value" nameId="yvor.1070475926801:3" value="set" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095689039703" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095411" />
      </node>
      <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1170359642284">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~BaseAdapter" resolveInfo="BaseAdapter" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081212" />
    </node>
  </root>
  <root id="1095695120718">
    <node role="enumConstant" roleId="yvor.1083245396908:3" type="yvor.EnumConstantDeclaration" typeId="yvor.1083245299891:3" id="1095942414630">
      <property name="name" nameId="yvnu.1169194664001:0" value="_constant_name_" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1095942431178">
        <property name="value" nameId="yvor.1070475926801:3" value="_external_value_" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1095942431179">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1174698175154">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174698175155">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1174698177348">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758799">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174698179826" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1174700131809">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1083923523172:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1178978007988">
        <node role="nodeMacro$attribute" type="yvp6.MapSrcNodeMacro" typeId="yvp6.1131073187192:2" id="1178978027690">
          <node role="mapperFunction" roleId="yvp6.1170725844563:2" type="yvp6.MapSrcMacro_MapperFunction" typeId="yvp6.1170725621272:2" id="1178978044712">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178978044713">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1178978083132">
                <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1178978083133">
                  <property name="name" nameId="yvnu.1169194664001:0" value="enumDataType" />
                  <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1178978083134">
                    <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvnr.1082978164219:0" />
                  </node>
                  <node role="initializer" roleId="yvor.1068431790190:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1178978124178">
                    <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvnr.1082978164219:0" />
                    <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759272">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1178978112582" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetParentOperation" typeId="yvim.1139613262185:16" id="1178978121150" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1178978242610">
                <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1178978242611">
                  <property name="name" nameId="yvnu.1169194664001:0" value="internalValue" />
                  <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521217" />
                  <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759633">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1178978252679" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1178978256984">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1083923523171:0" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1178978272293">
                <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1178978272294">
                  <property name="name" nameId="yvnu.1169194664001:0" value="memberDataType" />
                  <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1178978272295">
                    <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvnr.1083243159079:0" />
                  </node>
                  <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758933">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978289770">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978083133" resolveInfo="enumDataType" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1178978296844">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1083171729157:0" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1178978309407">
                <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1178978309408">
                  <property name="name" nameId="yvnu.1169194664001:0" value="targetInternalValueExpression" />
                  <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1178978309409">
                    <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvor.1068431790191:3" />
                  </node>
                  <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1178978330858" />
                </node>
              </node>
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1178978507282">
                <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1178978507283">
                  <property name="name" nameId="yvnu.1169194664001:0" value="targetModel" />
                  <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SModelType" typeId="yvim.1143226024141:16" id="1178978507284" />
                  <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1218220899135">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1218220899137" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputModel" typeId="yvp3.1217282130234:0" id="1218220899138" />
                  </node>
                </node>
              </node>
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1178978409089">
                <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178978409090">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1178978465619">
                    <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178978465620">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1178978483178">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1178978488666">
                          <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759194">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978529497">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978507283" resolveInfo="targetModel" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Model_CreateNewNodeOperation" typeId="yvim.1143235216708:16" id="1178978536990">
                              <link role="concept" roleId="yvim.1143235391024:16" targetNodeId="yvor.1070534058343:3" />
                            </node>
                          </node>
                          <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978483179">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978309408" resolveInfo="targetInternalValueExpression" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="condition" roleId="yvor.1068580123160:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1178978473235">
                      <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1178978474957" />
                      <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978470982">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978242611" resolveInfo="internalValue" />
                      </node>
                    </node>
                    <node role="ifFalseStatement" roleId="yvor.1082485599094:3" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1178978563084">
                      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178978563085">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1178978572526">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1178978574593">
                            <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759343">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978577254">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978507283" resolveInfo="targetModel" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Model_CreateNewNodeOperation" typeId="yvim.1143235216708:16" id="1178978583372">
                                <link role="concept" roleId="yvim.1143235391024:16" targetNodeId="yvor.1070475926800:3" />
                              </node>
                            </node>
                            <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978572527">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978309408" resolveInfo="targetInternalValueExpression" />
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1178978595618">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759089">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759138">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1178978598029">
                                <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvor.1070475926800:3" />
                                <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978595619">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978309408" resolveInfo="targetInternalValueExpression" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1178978605538">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvor.1070475926801:3" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_SetOperation" typeId="yvim.1138661924179:16" id="1178978609595">
                              <node role="value" roleId="yvim.1138662048170:16" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978618883">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978242611" resolveInfo="internalValue" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758770">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759221">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978444215">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978272294" resolveInfo="memberDataType" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1178978444216">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Simple" typeId="yvim.1146253292180:16" id="1178978449381">
                    <node role="value" roleId="yvim.1146253292181:16" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1178978451524">
                      <property name="value" nameId="yvor.1070475926801:3" value="string" />
                    </node>
                  </node>
                </node>
                <node role="ifFalseStatement" roleId="yvor.1082485599094:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1178978626893">
                  <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178978626894">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1178978697813">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1178978697814">
                        <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758858">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978697816">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978507283" resolveInfo="targetModel" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Model_CreateNewNodeOperation" typeId="yvim.1143235216708:16" id="1178978697817">
                            <link role="concept" roleId="yvim.1143235391024:16" targetNodeId="yvor.1068580123137:3" />
                          </node>
                        </node>
                        <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978697818">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978309408" resolveInfo="targetInternalValueExpression" />
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1178978662820">
                      <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178978662821">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1178978727525">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758981">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758977">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1178978731426">
                                <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvor.1068580123137:3" />
                                <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978727526">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978309408" resolveInfo="targetInternalValueExpression" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1178978741343">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvor.1068580123138:3" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_SetOperation" typeId="yvim.1138661924179:16" id="1178978752866">
                              <node role="value" roleId="yvim.1138662048170:16" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1178978756722">
                                <property name="value" nameId="yvor.1068580123138:3" value="true" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="condition" roleId="yvor.1068580123160:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1178978662828">
                        <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1178978662829" />
                        <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978662830">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978242611" resolveInfo="internalValue" />
                        </node>
                      </node>
                      <node role="ifFalseStatement" roleId="yvor.1082485599094:3" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1178978662831">
                        <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178978662832">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1178978662839">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759087">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759034">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1178978662842">
                                  <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvor.1068580123137:3" />
                                  <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978662843">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978309408" resolveInfo="targetInternalValueExpression" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1178978782706">
                                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvor.1068580123138:3" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_SetOperation" typeId="yvim.1138661924179:16" id="1178978662845">
                                <node role="value" roleId="yvim.1138662048170:16" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1178978794806">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~Boolean%dparseBoolean(java%dlang%dString)%cboolean" resolveInfo="parseBoolean" />
                                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="vhgx.~Boolean" resolveInfo="Boolean" />
                                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978800536">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978242611" resolveInfo="internalValue" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759479">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759030">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978630995">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978272294" resolveInfo="memberDataType" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1178978642618">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Simple" typeId="yvim.1146253292180:16" id="1178978646962">
                      <node role="value" roleId="yvim.1146253292181:16" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1178978648892">
                        <property name="value" nameId="yvor.1070475926801:3" value="boolean" />
                      </node>
                    </node>
                  </node>
                  <node role="ifFalseStatement" roleId="yvor.1082485599094:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1178978812012">
                    <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178978812013">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1178978860165">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1178978860166">
                          <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759367">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978860168">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978507283" resolveInfo="targetModel" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Model_CreateNewNodeOperation" typeId="yvim.1143235216708:16" id="1178978860169">
                              <link role="concept" roleId="yvim.1143235391024:16" targetNodeId="yvor.1068580320020:3" />
                            </node>
                          </node>
                          <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978860170">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978309408" resolveInfo="targetInternalValueExpression" />
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1178978860171">
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178978860172">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1178978860173">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758797">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759550">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1178978860176">
                                  <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvor.1068580320020:3" />
                                  <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978860177">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978309408" resolveInfo="targetInternalValueExpression" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1178978887223">
                                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvor.1068580320021:3" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_SetOperation" typeId="yvim.1138661924179:16" id="1178978860179">
                                <node role="value" roleId="yvim.1138662048170:16" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1178978892227">
                                  <property name="value" nameId="yvor.1068580320021:3" value="0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1178978860181">
                          <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1178978860182" />
                          <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978860183">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978242611" resolveInfo="internalValue" />
                          </node>
                        </node>
                        <node role="ifFalseStatement" roleId="yvor.1082485599094:3" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1178978860184">
                          <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178978860185">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1178978860186">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758780">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758876">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1178978860189">
                                    <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvor.1068580320020:3" />
                                    <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978860190">
                                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978309408" resolveInfo="targetInternalValueExpression" />
                                    </node>
                                  </node>
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1178978913557">
                                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvor.1068580320021:3" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_SetOperation" typeId="yvim.1138661924179:16" id="1178978860192">
                                  <node role="value" roleId="yvim.1138662048170:16" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1178978860193">
                                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~Integer%dparseInt(java%dlang%dString)%cint" resolveInfo="parseInt" />
                                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978860194">
                                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978242611" resolveInfo="internalValue" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758831">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759503">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978830664">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978272294" resolveInfo="memberDataType" />
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1178978830665">
                          <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Simple" typeId="yvim.1146253292180:16" id="1178978830666">
                        <node role="value" roleId="yvim.1146253292181:16" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1178978830667">
                          <property name="value" nameId="yvor.1070475926801:3" value="integer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1178978958113">
                <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178978958114">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1178978975580">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217973249229">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1217973249231" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_ShowErrorMessage" typeId="yvp3.1217960179967:0" id="1217973249232">
                        <node role="referenceNode" roleId="yvp3.1217960407512:0" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178979002313">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978083133" resolveInfo="enumDataType" />
                        </node>
                        <node role="messageText" roleId="yvp3.1217960314448:0" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1178979025496">
                          <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758669">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178979029409">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978272294" resolveInfo="memberDataType" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1178979041876">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                            </node>
                          </node>
                          <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1178979006929">
                            <property name="value" nameId="yvor.1070475926801:3" value="Can't generate value for type " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758647">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178978962039">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978309408" resolveInfo="targetInternalValueExpression" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNullOperation" typeId="yvim.1171999116870:16" id="1178978970701" />
                </node>
              </node>
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1178979053610">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1178979058353">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1178978309408" resolveInfo="targetInternalValueExpression" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1174698255352">
        <link role="mappingLabel" roleId="yvp6.1200912223215:2" targetNodeId="1215479320689" resolveInfo="outputEnumConstant" />
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1174698255353">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174698255354">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1174698277015">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759629">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174698283447" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1206577021971">
                  <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1083172003582:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1095942431182">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1174698110415">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174698110416">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240164681536">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240164688008">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240164681537" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1240164696107">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvnv.1240164579791" resolveInfo="getConstantName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095703025971">
      <property name="name" nameId="yvnu.1169194664001:0" value="getName" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095703030894">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095703033129">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740417582">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1095703036365" />
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.FieldReferenceOperation" typeId="yvor.1197029447546:3" id="1204740417583">
              <link role="fieldDeclaration" roleId="yvor.1197029500499:3" targetNodeId="1095702365658" resolveInfo="myName" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192520954" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095630" />
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095703322023">
      <property name="name" nameId="yvnu.1169194664001:0" value="getValueAsString" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095703329836" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521199" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095718" />
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1095702417646">
      <property name="name" nameId="yvnu.1169194664001:0" value="getConstants" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095703043305">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1095942485741">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1095942437296">
            <property name="name" nameId="yvnu.1169194664001:0" value="list" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="1237047901111">
              <node role="elementType" roleId="yvix.1151688676805:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1237047901112">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
              </node>
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217888356792">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvix.LinkedListCreator" typeId="yvix.1227008614712:7" id="1238666113090">
                <node role="elementType" roleId="yvix.1237721435807:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1238666118613">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1095942485743">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459433">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1095942442016">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095942437296" resolveInfo="list" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.AddElementOperation" typeId="yvix.1160612413312:7" id="1237214219885">
              <node role="argument" roleId="yvix.1160612519549:7" type="yvor.EnumConstantReference" typeId="yvor.1083260308424:3" id="1237214219886">
                <link role="enumConstantDeclaration" roleId="yvor.1083260308426:3" targetNodeId="1095942414630" resolveInfo="_constant_name_" />
                <link role="enumClass" roleId="yvor.1144432896254:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1174700250814">
            <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1174700250815">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174700250816">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1174700263086">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759162">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174700267361" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1206577021961">
                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1083172003582:0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095942485745">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1095942431826">
            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095942437296" resolveInfo="list" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="1237047901006">
        <node role="elementType" roleId="yvix.1151688676805:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1237047901007">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546097161" />
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1095782444201">
      <property name="name" nameId="yvnu.1169194664001:0" value="getDefault" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095782435934">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095942884840">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.EnumConstantReference" typeId="yvor.1083260308424:3" id="1095942895094">
            <link role="enumConstantDeclaration" roleId="yvor.1083260308426:3" targetNodeId="1095942414630" resolveInfo="_constant_name" />
            <link role="enumClass" roleId="yvor.1144432896254:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
            <node role="referenceMacro$link_attribute$enumConstantDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1095942901438">
              <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1197509802062">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1197509802063">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1197509821053">
                    <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1197509821054">
                      <property name="name" nameId="yvnu.1169194664001:0" value="defaultMember" />
                      <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1197509821055">
                        <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvnr.1083171877298:0" resolveInfo="EnumerationMemberDeclaration" />
                      </node>
                      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759057">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1197509810329" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1197509815364">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvnv.1213877397785" resolveInfo="getDefaultMember" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1197509879191">
                    <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1197509879192">
                      <property name="name" nameId="yvnu.1169194664001:0" value="outputEnumConstant" />
                      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1216848431611">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1216867025322" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1216867021386">
                          <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1215479320689" resolveInfo="outputEnumConstant" />
                          <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1197509845672">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1197509821054" resolveInfo="defaultMember" />
                          </node>
                        </node>
                      </node>
                      <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1239498050033" />
                    </node>
                  </node>
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1197509829401">
                    <node role="expression" roleId="yvor.1068581517676:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1239490689820">
                      <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvor.1083245299891:3" resolveInfo="EnumConstantDeclaration" />
                      <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1197509879194">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1197509879192" resolveInfo="outputEnumConstant" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1212083662246">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1212083662247">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1212083662248">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1212083690233">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1212083702052">
                    <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1212083702053">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212083702054" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1212083702055">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1212080844762:0" resolveInfo="hasNoDefaultMember" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1212084327635">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1212084329731" />
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1212084337842">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1212084337843">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1212084337844">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1212084342048">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1212084343488">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212084342049" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1212084344100">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1212080844762:0" resolveInfo="hasNoDefaultMember" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1095782435917">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546096788" />
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1095703535469">
      <property name="name" nameId="yvnu.1169194664001:0" value="parseValue" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095703554580">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1095942638938">
          <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095942737975">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095942737976">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1095942672774">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1095782444201" resolveInfo="getDefault" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
              </node>
            </node>
          </node>
          <node role="condition" roleId="yvor.1068580123160:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1095942660976">
            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1095942651365" />
            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1095942663523">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095763846469" resolveInfo="value" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1095942638986">
          <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095942737977">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095942737978">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.EnumConstantReference" typeId="yvor.1083260308424:3" id="1095942728724">
                <link role="enumConstantDeclaration" roleId="yvor.1083260308426:3" targetNodeId="1095942414630" resolveInfo="_constant_name" />
                <link role="enumClass" roleId="yvor.1144432896254:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
              </node>
            </node>
          </node>
          <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459508">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1095943087540">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095763846469" resolveInfo="value" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459509">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459478">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.EnumConstantReference" typeId="yvor.1083260308424:3" id="1095942688530">
                  <link role="enumConstantDeclaration" roleId="yvor.1083260308426:3" targetNodeId="1095942414630" resolveInfo="_constant_name" />
                  <link role="enumClass" roleId="yvor.1144432896254:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459479">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1095703322023" resolveInfo="getValueAsString" />
                </node>
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1174700303501">
            <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1174700303502">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174700303503">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1174700307868">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758772">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174700310628" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1206577021966">
                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1083172003582:0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095942737980">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1095942639034">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1095782444201" resolveInfo="getDefault" />
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1095703534218">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1095763846469">
        <property name="name" nameId="yvnu.1169194664001:0" value="value" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521439" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546096869" />
    </node>
    <node role="field" roleId="yvor.1068390468199:3" type="yvor.FieldDeclaration" typeId="yvor.1068390468200:3" id="1095702365658">
      <property name="name" nameId="yvnu.1169194664001:0" value="myName" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521699" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PrivateVisibility" typeId="yvor.1146644623116:3" id="1212082558258" />
    </node>
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1095695217157">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1174698054118">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174698054119">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1174698055906">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759296">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174698058431" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1174698062988">
                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="1174698027567">
      <link role="applicableConcept" roleId="yvp6.1168619429071:2" targetNodeId="yvnr.1082978164219:0" />
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081024" />
  </root>
  <root id="1095702521225">
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095702602369">
      <property name="name" nameId="yvnu.1169194664001:0" value="canSetValue" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095702618122">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1095702646366">
          <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095702639066">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095702644005">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1095702646430">
                <property name="value" nameId="yvor.1068580123138:3" value="true" />
              </node>
            </node>
          </node>
          <node role="condition" roleId="yvor.1068580123160:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1095702635688">
            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1095702628296">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095702615121" resolveInfo="value" />
            </node>
            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1095702638487" />
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1095702666388">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1095702661871">
            <property name="name" nameId="yvnu.1169194664001:0" value="constants" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.IteratorType" typeId="yvix.1237467705688:7" id="1238773885877">
              <node role="elementType" roleId="yvix.1237467730343:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1238773890387">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
              </node>
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459602">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1095702782896">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1095702417646" resolveInfo="getConstants" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetIteratorOperation" typeId="yvix.1237467461002:7" id="1239022252675" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.WhileStatement" typeId="yvor.1076505808687:3" id="1095703043306">
          <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095702861875">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1095702945382">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1095702886595">
                <property name="name" nameId="yvnu.1169194664001:0" value="constant" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1095702886594">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459630">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1095702900863">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095702661871" resolveInfo="constants" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetNextOperation" typeId="yvix.1237471031357:7" id="1238773933276" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1095703043307">
              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095703043308">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095703060919">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1095703062859">
                    <property name="value" nameId="yvor.1068580123138:3" value="true" />
                  </node>
                </node>
              </node>
              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459722">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1095702973885">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095702615121" resolveInfo="value" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459723">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459793">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1095702990700">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095702886595" resolveInfo="constant" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459794">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1095703025971" resolveInfo="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="yvor.1076505808688:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459452">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1095702854684">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095702661871" resolveInfo="constants" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.HasNextOperation" typeId="yvix.1237470895604:7" id="1238773933048" />
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1096048051549">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1096048047439">
            <property name="value" nameId="yvor.1068580123138:3" value="false" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1222953094153" />
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1095702615121">
        <property name="name" nameId="yvnu.1169194664001:0" value="value" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521134" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095608" />
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095703134476">
      <property name="name" nameId="yvnu.1169194664001:0" value="toInternalValue" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095703149120">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1095703172554">
          <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095703156966">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095703168909">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1095703171239" />
            </node>
          </node>
          <node role="condition" roleId="yvor.1068580123160:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1095703160672">
            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1095703157013">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095703146869" resolveInfo="value" />
            </node>
            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1095703163533" />
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1095703369682">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1095703205360">
            <property name="name" nameId="yvnu.1169194664001:0" value="constants" />
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459791">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1095703197712">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1095702417646" resolveInfo="getConstants" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetIteratorOperation" typeId="yvix.1237467461002:7" id="1239022252794" />
            </node>
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.IteratorType" typeId="yvix.1237467705688:7" id="1238773900490">
              <node role="elementType" roleId="yvix.1237467730343:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1238773905312">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.WhileStatement" typeId="yvor.1076505808687:3" id="1095703369683">
          <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095703369684">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1095703369685">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1095703214425">
                <property name="name" nameId="yvnu.1169194664001:0" value="constant" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1095703197714">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459407">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1095703218303">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095703205360" resolveInfo="constants" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetNextOperation" typeId="yvix.1237471031357:7" id="1238773933243" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1095703305783">
              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095703369686">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095703305972">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459454">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1095703289201">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095703214425" resolveInfo="constant" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459455">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1095703322023" resolveInfo="getValueAsString" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459626">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="8871200564701288693">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095703146869" resolveInfo="value" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459627">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459575">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1095703275763">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095703214425" resolveInfo="constant" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459576">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1095703025971" resolveInfo="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="yvor.1076505808688:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459768">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1095703232977">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095703205360" resolveInfo="constants" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.HasNextOperation" typeId="yvix.1237470895604:7" id="1238773933084" />
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1096048078395">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1096048082349" />
        </node>
      </node>
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521509" />
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1095703146869">
        <property name="name" nameId="yvnu.1169194664001:0" value="value" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521438" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095055" />
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095703404410">
      <property name="name" nameId="yvnu.1169194664001:0" value="fromInternalValue" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095703433506">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1095703554581">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1095703468024">
            <property name="name" nameId="yvnu.1169194664001:0" value="constant" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1095703468023">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1095703487277">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1095703535469" resolveInfo="parseValue" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1096048088631">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095703415599" resolveInfo="value" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1095703599652">
          <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095703608593">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095703622719">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459720">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1095703625268">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095703468024" resolveInfo="constant" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459721">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1095703025971" resolveInfo="getName" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="yvor.1068580123160:3" type="yvor.NotEqualsExpression" typeId="yvor.1073239437375:3" id="1095703596648">
            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1095703593068">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095703468024" resolveInfo="constant" />
            </node>
            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1095703598275" />
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095703640178">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1212087353443">
            <property name="value" nameId="yvor.1070475926801:3" value="null text" />
            <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1212087871488">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1212087871489">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1212087871490">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1212087892713">
                    <node role="condition" roleId="yvor.1068580123160:3" type="yvor.NotEqualsExpression" typeId="yvor.1073239437375:3" id="1212088103739">
                      <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1212088105508" />
                      <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1212087899295">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212087896013" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1212088026676">
                          <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1212087449254:0" resolveInfo="noValueText" />
                        </node>
                      </node>
                    </node>
                    <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1212087892715">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1212088107681">
                        <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1212088112262">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212088110355" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1212088114015">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1212087449254:0" resolveInfo="noValueText" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1212088117236">
                    <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1212088120160" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521067" />
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1095703415599">
        <property name="name" nameId="yvnu.1169194664001:0" value="value" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192520890" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095676" />
    </node>
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1095703043309">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219108817229">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219108817230">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219108826699">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1219108837535">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1219108839459">
                <property name="value" nameId="yvor.1070475926801:3" value="_PropertySupport" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219108828279">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219108826700" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219108829111">
                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1165790295028">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~PropertySupport" resolveInfo="PropertySupport" />
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081469" />
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="1212087984502">
      <link role="applicableConcept" roleId="yvp6.1168619429071:2" targetNodeId="yvnr.1082978164219:0" resolveInfo="EnumerationDataTypeDeclaration" />
    </node>
  </root>
  <root id="1095704552328">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.EnumClass" typeId="yvor.1083245097125:3" id="1095704666844">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_enum_class_" />
      <node role="field" roleId="yvor.1068390468199:3" type="yvor.FieldDeclaration" typeId="yvor.1068390468200:3" id="1095781654722">
        <property name="name" nameId="yvnu.1169194664001:0" value="myName" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521388" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PrivateVisibility" typeId="yvor.1146644623116:3" id="1212083312539" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095704868033">
        <property name="name" nameId="yvnu.1169194664001:0" value="getValue" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095704871534">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095704873707">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740417649">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1095704883678" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.FieldReferenceOperation" typeId="yvor.1197029447546:3" id="1204740417650">
                <link role="fieldDeclaration" roleId="yvor.1197029500499:3" targetNodeId="1095704740738" resolveInfo="myValue" />
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192520628" />
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095704906885" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095743" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095943399397">
        <property name="name" nameId="yvnu.1169194664001:0" value="getValueAsString" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095943447867">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095943394881">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740417624">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1095943470390" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.FieldReferenceOperation" typeId="yvor.1197029447546:3" id="1204740417625">
                <link role="fieldDeclaration" roleId="yvor.1197029500499:3" targetNodeId="1095704740738" resolveInfo="myValue" />
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095943447868">
              <node role="contextNodeQuery" roleId="yvp6.1184374535435:2" type="yvp6.TemplateFragment_ContextNodeQuery" typeId="yvp6.1184373935793:2" id="1184375448947">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1184375448948">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1184375615499">
                    <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1184375615500">
                      <property name="name" nameId="yvnu.1169194664001:0" value="methods" />
                      <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1184375615501">
                        <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvor.1068580123165:3" />
                      </node>
                      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758805">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1184375600973">
                          <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvor.1068390468198:3" />
                          <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvp6.TemplateFunctionParameter_mainContextNode" typeId="yvp6.1184374096829:2" id="1184375598423" />
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1184375610843">
                          <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvor.1107880067339:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1184375636647">
                    <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1184375636648">
                      <property name="name" nameId="yvnu.1169194664001:0" value="method" />
                    </node>
                    <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1184375645700">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1184375615500" resolveInfo="methods" />
                    </node>
                    <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1184375636650">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1184375648769">
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459836">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1184375656977">
                            <property name="value" nameId="yvor.1070475926801:3" value="getValueAsString" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459837">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759477">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1184375680370">
                                <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1184375636648" resolveInfo="method" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1184375683406">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1184375648771">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1184375686241">
                            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759196">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1184375709290">
                                <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1184375636648" resolveInfo="method" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1184375715608">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1068580123135:3" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1184375813876">
                    <node role="expression" roleId="yvor.1068581517676:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1184375813877" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192520065" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095123" />
      </node>
      <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="1095704764239">
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095704801369">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1095781673182">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1095781666992">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740417630">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1095781664864" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.FieldReferenceOperation" typeId="yvor.1197029447546:3" id="1204740417631">
                  <link role="fieldDeclaration" roleId="yvor.1197029500499:3" targetNodeId="1095781654722" resolveInfo="myName" />
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1095781670165">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095704788147" resolveInfo="name" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1095704887820">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1095704813373">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740417632">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1095704811073" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.FieldReferenceOperation" typeId="yvor.1197029447546:3" id="1204740417633">
                  <link role="fieldDeclaration" roleId="yvor.1197029500499:3" targetNodeId="1095704740738" resolveInfo="myValue" />
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1095704816343">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095704789961" resolveInfo="value" />
              </node>
            </node>
          </node>
        </node>
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1095704788147">
          <property name="name" nameId="yvnu.1169194664001:0" value="name" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192520644" />
        </node>
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1095704789961">
          <property name="name" nameId="yvnu.1169194664001:0" value="value" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192520386" />
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095704906886" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PrivateVisibility" typeId="yvor.1146644623116:3" id="1212083458766" />
      </node>
      <node role="field" roleId="yvor.1068390468199:3" type="yvor.FieldDeclaration" typeId="yvor.1068390468200:3" id="1095704740738">
        <property name="name" nameId="yvnu.1169194664001:0" value="myValue" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192520160" />
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095704887821" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PrivateVisibility" typeId="yvor.1146644623116:3" id="1212083314618" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081284" />
    </node>
  </root>
  <root id="1095929530832">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.EnumClass" typeId="yvor.1083245097125:3" id="1095929548619">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_enum_class_" />
      <node role="field" roleId="yvor.1068390468199:3" type="yvor.FieldDeclaration" typeId="yvor.1068390468200:3" id="1095929567059">
        <property name="name" nameId="yvnu.1169194664001:0" value="myName" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192520353" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PrivateVisibility" typeId="yvor.1146644623116:3" id="1212083358998" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095930013845">
        <property name="name" nameId="yvnu.1169194664001:0" value="getValue" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095930013849">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095930013850">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740417651">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1095930013852" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.FieldReferenceOperation" typeId="yvor.1197029447546:3" id="1204740417652">
                <link role="fieldDeclaration" roleId="yvor.1197029500499:3" targetNodeId="1095929567248" resolveInfo="myValue" />
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="1224695684725" />
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095930013853" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095604" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095929615458">
        <property name="name" nameId="yvnu.1169194664001:0" value="getValueAsString" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095930013854">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095929637368">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1095929642558">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1095929637367" />
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740417626">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1095929648075" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.FieldReferenceOperation" typeId="yvor.1197029447546:3" id="1204740417627">
                  <link role="fieldDeclaration" roleId="yvor.1197029500499:3" targetNodeId="1095929567248" resolveInfo="myValue" />
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095930013855">
              <node role="contextNodeQuery" roleId="yvp6.1184374535435:2" type="yvp6.TemplateFragment_ContextNodeQuery" typeId="yvp6.1184373935793:2" id="1184375942612">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1184375942613">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1184375942614">
                    <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1184375942615">
                      <property name="name" nameId="yvnu.1169194664001:0" value="methods" />
                      <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1184375942616">
                        <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvor.1068580123165:3" />
                      </node>
                      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758748">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1184375942619">
                          <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvor.1068390468198:3" />
                          <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvp6.TemplateFunctionParameter_mainContextNode" typeId="yvp6.1184374096829:2" id="1184375942620" />
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1184375942618">
                          <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvor.1107880067339:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1184375942621">
                    <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1184375942622">
                      <property name="name" nameId="yvnu.1169194664001:0" value="method" />
                    </node>
                    <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1184375942623">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1184375942615" resolveInfo="methods" />
                    </node>
                    <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1184375942624">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1184375942625">
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459409">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1184375942627">
                            <property name="value" nameId="yvor.1070475926801:3" value="getValueAsString" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459410">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759708">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1184375942630">
                                <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1184375942622" resolveInfo="method" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1184375948328">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1184375942631">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1184375942632">
                            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758937">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1184375942635">
                                <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1184375942622" resolveInfo="method" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1184375942634">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1068580123135:3" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1184375942636">
                    <node role="expression" roleId="yvor.1068581517676:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1184375942637" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192520580" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095554" />
      </node>
      <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="1095929567999">
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095930013856">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1095930013857">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1095930013858">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740417628">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1095930013860" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.FieldReferenceOperation" typeId="yvor.1197029447546:3" id="1204740417629">
                  <link role="fieldDeclaration" roleId="yvor.1197029500499:3" targetNodeId="1095929567059" resolveInfo="myName" />
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1095930013861">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095929570078" resolveInfo="name" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1095930013862">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1095930013863">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740417600">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1095930013865" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.FieldReferenceOperation" typeId="yvor.1197029447546:3" id="1204740417601">
                  <link role="fieldDeclaration" roleId="yvor.1197029500499:3" targetNodeId="1095929567248" resolveInfo="myValue" />
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1095930013866">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095930013867" resolveInfo="value" />
              </node>
            </node>
          </node>
        </node>
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1095929570078">
          <property name="name" nameId="yvnu.1169194664001:0" value="name" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521543" />
        </node>
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1095930013867">
          <property name="name" nameId="yvnu.1169194664001:0" value="value" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="1095929581470" />
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095930013868" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546096217" />
      </node>
      <node role="field" roleId="yvor.1068390468199:3" type="yvor.FieldDeclaration" typeId="yvor.1068390468200:3" id="1095929567248">
        <property name="name" nameId="yvnu.1169194664001:0" value="myValue" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="1224695476218" />
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095930013869" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PrivateVisibility" typeId="yvor.1146644623116:3" id="1212083361452" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081418" />
    </node>
  </root>
  <root id="1095952760656">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.EnumClass" typeId="yvor.1083245097125:3" id="1095952786279">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_enum_class_" />
      <node role="field" roleId="yvor.1068390468199:3" type="yvor.FieldDeclaration" typeId="yvor.1068390468200:3" id="1095952798581">
        <property name="name" nameId="yvnu.1169194664001:0" value="myName" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192520789" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PrivateVisibility" typeId="yvor.1146644623116:3" id="1212083339433" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095952784775">
        <property name="name" nameId="yvnu.1169194664001:0" value="getValue" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095952798583">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095952790470">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740417606">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1095952785620" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.FieldReferenceOperation" typeId="yvor.1197029447546:3" id="1204740417607">
                <link role="fieldDeclaration" roleId="yvor.1197029500499:3" targetNodeId="1095952798585" resolveInfo="myValue" />
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1224695702993" />
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095952798586" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095081" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1095952785871">
        <property name="name" nameId="yvnu.1169194664001:0" value="getValueAsString" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095952798587">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1095952790814">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1095952798589">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1095952786075" />
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740417602">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1095952798591" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.FieldReferenceOperation" typeId="yvor.1197029447546:3" id="1204740417603">
                  <link role="fieldDeclaration" roleId="yvor.1197029500499:3" targetNodeId="1095952798585" resolveInfo="myValue" />
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095952798588">
              <node role="contextNodeQuery" roleId="yvp6.1184374535435:2" type="yvp6.TemplateFragment_ContextNodeQuery" typeId="yvp6.1184373935793:2" id="1184375906184">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1184375906185">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1184375906186">
                    <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1184375906187">
                      <property name="name" nameId="yvnu.1169194664001:0" value="methods" />
                      <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1184375906188">
                        <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvor.1068580123165:3" />
                      </node>
                      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759270">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1184375906191">
                          <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvor.1068390468198:3" />
                          <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvp6.TemplateFunctionParameter_mainContextNode" typeId="yvp6.1184374096829:2" id="1184375906192" />
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1184375906190">
                          <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvor.1107880067339:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1184375906193">
                    <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1184375906194">
                      <property name="name" nameId="yvnu.1169194664001:0" value="method" />
                    </node>
                    <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1184375906195">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1184375906187" resolveInfo="methods" />
                    </node>
                    <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1184375906196">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1184375906197">
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459460">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1184375906199">
                            <property name="value" nameId="yvor.1070475926801:3" value="getValueAsString" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459461">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759142">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1184375906202">
                                <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1184375906194" resolveInfo="method" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1184375924432">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1184375906203">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1184375906204">
                            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758856">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1184375906207">
                                <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1184375906194" resolveInfo="method" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1184375906206">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1068580123135:3" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1184375906208">
                    <node role="expression" roleId="yvor.1068581517676:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1184375906209" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521084" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095506" />
      </node>
      <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="1095952779674">
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1095952798593">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1095952798594">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1095952798595">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740417604">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1095952798597" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.FieldReferenceOperation" typeId="yvor.1197029447546:3" id="1204740417605">
                  <link role="fieldDeclaration" roleId="yvor.1197029500499:3" targetNodeId="1095952798581" resolveInfo="myName" />
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1095952783804">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095952780770" resolveInfo="name" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1095952798598">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1095952798599">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740417653">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1095952798601" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.FieldReferenceOperation" typeId="yvor.1197029447546:3" id="1204740417654">
                  <link role="fieldDeclaration" roleId="yvor.1197029500499:3" targetNodeId="1095952798585" resolveInfo="myValue" />
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1095952784555">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1095952798602" resolveInfo="value" />
              </node>
            </node>
          </node>
        </node>
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1095952780770">
          <property name="name" nameId="yvnu.1169194664001:0" value="name" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521664" />
        </node>
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1095952798602">
          <property name="name" nameId="yvnu.1169194664001:0" value="value" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1095952783288" />
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095952798603" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546096218" />
      </node>
      <node role="field" roleId="yvor.1068390468199:3" type="yvor.FieldDeclaration" typeId="yvor.1068390468200:3" id="1095952798585">
        <property name="name" nameId="yvnu.1169194664001:0" value="myValue" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1224695699956" />
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1095952798604" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PrivateVisibility" typeId="yvor.1146644623116:3" id="1212083341856" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081140" />
    </node>
  </root>
  <root id="1096017864527">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1096017892467">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_class_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096027932822">
        <property name="name" nameId="yvnu.1169194664001:0" value="_getter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096027948761">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1096027948762">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1096027948763">
              <property name="name" nameId="yvnu.1169194664001:0" value="value" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521473" />
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.SuperMethodCall" typeId="yvor.1073063089578:3" id="1096027948765">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetProperty(java%dlang%dString)%cjava%dlang%dString" resolveInfo="getProperty" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="545838410333305479">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333247966" resolveInfo="_property_constant_" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1234210823437">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1234210838612">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1095703535469" resolveInfo="parseValue" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1234210844691">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1096027948763" resolveInfo="value" />
              </node>
              <node role="referenceMacro$link_attribute$classConcept" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1234210854395">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1234210854396">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234210854397">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234210885132">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1234210885133">
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1234209362027" resolveInfo="getEnumClassResolveInfo" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1234210885134">
                          <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvnr.1082978164219:0" resolveInfo="EnumerationDataTypeDeclaration" />
                          <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234210885135">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234210885136" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1234210885137">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1082985295845:0" />
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
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096027948773">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219110526858">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219110526859">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219110526860">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1219110526861">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1219110526862">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219110526863">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219110526864" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219110526865">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1219110526866">
                    <property name="value" nameId="yvor.1070475926801:3" value="get" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096027948774" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095029" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1234209799147">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
          <node role="referenceMacro$link_attribute$classifier" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1234209804320">
            <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1234209804321">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234209804322">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234209839807">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1234209845418">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1234209362027" resolveInfo="getEnumClassResolveInfo" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1234210690171">
                      <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvnr.1082978164219:0" resolveInfo="EnumerationDataTypeDeclaration" />
                      <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234210678526">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234209851873" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1234210682436">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1082985295845:0" />
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
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096018151075">
        <property name="name" nameId="yvnu.1169194664001:0" value="_setter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096018151076">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1096018151077">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.SuperMethodCall" typeId="yvor.1073063089578:3" id="1096017910877">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dsetProperty(java%dlang%dString,java%dlang%dString)%cvoid" resolveInfo="setProperty" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="545838410333305483">
                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333247966" resolveInfo="_property_constant_" />
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459746">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1096017981725">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1096017901985" resolveInfo="value" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459747">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1095703322023" resolveInfo="getValueAsString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1096018151078" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1096017901985">
          <property name="name" nameId="yvnu.1169194664001:0" value="value" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1234210968732">
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
            <node role="referenceMacro$link_attribute$classifier" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1234210973467">
              <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1234210973468">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234210973469">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234210996892">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1234210996893">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1234209362027" resolveInfo="getEnumClassResolveInfo" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1234210996894">
                        <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvnr.1082978164219:0" resolveInfo="EnumerationDataTypeDeclaration" />
                        <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234210996895">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234210996896" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1234210996897">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1082985295845:0" />
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
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096018151080" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096018151079">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219110711472">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219110711473">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219110711474">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1219110711475">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1219110711476">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219110711477">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219110711478" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219110711479">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1219110711480">
                    <property name="value" nameId="yvor.1070475926801:3" value="set" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095080" />
      </node>
      <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1170359619751">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~BaseAdapter" resolveInfo="BaseAdapter" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081115" />
    </node>
  </root>
  <root id="1096027342453">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1096027818723">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_class_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096027875107">
        <property name="name" nameId="yvnu.1169194664001:0" value="_getter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096027886795">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1096028180852">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="1096028217077">
              <node role="type" roleId="yvor.1070534934091:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198511126131">
                <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
                <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198511145354">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198511145355">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198511145356">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198511153208">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198511153209">
                          <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759213">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198511153212" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198511153211">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="expression" roleId="yvor.1070534934092:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459724">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1096028239751" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459725">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetReferent(java%dlang%dClass,java%dlang%dString)%cjetbrains%dmps%dsmodel%dINodeAdapter" resolveInfo="getReferent" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvko.InternalClassExpression" typeId="yvko.1174478619261:1" id="1231676931935">
                    <node role="type" roleId="yvko.1174478663778:1" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1231676937684">
                      <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
                      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
                      <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1231676937685">
                        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1231676937686">
                          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1231676937687">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1231676937688">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1231676937689">
                                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231676937690">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1231676937691" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1231676937692">
                                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="7544071561380168710">
                    <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7544071561380146717" resolveInfo="_property_constant_" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198511091325">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198511140726">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198511140727">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198511140728">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198511150875">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198511150876">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759393">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198511150879" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198511150878">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096027886801">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1212077722054">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1212077722055">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1212077730103">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1212077731948">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077459446" resolveInfo="getterMethodName" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212077736106" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096027886802">
          <link role="labelDeclaration" roleId="yvp6.1200916687663:2" targetNodeId="1215478114755" resolveInfo="linkGetterMethod" />
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095053" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096027815691">
        <property name="name" nameId="yvnu.1169194664001:0" value="_setter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096027818724">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1096027818725">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.SuperMethodCall" typeId="yvor.1073063089578:3" id="1096027815362">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dsetReferent(java%dlang%dString,jetbrains%dmps%dsmodel%dINodeAdapter)%cvoid" resolveInfo="setReferent" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="7544071561380168716">
                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7544071561380146717" resolveInfo="_property_constant_" />
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1096027818729">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1096027818730" resolveInfo="node" />
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1096027818731" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1096027818730">
          <property name="name" nameId="yvnu.1169194664001:0" value="node" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198511107396">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198511148263">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198511148264">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198511148265">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198511155448">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198511155449">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759375">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198511155452" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198511155451">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096027818733">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1212078194418">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1212078194419">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1212078194420">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1212078194421">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077597994" resolveInfo="setterMethodName" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212078194422" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096027818734">
          <link role="labelDeclaration" roleId="yvp6.1200916687663:2" targetNodeId="1215478114836" resolveInfo="linkSetterMethod" />
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546094875" />
      </node>
      <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1170359324259">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~BaseAdapter" resolveInfo="BaseAdapter" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081258" />
    </node>
  </root>
  <root id="1096044357786">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1096044368208">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_class_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096044406071">
        <property name="name" nameId="yvnu.1169194664001:0" value="_getter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096044406072">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1096044406073">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="1096044406074">
              <node role="type" roleId="yvor.1070534934091:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198510214168">
                <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
                <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198510243919">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198510243920">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198510243921">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198510251547">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198510251548">
                          <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759501">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198510251551" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198510251550">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="expression" roleId="yvor.1070534934092:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459695">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1096044406077" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459696">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetChild(java%dlang%dClass,java%dlang%dString)%cjetbrains%dmps%dsmodel%dINodeAdapter" resolveInfo="getChild" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvko.InternalClassExpression" typeId="yvko.1174478619261:1" id="1231676462696">
                    <node role="type" roleId="yvko.1174478663778:1" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1231676468683">
                      <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
                      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
                      <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1231676468684">
                        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1231676468685">
                          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1231676468686">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1231676468687">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1231676468688">
                                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231676468689">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1231676468690" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1231676468691">
                                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="7544071561380146846">
                    <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7544071561380146717" resolveInfo="_property_constant_" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198510124686">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198510167226">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198510167227">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198510167228">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198510170327">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198510186693">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759302">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198510190022" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198510193339">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096044406082">
          <link role="labelDeclaration" roleId="yvp6.1200916687663:2" targetNodeId="1215478114755" resolveInfo="linkGetterMethod" />
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096044406081">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1212077641851">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1212077641852">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1212077655855">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1212077662373">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077459446" resolveInfo="getterMethodName" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212077670265" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095585" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096044406085">
        <property name="name" nameId="yvnu.1169194664001:0" value="_setter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096044406086">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1096044406087">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.SuperMethodCall" typeId="yvor.1073063089578:3" id="1096044398804">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dsetChild(java%dlang%dString,jetbrains%dmps%dsmodel%dINodeAdapter)%cvoid" resolveInfo="setChild" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="7544071561380146850">
                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7544071561380146717" resolveInfo="_property_constant_" />
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1096044406090">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1096044406091" resolveInfo="node" />
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1096044406092" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1096044406091">
          <property name="name" nameId="yvnu.1169194664001:0" value="node" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198510262333">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198510278709">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198510278710">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198510278711">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198510280634">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198510280635">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759243">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198510280638" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198510280637">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096044406096">
          <link role="labelDeclaration" roleId="yvp6.1200916687663:2" targetNodeId="1215478114836" resolveInfo="linkSetterMethod" />
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096044406095">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1212078150727">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1212078150728">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1212078157222">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1212078159739">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077597994" resolveInfo="setterMethodName" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212078165443" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095153" />
      </node>
      <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1170359567312">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~BaseAdapter" resolveInfo="BaseAdapter" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081566" />
    </node>
  </root>
  <root id="1096045101843">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1096045130767">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_class_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096045148257">
        <property name="name" nameId="yvnu.1169194664001:0" value="_get_count_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096045201274">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1096045220064">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459551">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1096045225660" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459552">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetChildCount(java%dlang%dString)%cint" resolveInfo="getChildCount" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="7544071561380146854">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7544071561380146717" resolveInfo="_property_constant_" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="1096045148383" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096045201276">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219165134105">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219165134106">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219165145153">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1219165193254">
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1219165151202">
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1219165145154">
                      <property name="value" nameId="yvor.1070475926801:3" value="get" />
                    </node>
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1219165169090">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dpluralize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="pluralize" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1219165175873">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219165185188">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219165184062" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219165187128">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1219165201257">
                    <property name="value" nameId="yvor.1070475926801:3" value="Count" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096045201275" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546094965" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096045674129">
        <property name="name" nameId="yvnu.1169194664001:0" value="_iterate_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096045727211">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1096045770900">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459811">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1198522292019" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459812">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dchildren(java%dlang%dClass,java%dlang%dString)%cjava%dutil%dIterator" resolveInfo="children" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvko.InternalClassExpression" typeId="yvko.1174478619261:1" id="1231679865428">
                  <node role="type" roleId="yvko.1174478663778:1" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1231679865429">
                    <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
                    <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1231679865430">
                      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1231679865431">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1231679865432">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1231679865433">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1231679865434">
                              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231679865435">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1231679865436" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1231679865437">
                                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="7544071561380146856">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7544071561380146717" resolveInfo="_property_constant_" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvix.IteratorType" typeId="yvix.1237467705688:7" id="1239022252933">
          <node role="elementType" roleId="yvix.1237467730343:7" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1239022252934">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1239022252935">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1239022252936">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239022252937">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239022252938">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1239022252939">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239022252940">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239022252941" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239022252942">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096045905754">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219165288774">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219165288775">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219165292510">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1219165294622">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dpluralize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="pluralize" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219165301717">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219165300388" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219165302783">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096045905753" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095192" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1161633587048">
        <property name="name" nameId="yvnu.1169194664001:0" value="_childrenGetter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1161633587049">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1161633587050">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459789">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1198522275253" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459790">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetChildren(java%dlang%dClass,java%dlang%dString)%cjava%dutil%dList" resolveInfo="getChildren" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvko.InternalClassExpression" typeId="yvko.1174478619261:1" id="1231679851058">
                  <node role="type" roleId="yvko.1174478663778:1" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1231679857995">
                    <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
                    <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1231679857996">
                      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1231679857997">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1231679857998">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1231679857999">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1231679858000">
                              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231679858001">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1231679858002" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1231679858003">
                                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="7544071561380146859">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7544071561380146717" resolveInfo="_property_constant_" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="1237047900648">
          <node role="elementType" roleId="yvix.1151688676805:7" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1237047900649">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1237047900650">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1237047900651">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237047900652">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237047900653">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1237047900654">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237047900655">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1237047900656" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1237047900657">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1161633587057">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219165377659">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219165377660">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219165379051">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1219165382085">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1219165388120">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1219165402231">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dpluralize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="pluralize" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219165424655">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219165424170" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219165428924">
                          <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1219165379052">
                    <property name="value" nameId="yvor.1070475926801:3" value="get" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1161633587058" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546094983" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096046205551">
        <property name="name" nameId="yvnu.1169194664001:0" value="_add_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096046219760">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1096046219761">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459838">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1096046219762" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459839">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%daddChild(java%dlang%dString,jetbrains%dmps%dsmodel%dINodeAdapter)%cvoid" resolveInfo="addChild" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="7544071561380146861">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7544071561380146717" resolveInfo="_property_constant_" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1096046418072">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1096046207428" resolveInfo="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1096046219764" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1096046207428">
          <property name="name" nameId="yvnu.1169194664001:0" value="node" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198510857679">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198510889180">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198510889181">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198510889182">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198510893152">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198510893153">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759109">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198510893156" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198510893155">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096046219765" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096046219766">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219165473644">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219165473645">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219165475724">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1219165478851">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1219165485652">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219165490482">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219165489309" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219165492219">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1219165475725">
                    <property name="value" nameId="yvor.1070475926801:3" value="add" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095058" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096046712356">
        <property name="name" nameId="yvnu.1169194664001:0" value="_insert_" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1096046720280">
          <property name="name" nameId="yvnu.1169194664001:0" value="prev" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198510756151">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198510831397">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198510831398">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198510831399">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198510832963">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198510832964">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759373">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198510832967" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198510832966">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096046753448">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1096046753449">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459435">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1096046728860" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459436">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dinsertChild(jetbrains%dmps%dsmodel%dINodeAdapter,java%dlang%dString,jetbrains%dmps%dsmodel%dINodeAdapter)%cvoid" resolveInfo="insertChild" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1096046741081">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1096046720280" resolveInfo="prev" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="7544071561380146863">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1095424864671" resolveInfo="class_ConceptAdapterDeclaration" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7544071561380146717" resolveInfo="_property_constant_" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1096046748149">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1096046753450" resolveInfo="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1096046753451" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1096046753450">
          <property name="name" nameId="yvnu.1169194664001:0" value="node" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198510782842">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198510843780">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198510843781">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198510843782">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198510846143">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198510846144">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759473">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198510846147" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198510846146">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096046753452" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096046753453">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219165555001">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219165555002">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219165556550">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1219165561943">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1219165569837">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219165574261">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219165573260" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219165575077">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1219165556551">
                    <property name="value" nameId="yvor.1070475926801:3" value="insert" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095766" />
      </node>
      <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1170359292195">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~BaseAdapter" resolveInfo="BaseAdapter" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081442" />
    </node>
  </root>
  <root id="1096449765609">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1096449775110">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_class_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096450091830">
        <property name="name" nameId="yvnu.1169194664001:0" value="_getter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096450091831">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1231677363190">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231677363191">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1231677363192" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1231677363193">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%densureAdapter(java%dlang%dClass,java%dlang%dString,jetbrains%dmps%dsmodel%dINodeAdapter)%cjetbrains%dmps%dsmodel%dINodeAdapter" resolveInfo="ensureAdapter" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvko.InternalClassExpression" typeId="yvko.1174478619261:1" id="1231677363194">
                  <node role="type" roleId="yvko.1174478663778:1" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1231677363195">
                    <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
                    <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1231677363196">
                      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1231677363197">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1231677363198">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1231677363199">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1231677363200">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231677363201">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1231677363202" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1231677363203">
                                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1231677363204">
                  <property name="value" nameId="yvor.1070475926801:3" value="role" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1231677363205">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1231677363206">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1231677363207">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1231677363208">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231677363209">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231677363210">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1231677363211" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1231677363212">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599698500:0" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1231677363213">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvko.InternalPartialInstanceMethodCall" typeId="yvko.1174294166120:1" id="1231677363214">
                  <property name="methodName" nameId="yvko.1174294288199:1" value="_getter_" />
                  <node role="instance" roleId="yvko.1174317636233:1" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1231677363215" />
                  <node role="returnType" roleId="yvko.1174313653259:1" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1231677363216">
                    <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
                  </node>
                  <node role="propertyMacro$property_attribute$methodName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1231677363217">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1231677363218">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1231677363219">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1231677363220">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1231677363221">
                            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077459446" resolveInfo="getterMethodName" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231677363222">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1231677363223" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1231677363224">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599698500:0" />
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
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198511193736">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198511244639">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198511244640">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198511244641">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198511254304">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198511254305">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759002">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198511254308" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198511254307">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096450091837">
          <link role="labelDeclaration" roleId="yvp6.1200916687663:2" targetNodeId="1215478114755" resolveInfo="linkGetterMethod" />
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096450091836">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1212077750997">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1212077750998">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1212077755359">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1212077758220">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077459446" resolveInfo="getterMethodName" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212077759955" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095052" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096450035277">
        <property name="name" nameId="yvnu.1169194664001:0" value="_setter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096450091840">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1096450091841">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvko.InternalPartialInstanceMethodCall" typeId="yvko.1174294166120:1" id="1198517071332">
              <property name="methodName" nameId="yvko.1174294288199:1" value="_setter_" />
              <node role="returnType" roleId="yvko.1174313653259:1" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1198517072710" />
              <node role="instance" roleId="yvko.1174317636233:1" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1198517074977" />
              <node role="actualArgument" roleId="yvko.1174318197094:1" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1198517084619">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1096450091843" resolveInfo="node" />
              </node>
              <node role="propertyMacro$property_attribute$methodName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198517087604">
                <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198517087605">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198517087606">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1212079707547">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1212079710190">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077597994" resolveInfo="setterMethodName" />
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1212079713987">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212079713988" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1212079713989">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599698500:0" />
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
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1096450034135" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1096450091843">
          <property name="name" nameId="yvnu.1169194664001:0" value="node" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198511227919">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198511251161">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198511251162">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198511251163">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198511258783">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198511258784">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759217">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198511258787" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198511258786">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1096450091847">
          <link role="labelDeclaration" roleId="yvp6.1200916687663:2" targetNodeId="1215478114836" resolveInfo="linkSetterMethod" />
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096450091846">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1212078209314">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1212078209315">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1212078209316">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1212078209317">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077597994" resolveInfo="setterMethodName" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212078209318" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095432" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550080936" />
    </node>
  </root>
  <root id="1096451776179">
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1096451954808">
      <property name="name" nameId="yvnu.1169194664001:0" value="canSetValue" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096451987628">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1096451987629">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1096451956232">
            <property name="name" nameId="yvnu.1169194664001:0" value="testValue" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521336" />
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1096451987631" />
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1096451987632">
          <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096451987633">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1096451987634">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1096451987635">
                <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1096451960688">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1096451956232" resolveInfo="testValue" />
                </node>
                <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1096451987636" />
              </node>
            </node>
          </node>
          <node role="condition" roleId="yvor.1068580123160:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1096451987637">
            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1096451957076">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1096451957562" resolveInfo="value" />
            </node>
            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1096451987638" />
          </node>
          <node role="ifFalseStatement" roleId="yvor.1082485599094:3" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1096451987639">
            <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1096451987640">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1096451987641">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1096451987642">
                  <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1096451963736">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1096451956232" resolveInfo="testValue" />
                  </node>
                  <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1096451987643">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1096451957562" resolveInfo="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1096451987645">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459787">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1096451968893">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1096451956232" resolveInfo="testValue" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459788">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dmatches(java%dlang%dString)%cboolean" resolveInfo="matches" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1096451987646">
                <property name="value" nameId="yvor.1070475926801:3" value="constraint" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096452191790">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1174697681347">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174697681348">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1174697683193">
                        <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759682">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174697690460" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1174697699603">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1083066089218:0" />
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
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1096451952337" />
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1096451957562">
        <property name="name" nameId="yvnu.1169194664001:0" value="value" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521301" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095675" />
    </node>
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1096451933805">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1174696429121">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174696429122">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1174696432604">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1174696443374">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1174696458596">
                <property name="value" nameId="yvor.1070475926801:3" value="_PropertySupport" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758829">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174696435512" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1174696440108">
                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1165790278589">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~PropertySupport" resolveInfo="PropertySupport" />
    </node>
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="1174696383836">
      <link role="applicableConcept" roleId="yvp6.1168619429071:2" targetNodeId="yvnr.1082978499127:0" />
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081211" />
  </root>
  <root id="1111091435208">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1111091494478">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_class_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1111091452725">
        <property name="name" nameId="yvnu.1169194664001:0" value="_getter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1111091494479">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1231677201495">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231677205780">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1231677205060" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1231677225895">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%densureAdapter(java%dlang%dClass,java%dlang%dString,jetbrains%dmps%dsmodel%dINodeAdapter)%cjetbrains%dmps%dsmodel%dINodeAdapter" resolveInfo="ensureAdapter" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvko.InternalClassExpression" typeId="yvko.1174478619261:1" id="1231677232599">
                  <node role="type" roleId="yvko.1174478663778:1" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1231677236696">
                    <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
                    <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1231677236697">
                      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1231677236698">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1231677236699">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1231677236700">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1231677236701">
                              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231677236702">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1231677236703" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1231677236704">
                                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1231677260165">
                  <property name="value" nameId="yvor.1070475926801:3" value="role" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1231677291143">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1231677291144">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1231677291145">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1231677304678">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231677306762">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231677304852">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1231677304679" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1231677306011">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599698500:0" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1231677307828">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvko.InternalPartialInstanceMethodCall" typeId="yvko.1174294166120:1" id="1231677278451">
                  <property name="methodName" nameId="yvko.1174294288199:1" value="_getter_" />
                  <node role="instance" roleId="yvko.1174317636233:1" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1231677278452" />
                  <node role="returnType" roleId="yvko.1174313653259:1" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1231677278453">
                    <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
                  </node>
                  <node role="propertyMacro$property_attribute$methodName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1231677278462">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1231677278463">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1231677278464">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1231677278465">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1231677278466">
                            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077459446" resolveInfo="getterMethodName" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1231677278467">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1231677278468" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1231677278469">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599698500:0" />
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
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198510333532">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198510354818">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198510354819">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198510354820">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198510357090">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198510357091">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759426">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198510357094" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198510357093">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1111091494486">
          <link role="labelDeclaration" roleId="yvp6.1200916687663:2" targetNodeId="1215478114755" resolveInfo="linkGetterMethod" />
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1111091494485">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1212077689625">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1212077689626">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1212077694158">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1212077698613">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077459446" resolveInfo="getterMethodName" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212077701475" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095199" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1111091494488">
        <property name="name" nameId="yvnu.1169194664001:0" value="_setter_" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1111091494489">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1111091494490">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvko.InternalPartialInstanceMethodCall" typeId="yvko.1174294166120:1" id="1198516751884">
              <property name="methodName" nameId="yvko.1174294288199:1" value="_setter_" />
              <node role="actualArgument" roleId="yvko.1174318197094:1" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1198516827306">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1111091494495" resolveInfo="node" />
              </node>
              <node role="instance" roleId="yvko.1174317636233:1" type="yvor.ThisExpression" typeId="yvor.1070475354124:3" id="1198516757653" />
              <node role="returnType" roleId="yvko.1174313653259:1" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1198517063393" />
              <node role="propertyMacro$property_attribute$methodName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198516836151">
                <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198516836152">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198516836153">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1212079615524">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1212079620386">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077597994" resolveInfo="setterMethodName" />
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1212079623699">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212079623700" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1212079623701">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599698500:0" />
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
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1111091494496" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1111091494495">
          <property name="name" nameId="yvnu.1169194664001:0" value="node" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198510448488">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198510461551">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198510461552">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198510461553">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198510463757">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198510463758">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758929">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198510463761" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198510463760">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1111091494499">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1212078184085">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1212078184086">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1212078184087">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1212078184088">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077597994" resolveInfo="setterMethodName" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1212078184089" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1111091494500">
          <link role="labelDeclaration" roleId="yvp6.1200916687663:2" targetNodeId="1215478114836" resolveInfo="linkSetterMethod" />
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546095390" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081113" />
      <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1231677219455">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~BaseAdapter" resolveInfo="BaseAdapter" />
      </node>
    </node>
  </root>
  <root id="1149763013687">
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="1149763646491">
      <property name="name" nameId="yvnu.1169194664001:0" value="ROLE" />
      <property name="isFinal" nameId="yvor.1176718929932:3" value="true" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521647" />
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1149764339915">
        <property name="value" nameId="yvor.1070475926801:3" value="role" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1149764349479">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1169755844288">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169755844289">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169755846415">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759219">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169755849480" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1204743112402">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1204740973143:0" resolveInfo="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1149763702561">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1169755781139">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169755781140">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169755802656">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169755811331">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dtoConstantName(java%dlang%dString)%cjava%dlang%dString" resolveInfo="toConstantName" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759627">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169755814629" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1204743108370">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1204740973143:0" resolveInfo="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1224773931807" />
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1149763385783">
      <property name="name" nameId="yvnu.1169194664001:0" value="setAttribute" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1149763416423" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1149763385785">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1149763492070">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459677">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1149763492071">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763476612" resolveInfo="source" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459678">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dsetAttribute(java%dlang%dString,jetbrains%dmps%dsmodel%dINodeAdapter)%cvoid" resolveInfo="setAttribute" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1149764000704">
                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1149763013687" resolveInfo="class_AnnotationLink" />
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763646491" resolveInfo="ROLE" />
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1149763553885">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763480333" resolveInfo="target" />
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1162909383625">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169758775014">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169758775015">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169758776719">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169758799191">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169757278235" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169758803426" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1162909346212">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459549">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1162909346213">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763476612" resolveInfo="source" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459550">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%daddAttribute(java%dlang%dString,jetbrains%dmps%dsmodel%dINodeAdapter)%cvoid" resolveInfo="addAttribute" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1162909353825">
                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1149763013687" resolveInfo="class_AnnotationLink" />
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763646491" resolveInfo="ROLE" />
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1162909373389">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763480333" resolveInfo="target" />
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1162909397471">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169758852353">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169758852354">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169758852355">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169758852356">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169757354276" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169758852357" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1149763476612">
        <property name="name" nameId="yvnu.1169194664001:0" value="source" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512632059">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="sourceClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512649466">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512649467">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512649468">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512652219">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512666570">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759418">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512673649" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198512676075">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1149608246500:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1149763480333">
        <property name="name" nameId="yvnu.1169194664001:0" value="target" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512270990">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512295085">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512295086">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512295087">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512306260">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512314563">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759452">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512320376" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1204743197186">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1149764591636">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1169758290216">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169758290217">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204744498096">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1204744504911">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1204744392098" resolveInfo="AL_class_setterName" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204744508881" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1149767452522">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169755885217">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169755885218">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169755886876">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759531">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758979">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169755889784" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1169755898958">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1149608445162:0" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1169755903100">
                  <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1169755903101">
                    <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvnr.1149608364144:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546096989" />
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1149763558980">
      <property name="name" nameId="yvnu.1169194664001:0" value="getAttribute" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1149763558982">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1149763599174">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="1149767232447">
            <node role="expression" roleId="yvor.1070534934092:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459581">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1149767236351">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763592844" resolveInfo="source" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459582">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetAttribute(java%dlang%dString)%cjetbrains%dmps%dsmodel%dINodeAdapter" resolveInfo="getAttribute" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1149767236352">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1149763013687" resolveInfo="class_AnnotationLink" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763646491" resolveInfo="ROLE" />
                </node>
              </node>
            </node>
            <node role="type" roleId="yvor.1070534934091:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512344469">
              <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
              <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512344470">
                <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512344471">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512344472">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512344473">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512344474">
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759004">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512344477" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1204743339391">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
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
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1149763592844">
        <property name="name" nameId="yvnu.1169194664001:0" value="source" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512699156">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="sourceClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512699157">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512699158">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512699159">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512699160">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512699161">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759399">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512699164" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198512699163">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1149608246500:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1149767461212">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169756756933">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169756756934">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169756758998">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169756768860">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169756554461" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169756773080" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1149764678606">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204743264017">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204743264018">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204743278411">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1204744107588">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1204743923327" resolveInfo="AL_class_getterName" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204744110933" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546096913" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512334944">
        <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
        <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512334945">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512334946">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512334947">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512334948">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512334949">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759444">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512334952" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1204743227156">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1162909750134">
      <property name="name" nameId="yvnu.1169194664001:0" value="getAttributes" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="1237047901019">
        <node role="elementType" roleId="yvix.1151688676805:7" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1237047901020">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1237047901021">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1237047901022">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237047901023">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237047901024">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1237047901025">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237047901026">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1237047901027" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1237047901028">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1162909750136">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1162909910879">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="1162909970555">
            <node role="expression" roleId="yvor.1070534934092:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459579">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1162909970557">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1162909920504" resolveInfo="source" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459580">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetAttributes(java%dlang%dString)%cjava%dutil%dList" resolveInfo="getAttributes" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1162909970558">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1149763013687" resolveInfo="class_AnnotationLink" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763646491" resolveInfo="ROLE" />
                </node>
              </node>
            </node>
            <node role="type" roleId="yvor.1070534934091:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="1237047901147">
              <node role="elementType" roleId="yvix.1151688676805:7" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1237047901148">
                <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
                <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1237047901149">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1237047901150">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237047901151">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237047901152">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1237047901153">
                          <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237047901154">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1237047901155" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1237047901156">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
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
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1162909920504">
        <property name="name" nameId="yvnu.1169194664001:0" value="source" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512711227">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="sourceClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512711228">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512711229">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512711230">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512711231">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512711232">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758935">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512711235" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198512711234">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1149608246500:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1162910066309">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204743391565">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204743391566">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204744279010">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1204744285840">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1204744191597" resolveInfo="AL_class_listGetterName" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204744288622" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1162910745829">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169756892981">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169756892982">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169756892983">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169756892984">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169756792139" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169756892985" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546097182" />
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1149764039862">
      <property name="name" nameId="yvnu.1169194664001:0" value="setPropertyAttribute" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1149764044490" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1149764039864">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1149764139758">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459840">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1149764139759">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764060694" resolveInfo="source" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459841">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dsetPropertyAttribute(java%dlang%dString,java%dlang%dString,jetbrains%dmps%dsmodel%dINodeAdapter)%cvoid" resolveInfo="setPropertyAttribute" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1149764173746">
                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1149763013687" resolveInfo="class_AnnotationLink" />
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763646491" resolveInfo="ROLE" />
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1149764184468">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764064462" resolveInfo="propertyName" />
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1149764189189">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764109302" resolveInfo="target" />
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1162909601822">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169758908113">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169758908114">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169758908115">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169758908116">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169757278235" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169758908117" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1162909572930">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459506">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1162909572931">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764060694" resolveInfo="source" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459507">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%daddPropertyAttribute(java%dlang%dString,java%dlang%dString,jetbrains%dmps%dsmodel%dINodeAdapter)%cvoid" resolveInfo="addPropertyAttribute" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1162909591708">
                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1149763013687" resolveInfo="class_AnnotationLink" />
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763646491" resolveInfo="ROLE" />
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1162909591709">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764064462" resolveInfo="propertyName" />
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1162909591710">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764109302" resolveInfo="target" />
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1162909609369">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169758921200">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169758921201">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169758921202">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169758921203">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169757354276" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169758921204" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1149764060694">
        <property name="name" nameId="yvnu.1169194664001:0" value="source" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512728705">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="sourceClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512728706">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512728707">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512728708">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512728709">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512728710">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758906">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512728713" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198512728712">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1149608246500:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1149764064462">
        <property name="name" nameId="yvnu.1169194664001:0" value="propertyName" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521595" />
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1149764109302">
        <property name="name" nameId="yvnu.1169194664001:0" value="target" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512429161">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512429162">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512429163">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512429164">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512429165">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512429166">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759558">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512429169" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1204743837653">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1149764737044">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204744522569">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204744522570">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204744522571">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1204744522572">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1204744392098" resolveInfo="AL_class_setterName" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204744522573" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1149767468964">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169756449482">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169756449483">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169756449484">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758744">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759188">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169756449487" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1169756449488">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1149608445162:0" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1169756449489">
                  <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1169756449490">
                    <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvnr.1149608344284:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546096984" />
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1149764078121">
      <property name="name" nameId="yvnu.1169194664001:0" value="getPropertyAttribute" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1149764078123">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1149764193346">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="1149767263812">
            <node role="expression" roleId="yvor.1070534934092:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459604">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1149767272890">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764093047" resolveInfo="source" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459605">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetPropertyAttribute(java%dlang%dString,java%dlang%dString)%cjetbrains%dmps%dsmodel%dINodeAdapter" resolveInfo="getPropertyAttribute" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1149767272891">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1149763013687" resolveInfo="class_AnnotationLink" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763646491" resolveInfo="ROLE" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1149767272892">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764095830" resolveInfo="propertyName" />
                </node>
              </node>
            </node>
            <node role="type" roleId="yvor.1070534934091:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512443601">
              <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
              <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512443602">
                <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512443603">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512443604">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512443605">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512443606">
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758667">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512443609" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1204744156407">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
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
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1149764093047">
        <property name="name" nameId="yvnu.1169194664001:0" value="source" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512748480">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="sourceClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512748481">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512748482">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512748483">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512748484">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512748485">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759401">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512748488" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198512748487">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1149608246500:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1149764095830">
        <property name="name" nameId="yvnu.1169194664001:0" value="propertyName" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521525" />
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1149764741123">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204744128652">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204744128653">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204744128654">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1204744128655">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1204743923327" resolveInfo="AL_class_getterName" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204744128656" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1149767477169">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169757005015">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169757005016">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169757005017">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169757005018">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169756924477" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169757005019" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546097062" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512438686">
        <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
        <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512438687">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512438688">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512438689">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512438690">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512438691">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758699">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512438694" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1204743860341">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1162910422443">
      <property name="name" nameId="yvnu.1169194664001:0" value="getPropertyAttributes" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="1237047901040">
        <node role="elementType" roleId="yvix.1151688676805:7" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1237047901041">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1237047901042">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1237047901043">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237047901044">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237047901045">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1237047901046">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237047901047">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1237047901048" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1237047901049">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1162910422447">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1162910422448">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="1162910422449">
            <node role="expression" roleId="yvor.1070534934092:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459813">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1162910422451">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1162910422456" resolveInfo="source" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459814">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetPropertyAttributes(java%dlang%dString,java%dlang%dString)%cjava%dutil%dList" resolveInfo="getPropertyAttributes" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1162910422452">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1149763013687" resolveInfo="class_AnnotationLink" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763646491" resolveInfo="ROLE" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1162910610365">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1162910597022" resolveInfo="propertyName" />
                </node>
              </node>
            </node>
            <node role="type" roleId="yvor.1070534934091:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="1237047900802">
              <node role="elementType" roleId="yvix.1151688676805:7" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1237047900803">
                <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
                <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1237047900804">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1237047900805">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237047900806">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237047900807">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1237047900808">
                          <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237047900809">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1237047900810" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1237047900811">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
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
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1162910422456">
        <property name="name" nameId="yvnu.1169194664001:0" value="source" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512758177">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="sourceClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512758178">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512758179">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512758180">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512758181">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512758182">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759170">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512758185" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198512758184">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1149608246500:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1162910597022">
        <property name="name" nameId="yvnu.1169194664001:0" value="propertyName" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521116" />
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1162910422459">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204744299607">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204744299608">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204744299609">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1204744299610">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1204744191597" resolveInfo="AL_class_listGetterName" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204744299611" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1162910749532">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169757018379">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169757018380">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169757018381">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169757018382">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169756924514" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169757018383" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546096890" />
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1149764235290">
      <property name="name" nameId="yvnu.1169194664001:0" value="setLinkAttribute" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1149764235291" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1149764235292">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1149764235293">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459834">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1149764235295">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764235299" resolveInfo="source" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459835">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dsetLinkAttribute(java%dlang%dString,java%dlang%dString,jetbrains%dmps%dsmodel%dINodeAdapter)%cvoid" resolveInfo="setLinkAttribute" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1149764235296">
                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1149763013687" resolveInfo="class_AnnotationLink" />
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763646491" resolveInfo="ROLE" />
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1149764235297">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764235301" resolveInfo="propertyName" />
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1149764235298">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764235303" resolveInfo="target" />
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1162909681800">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169758945100">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169758945101">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169758945102">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169758945103">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169757278235" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169758945104" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1162909644748">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459748">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1162909649131">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764235299" resolveInfo="source" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459749">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%daddLinkAttribute(java%dlang%dString,java%dlang%dString,jetbrains%dmps%dsmodel%dINodeAdapter)%cvoid" resolveInfo="addLinkAttribute" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1162909644751">
                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1149763013687" resolveInfo="class_AnnotationLink" />
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763646491" resolveInfo="ROLE" />
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1162909644752">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764235301" resolveInfo="propertyName" />
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1162909644753">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764235303" resolveInfo="target" />
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1162909687331">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169758933189">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169758933190">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169758933191">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169758933192">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169757354276" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169758933193" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1149764235299">
        <property name="name" nameId="yvnu.1169194664001:0" value="source" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512771264">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="sourceClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512771265">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512771266">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512771267">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512771268">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512771269">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758957">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512771272" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198512771271">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1149608246500:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1149764235301">
        <property name="name" nameId="yvnu.1169194664001:0" value="propertyName" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521370" />
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1149764235303">
        <property name="name" nameId="yvnu.1169194664001:0" value="target" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512505889">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512505890">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512505891">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512505892">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512505893">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512505894">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758931">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512505897" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1204744545939">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1149765245764">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204744528715">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204744528716">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204744528717">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1204744528718">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1204744392098" resolveInfo="AL_class_setterName" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204744528719" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1149767488530">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169756475519">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169756475520">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169756475521">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759608">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758850">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169756475524" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1169756475525">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1149608445162:0" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1169756475526">
                  <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1169756475527">
                    <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvnr.1149608316236:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546097132" />
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1149764235305">
      <property name="name" nameId="yvnu.1169194664001:0" value="getLinkAttribute" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1149764235307">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1149764235308">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="1149767115712">
            <node role="expression" roleId="yvor.1070534934092:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459411">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1149767118650">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764235313" resolveInfo="source" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459412">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetLinkAttribute(java%dlang%dString,java%dlang%dString)%cjetbrains%dmps%dsmodel%dINodeAdapter" resolveInfo="getLinkAttribute" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1149767118651">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1149763013687" resolveInfo="class_AnnotationLink" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763646491" resolveInfo="ROLE" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1149767118652">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149764235315" resolveInfo="linkRole" />
                </node>
              </node>
            </node>
            <node role="type" roleId="yvor.1070534934091:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512581970">
              <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
              <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512581971">
                <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512581972">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512581973">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512581974">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512581975">
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759576">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512581978" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1204744623556">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
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
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1149764235313">
        <property name="name" nameId="yvnu.1169194664001:0" value="source" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512780851">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="sourceClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512780852">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512780853">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512780854">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512780855">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512780856">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759606">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512780859" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198512780858">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1149608246500:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1149764235315">
        <property name="name" nameId="yvnu.1169194664001:0" value="linkRole" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192520435" />
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1149765249859">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204744584300">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204744584301">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204744590677">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1204744601163">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1204743923327" resolveInfo="AL_class_getterName" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204744605071" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1149767495532">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169757197199">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169757197200">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169757197201">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169757197202">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169757053313" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169757197203" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546096720" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512575164">
        <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
        <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512575165">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512575166">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512575167">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512575168">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512575169">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759341">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512575172" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1204744575221">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1162910433960">
      <property name="name" nameId="yvnu.1169194664001:0" value="getLinkAttributes" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="1237047901233">
        <node role="elementType" roleId="yvix.1151688676805:7" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1237047901234">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1237047901235">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1237047901236">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237047901237">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237047901238">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1237047901239">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237047901240">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1237047901241" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1237047901242">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1162910433964">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1162910433965">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="1162910433966">
            <node role="expression" roleId="yvor.1070534934092:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459703">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1162910433968">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1162910433973" resolveInfo="source" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459704">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~BaseAdapter%dgetLinkAttributes(java%dlang%dString,java%dlang%dString)%cjava%dutil%dList" resolveInfo="getLinkAttributes" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1162910433969">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="1149763013687" resolveInfo="class_AnnotationLink" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1149763646491" resolveInfo="ROLE" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1162910678965">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1162910668995" resolveInfo="linkRole" />
                </node>
              </node>
            </node>
            <node role="type" roleId="yvor.1070534934091:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="1237047901124">
              <node role="elementType" roleId="yvix.1151688676805:7" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1237047901125">
                <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
                <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1237047901126">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1237047901127">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237047901128">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237047901129">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1237047901130">
                          <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237047901131">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1237047901132" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1237047901133">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1204741097161:0" />
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
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1162910433973">
        <property name="name" nameId="yvnu.1169194664001:0" value="source" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198512784532">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="sourceClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="33gb.~BaseConcept" resolveInfo="BaseConcept" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198512784533">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198512784534">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198512784535">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198512784536">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1198512784537">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759339">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198512784540" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198512784539">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1149608246500:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1162910668995">
        <property name="name" nameId="yvnu.1169194664001:0" value="linkRole" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521577" />
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1162910433976">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204744645214">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204744645215">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204744653154">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1204744681906">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1204744191597" resolveInfo="AL_class_listGetterName" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204744697266" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1162910754922">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1169757149991">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169757149992">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169757149993">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169757149994">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1169757053350" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169757149995" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546097114" />
    </node>
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1149763064438">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1169755707217">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169755707218">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169755709659">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1169755736119">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1169755738935">
                <property name="value" nameId="yvor.1070475926801:3" value="_AnnotationLink" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1169755717646">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758718">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169755726069" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1204743084228">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1204740973143:0" resolveInfo="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="1169755633324">
      <link role="applicableConcept" roleId="yvp6.1168619429071:2" targetNodeId="yvnr.1149608206811:0" />
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550080908" />
  </root>
  <root id="1169126581801">
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333361262">
      <property name="name" nameId="yvnu.1169194664001:0" value="propertydecl_child" />
      <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="545838410333361263" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333361264" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333361265" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="545838410333361266">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="545838410333361267">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333361268">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333635681">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333767210">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.545838410333767181" resolveInfo="sortedPropertiesForInterface" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333767211">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333767212">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333767213" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="545838410333767214">
                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1071489727084:0" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.WhereOperation" typeId="yvix.1202120902084:7" id="545838410333767215">
                    <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="545838410333767216">
                      <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333767217">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333767218">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="545838410333767219">
                            <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333767220">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="545838410333767221">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333767223" resolveInfo="it" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333767222">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.9026942911489198753:0" resolveInfo="doNotGenerate" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="545838410333767223">
                        <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="545838410333767224" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.SwitchMacro" typeId="yvp6.1112731569622:2" id="545838410333361352">
        <link role="templateSwitch" roleId="yvp6.1112731629154:2" targetNodeId="545838410333599810" resolveInfo="switch_PropertyDeclaration_interface" />
      </node>
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333361403">
      <property name="name" nameId="yvnu.1169194664001:0" value="linkdecl_child" />
      <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="545838410333361404" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333361405" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333361406" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="545838410333361407">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="545838410333361408">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333361409">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333635715">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333767225">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.545838410333767017" resolveInfo="sortedLinksForInterface" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333767226">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333767227">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333767228" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="545838410333767229">
                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1071489727083:0" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.WhereOperation" typeId="yvix.1202120902084:7" id="545838410333767230">
                    <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="545838410333767231">
                      <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333767232">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333767233">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="545838410333767234">
                            <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333767235">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="545838410333767236">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="545838410333767238" resolveInfo="it" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333767237">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.3236994869861844876:0" resolveInfo="doNotGenerate" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="545838410333767238">
                        <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="545838410333767239" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.SwitchMacro" typeId="yvp6.1112731569622:2" id="545838410333361453">
        <link role="templateSwitch" roleId="yvp6.1112731629154:2" targetNodeId="545838410333599422" resolveInfo="switch_LinkDeclaration_interface" />
      </node>
    </node>
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="1189815514396">
      <property name="isFinal" nameId="yvor.1176718929932:3" value="true" />
      <property name="name" nameId="yvnu.1169194664001:0" value="concept" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1189815514397" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521150" />
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1189815514399">
        <property name="value" nameId="yvor.1070475926801:3" value="conceptFqName" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1189815514400">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1189815514401">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1189815514402">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1189815514403">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1189815514404">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dnodeFQName(jetbrains%dmps%dsmodel%dSNode)%cjava%dlang%dString" resolveInfo="nodeFQName" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1189815514405" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="1170173405388">
      <property name="name" nameId="yvnu.1169194664001:0" value="_CONCEPT_PROPERTY_" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521267" />
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1170173405390">
        <property name="value" nameId="yvor.1070475926801:3" value="_cp_" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1170173405391">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1170173405392">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1170173405393">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1170173405394">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759266">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1170173405396" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1170173405397">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1170173405398">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1170173405399">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1170173405400">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1189815328389">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759655">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1170173405405" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1170173405406">
                  <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1137467167200:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1170173405407">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1170173405408">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1170173405409">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1170173405410">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1170173405411">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1170173405412">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759298">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1170173405414" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1170173405415">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1170173405416">
                  <property name="value" nameId="yvor.1070475926801:3" value="CPR_" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1224773951656" />
    </node>
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="1170173405417">
      <property name="name" nameId="yvnu.1169194664001:0" value="_CONCEPT_LINK_" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521421" />
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1170173405419">
        <property name="value" nameId="yvor.1070475926801:3" value="_cl_" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1170173405420">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1170173405421">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1170173405422">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1170173405423">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759471">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1170173405425" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1170173405426">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1170173405427">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1170173405428">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1170173405429">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1189815336938">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759164">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1170173405434" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1170173405435">
                  <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1137532086877:0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1170173405436">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1170173405437">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1170173405438">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1170173405439">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1170173405440">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1170173405441">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759706">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1170173405443" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1170173405444">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1170173405445">
                  <property name="value" nameId="yvor.1070475926801:3" value="CLNK_" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1224773953844" />
    </node>
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="545838410333360954">
      <property name="name" nameId="yvnu.1169194664001:0" value="_property_constant_" />
      <property name="isFinal" nameId="yvor.1176718929932:3" value="true" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="545838410333360955" />
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="545838410333360956">
        <property name="value" nameId="yvor.1070475926801:3" value="_property_value_" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333360957">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333360958">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333360959">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333360960">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333360961">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333360962" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333360963">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333360964">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333360965">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333360966">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333360967">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333360968">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dtoConstantName(java%dlang%dString)%cjava%dlang%dString" resolveInfo="toConstantName" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333360969">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333360970" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333360971">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333360972" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="545838410333360973">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="545838410333360974">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333360975">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333767258">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333767262">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.545838410333767181" resolveInfo="sortedPropertiesForInterface" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333767269">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333767270" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="545838410333767271">
                    <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1071489727084:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="545838410333361053">
      <property name="name" nameId="yvnu.1169194664001:0" value="_link_constant_" />
      <property name="isFinal" nameId="yvor.1176718929932:3" value="true" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="545838410333361054" />
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="545838410333361055">
        <property name="value" nameId="yvor.1070475926801:3" value="_property_value_" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333361056">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333361057">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333361058">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333361059">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333361060">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333361061" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333361062">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333361063">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333361064">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333361065">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333361066">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333361067">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dtoConstantName(java%dlang%dString)%cjava%dlang%dString" resolveInfo="toConstantName" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333361068">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333361069" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333361070">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333361071" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="545838410333361072">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="545838410333361207">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333361208">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333767277">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333767281">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.545838410333767017" resolveInfo="sortedLinksForInterface" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333767286">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333767287" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="545838410333767288">
                    <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1071489727083:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1169126625178">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1169126625179">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169126625180">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219698116819">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759268">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169126629485" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1169126635942">
                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="extendedInterface" roleId="yvor.1107797138135:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1173125727224">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1173128500048">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1173128500049">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173128500050">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173128533482">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1173128547863">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1173128563320">
                  <property name="value" nameId="yvor.1068580320021:3" value="0" />
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758884">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759661">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1173128533483" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1173128540625">
                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1169127546356:0" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="1810715974610193530" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="extendedInterface" roleId="yvor.1107797138135:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="1198509706393">
      <property name="fqClassName" nameId="yvko.1174914081067:1" value="extendedInterface" />
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1198509713443">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1198509713444">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198509713445">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198509720821">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="171978335082494678">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758726">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198509720822" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1198509722889">
                    <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvnr.1169127546356:0" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.WhereOperation" typeId="yvix.1202120902084:7" id="171978335082494683">
                  <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="171978335082494684">
                    <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="171978335082494685">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="171978335082498250">
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="171978335082498251">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="171978335082498301">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="171978335082498309">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="171978335082498302" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_ShowErrorMessage" typeId="yvp3.1217960179967:0" id="171978335082498319">
                                <node role="messageText" roleId="yvp3.1217960314448:0" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="171978335082498334">
                                  <property name="value" nameId="yvor.1070475926801:3" value="Can't extend null interface" />
                                </node>
                                <node role="referenceNode" roleId="yvp3.1217960407512:0" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="171978335082498327">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="171978335082494686" resolveInfo="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="171978335082498284">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="171978335082498267">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="171978335082498260">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="171978335082494686" resolveInfo="it" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="171978335082498277">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1169127628841:0" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNullOperation" typeId="yvim.1171999116870:16" id="171978335082498294" />
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="171978335082498347">
                        <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="171978335082498379">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="171978335082498380">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="171978335082498381">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="171978335082494686" resolveInfo="it" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="171978335082498382">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1169127628841:0" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="171978335082498383" />
                        </node>
                      </node>
                    </node>
                    <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="171978335082494686">
                      <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="171978335082494687" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1198509740687">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1198509740688">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1198509740689">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1198509774406">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1198509774407">
                <property name="name" nameId="yvnu.1169194664001:0" value="conceptDeclaration" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1198509774408">
                  <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvnr.1169125989551:0" resolveInfo="InterfaceConceptDeclaration" />
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721758825">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1198509756239" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1198509766228">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1169127628841:0" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1198509756238">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1198509795561">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759322">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1198509798627">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1198509774407" resolveInfo="conceptDeclaration" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1198509800693">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1198509786775">
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204740459429">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SemanticDowncastExpression" typeId="yvim.1145404486709:16" id="1198509780551">
                      <node role="leftExpression" roleId="yvim.1145404616321:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1203721759292">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1198509774409">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1198509774407" resolveInfo="conceptDeclaration" />
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetModelOperation" typeId="yvim.1143234257716:16" id="1198509778628" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1204740459430">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~SModel%dgetLongName()%cjava%dlang%dString" resolveInfo="getLongName" />
                    </node>
                  </node>
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1198509792497">
                    <property name="value" nameId="yvor.1070475926801:3" value="." />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="1169128016716">
      <link role="applicableConcept" roleId="yvp6.1168619429071:2" targetNodeId="yvnr.1169125989551:0" />
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550081118" />
  </root>
  <root id="1225099204495">
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1225099204496" />
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="1225099204501" />
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="1225099242888">
      <property name="name" nameId="yvnu.1169194664001:0" value="MODULE_REFERENCE" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1225099246782" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1225099615119">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="glhg.~ModuleReference" resolveInfo="ModuleReference" />
      </node>
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1225099630137">
        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="glhg.~ModuleReference" resolveInfo="ModuleReference" />
        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="glhg.~ModuleReference%dfromString(java%dlang%dString)%cjetbrains%dmps%dproject%dstructure%dmodules%dModuleReference" resolveInfo="fromString" />
        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1225099631044">
          <property name="value" nameId="yvor.1070475926801:3" value="module.reference" />
          <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1225099631045">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1225099631046">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1225099631047">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1225099631048">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1225099631049">
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1225099631056">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="glhg.~ModuleReference%dtoString()%cjava%dlang%dString" resolveInfo="toString" />
                    </node>
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2486218064530625969">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2486218064530625970">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2486218064530625971">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SemanticDowncastExpression" typeId="yvim.1145404486709:16" id="2486218064530625972">
                            <node role="leftExpression" roleId="yvim.1145404616321:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2486218064530625973">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="2486218064530625974" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOriginalInputModel" typeId="yvp3.1217026863835:0" id="2486218064530625975" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="2486218064530625976">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~SModel%dgetModelDescriptor()%cjetbrains%dmps%dsmodel%dSModelDescriptor" resolveInfo="getModelDescriptor" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="2486218064530625977">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~SModelDescriptor%dgetModule()%cjetbrains%dmps%dproject%dIModule" resolveInfo="getModule" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="2486218064530625978">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~IModule%dgetModuleReference()%cjetbrains%dmps%dproject%dstructure%dmodules%dModuleReference" resolveInfo="getModuleReference" />
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
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1225099296537">
      <property name="name" nameId="yvnu.1169194664001:0" value="get" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1225099358041">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~Language" resolveInfo="Language" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1225099296539" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1225099296540">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1225099303667">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="1225099336940">
            <node role="type" roleId="yvor.1070534934091:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1225099348321">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~Language" resolveInfo="Language" />
            </node>
            <node role="expression" roleId="yvor.1070534934092:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1225099336942">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1225099336943">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~MPSModuleRepository%dgetInstance()%cjetbrains%dmps%dsmodel%dMPSModuleRepository" resolveInfo="getInstance" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="8n6q.~MPSModuleRepository" resolveInfo="MPSModuleRepository" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1225099336944">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~MPSModuleRepository%dgetModule(jetbrains%dmps%dproject%dstructure%dmodules%dModuleReference)%cjetbrains%dmps%dproject%dIModule" resolveInfo="getModule" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalStaticFieldReference" typeId="yvor.1172008963197:3" id="1225099336945">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1225099242888" resolveInfo="MODULE_REFERENCE" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1225099518028">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1225099518029">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1225099518030">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1225099547320">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1225099547321">
              <property name="name" nameId="yvnu.1169194664001:0" value="capitalizedName" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225192521716" />
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1225099571473">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1225099572927">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dshortNameFromLongName(java%dlang%dString)%cjava%dlang%dString" resolveInfo="shortNameFromLongName" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1225099572928">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2486218064530622969">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2486218064530622352">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SemanticDowncastExpression" typeId="yvim.1145404486709:16" id="2486218064530622356">
                          <node role="leftExpression" roleId="yvim.1145404616321:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2486218064530622347">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="2486218064530622346" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOriginalInputModel" typeId="yvp3.1217026863835:0" id="2486218064530622351" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="2486218064530622968">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~SModel%dgetModelDescriptor()%cjetbrains%dmps%dsmodel%dSModelDescriptor" resolveInfo="getModelDescriptor" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="2486218064530624120">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~SModelDescriptor%dgetModule()%cjetbrains%dmps%dproject%dIModule" resolveInfo="getModule" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="5699776870187153321">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~IModule%dgetModuleFqName()%cjava%dlang%dString" resolveInfo="getModuleFqName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1225099575166">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1225099580935">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1225099581141">
                <property name="value" nameId="yvor.1070475926801:3" value="_Language" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1225099579637">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1225099547321" resolveInfo="capitalizedName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="7544071561380124589">
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="7544071561380125584">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="7544071561380125590">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1096044357786" resolveInfo="weave_LinkDeclaration_child_card_1_nospec" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="7544071561380125608">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7544071561380125609">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7544071561380125610">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="7544071561380125615">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167265030512" resolveInfo="isAggLink_card_1_nospec" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7544071561380125616" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="7544071561380125586">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="7544071561380125591">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1111091435208" resolveInfo="weave_LinkDeclaration_child_card_1_spec" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="7544071561380125601">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7544071561380125602">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7544071561380125603">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="4827458613834932025">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="4827458613834932028">
                <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4827458613834953367">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4827458613834932031">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4827458613834932030" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="4827458613834953366">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4827458613834953371">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4827458613834953378">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4827458613834953373">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4827458613834953372" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4827458613834953377">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599698500:0" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="4827458613834953382">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="7544071561380125617">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167265071207" resolveInfo="isAggLink_card_1_spec" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7544071561380125618" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="7544071561380125588">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="7544071561380125592">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1096045101843" resolveInfo="weave_LinkDeclaration_child_card_n_nospec" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="7544071561380125593">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7544071561380125594">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7544071561380125595">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="7544071561380125599">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167265145921" resolveInfo="isAggLink_card_n_nospec" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7544071561380125600" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="7544071561380161324">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="7544071561380161342">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1096027342453" resolveInfo="weave_LinkDeclaration_ref_card_1_nospec" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="7544071561380161336">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7544071561380161337">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7544071561380161338">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="7544071561380161339">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167263502163" resolveInfo="isRefLink_card_1_nospec" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7544071561380161341" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="7544071561380161343">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="7544071561380161345">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1096449765609" resolveInfo="weave_LinkDeclaration_ref_card_1_spec" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="7544071561380161346">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7544071561380161347">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7544071561380161348">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="7544071561380161351">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167263992044" resolveInfo="isRefLink_card_1_spec" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7544071561380161352" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="defaultConsequence" roleId="yvp6.1168558750579:2" type="yvp6.AbandonInput_RuleConsequence" typeId="yvp6.1202776937179:2" id="545838410333731082" />
  </root>
  <root id="545838410333270266">
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="545838410333270267">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288299:0" resolveInfo="PropertyDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="545838410333270269">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1095688526406" resolveInfo="weave_PropertyDeclaration_Boolean" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="545838410333270279">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333270280">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333270398">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333270402">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167262266911" resolveInfo="propertyDataType_isBoolean" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333270403" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="545838410333270270">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288299:0" resolveInfo="PropertyDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="545838410333270272">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1095689039689" resolveInfo="weave_PropertyDeclaration_Integer" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="545838410333270281">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333270282">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333270404">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333270407">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167262451085" resolveInfo="propertyDataType_isInteger" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333270408" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="545838410333270273">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288299:0" resolveInfo="PropertyDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="545838410333270275">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1095670167921" resolveInfo="weave_PropertyDeclaration_String" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="545838410333270283">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333270284">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333270409">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333270412">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167253634949" resolveInfo="propertyDataType_isString" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333270413" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="545838410333270276">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288299:0" resolveInfo="PropertyDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="545838410333270278">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1096017864527" resolveInfo="weave_PropertyDeclaration_Enum" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="545838410333270285">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333270286">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333270414">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333270417">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167262339409" resolveInfo="propertyDataType_isEnum" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333270418" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="defaultConsequence" roleId="yvp6.1168558750579:2" type="yvp6.AbandonInput_RuleConsequence" typeId="yvp6.1202776937179:2" id="4827458613834932023" />
  </root>
  <root id="545838410333598724">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.Interface" typeId="yvor.1107796713796:3" id="545838410333598799">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_interface_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333598835">
        <property name="name" nameId="yvnu.1169194664001:0" value="_getter_" />
        <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333598836" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="545838410333598862">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333598863">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333598864">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333598865">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333598866">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333598867">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333598868">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333598869" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="545838410333598870">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="545838410333598871">
          <link role="labelDeclaration" roleId="yvp6.1200916687663:2" targetNodeId="1215478114755" resolveInfo="linkGetterMethod" />
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333598872">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333598873">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333598874">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333598875">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333598876">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077459446" resolveInfo="getterMethodName" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333598877" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333598878" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333598880">
        <property name="name" nameId="yvnu.1169194664001:0" value="_setter_" />
        <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333598881" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="545838410333598886" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="545838410333598887">
          <property name="name" nameId="yvnu.1169194664001:0" value="node" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="545838410333598888">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333598889">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333598890">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333598891">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333598892">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333598893">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333598894">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333598895" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="545838410333598896">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="545838410333598897">
          <link role="labelDeclaration" roleId="yvp6.1200916687663:2" targetNodeId="1215478114836" resolveInfo="linkSetterMethod" />
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333598898">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333598899">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333598900">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333598901">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333598902">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077597994" resolveInfo="setterMethodName" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333598903" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333598904" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333598800" />
    </node>
  </root>
  <root id="545838410333598907">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.Interface" typeId="yvor.1107796713796:3" id="545838410333599086">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_interface_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333599088">
        <property name="name" nameId="yvnu.1169194664001:0" value="_get_count_" />
        <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599089" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="545838410333599095" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599096">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599097">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599098">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599099">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="545838410333599100">
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="545838410333599101">
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="545838410333599102">
                      <property name="value" nameId="yvor.1070475926801:3" value="get" />
                    </node>
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599103">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dpluralize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="pluralize" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599104">
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599105">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599106" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333599107">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="545838410333599108">
                    <property name="value" nameId="yvor.1070475926801:3" value="Count" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="545838410333599109" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599110" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333599111">
        <property name="name" nameId="yvnu.1169194664001:0" value="_iterate_" />
        <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599112" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvix.IteratorType" typeId="yvix.1237467705688:7" id="545838410333599128">
          <node role="elementType" roleId="yvix.1237467730343:7" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="545838410333599129">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599130">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599131">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599132">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599133">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599134">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599135">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599136" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="545838410333599137">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599138">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599139">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599140">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599141">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599142">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dpluralize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="pluralize" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599143">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599144" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333599145">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="545838410333599146" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599147" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333599148">
        <property name="name" nameId="yvnu.1169194664001:0" value="_childrenGetter_" />
        <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599149" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="545838410333599165">
          <node role="elementType" roleId="yvix.1151688676805:7" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="545838410333599166">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599167">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599168">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599169">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599170">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599171">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599172">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599173" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="545838410333599174">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599175">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599176">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599177">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599178">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="545838410333599179">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599180">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599181">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dpluralize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="pluralize" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599182">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599183" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333599184">
                          <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="545838410333599185">
                    <property name="value" nameId="yvor.1070475926801:3" value="get" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="545838410333599186" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599187" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333599189">
        <property name="name" nameId="yvnu.1169194664001:0" value="_add_" />
        <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599190" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="545838410333599197" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="545838410333599198">
          <property name="name" nameId="yvnu.1169194664001:0" value="node" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="545838410333599199">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599200">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599201">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599202">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599203">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599204">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599205">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599206" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="545838410333599207">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="545838410333599208" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599209">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599210">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599211">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599212">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="545838410333599213">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599214">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599215">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599216" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333599217">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="545838410333599218">
                    <property name="value" nameId="yvor.1070475926801:3" value="add" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599219" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333599222">
        <property name="name" nameId="yvnu.1169194664001:0" value="_insert_" />
        <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="545838410333599223">
          <property name="name" nameId="yvnu.1169194664001:0" value="prev" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="545838410333599224">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599225">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599226">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599227">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599228">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599229">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599230">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599231" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="545838410333599232">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599233" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="545838410333599241" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="545838410333599242">
          <property name="name" nameId="yvnu.1169194664001:0" value="node" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="545838410333599243">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599244">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599245">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599246">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599247">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599248">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599249">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599250" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="545838410333599251">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="545838410333599252" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599253">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599254">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599255">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599256">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="545838410333599257">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599258">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599259">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599260" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333599261">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnr.1071599776563:0" resolveInfo="role" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="545838410333599262">
                    <property name="value" nameId="yvor.1070475926801:3" value="insert" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599263" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599087" />
    </node>
  </root>
  <root id="545838410333599266">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.Interface" typeId="yvor.1107796713796:3" id="545838410333599342">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_interface_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333599344">
        <property name="name" nameId="yvnu.1169194664001:0" value="_getter_" />
        <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599345" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="545838410333599371">
          <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
          <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599372">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599373">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599374">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599375">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599376">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599377">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599378" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="545838410333599379">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599380">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599381">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599382">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599383">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599384">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077459446" resolveInfo="getterMethodName" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599385" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="545838410333599386">
          <link role="labelDeclaration" roleId="yvp6.1200916687663:2" targetNodeId="1215478114755" resolveInfo="linkGetterMethod" />
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599387" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333599393">
        <property name="name" nameId="yvnu.1169194664001:0" value="_setter_" />
        <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599394" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="545838410333599399" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="545838410333599400">
          <property name="name" nameId="yvnu.1169194664001:0" value="node" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvko.InternalClassifierType" typeId="yvko.1174914042989:1" id="545838410333599401">
            <property name="fqClassName" nameId="yvko.1174914081067:1" value="targetClassifier" />
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~INodeAdapter" resolveInfo="INodeAdapter" />
            <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599402">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599403">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599404">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599405">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599406">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1198509981825" resolveInfo="conceptClassFQName" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599407">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599408" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="545838410333599409">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1071599976176:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599410">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599411">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599412">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599413">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599414">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1212077597994" resolveInfo="setterMethodName" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1212077391612" resolveInfo="LinkDeclarationUtil" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599415" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="545838410333599416">
          <link role="labelDeclaration" roleId="yvp6.1200916687663:2" targetNodeId="1215478114836" resolveInfo="linkSetterMethod" />
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599417" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599343" />
    </node>
  </root>
  <root id="545838410333599422">
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="545838410333599423">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="545838410333599458">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="545838410333598724" resolveInfo="insert_LinkDeclaration_child_card_1_interface" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="545838410333599425">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599426">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599427">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="545838410333599459">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599428">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167265030512" resolveInfo="isAggLink_card_1_nospec" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599429" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599462">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167265071207" resolveInfo="isAggLink_card_1_spec" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599463" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="545838410333599437">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="545838410333599464">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="545838410333598907" resolveInfo="insert_LinkDeclaration_child_card_n_nospec_interface" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="545838410333599439">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599440">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599441">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599442">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167265145921" resolveInfo="isAggLink_card_n_nospec" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599443" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="545838410333599444">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288298:0" resolveInfo="LinkDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="545838410333599465">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="545838410333599266" resolveInfo="insert_LinkDeclaration_ref_card_1_interface" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="545838410333599446">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599447">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599448">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="545838410333599466">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599449">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167263502163" resolveInfo="isRefLink_card_1_nospec" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599450" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599469">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167263992044" resolveInfo="isRefLink_card_1_spec" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599470" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="defaultConsequence" roleId="yvp6.1168558750579:2" type="yvp6.AbandonInput_RuleConsequence" typeId="yvp6.1202776937179:2" id="4827458613834932022" />
  </root>
  <root id="545838410333599471">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.Interface" typeId="yvor.1107796713796:3" id="545838410333599520">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_interface_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333599522">
        <property name="name" nameId="yvnu.1169194664001:0" value="_getter_" />
        <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599523" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="545838410333599529">
          <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="545838410333599567">
            <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="545838410333599568">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599569">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="545838410333599576">
                  <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599577">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333599584">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="545838410333599590">
                        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="545838410333599592" />
                      </node>
                    </node>
                  </node>
                  <node role="condition" roleId="yvor.1068580123160:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599580">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167262266911" resolveInfo="propertyDataType_isBoolean" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599581" />
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="545838410333599599">
                  <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599600">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333599601">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="545838410333599602">
                        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="545838410333599618" />
                      </node>
                    </node>
                  </node>
                  <node role="condition" roleId="yvor.1068580123160:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599614">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167253634949" resolveInfo="propertyDataType_isString" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599615" />
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="545838410333599607">
                  <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599608">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333599609">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="545838410333599610">
                        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="545838410333599619" />
                      </node>
                    </node>
                  </node>
                  <node role="condition" roleId="yvor.1068580123160:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599616">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167262451085" resolveInfo="propertyDataType_isInteger" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599617" />
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333599621">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="545838410333599626" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="545838410333599530" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599531">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599532">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599533">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599534">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="545838410333599535">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599536">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599537">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599538" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333599539">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="545838410333599540">
                    <property name="value" nameId="yvor.1070475926801:3" value="get" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599541" />
      </node>
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333599543">
        <property name="name" nameId="yvnu.1169194664001:0" value="_setter_" />
        <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599544" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="545838410333599551" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="545838410333599552">
          <property name="name" nameId="yvnu.1169194664001:0" value="value" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="545838410333599553">
            <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="545838410333599628">
              <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="545838410333599629">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599630">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="545838410333599631">
                    <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599632">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333599633">
                        <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="545838410333599634">
                          <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="545838410333599635" />
                        </node>
                      </node>
                    </node>
                    <node role="condition" roleId="yvor.1068580123160:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599636">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167262266911" resolveInfo="propertyDataType_isBoolean" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599637" />
                    </node>
                  </node>
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="545838410333599638">
                    <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599639">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333599640">
                        <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="545838410333599641">
                          <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="545838410333599642" />
                        </node>
                      </node>
                    </node>
                    <node role="condition" roleId="yvor.1068580123160:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599643">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167253634949" resolveInfo="propertyDataType_isString" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599644" />
                    </node>
                  </node>
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="545838410333599645">
                    <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599646">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333599647">
                        <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="545838410333599648">
                          <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="545838410333599649" />
                        </node>
                      </node>
                    </node>
                    <node role="condition" roleId="yvor.1068580123160:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599650">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167262451085" resolveInfo="propertyDataType_isInteger" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599651" />
                    </node>
                  </node>
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="545838410333599652">
                    <node role="expression" roleId="yvor.1068581517676:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="545838410333599653" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599554">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599555">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599556">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599557">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="545838410333599558">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599559">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599560">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599561" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333599562">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="545838410333599563">
                    <property name="value" nameId="yvor.1070475926801:3" value="set" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="545838410333599564" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599565" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599521" />
    </node>
  </root>
  <root id="545838410333599654">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.Interface" typeId="yvor.1107796713796:3" id="545838410333599733">
      <property name="name" nameId="yvnu.1169194664001:0" value="_context_interface_" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333599736">
        <property name="name" nameId="yvnu.1169194664001:0" value="_getter_" />
        <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599737" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599755">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599756">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599757">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599758">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="545838410333599759">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599760">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599761">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599762" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333599763">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="545838410333599764">
                    <property name="value" nameId="yvor.1070475926801:3" value="get" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="545838410333599765" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599766" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="545838410333599767">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
          <node role="referenceMacro$link_attribute$classifier" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="545838410333599768">
            <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="545838410333599769">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599770">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599771">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599772">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1234209362027" resolveInfo="getEnumClassResolveInfo" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="545838410333599773">
                      <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvnr.1082978164219:0" resolveInfo="EnumerationDataTypeDeclaration" />
                      <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599774">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599775" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="545838410333599776">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1082985295845:0" />
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
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="545838410333599778">
        <property name="name" nameId="yvnu.1169194664001:0" value="_setter_" />
        <property name="isAbstract" nameId="yvor.1178608670077:3" value="true" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599779" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="545838410333599786" />
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="545838410333599787">
          <property name="name" nameId="yvnu.1169194664001:0" value="value" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="545838410333599788">
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1095695120718" resolveInfo="class_EnumerationDataTypeDeclaration_Enum" />
            <node role="referenceMacro$link_attribute$classifier" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="545838410333599789">
              <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="545838410333599790">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599791">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599792">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599793">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1234209362027" resolveInfo="getEnumClassResolveInfo" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="545838410333599794">
                        <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvnr.1082978164219:0" resolveInfo="EnumerationDataTypeDeclaration" />
                        <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599795">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599796" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="545838410333599797">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvnr.1082985295845:0" />
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
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="545838410333599798" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="545838410333599799">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="545838410333599800">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599801">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599802">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="545838410333599803">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599804">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="6eoo.~NameUtil%dcapitalize(java%dlang%dString)%cjava%dlang%dString" resolveInfo="capitalize" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6eoo.~NameUtil" resolveInfo="NameUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="545838410333599805">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599806" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="545838410333599807">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="545838410333599808">
                    <property name="value" nameId="yvor.1070475926801:3" value="set" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599809" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="545838410333599734" />
    </node>
  </root>
  <root id="545838410333599810">
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="545838410333599811">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288299:0" resolveInfo="PropertyDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="545838410333599852">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="545838410333599471" resolveInfo="insert_PropertyDeclaration_interface" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="545838410333599813">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599814">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599815">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="545838410333599845">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="545838410333599839">
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599816">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167262266911" resolveInfo="propertyDataType_isBoolean" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599817" />
                </node>
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599842">
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167262451085" resolveInfo="propertyDataType_isInteger" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599843" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599850">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167253634949" resolveInfo="propertyDataType_isString" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599851" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="545838410333599832">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvnr.1071489288299:0" resolveInfo="PropertyDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="545838410333599853">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="545838410333599654" resolveInfo="insert_PropertyDeclaration_Enum_interface" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="545838410333599834">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="545838410333599835">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="545838410333599836">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="545838410333599837">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvno.1167262339409" resolveInfo="propertyDataType_isEnum" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvno.1167253485745" resolveInfo="QueriesUtil" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="545838410333599838" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="defaultConsequence" roleId="yvp6.1168558750579:2" type="yvp6.AbandonInput_RuleConsequence" typeId="yvp6.1202776937179:2" id="4827458613834932024" />
  </root>
</model>


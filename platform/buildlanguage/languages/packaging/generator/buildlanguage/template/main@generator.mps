<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c895904d9(jetbrains.mps.build.packaging.generator.buildlanguage.template.main@generator)">
  <persistence version="7" />
  <language namespace="b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="13744753-c81f-424a-9c1b-cf8943bf4e86(jetbrains.mps.lang.sharedConcepts)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <language namespace="0b608d44-1308-418d-8715-22d040c3b3cc(jetbrains.mps.buildlanguage)" />
  <language namespace="dd61a7d7-8e1b-45a1-9aa3-8585ec2b60fc(jetbrains.mps.build.property)" />
  <language namespace="4e6c5313-7662-4c44-9bc7-b488cec17508(jetbrains.mps.build.packaging)" />
  <language namespace="500e32a4-ab9e-46a4-ae29-127ae883d208(jetbrains.mps.build.dependency)" />
  <language namespace="fba399db-f591-45dc-a279-e2a2a986e262(jetbrains.mps.build.generictasks)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <language namespace="a83c3bd0-2f7e-4ba1-8373-12d49e99f57e(jetbrains.mps.gtext)" />
  <import index="yvvm" modelUID="r:00000000-0000-4000-0000-011c895904d8(jetbrains.mps.build.packaging.structure)" version="7" />
  <import index="vhgx" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="yvnu" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="yvvu" modelUID="r:00000000-0000-4000-0000-011c895904c8(jetbrains.mps.buildlanguage.structure)" version="21" />
  <import index="tiz1" modelUID="f:java_stub#java.io(java.io@java_stub)" version="-1" />
  <import index="8n6q" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="txlh" modelUID="f:java_stub#jetbrains.mps.project(jetbrains.mps.project@java_stub)" version="-1" />
  <import index="7xm" modelUID="f:java_stub#jetbrains.mps.vfs(jetbrains.mps.vfs@java_stub)" version="-1" />
  <import index="yvvn" modelUID="r:00000000-0000-4000-0000-011c895904da(jetbrains.mps.build.packaging.generator.buildlanguage.template.util)" version="-1" />
  <import index="yvvr" modelUID="r:00000000-0000-4000-0000-011c895904d3(jetbrains.mps.build.packaging.behavior)" version="-1" />
  <import index="yvor" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <import index="yvvt" modelUID="r:00000000-0000-4000-0000-011c895904cf(jetbrains.mps.build.dependency.structure)" version="0" />
  <import index="yvvy" modelUID="r:00000000-0000-4000-0000-011c895904c0(jetbrains.mps.buildlanguage.behavior)" version="-1" />
  <import index="77q6" modelUID="r:7a6a35c6-e369-4565-b91b-c7c8dfa2c8d7(jetbrains.mps.build.generictasks.generated)" version="-1" />
  <import index="dt0d" modelUID="f:java_stub#jetbrains.mps.make.dependencies(jetbrains.mps.make.dependencies@java_stub)" version="-1" />
  <import index="906v" modelUID="f:java_stub#jetbrains.mps.project.dependency(jetbrains.mps.project.dependency@java_stub)" version="-1" />
  <import index="yjwb" modelUID="f:java_stub#java.util(java.util@java_stub)" version="-1" />
  <import index="yvwf" modelUID="r:00000000-0000-4000-0000-011c895904e2(jetbrains.mps.build.property.structure)" version="1" />
  <import index="yvp6" modelUID="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" version="2" implicit="yes" />
  <import index="yvim" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="yvix" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="yviq" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="yvo0" modelUID="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)" version="0" implicit="yes" />
  <import index="yvp3" modelUID="r:00000000-0000-4000-0000-011c895902f3(jetbrains.mps.lang.generator.generationContext.structure)" version="0" implicit="yes" />
  <import index="6oxb" modelUID="r:1e7ada09-c25e-41ea-a9b5-398e142ef533(jetbrains.mps.build.generictasks.structure)" version="22" implicit="yes" />
  <import index="yvvo" modelUID="r:00000000-0000-4000-0000-011c895904d9(jetbrains.mps.build.packaging.generator.buildlanguage.template.main@generator)" version="-1" implicit="yes" />
  <import index="yvqs" modelUID="r:00000000-0000-4000-0000-011c89590575(jetbrains.mps.gtext.structure)" version="0" implicit="yes" />
  <roots>
    <node type="yvp6.MappingConfiguration" typeId="yvp6.1095416546421:2" id="1202918622135">
      <property name="name" nameId="yvnu.1169194664001:0" value="main" />
    </node>
    <node type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1203611981921">
      <property name="name" nameId="yvnu.1169194664001:0" value="project" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1203620346433">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_File" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1203598322527:7" resolveInfo="File" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1203620540433">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_Jar" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1203598417283:7" resolveInfo="Jar" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1203620846457">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_Folder" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1203598512427:7" resolveInfo="Folder" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1203621003012">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_Module" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1204016537891">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_Copy" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1204015075559:7" resolveInfo="Copy" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1204018597716">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_Zip" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1204018553150:7" resolveInfo="Zip" />
    </node>
    <node type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1204019666126">
      <property name="name" nameId="yvnu.1169194664001:0" value="modules" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1204122772586">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_Delete" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1204122781510:7" resolveInfo="Delete" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1205332397186">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_Echo" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1205331422635:7" resolveInfo="Echo" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1210779805988">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_Antcall" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1210777529562:7" resolveInfo="Antcall" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1212487275733">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_Replace" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1212485154251:7" resolveInfo="Replace" />
    </node>
    <node type="yvvt.ProjectDescription" typeId="yvvt.1216745453338:0" id="1216902420773">
      <property name="name" nameId="yvnu.1169194664001:0" value="compile.modules" />
      <property name="basedir" nameId="yvvt.7857794759871997326:0" value="." />
    </node>
    <node type="yvp6.MappingScript" typeId="yvp6.1195499912406:2" id="1217435006859">
      <property name="scriptKind" nameId="yvp6.1195595592106:2" value="pre_processing" />
      <property name="name" nameId="yvnu.1169194664001:0" value="CalculateCycles" />
      <property name="modifiesModel" nameId="yvp6.1195595611951:2" value="true" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1219155958546">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_CompositeString" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1205342812422:7" resolveInfo="CompositeString" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1219156183481">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_SimpleString" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1205339044029:7" resolveInfo="SimpleString" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1219156350738">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_VariableReference" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1205339464939:7" resolveInfo="VariableReference" />
    </node>
    <node type="yvwf.PropertyNode" typeId="yvwf.1200504738494:1" id="1203622327796">
      <property name="name" nameId="yvnu.1169194664001:0" value="project.properties" />
    </node>
    <node type="yvp6.MappingScript" typeId="yvp6.1195499912406:2" id="1219229087937">
      <property name="scriptKind" nameId="yvp6.1195595592106:2" value="pre_processing" />
      <property name="modifiesModel" nameId="yvp6.1195595611951:2" value="true" />
      <property name="name" nameId="yvnu.1169194664001:0" value="UpdateMacro" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1220026404357">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PathHolder" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1204737220833:7" resolveInfo="PathHolder" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1220983155596">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_Path" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1220973916698:7" resolveInfo="Path" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1230221604639">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_MPSLayoutConfigurationReferencePropertyValueExpression" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1230220313182:7" resolveInfo="MPSLayoutConfigurationReferencePropertyValueExpression" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1234271261132">
      <property name="name" nameId="yvnu.1169194664001:0" value="weave_Replace" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1212485154251:7" resolveInfo="Replace" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1234978022753">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_Macro" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1219228952036:7" resolveInfo="Macro" />
    </node>
    <node type="yvp6.MappingScript" typeId="yvp6.1195499912406:2" id="1238426776123">
      <property name="name" nameId="yvnu.1169194664001:0" value="CheckFullDependency" />
      <property name="scriptKind" nameId="yvp6.1195595592106:2" value="pre_processing" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1240849283962">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_Space" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.1234531699390:7" resolveInfo="Space" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="8148924375507507586">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PropertyFileImport" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.2372113960322848948:7" resolveInfo="PropertyFileImport" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="8148924375507507616">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PropertyNodeImport" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.2372113960322848946:7" resolveInfo="PropertyNodeImport" />
    </node>
    <node type="yvp6.MappingScript" typeId="yvp6.1195499912406:2" id="9027273598492288377">
      <property name="name" nameId="yvnu.1169194664001:0" value="DeleteBlocks" />
      <property name="scriptKind" nameId="yvp6.1195595592106:2" value="post_processing" />
      <property name="modifiesModel" nameId="yvp6.1195595611951:2" value="true" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="4159241239519681839">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_Plugin" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="projectComponents" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvvm.4159241239519649208:7" resolveInfo="Plugin" />
    </node>
    <node type="yvp6.MappingConfiguration" typeId="yvp6.1095416546421:2" id="1672810677919754483">
      <property name="name" nameId="yvnu.1169194664001:0" value="blocks" />
    </node>
    <node type="yvqs.GDocument" typeId="yvqs.1184639540818:0" id="3028065460252927838">
      <property name="documentName" nameId="yvqs.1184639635512:0" value="idea.additional.classpath" />
      <property name="extension" nameId="yvqs.1184639664013:0" value="txt" />
    </node>
  </roots>
  <root id="1202918622135">
    <node role="weavingMappingRule" roleId="yvp6.1167172143858:2" type="yvp6.Weaving_MappingRule" typeId="yvp6.1167171569011:2" id="1234271391128">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1204115658627:7" resolveInfo="Configuration" />
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="1212487373195" resolveInfo="ReplaceTargets" />
      <node role="contextNodeQuery" roleId="yvp6.1184616230853:2" type="yvp6.Weaving_MappingRule_ContextNodeQuery" typeId="yvp6.1184616041890:2" id="1234271391130">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234271391131">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234272961169">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272961785">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1234272961170" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1234272965248">
                <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1230211425287" resolveInfo="ConfigurationToProject" />
                <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234272972709" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="ruleConsequence" roleId="yvp6.1169570368028:2" type="yvp6.WeaveEach_RuleConsequence" typeId="yvp6.1169569792945:2" id="1234271765510">
        <link role="template" roleId="yvp6.1169569853122:2" targetNodeId="1234271261132" resolveInfo="weave_Replace" />
        <node role="sourceNodesQuery" roleId="yvp6.1169569939267:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1234271765511">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234271765512">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234272370956">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272392572">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272381143">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272371037">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234272370957" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1234272377098">
                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1234272377099">
                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1234272379283">
                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetDescendantsOperation" typeId="yvim.1171305280644:16" id="1234272383398">
                    <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1234272383399">
                      <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1234272388304">
                        <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1212485154251:7" resolveInfo="Replace" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.WhereOperation" typeId="yvix.1202120902084:7" id="1234272402821">
                  <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="1234272402822">
                    <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234272402823">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234272405969">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272406449">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1234272405970">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1234272402824" resolveInfo="it" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1234272409078">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877333807" resolveInfo="included" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234272412077" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="1234272402824">
                      <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="1234272402825" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="preMappingScript" roleId="yvp6.1195502100749:2" type="yvp6.MappingScriptReference" typeId="yvp6.1195502151594:2" id="1217435029652">
      <link role="mappingScript" roleId="yvp6.1195502167610:2" targetNodeId="1217435006859" resolveInfo="CalculateCycles" />
    </node>
    <node role="preMappingScript" roleId="yvp6.1195502100749:2" type="yvp6.MappingScriptReference" typeId="yvp6.1195502151594:2" id="1219229552039">
      <link role="mappingScript" roleId="yvp6.1195502167610:2" targetNodeId="1219229087937" resolveInfo="UpdateMacro" />
    </node>
    <node role="preMappingScript" roleId="yvp6.1195502100749:2" type="yvp6.MappingScriptReference" typeId="yvp6.1195502151594:2" id="1238429909974">
      <link role="mappingScript" roleId="yvp6.1195502167610:2" targetNodeId="1238426776123" resolveInfo="CheckFullDependency" />
    </node>
    <node role="rootMappingRule" roleId="yvp6.1167514678247:2" type="yvp6.Root_MappingRule" typeId="yvp6.1167514355419:2" id="1224770908053">
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="1217528968673" resolveInfo="MPSLayoutToCompileModules" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
      <link role="template" roleId="yvp6.1167514355421:2" targetNodeId="1216902420773" resolveInfo="compile.modules" />
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="1224770908054">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1224770908055">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1224770908056">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224770908057">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1224770908058" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1224770908059">
                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1216901049448:7" resolveInfo="compile" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rootMappingRule" roleId="yvp6.1167514678247:2" type="yvp6.Root_MappingRule" typeId="yvp6.1167514355419:2" id="1219161140546">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
      <link role="template" roleId="yvp6.1167514355421:2" targetNodeId="1203622327796" resolveInfo="project.properties" />
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
    </node>
    <node role="rootMappingRule" roleId="yvp6.1167514678247:2" type="yvp6.Root_MappingRule" typeId="yvp6.1167514355419:2" id="1203015716209">
      <link role="template" roleId="yvp6.1167514355421:2" targetNodeId="1203611981921" resolveInfo="project" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1204115658627:7" resolveInfo="Configuration" />
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="1230211425287" resolveInfo="ConfigurationToProject" />
    </node>
    <node role="rootMappingRule" roleId="yvp6.1167514678247:2" type="yvp6.Root_MappingRule" typeId="yvp6.1167514355419:2" id="1204019658777">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
      <link role="template" roleId="yvp6.1167514355421:2" targetNodeId="1204019666126" resolveInfo="languages" />
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="1221758915287">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1221758915288">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1221758925771">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1221758958571">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1221758925958">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1221758925772" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetDescendantsOperation" typeId="yvim.1171305280644:16" id="1221758932938">
                  <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1221758932939">
                    <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1221758945432">
                      <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvix.IsNotEmptyOperation" typeId="yvix.1176501494711:7" id="1221758962304" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1204021004893">
      <property name="name" nameId="yvnu.1169194664001:0" value="LanguageTargets" />
      <link role="sourceConcept" roleId="yvp6.1200911342686:2" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
      <link role="targetConcept" roleId="yvp6.1200913004646:2" targetNodeId="yvvu.1196851099544:21" resolveInfo="TargetDeclaration" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1212487373195">
      <property name="name" nameId="yvnu.1169194664001:0" value="ReplaceTargets" />
      <link role="sourceConcept" roleId="yvp6.1200911342686:2" targetNodeId="yvvm.1212485154251:7" resolveInfo="Replace" />
      <link role="targetConcept" roleId="yvp6.1200913004646:2" targetNodeId="yvvu.1196851099544:21" resolveInfo="TargetDeclaration" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1216903739465">
      <property name="name" nameId="yvnu.1169194664001:0" value="ModuleToModule" />
      <link role="sourceConcept" roleId="yvp6.1200911342686:2" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
      <link role="targetConcept" roleId="yvp6.1200913004646:2" targetNodeId="yvnu.1133920641626:0" resolveInfo="BaseConcept" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1217528968673">
      <property name="name" nameId="yvnu.1169194664001:0" value="MPSLayoutToCompileModules" />
      <link role="sourceConcept" roleId="yvp6.1200911342686:2" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
      <link role="targetConcept" roleId="yvp6.1200913004646:2" targetNodeId="yvnu.1133920641626:0" resolveInfo="BaseConcept" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1219156455517">
      <property name="name" nameId="yvnu.1169194664001:0" value="VariableToPropertyDeclaration" />
      <link role="sourceConcept" roleId="yvp6.1200911342686:2" targetNodeId="yvor.1068431474542:3" resolveInfo="VariableDeclaration" />
      <link role="targetConcept" roleId="yvp6.1200913004646:2" targetNodeId="yvvu.1196851107341:21" resolveInfo="PropertyDeclaration" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1219167110931">
      <property name="name" nameId="yvnu.1169194664001:0" value="MacroToPropertyDeclaration" />
      <link role="targetConcept" roleId="yvp6.1200913004646:2" targetNodeId="yvvu.1196851107341:21" resolveInfo="PropertyDeclaration" />
      <link role="sourceConcept" roleId="yvp6.1200911342686:2" targetNodeId="yvvm.1219228952036:7" resolveInfo="Macro" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1219771046960">
      <property name="name" nameId="yvnu.1169194664001:0" value="MacroToMacro" />
      <link role="sourceConcept" roleId="yvp6.1200911342686:2" targetNodeId="yvvm.1219228952036:7" resolveInfo="Macro" />
      <link role="targetConcept" roleId="yvp6.1200913004646:2" targetNodeId="yvvt.1219418780635:0" resolveInfo="Macros" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1230211425287">
      <property name="name" nameId="yvnu.1169194664001:0" value="ConfigurationToProject" />
      <link role="sourceConcept" roleId="yvp6.1200911342686:2" targetNodeId="yvvm.1204115658627:7" resolveInfo="Configuration" />
      <link role="targetConcept" roleId="yvp6.1200913004646:2" targetNodeId="yvvu.1196851066733:21" resolveInfo="Project" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1234974367466">
      <property name="name" nameId="yvnu.1169194664001:0" value="IMacroHolderToProject" />
      <link role="sourceConcept" roleId="yvp6.1200911342686:2" targetNodeId="yvvm.1234968728594:7" resolveInfo="IMacroHolder" />
      <link role="targetConcept" roleId="yvp6.1200913004646:2" targetNodeId="yvvu.1196851066733:21" resolveInfo="Project" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1240840704414">
      <property name="name" nameId="yvnu.1169194664001:0" value="LayoutToPropertyNode" />
      <link role="sourceConcept" roleId="yvp6.1200911342686:2" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
      <link role="targetConcept" roleId="yvp6.1200913004646:2" targetNodeId="yvwf.1200504738494:1" resolveInfo="PropertyNode" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="7857794759871909108">
      <property name="name" nameId="yvnu.1169194664001:0" value="ModuleCycleToCycle" />
      <link role="sourceConcept" roleId="yvp6.1200911342686:2" targetNodeId="yvvm.1216905728562:7" resolveInfo="ModuleCycle" />
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1234978497168">
      <property name="applyToConceptInheritors" nameId="yvp6.1167272244852:2" value="false" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1219228952036:7" resolveInfo="Macro" />
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="1219167110931" resolveInfo="MacroToPropertyDeclaration" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1234978510166">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1234978022753" resolveInfo="reduce_Macro" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633759">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1204015075559:7" resolveInfo="Copy" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633760">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1204016537891" resolveInfo="reduce_Copy" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633761">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1203598322527:7" resolveInfo="File" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633762">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1203620346433" resolveInfo="reduce_File" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633763">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1204122781510:7" resolveInfo="Delete" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633764">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1204122772586" resolveInfo="reduce_Delete" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633765">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1203598417283:7" resolveInfo="Jar" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633766">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1203620540433" resolveInfo="reduce_Jar" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633767">
      <property name="applyToConceptInheritors" nameId="yvp6.1167272244852:2" value="true" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1203598512427:7" resolveInfo="Folder" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633768">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1203620846457" resolveInfo="reduce_Folder" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633769">
      <property name="applyToConceptInheritors" nameId="yvp6.1167272244852:2" value="true" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633770">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1203621003012" resolveInfo="reduce_Module" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633771">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1204018553150:7" resolveInfo="Zip" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633772">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1204018597716" resolveInfo="reduce_Zip" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633773">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1205331422635:7" resolveInfo="Echo" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633774">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1205332397186" resolveInfo="reduce_Echo" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633775">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1210777529562:7" resolveInfo="Antcall" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633776">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1210779805988" resolveInfo="reduce_Antcall" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633777">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1212485154251:7" resolveInfo="Replace" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633778">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1212487275733" resolveInfo="reduce_Replace" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633779">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1205342812422:7" resolveInfo="CompositeString" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633780">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1219155958546" resolveInfo="reduce_CompositeString" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633781">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1205339044029:7" resolveInfo="SimpleString" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633782">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1219156183481" resolveInfo="reduce_SimpleString" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633783">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1205339464939:7" resolveInfo="VariableReference" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633784">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1219156350738" resolveInfo="reduce_VariableReference" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633785">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1204737220833:7" resolveInfo="PathHolder" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633786">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1220026404357" resolveInfo="reduce_PathHolder" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633787">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1220973916698:7" resolveInfo="Path" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633788">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1220983155596" resolveInfo="reduce_Path" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1233308633790">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1230220313182:7" resolveInfo="MPSLayoutConfigurationReferencePropertyValueExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1233308633791">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1230221604639" resolveInfo="reduce_MPSLayoutConfigurationReferencePropertyValueExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1240849408232">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.1234531699390:7" resolveInfo="Space" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1240849424226">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1240849283962" resolveInfo="reduce_Space" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="8148924375507507584">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.2372113960322848948:7" resolveInfo="PropertyFileImport" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="8148924375507507588">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="8148924375507507586" resolveInfo="reduce_PropertyFileImport" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="8148924375507507614">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.2372113960322848946:7" resolveInfo="PropertyNodeImport" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="8148924375507507618">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="8148924375507507616" resolveInfo="reduce_PropertyNodeImport" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="4159241239519681841">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.4159241239519649208:7" resolveInfo="Plugin" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="4159241239519681843">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="4159241239519681839" resolveInfo="reduce_Plugin" />
      </node>
    </node>
  </root>
  <root id="1203611981921">
    <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.ExternalPropertyDeclaration" typeId="yvvu.1219147669362:21" id="1219229617369">
      <property name="name" nameId="yvnu.1169194664001:0" value="macro.name" />
      <property name="checkOnStart" nameId="yvvu.1219774190534:21" value="false" />
      <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.FileType" typeId="yvvu.1199032398223:21" id="1219229629189" />
      <node role="nodeMacro$attribute" type="yvp6.CopySrcListMacro" typeId="yvp6.1114729360583:2" id="1234978171535">
        <node role="sourceNodesQuery" roleId="yvp6.1168278589236:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1234978171536">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234978171537">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234978174318">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234978192601">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234978174385">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234978174319" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1234978190308">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877261819" resolveInfo="getLayout" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1234978194131">
                  <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1234969173075:7" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.ExternalPropertyDeclaration" typeId="yvvu.1219147669362:21" id="1219156675528">
      <property name="name" nameId="yvnu.1169194664001:0" value="variable.name" />
      <property name="checkOnStart" nameId="yvvu.1219774190534:21" value="true" />
      <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.StringType" typeId="yvvu.1196870403099:21" id="1219156716422" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1219156680506">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1219156680507">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219156680508">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219156687797">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219156692703">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219156687869">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219156687798" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1219156691758">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877261819" resolveInfo="getLayout" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1219156695507">
                  <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1205335538326:7" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1219156723141">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219156723142">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219156723143">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219156727161">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219156728240">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219156727162" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219156738480">
                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1205335307578:7" resolveInfo="antName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1220361608322">
        <link role="mappingLabel" roleId="yvp6.1200912223215:2" targetNodeId="1219156455517" resolveInfo="VariableToPropertyDeclaration" />
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1220361608323">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220361608324">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1220361656724">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1220361656725">
                <property name="name" nameId="yvnu.1169194664001:0" value="references" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1220361656726">
                  <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvvm.1205339464939:7" resolveInfo="VariableReference" />
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220361656727">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220361656728">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220361656729" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1220361656730">
                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1220361656731">
                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1220361656732">
                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                        </node>
                      </node>
                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Inclusion" typeId="yvim.1144100932627:16" id="1220361656733" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetDescendantsOperation" typeId="yvim.1171305280644:16" id="1220361656734">
                    <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1220361656735">
                      <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1220361656736">
                        <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1205339464939:7" resolveInfo="VariableReference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1220361674398">
              <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1220361674399">
                <property name="name" nameId="yvnu.1169194664001:0" value="ref" />
              </node>
              <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1220361680147">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1220361656725" resolveInfo="references" />
              </node>
              <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220361674401">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1220361705389">
                  <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220361705391">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1220361710715">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1220361712118">
                        <property name="value" nameId="yvor.1068580123138:3" value="true" />
                      </node>
                    </node>
                  </node>
                  <node role="condition" roleId="yvor.1068580123160:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1220361706399">
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220361706400" />
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220361706401">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1220361706402">
                        <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1220361674399" resolveInfo="ref" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220361706403">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1205339484191:7" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1220361720436">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1220361723098">
                <property name="value" nameId="yvor.1068580123138:3" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="importProject" roleId="yvvu.1201702862229:21" type="yvvt.ProjectDescriptionReference" typeId="yvvt.1224775496043:0" id="1224776265354">
      <link role="description" roleId="yvvt.1224775730869:0" targetNodeId="1216902420773" resolveInfo="compile.modules" />
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1224776239612">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1224776239614">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1224776239615">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1224776246159">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224776254069">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224776246396">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1224776246160" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1224776252766">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877261819" resolveInfo="getLayout" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1224776255666">
                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1216901049448:7" resolveInfo="compile" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1203615790185">
      <property name="name" nameId="yvnu.1169194664001:0" value="main" />
      <node role="depends" roleId="yvvu.1196853776690:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1217529149658">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1216902724929" resolveInfo="compile" />
      </node>
      <node role="depends" roleId="yvvu.1196853776690:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1217529161337">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1203615716472" resolveInfo="clean.before" />
      </node>
      <node role="depends" roleId="yvvu.1196853776690:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1203620102318">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1203612152087" resolveInfo="folders.create" />
      </node>
      <node role="depends" roleId="yvvu.1196853776690:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1203620104945">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1203619666061" resolveInfo="dothejob" />
      </node>
      <node role="depends" roleId="yvvu.1196853776690:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1203620113791">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1203619869035" resolveInfo="clean.after" />
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1230209762849">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1230209762850">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1230209762851">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1230209766173">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1230209770431">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1230209766226">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1230209766174" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1230209769603">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877261819" resolveInfo="getLayout" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1230209773569">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1230209625713" resolveInfo="getDefaultTargetName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1216902724929">
      <property name="name" nameId="yvnu.1169194664001:0" value="compile" />
      <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1217529176294">
        <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802811777" resolveInfo="antcall" />
        <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1217529181089">
          <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811782" resolveInfo="target" />
          <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1217529194076">
            <property name="value" nameId="yvvu.1196861024475:21" value="compile.all" />
          </node>
        </node>
        <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1217529239035">
          <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1217529239036">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217529239037">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1217529246422">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217529251795">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217529246456">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1217529246423" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1217529249462">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877261819" resolveInfo="getLayout" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1217529256348">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1216901049448:7" resolveInfo="compile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1203615716472">
      <property name="name" nameId="yvnu.1169194664001:0" value="clean.before" />
      <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1203615724208">
        <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802812660" resolveInfo="delete" />
        <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1203615731365">
          <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802812669" resolveInfo="dir" />
          <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1203622439307">
            <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
            <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840479910">
              <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840479911">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840479912">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840483428">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840483429">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840483430">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840483431">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840483432" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840483433">
                            <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                            <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840483434">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840483435" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1240840483436">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877261819" resolveInfo="getLayout" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840483437">
                          <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840483438" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1212492728369">
        <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802815678" resolveInfo="tstamp" />
      </node>
      <node role="depends" roleId="yvvu.1196853776690:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1217529140845">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1216902724929" resolveInfo="compile" />
      </node>
    </node>
    <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1203612152087">
      <property name="name" nameId="yvnu.1169194664001:0" value="folders.create" />
      <property name="shortDescription" nameId="yvnu.1156234966388:0" value="create folders and copy some contents to them" />
      <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1203615027465">
        <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802814434" resolveInfo="mkdir" />
        <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1203615036248">
          <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814435" resolveInfo="dir" />
          <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1204018946815">
            <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
            <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240841047943">
              <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240841047944">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240841047945">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240841071091">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240841121364">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240841079723">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240841071092">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240841071093" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240841071094">
                            <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                            <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240841071095">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240841071096" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1240841071097">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877261819" resolveInfo="getLayout" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240841109650">
                          <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240841128262" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1203612260192">
        <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802814434" resolveInfo="mkdir" />
        <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1203612657675">
          <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814435" resolveInfo="dir" />
          <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1203613063095">
            <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1203614990786">
              <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1203614993867">
                <property name="value" nameId="yvvu.1196861024475:21" value="target.dir" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1203614993868">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1203614993869">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1203614993870">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1239363424919">
                        <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1239363430652">
                          <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239363430653">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239363430654">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239363430655" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1239363430656">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1237389224202" resolveInfo="getChildrenTargetDir" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1239363430657">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1239363430658">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                              </node>
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1239363430659">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                              </node>
                            </node>
                          </node>
                          <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1239363430660">
                            <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1204018951238">
                <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840294749">
                  <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840294750">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840294751">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240841167935">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240841167936">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240841167937">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240841167938">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240841167939" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240841167940">
                                <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240841167941">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240841167942" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240841167943">
                                    <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240841167944">
                                      <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240841167945">
                                        <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240841167946">
                              <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240841167947" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1203613712379">
          <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1203613712380">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1203613712381">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237391984246">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237391987999">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237391984247">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237391984248">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1237391984249" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1237391984250">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877261819" resolveInfo="getLayout" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1237391984251">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877228296" resolveInfo="getTopologicalSortedComponents" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1237391984252" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.WhereOperation" typeId="yvix.1202120902084:7" id="1237391994906">
                    <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="1237391994907">
                      <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237391994908">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237392000208">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237392001162">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1237392000209">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1237391994909" resolveInfo="it" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsInstanceOfOperation" typeId="yvim.1139621453865:16" id="1237392004212">
                              <node role="conceptArgument" roleId="yvim.1177027386292:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1237392037001">
                                <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1203617883391:7" resolveInfo="ICompositeComponent" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="1237391994909">
                        <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="1237391994910" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="depends" roleId="yvvu.1196853776690:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1203615747695">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1203615716472" resolveInfo="clean" />
      </node>
    </node>
    <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1203619666061">
      <property name="name" nameId="yvnu.1169194664001:0" value="do.the.job" />
      <node role="depends" roleId="yvvu.1196853776690:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1203620074549">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1203612152087" resolveInfo="folders.create" />
      </node>
      <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1203620121855">
        <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802812918" resolveInfo="exec" />
        <node role="nodeMacro$attribute" type="yvp6.CopySrcListMacro" typeId="yvp6.1114729360583:2" id="1203620149560">
          <node role="sourceNodesQuery" roleId="yvp6.1168278589236:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1203620149561">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1203620149562">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1203620174048">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204010474115">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204118489078">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1203620174049" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1204118491564">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877261819" resolveInfo="getLayout" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1203620185303">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877228296" resolveInfo="getTopologicalSortedComponents" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204118497675" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1203619869035">
      <property name="name" nameId="yvnu.1169194664001:0" value="clean.after" />
      <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1203619895787">
        <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802812660" resolveInfo="delete" />
        <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1203619895788">
          <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814435" resolveInfo="dir" />
          <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1203620045646">
            <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1203620045647">
              <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1203620045648">
                <property name="value" nameId="yvvu.1196861024475:21" value="target.dir" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1203620045649">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1203620045650">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1203620045651">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1239363558942">
                        <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1239363645003">
                          <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239363645004">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239363645005">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239363645006" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1239363645007">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1237389224202" resolveInfo="getChildrenTargetDir" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1239363645008">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1239363645009">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                              </node>
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1239363645010">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                              </node>
                            </node>
                          </node>
                          <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1239363645011">
                            <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1204018938267">
                <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840306378">
                  <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840306379">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840306380">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240841155210">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240841155211">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240841155212">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240841155213">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240841155214" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240841155215">
                                <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240841155216">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240841155217" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240841155218">
                                    <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240841155219">
                                      <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240841155220">
                                        <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240841155221">
                              <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240841155222" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1203619895800">
          <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1203619895801">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1203619895802">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1203619895803">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204118510832">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217019436707">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1217019436709" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetInputModel" typeId="yvp3.1217004708011:0" id="1217019436710" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Model_NodesOperation" typeId="yvim.1171323947159:16" id="1203619895805">
                    <link role="concept" roleId="yvim.1171323947160:16" targetNodeId="yvvm.1203617883391:7" resolveInfo="ICompositComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1203619982543">
          <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1203619982544">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1203619982545">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1203620001671">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204118516022">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1203620001672" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SConceptPropertyAccess" typeId="yvim.1145994841052:16" id="1203620007317">
                    <link role="conceptProperty" roleId="yvim.1145994841055:16" targetNodeId="yvvm.1203619938976:7" resolveInfo="cleanAfterTheJob" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="depends" roleId="yvvu.1196853776690:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1203620064517">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1203619666061" resolveInfo="dothejob" />
      </node>
    </node>
    <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1203615814613">
      <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1203615790185" resolveInfo="main" />
    </node>
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="1203611982309">
      <link role="applicableConcept" roleId="yvp6.1168619429071:2" targetNodeId="yvvm.1204115658627:7" resolveInfo="Configuration" />
    </node>
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1203614794461">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1203614794462">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1203614794463">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1203614797698">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1230217474583">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1230217474527" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1230217477784">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1230217425313" resolveInfo="getBuildFileName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="basedir" roleId="yvvu.1199036079290:21" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1229523116692">
      <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1229523116693">
        <property name="value" nameId="yvvu.1196861024475:21" value=".." />
      </node>
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1229523121819">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1229523121820">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1229523121821">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1229523127330">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1229523140675">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1229523135175">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1229523127491">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1229523127331" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1229523134044">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877261819" resolveInfo="getLayout" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1229523138406">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1229522370639:7" resolveInfo="scriptsFolder" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="1229523143256" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="importProperties" roleId="yvvu.1200425203554:21" type="yvvu.ImportPropertyNode" typeId="yvvu.1200418817047:21" id="1240399848014">
      <link role="propertyNode" roleId="yvvu.1200420354547:21" targetNodeId="1203622327796" resolveInfo="project.properties" />
      <node role="referenceMacro$link_attribute$propertyNode" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840752593">
        <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840752594">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840752595">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840758039">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840764381">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840758040" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840773345">
                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840804383">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840800386" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1240840810395">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877261819" resolveInfo="getLayout" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="importProperties" roleId="yvvu.1200425203554:21" type="yvvu.ImportPropertiesFromFile" typeId="yvvu.1240398708423:21" id="1240398899948">
      <node role="propertyFile" roleId="yvvu.1240398738487:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1240398941156">
        <property name="value" nameId="yvvu.1196861024475:21" value="property file" />
      </node>
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1240398963465">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1240398963466">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240398963467">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240398977601">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240398977602">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240398977603">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240398977604">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240398977605" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1240398977606">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877261819" resolveInfo="getLayout" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="8148924375507501743">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1240395872155:7" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1240398977608" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="8148924375507507658">
        <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="8148924375507507659">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8148924375507507660">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8148924375507507661">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8148924375507507668">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8148924375507507663">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="8148924375507507662" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="8148924375507507667">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877261819" resolveInfo="getLayout" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="8148924375507507672">
                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1240395872155:7" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1203620346433">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1203622874738">
      <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
      <node role="importProperties" roleId="yvvu.1200425203554:21" type="yvvu.ImportPropertyNode" typeId="yvvu.1200418817047:21" id="1219161096641">
        <link role="propertyNode" roleId="yvvu.1200420354547:21" targetNodeId="1203622327796" resolveInfo="project.properties" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1203622882226">
        <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1203622882227">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802812427" resolveInfo="copy" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1203622882228">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802812435" resolveInfo="file" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1203622888766">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1221143061267">
                <property name="value" nameId="yvvu.1196861024475:21" value="" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1221143067882">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1221143067883">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1221143067884">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1221143070765">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1221143070924">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1221143070766" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1221143074950">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1220981955937:7" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1203622882240">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802812457" resolveInfo="tofile" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1203622929855">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1203622935936">
                <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1203622939001">
                  <property name="value" nameId="yvvu.1196861024475:21" value="" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1203622940783">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1203622940784">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1203622940785">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1203622945067">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1203622947834">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210762116661">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226935845489">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227897904">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1203622950556" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1203622957075">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877333777" resolveInfo="getPath" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1226935848580">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~File%dgetPath()%cjava%dlang%dString" resolveInfo="getPath" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210762117429">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210762117430">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                </node>
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210762117431">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1203622945068">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1204018974163">
                  <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                  <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840735466">
                    <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840735467">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840735468">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840737772">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840737773">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840737774">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840737775">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840737776" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840737777">
                                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840737778">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840737779" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840737780">
                                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840737781">
                                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840737782">
                                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840737783">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840737784" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1203622882250" />
        </node>
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1203622966466">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1203622882226" resolveInfo="tmp" />
      </node>
    </node>
  </root>
  <root id="1203620540433">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1203622736857">
      <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
      <node role="importProperties" roleId="yvvu.1200425203554:21" type="yvvu.ImportPropertyNode" typeId="yvvu.1200418817047:21" id="1219161107633">
        <link role="propertyNode" roleId="yvvu.1200420354547:21" targetNodeId="1203622327796" resolveInfo="project.properties" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1203622741392">
        <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1203622741393">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802813521" resolveInfo="jar" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1203622741394">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815899" resolveInfo="destfile" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1203622745431">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1203622766826">
                <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1203622768595">
                  <property name="value" nameId="yvvu.1196861024475:21" value="" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1203622771002">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1203622771003">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1203622771004">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1203622777193">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1203622780695">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210762194618">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226935813592">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204018761342">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1203622782448" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1203622789030">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877333777" resolveInfo="getPath" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1226935818236">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~File%dgetPath()%cjava%dlang%dString" resolveInfo="getPath" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210762195512">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210762195513">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                </node>
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210762195514">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1203622777194">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1204018993181">
                  <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                  <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840773418">
                    <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840773419">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840773420">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840776362">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840776363">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840776364">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840776365">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840776366" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840776367">
                                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840776368">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840776369" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840776370">
                                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840776371">
                                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840776372">
                                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840776373">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840776374" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1208530731569">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815901" resolveInfo="duplicate" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1208530736009">
              <property name="value" nameId="yvvu.1196861024475:21" value="preserve" />
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1204113088670">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815911" resolveInfo="filesonly" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.BooleanLiteral" typeId="yvvu.1196865966685:21" id="1204113131394">
              <property name="value" nameId="yvvu.1196866040780:21" value="true" />
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1203622741404" />
          <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1203622741405">
            <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802813175" resolveInfo="fileset" />
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1203622741406">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811531" resolveInfo="dir" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1203622794578">
                <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1203622803237">
                  <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1203622809569">
                    <property name="value" nameId="yvvu.1196861024475:21" value="" />
                    <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1203622819101">
                      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1203622819102">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1203622819103">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1203622831276">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1203622834309">
                              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210761529840">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204018756996">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1203622837125" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1203622845254">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1237389224202" resolveInfo="getChildrenTargetDir" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210761532984">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210761547175">
                                    <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                  </node>
                                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210761555896">
                                    <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                  </node>
                                </node>
                              </node>
                              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1203622831277">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1204018999995">
                    <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                    <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840783972">
                      <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840783973">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840783974">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840785934">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840785935">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840785936">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840785937">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840785938" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840785939">
                                    <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                    <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840785940">
                                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840785941" />
                                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840785942">
                                        <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840785943">
                                          <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840785944">
                                            <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840785945">
                                  <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840785946" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1204107865288">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811533" resolveInfo="excludes" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1204107869493">
                <property name="value" nameId="yvvu.1196861024475:21" value="" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1204107873447">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204107873448">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204107873449">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204107877372">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204107879078">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204107877373" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1204107882033">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877279373" resolveInfo="getExcludes" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1226346345676">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1226346345677">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1226346345678">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1226417421128">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226417423835">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226417421129">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1226417421130" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1226417421131">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877251358" resolveInfo="getExcludes" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="1226417425865" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1206440125708">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811542" resolveInfo="includes" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1206440132163">
                <property name="value" nameId="yvvu.1196861024475:21" value="" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1206440132164">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1206440132165">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1206440132166">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1206440132167">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1206440132168">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1206440132169" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1206440132170">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877279430" resolveInfo="getIncludes" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1226346367195">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1226346367196">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1226346367197">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1226417439219">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226417439220">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226417439221">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1226417439222" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1226417444932">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877279430" resolveInfo="getIncludes" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="1226417439224" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1239624133786">
            <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802814244" resolveInfo="manifest" />
            <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1239624163286">
              <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802811917" resolveInfo="attribute" />
              <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1239624165896">
                <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811918" resolveInfo="name" />
                <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1239624167897">
                  <property name="value" nameId="yvvu.1196861024475:21" value="attribute.name" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1239624197383">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1239624197384">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239624197385">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239624228750">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239624228894">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239624228751" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1239624232962">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1239624170163">
                <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811920" resolveInfo="value" />
                <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1239624173759">
                  <property name="value" nameId="yvvu.1196861024475:21" value="attribute.value" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1239624236212">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1239624236213">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239624236214">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1239625412408">
                          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1239625412409">
                            <property name="name" nameId="yvnu.1169194664001:0" value="result" />
                            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1239625412410" />
                            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1239625418459">
                              <property name="value" nameId="yvor.1070475926801:3" value="" />
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1239625395844">
                          <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1239625395845">
                            <property name="name" nameId="yvnu.1169194664001:0" value="v" />
                          </node>
                          <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239625403477">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239625401849" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1239625405561">
                              <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1239621768698:7" />
                            </node>
                          </node>
                          <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239625395847">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239625423084">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusAssignmentExpression" typeId="yvor.1215695189714:3" id="1239625424352">
                                <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239625428670">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1239625428417">
                                    <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1239625395845" resolveInfo="v" />
                                  </node>
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1239625431221">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877173054" resolveInfo="getValue" />
                                  </node>
                                </node>
                                <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1239625423085">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1239625412409" resolveInfo="result" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1239625433207">
                          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1239625434928">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1239625412409" resolveInfo="result" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1239624209611">
                <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1239624209612">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239624209613">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239624212208">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239624218199">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239624212272">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239624212209" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239624217260">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1239622015207:7" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1239624222140">
                          <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1239621801146:7" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1239624138319">
              <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1239624138320">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239624138321">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239624145837">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239624150671">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239624146370">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239624145838" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239624148452">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1239622015207:7" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1239624154238" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1203622852599">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1203622741392" resolveInfo="tmp" />
      </node>
    </node>
  </root>
  <root id="1203620846457">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1203622500548">
      <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
      <node role="importProperties" roleId="yvvu.1200425203554:21" type="yvvu.ImportPropertyNode" typeId="yvvu.1200418817047:21" id="1203622525775">
        <link role="propertyNode" roleId="yvvu.1200420354547:21" targetNodeId="1203622327796" resolveInfo="project.properties" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1203622509489">
        <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1203622509490">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802812427" resolveInfo="copy" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1203622509491">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802812455" resolveInfo="todir" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1203622538010">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1203622544920">
                <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1203622546188">
                  <property name="value" nameId="yvvu.1196861024475:21" value="" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1203622549330">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1203622549331">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1203622549332">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1203622559505">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1203622562257">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210762144283">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226936031919">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204016641274">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1203622565869" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1203622573889">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877333777" resolveInfo="getPath" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1226936036109">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~File%dgetPath()%cjava%dlang%dString" resolveInfo="getPath" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210762145223">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210762145224">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                </node>
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210762145225">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1203622559506">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1204018982945">
                  <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                  <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840750953">
                    <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840750954">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840750955">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840753997">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840753998">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840753999">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840754000">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840754001" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840754002">
                                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840754003">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840754004" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840754005">
                                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840754006">
                                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840754007">
                                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840754008">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840754009" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1203622509501" />
          <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1203622509502">
            <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802813175" resolveInfo="fileset" />
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1203622509503">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811531" resolveInfo="dir" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1221139750125">
                <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1221139750126">
                  <property name="value" nameId="yvvu.1196861024475:21" value="" />
                </node>
                <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1221139756573">
                  <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1221139756574">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1221139756575">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1221139759933">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1221139760187">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1221139759934" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1221139766922">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1220982054961:7" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1204107826964">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811533" resolveInfo="excludes" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1204107833748">
                <property name="value" nameId="yvvu.1196861024475:21" value="" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1204107836202">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204107836203">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204107836204">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204107845736">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204107846613">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204107845737" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1204107849193">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877279373" resolveInfo="getExcludes" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1226346311969">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1226346311970">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1226346311971">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1226417861801">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226417865411">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226417861854">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1226417861802" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1226417864123">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877279373" resolveInfo="getExcludes" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="1226417867784" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1206440105073">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811542" resolveInfo="includes" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1206440112825">
                <property name="value" nameId="yvvu.1196861024475:21" value="" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1206440112826">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1206440112827">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1206440112828">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1206440112829">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1206440112830">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1206440112831" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1206440112832">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877279430" resolveInfo="getIncludes" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1226346323636">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1226346323637">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1226346323638">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1226417882023">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226417882024">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226417882025">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1226417882026" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1226417887262">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877279430" resolveInfo="getIncludes" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="1226417882028" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1203622509515">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1203622509516">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1203622509517">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1203622509518">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227852697">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227937549">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1203622509523" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1221143886633">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1220982054961:7" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1203622509520" />
                  </node>
                </node>
              </node>
            </node>
            <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1233319718349">
              <node role="templateNode" roleId="yvp6.1177093586806:2" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1233319765965">
                <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802814434" resolveInfo="mkdir" />
                <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1233319769001">
                  <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814435" resolveInfo="dir" />
                  <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1233320407381">
                    <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1233320407382">
                      <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1233320407383">
                        <property name="value" nameId="yvvu.1196861024475:21" value="" />
                        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1233320407384">
                          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1233320407385">
                            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1233320407386">
                              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1233320407387">
                                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1233320407388">
                                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1233320407389">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1233320407390">
                                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1233320407391">
                                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1233320407392" />
                                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1233320407393">
                                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877333777" resolveInfo="getPath" />
                                        </node>
                                      </node>
                                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1233320407394">
                                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~File%dgetPath()%cjava%dlang%dString" resolveInfo="getPath" />
                                      </node>
                                    </node>
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1233320407395">
                                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1233320407396">
                                        <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                      </node>
                                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1233320407397">
                                        <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                      </node>
                                    </node>
                                  </node>
                                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1233320407398">
                                    <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1233320407399">
                        <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                        <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840759867">
                          <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840759868">
                            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840759869">
                              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840761105">
                                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840761106">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840761107">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840761108">
                                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840761109" />
                                      <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840761110">
                                        <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                        <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840761111">
                                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840761112" />
                                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840761113">
                                            <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840761114">
                                              <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840761115">
                                                <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840761116">
                                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                                    </node>
                                  </node>
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840761117" />
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
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1203622522539">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1203622509489" resolveInfo="tmp" />
      </node>
    </node>
  </root>
  <root id="1203621003012">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1203622093159">
      <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
      <node role="importProject" roleId="yvvu.1201702862229:21" type="yvvu.ImportProject" typeId="yvvu.1201702638416:21" id="1204022608065">
        <link role="project" roleId="yvvu.1201702650857:21" targetNodeId="1204019666126" resolveInfo="languages" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1204021060096">
        <property name="name" nameId="yvnu.1169194664001:0" value="tmp2" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1203622096428">
        <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1204020974156">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802811777" resolveInfo="antcall" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1204020979813">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811782" resolveInfo="target" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.TargetReferencePropertyValueExpression" typeId="yvvu.1201701678947:21" id="1204022241472">
              <link role="declaration" roleId="yvvu.1201701736447:21" targetNodeId="1204019666128" resolveInfo="pack.language" />
              <node role="referenceMacro$link_attribute$declaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1204022248332">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1204022248333">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204022248334">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204022293572">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1216840554186">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1216867029620" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1216867019284">
                          <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1204021004893" resolveInfo="LanguageTargets" />
                          <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204022293573" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1204022188900" />
        </node>
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1203622476436">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1203622096428" resolveInfo="tmp" />
      </node>
    </node>
  </root>
  <root id="1204016537891">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1204016587252">
      <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
      <node role="importProperties" roleId="yvvu.1200425203554:21" type="yvvu.ImportPropertyNode" typeId="yvvu.1200418817047:21" id="1219161066248">
        <link role="propertyNode" roleId="yvvu.1200420354547:21" targetNodeId="1203622327796" resolveInfo="project.properties" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1204016587254">
        <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1204016587255">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802812427" resolveInfo="copy" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1204016587256">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802812455" resolveInfo="todir" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1204016624721">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1204016630802">
                <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1204016655432">
                  <property name="value" nameId="yvvu.1196861024475:21" value="" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1204016660714">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204016660715">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204016660716">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204016673723">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1204017859685">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210762527022">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226935873649">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204017860845">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204017860846" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1204017860847">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877333777" resolveInfo="getPath" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1226936163912">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~File%dgetPath()%cjava%dlang%dString" resolveInfo="getPath" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210762527791">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210762527792">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                </node>
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210762527793">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1204017856731">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1204018967162">
                  <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                  <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840687219">
                    <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840687220">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840687221">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840690348">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840690349">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840690350">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840690351">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840690352" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840690353">
                                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840690354">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840690355" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840690356">
                                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840690357">
                                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840690358">
                                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840690359">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840690360" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1204016587270" />
          <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1204016587271">
            <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802813175" resolveInfo="fileset" />
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1204016587272">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811531" resolveInfo="dir" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1220983541847">
                <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1220983541848">
                  <property name="value" nameId="yvvu.1196861024475:21" value="source path" />
                </node>
                <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1220983551994">
                  <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1220983551995">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220983551996">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220983555008">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220983555056">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220983555009" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220983559345">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1220974847213:7" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1204107791078">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811533" resolveInfo="excludes" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1204107796111">
                <property name="value" nameId="yvvu.1196861024475:21" value="" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1204107798456">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204107798457">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204107798458">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204107803287">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204107805039">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204107803288" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1204107808666">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877251358" resolveInfo="getExcludes" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1226346273740">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1226346273741">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1226346273742">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1226417473248">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226417476594">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226417473249">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1226417473250" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1226417473251">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877251358" resolveInfo="getExcludes" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="1226417479686" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1206439779154">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811542" resolveInfo="includes" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1206439785890">
                <property name="value" nameId="yvvu.1196861024475:21" value="" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1206439785891">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1206439785892">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1206439785893">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1206439785894">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1206439785895">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1206439785896" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1206439785897">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877251415" resolveInfo="getIncludes" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1226346293893">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1226346293894">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1226346293895">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1226417495211">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226417495212">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226417495213">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1226417495214" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1226417511059">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877251415" resolveInfo="getIncludes" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="1226417506929" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1204016587284">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1204016587285">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204016587286">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204016587287">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204016605124">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204016602153">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204016587292" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1221142167045">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1220974847213:7" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1204016587289" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1204016587293">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1204016587254" resolveInfo="tmp" />
      </node>
    </node>
  </root>
  <root id="1204018597716">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1204018639064">
      <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
      <node role="importProperties" roleId="yvvu.1200425203554:21" type="yvvu.ImportPropertyNode" typeId="yvvu.1200418817047:21" id="1219161131764">
        <link role="propertyNode" roleId="yvvu.1200420354547:21" targetNodeId="1203622327796" resolveInfo="project.properties" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1204018639066">
        <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1204018639067">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802815892" resolveInfo="zip" />
          <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1209893065788">
            <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802815941" resolveInfo="zipfileset" />
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1209893069930">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811856" resolveInfo="dir" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1209893072087">
                <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1209893076762">
                  <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1209893078359">
                    <property name="value" nameId="yvvu.1196861024475:21" value="" />
                    <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1209893088422">
                      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1209893088423">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209893088424">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209893090675">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1209893090676">
                              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210761584115">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209893090677">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209893090678" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1209893090679">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1237389224202" resolveInfo="getChildrenTargetDir" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210761584946">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210761584947">
                                    <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                  </node>
                                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210761584948">
                                    <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                  </node>
                                </node>
                              </node>
                              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1209893090680">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1209893075277">
                    <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                    <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840829511">
                      <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840829512">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840829513">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840831346">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840831347">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840831348">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840831349">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840831350" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840831351">
                                    <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                    <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840831352">
                                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840831353" />
                                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840831354">
                                        <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840831355">
                                          <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840831356">
                                            <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840831357">
                                  <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840831358" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1209893100494">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811533" resolveInfo="excludes" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1209893105667">
                <property name="value" nameId="yvvu.1196861024475:21" value="" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1209893108622">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1209893108623">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209893108624">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209893115874">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209893115875">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209893115876" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1209893115877">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877279373" resolveInfo="getExcludes" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1226345902715">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1226345902716">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1226345902717">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1226345938997">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226345938998">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226345938999">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1226345939000" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1226345939001">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877279373" resolveInfo="getExcludes" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="1226345939002" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1209893117988">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811542" resolveInfo="includes" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1209893123771">
                <property name="value" nameId="yvvu.1196861024475:21" value="" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1209893126194">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1209893126195">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209893126196">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209893132853">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209893132854">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209893132855" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1209893132856">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877279430" resolveInfo="getIncludes" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1226345946801">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1226345946802">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1226345946803">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1226345949053">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226345949054">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226345949055">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1226345949056" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1226345952992">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877279430" resolveInfo="getIncludes" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="1226345949058" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1209893135404">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811866" resolveInfo="filemode" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1209893140140">
                <property name="value" nameId="yvvu.1196861024475:21" value="655" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1209915395008">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1209915395009">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209915395010">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209915406368">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209915407307">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209915406369" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1209915410279">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1239622421791:7" resolveInfo="filemode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1209915520019">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1209915520020">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209915520021">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209915524788">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="1209915535126">
                        <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1209915550655">
                          <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209915551422">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209915551423">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209915551424" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1209915551425">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1239622421791:7" resolveInfo="filemode" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1209915551426">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1209915551427">
                                <property name="value" nameId="yvor.1070475926801:3" value="" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="1209915556616">
                          <node role="expression" roleId="yvor.1079359253376:3" type="yvor.NotEqualsExpression" typeId="yvor.1073239437375:3" id="1209915557883">
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209915557884">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209915557885" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1209915557886">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1239622421791:7" resolveInfo="filemode" />
                              </node>
                            </node>
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1209915557887" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1209915425422">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811868" resolveInfo="dirmode" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1209915431158">
                <property name="value" nameId="yvvu.1196861024475:21" value="644" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1209915440097">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1209915440098">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209915440099">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209915444240">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209915445148">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209915444241" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1209915447839">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1239622421808:7" resolveInfo="dirmode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1209915566249">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1209915566250">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209915566251">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209915573658">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="1209915573659">
                        <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1209915573660">
                          <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209915573661">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209915573662">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209915573663" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1209915590065">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1239622421808:7" resolveInfo="dirmode" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1209915573665">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1209915573666">
                                <property name="value" nameId="yvor.1070475926801:3" value="" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="1209915573667">
                          <node role="expression" roleId="yvor.1079359253376:3" type="yvor.NotEqualsExpression" typeId="yvor.1073239437375:3" id="1209915573668">
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209915573669">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209915573670" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1209915660615">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1239622421808:7" resolveInfo="dirmode" />
                              </node>
                            </node>
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1209915573672" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1204018663068">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815899" resolveInfo="destfile" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1204018667695">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1204018667696">
                <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1204018667697">
                  <property name="value" nameId="yvvu.1196861024475:21" value="" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1204018667698">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204018667699">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204018667700">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204018667701">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1204018667702">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210761454857">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226936001361">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204018674036">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204018667705" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1239623671070">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877333777" resolveInfo="getPath" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1239623675352">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~File%dgetPath()%cjava%dlang%dString" resolveInfo="getPath" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210761464910">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210761472365">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                </node>
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210761479898">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1204018667706">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1204019007964">
                  <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                  <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840823385">
                    <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840823386">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840823387">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840824271">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840824272">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840824273">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840824274">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840824275" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840824276">
                                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840824277">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840824278" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840824279">
                                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840824280">
                                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840824281">
                                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840824282">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840824283" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1208530743869">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815901" resolveInfo="duplicate" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1208530747762">
              <property name="value" nameId="yvvu.1196861024475:21" value="preserve" />
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1204113149537">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815911" resolveInfo="filesonly" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.BooleanLiteral" typeId="yvvu.1196865966685:21" id="1204113177933">
              <property name="value" nameId="yvvu.1196866040780:21" value="true" />
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1204018639082" />
        </node>
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1204018639098">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1204018639066" resolveInfo="tmp" />
      </node>
    </node>
  </root>
  <root id="1204019666126">
    <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.ExternalPropertyDeclaration" typeId="yvvu.1219147669362:21" id="1219160370052">
      <property name="name" nameId="yvnu.1169194664001:0" value="deploy.dir" />
      <property name="checkOnStart" nameId="yvvu.1219774190534:21" value="true" />
      <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.FileType" typeId="yvvu.1199032398223:21" id="1219160378549" />
    </node>
    <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.ExternalPropertyDeclaration" typeId="yvvu.1219147669362:21" id="1239193117872">
      <property name="name" nameId="yvnu.1169194664001:0" value="macro.name" />
      <property name="checkOnStart" nameId="yvvu.1219774190534:21" value="false" />
      <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.FileType" typeId="yvvu.1199032398223:21" id="1239193117874" />
      <node role="nodeMacro$attribute" type="yvp6.CopySrcListMacro" typeId="yvp6.1114729360583:2" id="1239193117875">
        <node role="sourceNodesQuery" roleId="yvp6.1168278589236:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1239193117876">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239193117877">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239193117878">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239193117880">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239193838822" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1239193847219">
                  <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1234969173075:7" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1204019666128">
      <property name="name" nameId="yvnu.1169194664001:0" value="pack.language" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1204020868966">
        <link role="mappingLabel" roleId="yvp6.1200912223215:2" targetNodeId="1204021004893" resolveInfo="LanguageTargets" />
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1204020868967">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204020868968">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204020894202">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204020895423">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204020894203" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1204020900659">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877228340" resolveInfo="getModules" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1204022349925">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204022349926">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204022349927">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204022354225">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1233682511917">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1233682510803" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_CreateUniqueName" typeId="yvp3.1218047638031:0" id="1233682513792">
                  <node role="baseName" roleId="yvp3.1218047638032:0" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1233682515094">
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1235479375490">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1233682515095">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1233682515096" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1233682515097">
                          <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1235479377111">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1235479380849">
                          <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                        </node>
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1235479385645">
                          <property name="value" nameId="yvor.1070475926801:3" value="_" />
                        </node>
                      </node>
                    </node>
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1233682515098">
                      <property name="value" nameId="yvor.1070475926801:3" value="pack." />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1210254506361">
        <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802814434" resolveInfo="mkdir" />
        <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210254510471">
          <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814435" resolveInfo="dir" />
          <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1210254512894">
            <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1210254512895">
              <property name="value" nameId="yvvu.1196861024475:21" value="classpath" />
            </node>
            <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1220026769987">
              <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1220026769988">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220026769989">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220026774867">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220026774868" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1210254517272">
          <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1210254517273">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1210254517274">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1210254529494">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210254541718">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1210254529495" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1210254546236">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877515083" resolveInfo="getClassPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1210254552691">
          <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1210254552692">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1210254552693">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1210254745963">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1210254775711">
                  <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210254776541">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210254776542">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1210254776543" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1210254776544">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1208952075958:7" resolveInfo="fullPath" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210254776545">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dendsWith(java%dlang%dString)%cboolean" resolveInfo="endsWith" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1210254776546">
                        <property name="value" nameId="yvor.1070475926801:3" value="jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1210098096623">
        <property name="shortDescription" nameId="yvnu.1156234966388:0" value="pack language" />
        <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802813521" resolveInfo="jar" />
        <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210098104093">
          <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815899" resolveInfo="destfile" />
          <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1210098105844">
            <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1210098109769">
              <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1210098110647">
                <property name="value" nameId="yvvu.1196861024475:21" value="target.jar" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1210098113086">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1210098113087">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1210098113088">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1210098119542">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1210098121748">
                          <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210761860692">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210098128393">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1210098125829" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1210098260354">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877515137" resolveInfo="getModuleJarPath" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210761861242">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210761861243">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                              </node>
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210761861244">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                              </node>
                            </node>
                          </node>
                          <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210098119763">
                            <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1210098108627">
                <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1219160370052" resolveInfo="deploy.dir" />
              </node>
            </node>
          </node>
        </node>
        <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1220364854105">
          <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815897" resolveInfo="compress" />
          <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.BooleanLiteral" typeId="yvvu.1196865966685:21" id="1220364864449">
            <property name="value" nameId="yvvu.1196866040780:21" value="true" />
          </node>
        </node>
        <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210098312868">
          <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815901" resolveInfo="duplicate" />
          <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1210098317870">
            <property name="value" nameId="yvvu.1196861024475:21" value="preserve" />
          </node>
        </node>
        <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1213698712609">
          <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815911" resolveInfo="filesonly" />
          <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.BooleanLiteral" typeId="yvvu.1196865966685:21" id="1213698718736">
            <property name="value" nameId="yvvu.1196866040780:21" value="true" />
          </node>
        </node>
        <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1237395734970">
          <property name="shortDescription" nameId="yvnu.1156234966388:0" value="module descriptor file" />
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802815941" resolveInfo="zipfileset" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1237395769210">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811537" resolveInfo="file" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1237395784976">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1237395784977">
                <property name="value" nameId="yvvu.1196861024475:21" value="descriptor.file" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1239195389761">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1239195389762">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239195389763">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1239195391482">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1239195391483">
                        <property name="name" nameId="yvnu.1169194664001:0" value="module" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1239195391484">
                          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~IModule" resolveInfo="IModule" />
                        </node>
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239195391485">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239195391486" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1239195391487">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877515148" resolveInfo="getModule" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1239195391488">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1239195391489">
                        <property name="name" nameId="yvnu.1169194664001:0" value="absoluteDescriptorPath" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="8477036312981302882" />
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239195391491">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239195391492">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1239195391493">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1239195391483" resolveInfo="module" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1239195391494">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~IModule%dgetDescriptorFile()%cjetbrains%dmps%dvfs%dIFile" resolveInfo="getDescriptorFile" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1239195391495">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="7xm.~IFile%dgetAbsolutePath()%cjava%dlang%dString" resolveInfo="getAbsolutePath" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1239195391496">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239195391497">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239195391498" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1239195391499">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1239195000114" resolveInfo="getPathHolder" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1239195391500">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1239195391489" resolveInfo="absoluteDescriptorPath" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1237395818193">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811860" resolveInfo="prefix" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1237395822663">
              <property name="value" nameId="yvvu.1196861024475:21" value="module.dir" />
              <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1237395828459">
                <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1237395828460">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237395828461">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237395829752">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1237395829753">
                        <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="txlh.~AbstractModule" resolveInfo="AbstractModule" />
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="txlh.~AbstractModule%dMODULE_DIR" resolveInfo="MODULE_DIR" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1237395844523">
          <property name="shortDescription" nameId="yvnu.1156234966388:0" value="other module files" />
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802815941" resolveInfo="zipfileset" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1237395854037">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811856" resolveInfo="dir" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1237395863404">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1237395863405">
                <property name="value" nameId="yvvu.1196861024475:21" value="base.module.dir" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1239195355938">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1239195355939">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239195355940">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239195359375">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239195359418">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239195359376" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1239195364523">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1239195000114" resolveInfo="getPathHolder" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239195365720">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239195365721">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239195365722" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1239195365723">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877514794" resolveInfo="getBasedir" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1239195365724">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1239195365725">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                              </node>
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1239195365726">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
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
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1237395874809">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811533" resolveInfo="excludes" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1237395890322">
              <property name="value" nameId="yvvu.1196861024475:21" value="**/*.iml, **/*.java, **/*.class, **/trace.info, **/*.mpr, **/*.mws, **/*.mpl, **/*.msd, **/*.devkit, **/*.ipr" />
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1237396076937">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811860" resolveInfo="prefix" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1237396085549">
              <property name="value" nameId="yvvu.1196861024475:21" value="module.dir" />
              <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1237396085550">
                <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1237396085551">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237396085552">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237396085553">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1237396085554">
                        <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="txlh.~AbstractModule" resolveInfo="AbstractModule" />
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="txlh.~AbstractModule%dMODULE_DIR" resolveInfo="MODULE_DIR" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1237395921473">
          <property name="shortDescription" nameId="yvnu.1156234966388:0" value="classes from classpath" />
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802815941" resolveInfo="zipfileset" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1237396009291">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811856" resolveInfo="dir" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1237396009292">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1237396009293">
                <property name="value" nameId="yvvu.1196861024475:21" value="classpath.dir" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1237396009294">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1237396009295">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237396009296">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237396009297">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1237396009298" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1237396009299">
              <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1237396009300">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237396009301">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237396009302">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1237396009303">
                      <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237396009304">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237396009305">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1237396009306" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1237396009307">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1208952075958:7" resolveInfo="fullPath" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1237396009308">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dendsWith(java%dlang%dString)%cboolean" resolveInfo="endsWith" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1237396009309">
                            <property name="value" nameId="yvor.1070475926801:3" value="jar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1237396009310">
                <node role="templateNode" roleId="yvp6.1177093586806:2" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1237396009311">
                  <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811537" resolveInfo="file" />
                  <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1237396009312">
                    <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1237396009313">
                      <property name="value" nameId="yvvu.1196861024475:21" value="classpath.jar" />
                    </node>
                    <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1237396009314">
                      <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1237396009315">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237396009316">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237396009317">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1237396009318" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1237395979882">
            <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1237395979883">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1237395979884">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1237395994598">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1237395994599">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1237395994600" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1237395994601">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877515083" resolveInfo="getClassPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1210098031519">
        <property name="shortDescription" nameId="yvnu.1156234966388:0" value="pack jar with language runtime" />
        <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802813521" resolveInfo="jar" />
        <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210098054661">
          <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815899" resolveInfo="destfile" />
          <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1210098056772">
            <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1210098060837">
              <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1210098061793">
                <property name="value" nameId="yvvu.1196861024475:21" value="target.runtime.jar" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1210098064935">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1210098064936">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1210098064937">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1210098070860">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1210098073269">
                          <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210761893967">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210098078367">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1210098075772" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1210098084433">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877515126" resolveInfo="getRuntimeJarPath" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210761894595">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210761894596">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                              </node>
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210761894597">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                              </node>
                            </node>
                          </node>
                          <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210098071096">
                            <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1210098059649">
                <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1219160370052" resolveInfo="deploy.dir" />
              </node>
            </node>
          </node>
        </node>
        <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210098321559">
          <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815901" resolveInfo="duplicate" />
          <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1210098325436">
            <property name="value" nameId="yvvu.1196861024475:21" value="preserve" />
          </node>
        </node>
        <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1213698721565">
          <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815911" resolveInfo="filesonly" />
          <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.BooleanLiteral" typeId="yvvu.1196865966685:21" id="1213698730254">
            <property name="value" nameId="yvvu.1196866040780:21" value="true" />
          </node>
        </node>
        <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1210099219015">
          <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1210099219016">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1210099219017">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1210099224081">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210099241164">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210099227661">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1210099224082" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1210099234913">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877515098" resolveInfo="getRuntimeClassPath" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.IsNotEmptyOperation" typeId="yvix.1176501494711:7" id="1210099244480" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1210099253355">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802813175" resolveInfo="fileset" />
          <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1210099260513">
            <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1210099260514">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1210099260515">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1210099290636">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210099292934">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1210099290637" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1210099301140">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877515098" resolveInfo="getRuntimeClassPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210099267422">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811531" resolveInfo="dir" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1210099270454">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1210099270455">
                <property name="value" nameId="yvvu.1196861024475:21" value="runtime.classpath.dir" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1220027346558">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1220027346559">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220027346560">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220027352244">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220027352245" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1210175748471">
              <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1210175748472">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1210175748473">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1210175765566">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1210175765567">
                      <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210175765568">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210175765569">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1210175765570" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1210175765571">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1208952075958:7" resolveInfo="fullPath" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210175765572">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dendsWith(java%dlang%dString)%cboolean" resolveInfo="endsWith" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1210175765573">
                            <property name="value" nameId="yvor.1070475926801:3" value="jar" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1210175796345">
                <node role="templateNode" roleId="yvp6.1177093586806:2" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210175803644">
                  <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811537" resolveInfo="file" />
                  <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1220027376311">
                    <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1220027376312">
                      <property name="value" nameId="yvvu.1196861024475:21" value="runtime.classpath.jar" />
                    </node>
                    <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1220027376313">
                      <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1220027376314">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220027376315">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220027376316">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220027376317" />
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
    <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1204019666205">
      <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1204019666128" resolveInfo="main" />
    </node>
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="1204019666206">
      <link role="applicableConcept" roleId="yvp6.1168619429071:2" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
    </node>
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1204019666207">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204019666208">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204019666209">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204019666210">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1204019766356">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1204019774328">
                <property name="value" nameId="yvor.1070475926801:3" value="-languages" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204019762745">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204019666213" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1204019666212">
                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1204122772586">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1204122897112">
      <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
      <node role="importProperties" roleId="yvvu.1200425203554:21" type="yvvu.ImportPropertyNode" typeId="yvvu.1200418817047:21" id="1219161074223">
        <link role="propertyNode" roleId="yvvu.1200420354547:21" targetNodeId="1203622327796" resolveInfo="project.properties" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1204122897114">
        <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1204122903284">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802812660" resolveInfo="delete" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1204122910332">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802812669" resolveInfo="dir" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1204122914615">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1204122979357">
                <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1204122980860">
                  <property name="value" nameId="yvvu.1196861024475:21" value="" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1204122982908">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1204122982909">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1204122982910">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204122987520">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1204125002268">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210762081112">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204125025564">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1239490687913">
                                  <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvvm.1203617883391:7" resolveInfo="ICompositeComponent" />
                                  <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204125039317">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204125024172" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetParentOperation" typeId="yvim.1139613262185:16" id="1204125042257" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1204125028535">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1237389224202" resolveInfo="getChildrenTargetDir" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210762081850">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210762081851">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                </node>
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210762081852">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1204122987521">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1204122978215">
                  <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                  <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840703151">
                    <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840703152">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840703153">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840704159">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840704160">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840704161">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840704162">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840704163" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840704164">
                                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840704165">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840704166" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840704167">
                                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840704168">
                                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840704169">
                                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840704171">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840704172" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1204122925217" />
        </node>
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1204122897157">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1204122897114" resolveInfo="tmp" />
      </node>
    </node>
  </root>
  <root id="1205332397186">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1205332427647">
      <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
      <node role="importProperties" roleId="yvvu.1200425203554:21" type="yvvu.ImportPropertyNode" typeId="yvvu.1200418817047:21" id="1219161080374">
        <link role="propertyNode" roleId="yvvu.1200420354547:21" targetNodeId="1203622327796" resolveInfo="project.properties" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1205332427649">
        <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1205332549692">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802812872" resolveInfo="echo" />
          <node role="internalText" roleId="yvvu.1197724814674:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1205332573117">
            <property name="value" nameId="yvvu.1196861024475:21" value="message" />
            <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1219156936385">
              <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1219156936386">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219156936387">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219156939399">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219156939490">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219156939400" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1219156941691">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1205340508811:7" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1205332586060" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1205332624226">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802812878" resolveInfo="file" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1205332632352">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1205332632353">
                <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1205332632354">
                  <property name="value" nameId="yvvu.1196861024475:21" value="" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1205332632355">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1205332632356">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1205332632357">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1205332632358">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1205332632359">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210762094649">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1226935983759">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1205332632360">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1205332632361" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1205332632362">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877333777" resolveInfo="getPath" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1226935988751">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~File%dgetPath()%cjava%dlang%dString" resolveInfo="getPath" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210762095355">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210762095356">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                </node>
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210762095357">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1205332632363">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1205332632364">
                  <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                  <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840717718">
                    <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840717719">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840717720">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840718968">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840718969">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840718970">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840718971">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840718972" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840718973">
                                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840718974">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840718975" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840718976">
                                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840718977">
                                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840718978">
                                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840718979">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840718980" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1225993322930">
              <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1225993322931">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1225993322932">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1225993352225">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1225993360887">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1225993352439">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1225993352226" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1225993358906">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1205340441197:7" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1225993364525" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1240852452097">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802812873" resolveInfo="append" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.BooleanLiteral" typeId="yvvu.1196865966685:21" id="1240852458337">
              <property name="value" nameId="yvvu.1196866040780:21" value="true" />
            </node>
            <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1240852461261">
              <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1240852461262">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240852461263">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240852468253">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240852468309">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240852468254" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1240852470754">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1240852090407:7" resolveInfo="append" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1205332427678">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1205332427649" resolveInfo="tmp" />
      </node>
    </node>
  </root>
  <root id="1210779805988">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1210779845344">
      <property name="name" nameId="yvnu.1169194664001:0" value="p" />
      <node role="importProperties" roleId="yvvu.1200425203554:21" type="yvvu.ImportPropertyNode" typeId="yvvu.1200418817047:21" id="1219161017517">
        <link role="propertyNode" roleId="yvvu.1200420354547:21" targetNodeId="1203622327796" resolveInfo="project.properties" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1210779845345">
        <property name="name" nameId="yvnu.1169194664001:0" value="t" />
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1210779871901">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802811777" resolveInfo="antcall" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210779877482">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811782" resolveInfo="target" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.TargetReferencePropertyValueExpression" typeId="yvvu.1201701678947:21" id="1230232959468">
              <link role="declaration" roleId="yvvu.1201701736447:21" targetNodeId="1210779845345" resolveInfo="t" />
              <node role="referenceMacro$link_attribute$declaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1230233294690">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1230233294691">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1230233294692">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1230233342639">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1230233342827">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1230233342640" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1230233348210">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1224178284812:7" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210841561063">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811778" resolveInfo="inheritall" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.BooleanLiteral" typeId="yvvu.1196865966685:21" id="1210857896130">
              <property name="value" nameId="yvvu.1196866040780:21" value="true" />
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1210779886377" />
          <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1210844788983">
            <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802811784" resolveInfo="param" />
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210844793018">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814759" resolveInfo="name" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1210844794160">
                <property name="value" nameId="yvvu.1196861024475:21" value="deploy.dir" />
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210844799383">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814771" resolveInfo="value" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1210844803106">
                <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840629554">
                  <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840629555">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840629556">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840631244">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840631245">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840631246">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840631247">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840631248" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840631249">
                                <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840651675">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840650740" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840656045">
                                    <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840656046">
                                      <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840659495">
                                        <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840631253">
                              <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840631254" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1210786006100">
            <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802811784" resolveInfo="param" />
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210786010789">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814759" resolveInfo="name" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1210786015338">
                <property name="value" nameId="yvvu.1196861024475:21" value="input.dir" />
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210786016871">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814771" resolveInfo="value" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1210846061739">
                <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1210846061740">
                  <property name="value" nameId="yvvu.1196861024475:21" value="input.dir" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1210846061741">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1210846061742">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1210846061743">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1210846061744">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1210846061745">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210847072467">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210846061746">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1210846061747" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1210846061748">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1237389224202" resolveInfo="getChildrenTargetDir" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210847075095">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210847080455">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                </node>
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210847086942">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210846061749">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1210846061750">
                  <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                  <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840665833">
                    <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840665834">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840665835">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840667544">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840667545">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840667546">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840667547">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840667548" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840667549">
                                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840667550">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840667551" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840667552">
                                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840667553">
                                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840667554">
                                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840667555">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840667556" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1210786032042">
            <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802811784" resolveInfo="param" />
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210786036685">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814759" resolveInfo="name" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1210786047658">
                <property name="value" nameId="yvvu.1196861024475:21" value="output.dir" />
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1210786053020">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814771" resolveInfo="value" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1210846095005">
                <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1210846095006">
                  <property name="value" nameId="yvvu.1196861024475:21" value="output.dir" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1210846095007">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1210846095008">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1210846095009">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1210846095010">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1210846095011">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210847099192">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1210846095012">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1210846095013" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1210846095014">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877286282" resolveInfo="getOutput" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1210847099898">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210847099899">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                </node>
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210847099900">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1210846095015">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1210846095016">
                  <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                  <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840670840">
                    <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840670841">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840670842">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840672521">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840672522">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840672523">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840672524">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840672525" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840672526">
                                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840672527">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840672528" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840672529">
                                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840672530">
                                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840672531">
                                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840672532">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840672533" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1229973818309">
            <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802811784" resolveInfo="param" />
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1229973821810">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814759" resolveInfo="name" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1229973824546">
                <property name="value" nameId="yvvu.1196861024475:21" value="basedir" />
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1229973828859">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814771" resolveInfo="value" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1229973836236">
                <property name="value" nameId="yvvu.1196861024475:21" value="${basedir}" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1210779856505">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1210779845345" resolveInfo="t" />
      </node>
    </node>
  </root>
  <root id="1212487275733">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1212487314609">
      <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1234280204792">
        <property name="name" nameId="yvnu.1169194664001:0" value="toCall" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1212487314610">
        <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1212487420057">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802811777" resolveInfo="antcall" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1212487424308">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811782" resolveInfo="target" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.TargetReferencePropertyValueExpression" typeId="yvvu.1201701678947:21" id="1234280247584">
              <property name="fullName" nameId="yvvu.1230225881769:21" value="toCall@null" />
              <link role="declaration" roleId="yvvu.1201701736447:21" targetNodeId="1234280204792" resolveInfo="toCall" />
              <node role="referenceMacro$link_attribute$declaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1234280254373">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1234280254374">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234280254375">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234280260529">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234280260530">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1234280260531" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1234280260532">
                          <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1212487373195" resolveInfo="ReplaceTargets" />
                          <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234280260533" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1212487440455" />
        </node>
      </node>
    </node>
  </root>
  <root id="1216902420773">
    <node role="cycle" roleId="yvvt.1216904202472:0" type="yvvt.Cycle" typeId="yvvt.1216904128547:0" id="1217505524256">
      <property name="name" nameId="yvnu.1169194664001:0" value="cycle.name" />
      <node role="dependency" roleId="yvvt.1216913255468:0" type="yvvt.CycleReference" typeId="yvvt.1216913230927:0" id="7857794759871909110">
        <link role="cycle" roleId="yvvt.1216913241580:0" targetNodeId="1217505524256" resolveInfo="cycle.name" />
        <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="7857794759871909113">
          <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="7857794759871909114">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7857794759871909115">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7857794759871909116">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871909120">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7857794759871909117" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="7857794759871909127">
                    <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.7857794759871898776:7" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="referenceMacro$link_attribute$cycle" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="7857794759871909128">
          <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="7857794759871909129">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7857794759871909130">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7857794759871909146">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871909148">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="7857794759871909147" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="7857794759871909152">
                    <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="7857794759871909108" resolveInfo="ModuleCycleToCycle" />
                    <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871909154">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7857794759871909155" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7857794759871909156">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.7857794759871898775:7" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="classpath" roleId="yvvt.1218645689530:0" type="yvvt.PathHolder" typeId="yvvt.1216907456863:0" id="1220024346861">
        <property name="path" nameId="yvvt.1216907465733:0" value="path" />
        <link role="macro" roleId="yvvt.1219418823334:0" targetNodeId="1219419181122" resolveInfo="macro" />
        <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1220033499293">
          <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1220033499294">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220033499295">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220033501991">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871720082">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220033501992">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220033501993" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220033501994">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1218646038565" resolveInfo="getClassPath" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.SortOperation" typeId="yvix.1205679737078:7" id="7857794759871720090">
                    <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="7857794759871720091">
                      <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7857794759871720092">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7857794759871720103">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871720107">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="7857794759871720104">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7857794759871720093" resolveInfo="it" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="7857794759871720122">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1208952075958:7" resolveInfo="fullPath" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="7857794759871720093">
                        <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="7857794759871720094" />
                      </node>
                    </node>
                    <node role="ascending" roleId="yvix.1205679832066:7" type="yvix.SortDirection" typeId="yvix.1178286324487:7" id="7857794759871720095">
                      <property name="value" nameId="yvor.1068580123138:3" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1220024346862">
          <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1220024346863">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220024346864">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220024346865">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220024346866">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220024346867">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220024346868" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220024346869">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1219229006340:7" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1220024346870" />
                </node>
              </node>
            </node>
          </node>
          <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1220024346871">
            <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvvt.PathHolder" typeId="yvvt.1216907456863:0" id="1220027647028">
              <property name="path" nameId="yvvt.1216907465733:0" value="path" />
              <node role="propertyMacro$property_attribute$path" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1220027647029">
                <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1220027647030">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220027647031">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220027647032">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220027647033">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220027647034" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220027647035">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1219231432401" resolveInfo="getValue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="referenceMacro$link_attribute$macro" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1220024346880">
          <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1220024346881">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220024346882">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220024346883">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220024346884">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1220024346885" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1220024346886">
                    <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1219771046960" resolveInfo="MacroToMacro" />
                    <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220024346887">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220024346888" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220024346889">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1219229006340:7" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="propertyMacro$property_attribute$path" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1220027627424">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1220027627425">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220027627426">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220027630694">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220027631613">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220027630695" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220027636236">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1219770843283" resolveInfo="getPathWithoutMacro" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1217505538282">
        <link role="mappingLabel" roleId="yvp6.1200912223215:2" targetNodeId="7857794759871909108" resolveInfo="ModuleCycleToCycle" />
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1217505538283">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217505538284">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1217505553179">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217517970749">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1217505553180" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1217517971089">
                  <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1217517833832:7" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1217517606638">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1217517606639">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217517606640">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4460123876060676457">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676461">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4460123876060676458" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="4460123876060676467">
                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="moduleDescription" roleId="yvvt.1216904141894:0" type="yvvt.ModuleDescription" typeId="yvvt.1216745525843:0" id="1217518452081">
        <property name="name" nameId="yvnu.1169194664001:0" value="module.name" />
        <node role="classpath" roleId="yvvt.1216907553591:0" type="yvvt.PathHolder" typeId="yvvt.1216907456863:0" id="1220024353667">
          <property name="path" nameId="yvvt.1216907465733:0" value="path" />
          <link role="macro" roleId="yvvt.1219418823334:0" targetNodeId="1219419181122" resolveInfo="macro" />
          <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1220033533878">
            <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1220033533879">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220033533880">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220033536326">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871720312">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220033536327">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220033536328">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220033536329" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220033536330">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1217524800588:7" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220033536331">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877515083" resolveInfo="getClassPath" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.SortOperation" typeId="yvix.1205679737078:7" id="7857794759871720320">
                      <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="7857794759871720321">
                        <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7857794759871720322">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7857794759871720333">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871720337">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="7857794759871720334">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7857794759871720323" resolveInfo="it" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="7857794759871720352">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1208952075958:7" resolveInfo="fullPath" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="7857794759871720323">
                          <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="7857794759871720324" />
                        </node>
                      </node>
                      <node role="ascending" roleId="yvix.1205679832066:7" type="yvix.SortDirection" typeId="yvix.1178286324487:7" id="7857794759871720325">
                        <property name="value" nameId="yvor.1068580123138:3" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1220024353668">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1220024353669">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220024353670">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220024353671">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220024353672">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220024353673">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220024353674" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220024353675">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1219229006340:7" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1220024353676" />
                  </node>
                </node>
              </node>
            </node>
            <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1220024353677">
              <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvvt.PathHolder" typeId="yvvt.1216907456863:0" id="1220028043243">
                <property name="path" nameId="yvvt.1216907465733:0" value="path" />
                <node role="propertyMacro$property_attribute$path" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1220028043244">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1220028043245">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220028043246">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220028043247">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220028043248">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220028043249" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220028043250">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1219231432401" resolveInfo="getValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="referenceMacro$link_attribute$macro" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1220024353686">
            <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1220024353687">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220024353688">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220024353689">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220024353690">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1220024353691" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1220024353692">
                      <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1219771046960" resolveInfo="MacroToMacro" />
                      <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220024353693">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220024353694" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220024353695">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1219229006340:7" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="propertyMacro$property_attribute$path" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1220027676468">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1220027676469">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220027676470">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220027679054">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220027687617">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220027685703" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220027688636">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1219770843283" resolveInfo="getPathWithoutMacro" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="sources" roleId="yvvt.1216907278096:0" type="yvvt.PathHolder" typeId="yvvt.1216907456863:0" id="1220024351651">
          <property name="path" nameId="yvvt.1216907465733:0" value="path" />
          <link role="macro" roleId="yvvt.1219418823334:0" targetNodeId="1219419181122" resolveInfo="macro" />
          <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1220033518362">
            <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1220033518363">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220033518364">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220033521673">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871720262">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220033521674">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220033521675">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220033521676" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220033521677">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1217524800588:7" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220033521678">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1216909568805" resolveInfo="getSources" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.SortOperation" typeId="yvix.1205679737078:7" id="7857794759871720270">
                      <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="7857794759871720271">
                        <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7857794759871720272">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7857794759871720283">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871720287">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="7857794759871720284">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7857794759871720273" resolveInfo="it" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="7857794759871720302">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1208952075958:7" resolveInfo="fullPath" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="7857794759871720273">
                          <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="7857794759871720274" />
                        </node>
                      </node>
                      <node role="ascending" roleId="yvix.1205679832066:7" type="yvix.SortDirection" typeId="yvix.1178286324487:7" id="7857794759871720275">
                        <property name="value" nameId="yvor.1068580123138:3" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1220024351652">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1220024351653">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220024351654">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220024351655">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220024351656">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220024351657">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220024351658" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220024351659">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1219229006340:7" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1220024351660" />
                  </node>
                </node>
              </node>
            </node>
            <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1220024351661">
              <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvvt.PathHolder" typeId="yvvt.1216907456863:0" id="1220027968143">
                <property name="path" nameId="yvvt.1216907465733:0" value="path" />
                <node role="propertyMacro$property_attribute$path" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1220027968144">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1220027968145">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220027968146">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220027968147">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220027968148">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220027968149" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220027968150">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1219231432401" resolveInfo="getValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="referenceMacro$link_attribute$macro" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1220024351670">
            <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1220024351671">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220024351672">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220024351673">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220024351674">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1220024351675" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1220024351676">
                      <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1219771046960" resolveInfo="MacroToMacro" />
                      <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220024351677">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220024351678" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220024351679">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1219229006340:7" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="propertyMacro$property_attribute$path" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1220027664151">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1220027664152">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220027664153">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220027667096">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220027668317">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220027667097" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220027671083">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1219770843283" resolveInfo="getPathWithoutMacro" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="classes" roleId="yvvt.1216907884130:0" type="yvvt.PathHolder" typeId="yvvt.1216907456863:0" id="1217518452083">
          <property name="path" nameId="yvvt.1216907465733:0" value="module.classes" />
          <node role="propertyMacro$property_attribute$path" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1217518689737">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1217518689738">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217518689739">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1217518694108">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217518695530">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217524981320">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1217518694109" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1217524982666">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1217524800588:7" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1217518701291">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1216909316753" resolveInfo="getClassesGen" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1217518508069">
          <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1217518508070">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217518508071">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1217518522359">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871720140">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217518523990">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1217518522360" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1217524956050">
                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1217524819628:7" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.SortOperation" typeId="yvix.1205679737078:7" id="7857794759871720156">
                    <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="7857794759871720157">
                      <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7857794759871720158">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7857794759871720177">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871720223">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871720181">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="7857794759871720178">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7857794759871720159" resolveInfo="it" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7857794759871720204">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1217524800588:7" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="7857794759871720244">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="7857794759871720159">
                        <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="7857794759871720160" />
                      </node>
                    </node>
                    <node role="ascending" roleId="yvix.1205679832066:7" type="yvix.SortDirection" typeId="yvix.1178286324487:7" id="7857794759871720161">
                      <property name="value" nameId="yvor.1068580123138:3" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1217518534456">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1217518534457">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217518534458">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1217518538881">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1235479324332">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217518541055">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217524964914">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1217518538882" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1217524967857">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1217524800588:7" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1217518543645">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1235479327056">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1235479337611">
                      <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                    </node>
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1235479328345">
                      <property name="value" nameId="yvor.1070475926801:3" value="_" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="1216902420776">
      <link role="applicableConcept" roleId="yvp6.1168619429071:2" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
    </node>
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1216902460851">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1216902460852">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1216902460853">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1216902478357">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1216907068833">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1216902478535">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1216902478358" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1216902480872">
                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1216907069895">
                <property name="value" nameId="yvor.1070475926801:3" value="-compile" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="macro" roleId="yvvt.1219418803994:0" type="yvvt.Macros" typeId="yvvt.1219418780635:0" id="1219419181122">
      <property name="name" nameId="yvnu.1169194664001:0" value="macro" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1219419191023">
        <link role="mappingLabel" roleId="yvp6.1200912223215:2" targetNodeId="1219771046960" resolveInfo="MacroToMacro" />
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1219419191024">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219419191025">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219419196345">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871716775">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219419196446">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219419196346" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1234970032250">
                    <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1234969173075:7" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.ComparatorSortOperation" typeId="yvix.1209727891789:7" id="7857794759871716780">
                  <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="7857794759871716781">
                    <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7857794759871716782">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7857794759871719757">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871719785">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871719761">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="7857794759871719758">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7857794759871716783" resolveInfo="a" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="7857794759871719775">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="7857794759871719797">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dcompareTo(java%dlang%dString)%cint" resolveInfo="compareTo" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871719817">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="7857794759871719806">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7857794759871716785" resolveInfo="b" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="7857794759871719830">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="7857794759871716783">
                      <property name="name" nameId="yvnu.1169194664001:0" value="a" />
                      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="7857794759871716784" />
                    </node>
                    <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="7857794759871716785">
                      <property name="name" nameId="yvnu.1169194664001:0" value="b" />
                      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="7857794759871716786" />
                    </node>
                  </node>
                  <node role="ascending" roleId="yvix.1209727996925:7" type="yvix.SortDirection" typeId="yvix.1178286324487:7" id="7857794759871716787">
                    <property name="value" nameId="yvor.1068580123138:3" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1219419214200">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219419214201">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219419214202">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219419218063">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219419218902">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219419218064" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1234970045128">
                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="commonClasspath" roleId="yvvt.1218717471247:0" type="yvvt.PathHolder" typeId="yvvt.1216907456863:0" id="1220032406824">
      <property name="path" nameId="yvvt.1216907465733:0" value="path" />
      <link role="macro" roleId="yvvt.1219418823334:0" targetNodeId="1219419181122" resolveInfo="macro" />
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1220033475615">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1220033475616">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220033475617">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220033479015">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871719839">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvim.StaticConceptMethodCall" typeId="yvim.1206019730951:16" id="1220033479016">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1218716245482" resolveInfo="getMPSClassPath" />
                  <link role="concept" roleId="yvim.1206019820684:16" targetNodeId="yvvm.1216905728562:7" resolveInfo="ModuleCycle" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220033479017">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220033479018" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220033479019">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877230696" resolveInfo="getPath" />
                    </node>
                  </node>
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220033479020">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220033479021">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220033479022" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1220033479023">
                        <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1220033479024">
                          <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1220033479025">
                            <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                          </node>
                        </node>
                        <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Root" typeId="yvim.1144101597970:16" id="1220033479026" />
                        <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Inclusion" typeId="yvim.1144100932627:16" id="1220033479027" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1234970040386">
                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1234969173075:7" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.SortOperation" typeId="yvix.1205679737078:7" id="7857794759871719847">
                  <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="7857794759871719848">
                    <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7857794759871719849">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7857794759871719860">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871719864">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="7857794759871719861">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7857794759871719850" resolveInfo="it" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="7857794759871719879">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1208952075958:7" resolveInfo="fullPath" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="7857794759871719850">
                      <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="7857794759871719851" />
                    </node>
                  </node>
                  <node role="ascending" roleId="yvix.1205679832066:7" type="yvix.SortDirection" typeId="yvix.1178286324487:7" id="7857794759871719852">
                    <property name="value" nameId="yvor.1068580123138:3" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1220032434960">
        <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1220032434961">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220032434962">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220032441784">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220032474349">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220032446489">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220032441785" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220032473294">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1219229006340:7" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1220032476216" />
              </node>
            </node>
          </node>
        </node>
        <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1220032517918">
          <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvvt.PathHolder" typeId="yvvt.1216907456863:0" id="1220032526911">
            <property name="path" nameId="yvvt.1216907465733:0" value="path" />
            <node role="propertyMacro$property_attribute$path" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1220032526912">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1220032526913">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220032526914">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220032526915">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220032526916">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220032531983" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220032526918">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1219231432401" resolveInfo="getValue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="referenceMacro$link_attribute$macro" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1220032480104">
        <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1220032480105">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220032480106">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220032489480">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220032489481">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1220032489482" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1220032489483">
                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1219771046960" resolveInfo="MacroToMacro" />
                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220032489484">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220032489485" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220032489486">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1219229006340:7" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="propertyMacro$property_attribute$path" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1220032496896">
        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1220032496897">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220032496898">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220032500214">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220032500443">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220032500215" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220032511698">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1219770843283" resolveInfo="getPathWithoutMacro" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="propertyMacro$property_attribute$basedir" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="7857794759872078762">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="7857794759872078763">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7857794759872078764">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="7857794759872079003">
            <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759872100371">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759872079007">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7857794759872079006" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="7857794759872100370">
                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1229522370639:7" resolveInfo="scriptsFolder" />
                </node>
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="7857794759872100375" />
            </node>
            <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7857794759872079005">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="7857794759872100376">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="7857794759872100378">
                  <property name="value" nameId="yvor.1070475926801:3" value=".." />
                </node>
              </node>
            </node>
            <node role="ifFalseStatement" roleId="yvor.1082485599094:3" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="7857794759872100379">
              <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7857794759872100380">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="7857794759872100381">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="7857794759872100383">
                    <property name="value" nameId="yvor.1070475926801:3" value="." />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1217435006859">
    <node role="codeBlock" roleId="yvp6.1195501105008:2" type="yvp6.MappingScript_CodeBlock" typeId="yvp6.1195500722856:2" id="1217435006860">
      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217435006861">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1217435066079">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1217435066080">
            <property name="name" nameId="yvnu.1169194664001:0" value="layouts" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1217435066081">
              <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217435073967">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo0.ConceptFunctionParameter_model" typeId="yvo0.1161622665029:0" id="1217435073968" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Model_RootsOperation" typeId="yvim.1171315804604:16" id="1217435073969">
                <link role="concept" roleId="yvim.1171315804605:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1217435082151">
          <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1217435082152">
            <property name="name" nameId="yvnu.1169194664001:0" value="layout" />
          </node>
          <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217435092002">
            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217435066080" resolveInfo="layouts" />
          </node>
          <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217435082154">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1217524304849">
              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217524304850">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ContinueStatement" typeId="yvor.1082113931046:3" id="1217524326403" />
              </node>
              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1217524321078">
                <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217524321959">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1217524321960">
                    <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1217435082152" resolveInfo="layout" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1217524321961">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1216901049448:7" resolveInfo="compile" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1217435213517">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1217435213518">
                <property name="name" nameId="yvnu.1169194664001:0" value="modules" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1217435213519">
                  <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217435223370">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1217435223371">
                    <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1217435082152" resolveInfo="layout" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetDescendantsOperation" typeId="yvim.1171305280644:16" id="1217518250157">
                    <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1217518250158">
                      <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1217518250159">
                        <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1217435252226">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1217435252227">
                <property name="name" nameId="yvnu.1169194664001:0" value="map" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="1217435252228">
                  <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1217435256843">
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~IModule" resolveInfo="IModule" />
                  </node>
                  <node role="valueType" roleId="yvix.1197683475734:7" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1217435274711">
                    <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
                  </node>
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217435283847">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvix.LinkedHashMapCreator" typeId="yvix.1240216724530:7" id="6344029876723370042">
                    <node role="keyType" roleId="yvix.1197687026896:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="6344029876723370043">
                      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~IModule" resolveInfo="IModule" />
                    </node>
                    <node role="valueType" roleId="yvix.1197687035757:7" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="6344029876723370044">
                      <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.SingleLineComment" typeId="yvor.6329021646629104954:3" id="7376433222636453365">
              <node role="commentPart" roleId="yvor.6329021646629175155:3" type="yvor.TextCommentPart" typeId="yvor.6329021646629104957:3" id="7376433222636453366">
                <property name="text" nameId="yvor.6329021646629104958:3" value="fill map" />
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1217501124750">
              <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1217501124751">
                <property name="name" nameId="yvnu.1169194664001:0" value="module" />
              </node>
              <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217501134490">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217435213518" resolveInfo="modules" />
              </node>
              <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217501124753">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1217501142411">
                  <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1217501142412">
                    <property name="name" nameId="yvnu.1169194664001:0" value="imodule" />
                    <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1217501142413">
                      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~IModule" resolveInfo="IModule" />
                    </node>
                    <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217501151348">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1217501150278">
                        <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1217501124751" resolveInfo="module" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1217501156770">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877515148" resolveInfo="getModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="6744657896245398925">
                  <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="6744657896245398926">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="6744657896245398943">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="6744657896245398945">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="6744657896245398944" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_ShowErrorMessage" typeId="yvp3.1217960179967:0" id="6744657896245398949">
                          <node role="messageText" roleId="yvp3.1217960314448:0" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="6744657896245398978">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="6744657896245398981">
                              <property name="value" nameId="yvor.1070475926801:3" value="." />
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="6744657896245398953">
                              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="6744657896245398951">
                                <property name="value" nameId="yvor.1070475926801:3" value="Missing module " />
                              </node>
                              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="6744657896245398963">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="6744657896245398959">
                                  <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1217501124751" resolveInfo="module" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="6744657896245398972">
                                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="referenceNode" roleId="yvp3.1217960407512:0" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="6744657896245398952">
                            <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1217501124751" resolveInfo="module" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ContinueStatement" typeId="yvor.1082113931046:3" id="6744657896245398934" />
                  </node>
                  <node role="condition" roleId="yvor.1068580123160:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="6744657896245398930">
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="6744657896245398933" />
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="6744657896245398929">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217501142412" resolveInfo="imodule" />
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1218652391648">
                  <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1218652391649">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ContinueStatement" typeId="yvor.1082113931046:3" id="1218652405712" />
                  </node>
                  <node role="condition" roleId="yvor.1068580123160:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="1224765255174">
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="1224765257893">
                      <node role="expression" roleId="yvor.1079359253376:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1224765285208">
                        <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224765286322">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1224765286323">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217501142412" resolveInfo="imodule" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1224765286324">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~IModule%disCompileInMPS()%cboolean" resolveInfo="isCompileInMPS" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="1224765251300">
                      <node role="expression" roleId="yvor.1079359253376:3" type="yvor.InstanceOfExpression" typeId="yvor.1081256982272:3" id="1224765252169">
                        <node role="classType" roleId="yvor.1081256993305:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1224765252170">
                          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~DevKit" resolveInfo="DevKit" />
                        </node>
                        <node role="leftExpression" roleId="yvor.1081256993304:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1224765252171">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217501142412" resolveInfo="imodule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1217501185039">
                  <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1217501185040">
                    <property name="name" nameId="yvnu.1169194664001:0" value="modulesForIModule" />
                    <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1217501185041">
                      <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
                    </node>
                    <node role="initializer" roleId="yvor.1068431790190:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1217501203091">
                      <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217501202643">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217435252227" resolveInfo="map" />
                      </node>
                      <node role="key" roleId="yvix.1197932525128:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217501206115">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217501142412" resolveInfo="imodule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1217501209917">
                  <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217501209918">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1217501225083">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1217501233172">
                        <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217501236604">
                          <node role="creator" roleId="yvor.1145553007750:3" type="yvim.SNodeListCreator" typeId="yvim.1145567426890:16" id="1217501236605">
                            <node role="createdType" roleId="yvim.1145567471833:16" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1217501236606">
                              <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
                            </node>
                          </node>
                        </node>
                        <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217501225084">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217501185040" resolveInfo="modulesForIModule" />
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1217501245088">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1217501253316">
                        <node role="lValue" roleId="yvor.1068498886295:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1217501246502">
                          <node role="key" roleId="yvix.1197932525128:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217501249818">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217501142412" resolveInfo="imodule" />
                          </node>
                          <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217501245089">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217435252227" resolveInfo="map" />
                          </node>
                        </node>
                        <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217501258013">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217501185040" resolveInfo="modulesForIModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="condition" roleId="yvor.1068580123160:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1217501215543">
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1217501217386" />
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217501212980">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217501185040" resolveInfo="modulesForIModule" />
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1217501262435">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217501263813">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217501262436">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217501185040" resolveInfo="modulesForIModule" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.AddElementOperation" typeId="yvix.1160612413312:7" id="1217501267286">
                      <node role="argument" roleId="yvix.1160612519549:7" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1217501272139">
                        <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1217501124751" resolveInfo="module" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.SingleLineComment" typeId="yvor.6329021646629104954:3" id="7376433222636453603">
              <node role="commentPart" roleId="yvor.6329021646629175155:3" type="yvor.TextCommentPart" typeId="yvor.6329021646629104957:3" id="7376433222636453604">
                <property name="text" nameId="yvor.6329021646629104958:3" value="calculate module cycles" />
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="8735618128970548531">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="8735618128970548532">
                <property name="name" nameId="yvnu.1169194664001:0" value="modulesToProcess" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.SetType" typeId="yvix.1226511727824:7" id="8735618128970548533">
                  <node role="elementType" roleId="yvix.1226511765987:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="8735618128970548534">
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~IModule" resolveInfo="IModule" />
                  </node>
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8735618128970548535">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="8735618128970548536">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217435252227" resolveInfo="map" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetKeysOperation" typeId="yvix.1201872418428:7" id="8735618128970548537" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="8735618128970550279">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="8735618128970550280">
                <property name="name" nameId="yvnu.1169194664001:0" value="modulesCopy" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.SetType" typeId="yvix.1226511727824:7" id="8735618128970550281">
                  <node role="elementType" roleId="yvix.1226511765987:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="8735618128970558492">
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~IModule" resolveInfo="IModule" />
                  </node>
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="8735618128970558497">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvix.LinkedHashSetCreator" typeId="yvix.1240217271293:7" id="8735618128970576812" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8735618128970576803">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8735618128970576805">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="8735618128970576804">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="8735618128970550280" resolveInfo="modulesCopy" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.AddAllSetElementsOperation" typeId="yvix.1226592602759:7" id="8735618128970576809">
                  <node role="argument" roleId="yvix.1226592623721:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8735618128970576843">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="8735618128970576844">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="8735618128970548532" resolveInfo="modulesToProcess" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.SortOperation" typeId="yvix.1205679737078:7" id="8735618128970576845">
                      <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="8735618128970576846">
                        <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8735618128970576847">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8735618128970576848">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8735618128970576849">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="8735618128970576850">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="8735618128970576852" resolveInfo="it" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="8735618128970576851">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~IModule%dgetModuleFqName()%cjava%dlang%dString" resolveInfo="getModuleFqName" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="8735618128970576852">
                          <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="8735618128970576853" />
                        </node>
                      </node>
                      <node role="ascending" roleId="yvix.1205679832066:7" type="yvix.SortDirection" typeId="yvix.1178286324487:7" id="8735618128970576854">
                        <property name="value" nameId="yvor.1068580123138:3" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1217435158153">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1217435158154">
                <property name="name" nameId="yvnu.1169194664001:0" value="sm" />
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="4460123876060673154">
                  <node role="expression" roleId="yvor.1070534934092:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217435158156">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1217435158157">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="dt0d.~StronglyConnectedModules" resolveInfo="StronglyConnectedModules" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="dt0d.~StronglyConnectedModules%dgetInstance()%cjetbrains%dmps%dmake%ddependencies%dStronglyConnectedModules" resolveInfo="getInstance" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1217435158158">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="dt0d.~StronglyConnectedModules%dgetStronglyConnectedComponents(java%dutil%dSet)%cjava%dutil%dList" resolveInfo="getStronglyConnectedComponents" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="8735618128970576874">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="8735618128970550280" resolveInfo="modulesCopy" />
                      </node>
                    </node>
                  </node>
                  <node role="type" roleId="yvor.1070534934091:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="4460123876060673157">
                    <node role="elementType" roleId="yvix.1151688676805:7" type="yvix.SetType" typeId="yvix.1226511727824:7" id="4460123876060675624">
                      <node role="elementType" roleId="yvix.1226511765987:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4460123876060675626">
                        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~IModule" resolveInfo="IModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="1217436133890">
                  <node role="elementType" roleId="yvix.1151688676805:7" type="yvix.SetType" typeId="yvix.1226511727824:7" id="4460123876060673152">
                    <node role="elementType" roleId="yvix.1226511765987:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4460123876060673153">
                      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~IModule" resolveInfo="IModule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.SingleLineComment" typeId="yvor.6329021646629104954:3" id="7376433222636453291">
              <node role="commentPart" roleId="yvor.6329021646629175155:3" type="yvor.TextCommentPart" typeId="yvor.6329021646629104957:3" id="7376433222636453292">
                <property name="text" nameId="yvor.6329021646629104958:3" value="say to all modules it's cycle" />
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="7857794759871898717">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="7857794759871898718">
                <property name="name" nameId="yvnu.1169194664001:0" value="lastCycle" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="7857794759871898719">
                  <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1216905728562:7" resolveInfo="ModuleCycle" />
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="7857794759871898909" />
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="4460123876060676379">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="4460123876060676380">
                <property name="name" nameId="yvnu.1169194664001:0" value="result" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="4460123876060676381">
                  <node role="elementType" roleId="yvix.1151688676805:7" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="4460123876060676383">
                    <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1216905728562:7" resolveInfo="ModuleCycle" />
                  </node>
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4460123876060676386">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvix.ListCreatorWithInit" typeId="yvix.1160600644654:7" id="4460123876060676389">
                    <node role="elementType" roleId="yvix.1237721435807:7" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="4460123876060676393">
                      <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1216905728562:7" resolveInfo="ModuleCycle" />
                    </node>
                    <node role="initSize" roleId="yvix.1562299158920737514:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676400">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4460123876060676398">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217435158154" resolveInfo="sm" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="4460123876060676405" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1217436166399">
              <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1217436166400">
                <property name="name" nameId="yvnu.1169194664001:0" value="moduleSet" />
              </node>
              <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217436182913">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217435158154" resolveInfo="sm" />
              </node>
              <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217436166402">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1217500939541">
                  <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1217500939542">
                    <property name="name" nameId="yvnu.1169194664001:0" value="cycle" />
                    <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1217500939543">
                      <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1216905728562:7" resolveInfo="ModuleCycle" />
                    </node>
                    <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217500961877">
                      <node role="creator" roleId="yvor.1145553007750:3" type="yvim.SNodeCreator" typeId="yvim.1180636770613:16" id="1217500961878">
                        <node role="createdType" roleId="yvim.1180636770616:16" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1217500961879">
                          <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1216905728562:7" resolveInfo="ModuleCycle" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1217524433691">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676407">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4460123876060676286">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4460123876060676380" resolveInfo="result" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.AddElementOperation" typeId="yvix.1160612413312:7" id="4460123876060676411">
                      <node role="argument" roleId="yvix.1160612519549:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4460123876060676413">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217500939542" resolveInfo="cycle" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.SingleLineComment" typeId="yvor.6329021646629104954:3" id="7857794759871909099">
                  <node role="commentPart" roleId="yvor.6329021646629175155:3" type="yvor.TextCommentPart" typeId="yvor.6329021646629104957:3" id="7857794759871909100">
                    <property name="text" nameId="yvor.6329021646629104958:3" value="add dependency to the previous cycle so that compilation order would be preserved" />
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="7857794759871898899">
                  <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7857794759871898900">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="7857794759871898912">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="7857794759871898913">
                        <property name="name" nameId="yvnu.1169194664001:0" value="ref" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="7857794759871898914">
                          <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.7857794759871898774:7" resolveInfo="ModuleCycleReference" />
                        </node>
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="7857794759871898916">
                          <node role="creator" roleId="yvor.1145553007750:3" type="yvim.SNodeCreator" typeId="yvim.1180636770613:16" id="7857794759871909052">
                            <node role="createdType" roleId="yvim.1180636770616:16" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="7857794759871909053">
                              <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.7857794759871898774:7" resolveInfo="ModuleCycleReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7857794759871909055">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871909062">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871909057">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7857794759871909056">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7857794759871898913" resolveInfo="ref" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7857794759871909061">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.7857794759871898775:7" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Link_SetTargetOperation" typeId="yvim.1140725362528:16" id="7857794759871909066">
                          <node role="linkTarget" roleId="yvim.1140725362529:16" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7857794759871909069">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7857794759871898718" resolveInfo="lastCycle" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7857794759871909072">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871909079">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7857794759871909074">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7857794759871909073">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217500939542" resolveInfo="cycle" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="7857794759871909078">
                            <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.7857794759871898776:7" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvix.AddElementOperation" typeId="yvix.1160612413312:7" id="7857794759871909083">
                          <node role="argument" roleId="yvix.1160612519549:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7857794759871909087">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7857794759871898913" resolveInfo="ref" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="condition" roleId="yvor.1068580123160:3" type="yvor.NotEqualsExpression" typeId="yvor.1073239437375:3" id="7857794759871898904">
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="7857794759871898907" />
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7857794759871898903">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7857794759871898718" resolveInfo="lastCycle" />
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7857794759871909092">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="7857794759871909094">
                    <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7857794759871909097">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217500939542" resolveInfo="cycle" />
                    </node>
                    <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7857794759871909093">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7857794759871898718" resolveInfo="lastCycle" />
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="654511802473317810">
                  <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="654511802473317811">
                    <property name="name" nameId="yvnu.1169194664001:0" value="sortedModuleSet" />
                    <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.SequenceType" typeId="yvix.1151689724996:7" id="654511802473317812">
                      <node role="elementType" roleId="yvix.1151689745422:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="654511802473317813">
                        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~IModule" resolveInfo="IModule" />
                      </node>
                    </node>
                    <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="654511802473317814">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="4460123876060675627">
                        <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1217436166400" resolveInfo="moduleSet" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvix.SortOperation" typeId="yvix.1205679737078:7" id="654511802473317816">
                        <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="654511802473317817">
                          <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="654511802473317818">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="654511802473317819">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="654511802473317820">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="654511802473317821">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="654511802473317823" resolveInfo="it" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="654511802473317822">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~IModule%dgetModuleFqName()%cjava%dlang%dString" resolveInfo="getModuleFqName" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="654511802473317823">
                            <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="654511802473317824" />
                          </node>
                        </node>
                        <node role="ascending" roleId="yvix.1205679832066:7" type="yvix.SortDirection" typeId="yvix.1178286324487:7" id="654511802473317825">
                          <property name="value" nameId="yvor.1068580123138:3" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4460123876060676469">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="4460123876060676476">
                    <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676471">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4460123876060676470">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217500939542" resolveInfo="cycle" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="4460123876060676475">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                      </node>
                    </node>
                    <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676480">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="4460123876060676479" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_CreateUniqueName" typeId="yvp3.1218047638031:0" id="4460123876060676484">
                        <node role="baseName" roleId="yvp3.1218047638032:0" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="4460123876060676486">
                          <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676487">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676488">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4460123876060676489">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="654511802473317811" resolveInfo="sortedModuleSet" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="4460123876060676490" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4460123876060676491">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~IModule%dgetModuleFqName()%cjava%dlang%dString" resolveInfo="getModuleFqName" />
                            </node>
                          </node>
                          <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="4460123876060676492">
                            <property name="value" nameId="yvor.1070475926801:3" value="cycle." />
                          </node>
                        </node>
                        <node role="contextNode" roleId="yvp3.1218049772449:0" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="4460123876060676493">
                          <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1217435082152" resolveInfo="layout" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1217500983110">
                  <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1217500983111">
                    <property name="name" nameId="yvnu.1169194664001:0" value="imodule" />
                  </node>
                  <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="654511802473317826">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="654511802473317811" resolveInfo="sortedModuleSet" />
                  </node>
                  <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217500983113">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1217501006547">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1217501006548">
                        <property name="name" nameId="yvnu.1169194664001:0" value="modulesForIModule" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1217501006549">
                          <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
                        </node>
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1217501028150">
                          <node role="key" roleId="yvix.1197932525128:7" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1217501031351">
                            <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1217500983111" resolveInfo="imodule" />
                          </node>
                          <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217501020361">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217435252227" resolveInfo="map" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1217501036392">
                      <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1217501036393">
                        <property name="name" nameId="yvnu.1169194664001:0" value="module" />
                      </node>
                      <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217501045690">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217501006548" resolveInfo="modules" />
                      </node>
                      <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217501036395">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1217524858155">
                          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1217524858156">
                            <property name="name" nameId="yvnu.1169194664001:0" value="ref" />
                            <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1217524858157">
                              <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1217524754911:7" resolveInfo="ModuleReference" />
                            </node>
                            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217524866946">
                              <node role="creator" roleId="yvor.1145553007750:3" type="yvim.SNodeCreator" typeId="yvim.1180636770613:16" id="1217524866947">
                                <node role="createdType" roleId="yvim.1180636770616:16" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1217524866948">
                                  <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1217524754911:7" resolveInfo="ModuleReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1217524879358">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1217524889067">
                            <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217524879845">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217524879359">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217524858156" resolveInfo="ref" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1217524886719">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1217524800588:7" />
                              </node>
                            </node>
                            <node role="rValue" roleId="yvor.1068498886297:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1217524892819">
                              <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1217501036393" resolveInfo="module" />
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1217518570050">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217518582006">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217518571125">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217518570051">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217500939542" resolveInfo="cycle" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1217524837262">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1217524819628:7" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.LinkList_AddChildOperation" typeId="yvim.1139870260207:16" id="1217518585149">
                              <node role="childNode" roleId="yvim.1139870362308:16" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1217524872658">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1217524858156" resolveInfo="ref" />
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
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4460123876060676291">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676322">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676293">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="4460123876060676292">
                    <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1217435082152" resolveInfo="layout" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="4460123876060676297">
                    <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1217517833832:7" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.AddAllElementsOperation" typeId="yvix.1160666733551:7" id="4460123876060676326">
                  <node role="argument" roleId="yvix.1160666822012:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676348">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4460123876060676349">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4460123876060676380" resolveInfo="result" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.SortOperation" typeId="yvix.1205679737078:7" id="4460123876060676350">
                      <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="4460123876060676351">
                        <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4460123876060676352">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4460123876060676353">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676354">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676355">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676356">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4460123876060676357">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4460123876060676358">
                                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4460123876060676363" resolveInfo="it" />
                                    </node>
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="4460123876060676359">
                                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1217524819628:7" />
                                    </node>
                                  </node>
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="4460123876060676360" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4460123876060676361">
                                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1217524800588:7" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="4460123876060676362">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="4460123876060676363">
                          <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="4460123876060676364" />
                        </node>
                      </node>
                      <node role="ascending" roleId="yvix.1205679832066:7" type="yvix.SortDirection" typeId="yvix.1178286324487:7" id="4460123876060676365">
                        <property name="value" nameId="yvor.1068580123138:3" value="true" />
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
  </root>
  <root id="1219155958546">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1219155982746">
      <property name="name" nameId="yvnu.1169194664001:0" value="proejct" />
      <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.PropertyDeclaration" typeId="yvvu.1196851107341:21" id="1219155989809">
        <property name="name" nameId="yvnu.1169194664001:0" value="name" />
        <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.StringType" typeId="yvvu.1196870403099:21" id="1219155998953" />
        <node role="propertyValue" roleId="yvvu.1196851904859:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1219156021255">
          <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1219156025102">
            <property name="value" nameId="yvvu.1196861024475:21" value="left" />
            <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1219156054316">
              <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1219156054317">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219156054318">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219156060352">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219156060414">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219156060353" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1219156062701">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1205342829799:7" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1219156029465">
            <property name="value" nameId="yvvu.1196861024475:21" value="right" />
            <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1219156071323">
              <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1219156071324">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219156071325">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219156074751">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219156074791">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219156074752" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1219156076062">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1205342834160:7" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1219156041915" />
        </node>
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1219155982747">
        <property name="name" nameId="yvnu.1169194664001:0" value="target" />
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1219156009819">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1219155982747" resolveInfo="target" />
      </node>
    </node>
  </root>
  <root id="1219156183481">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1219156195126">
      <property name="name" nameId="yvnu.1169194664001:0" value="proejct" />
      <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.PropertyDeclaration" typeId="yvvu.1196851107341:21" id="1219156195127">
        <property name="name" nameId="yvnu.1169194664001:0" value="name" />
        <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.StringType" typeId="yvvu.1196870403099:21" id="1219156195128" />
        <node role="propertyValue" roleId="yvvu.1196851904859:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1219156200129">
          <property name="value" nameId="yvvu.1196861024475:21" value="simple.string.value" />
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1219156204518" />
          <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1219156215257">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219156215258">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219156215260">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219156237158">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219156237235">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219156237159" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1219156242852">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877173054" resolveInfo="getValue" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1219156195147">
        <property name="name" nameId="yvnu.1169194664001:0" value="target" />
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1219156195148">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1219156195147" resolveInfo="target" />
      </node>
    </node>
  </root>
  <root id="1219156350738">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1219156362706">
      <property name="name" nameId="yvnu.1169194664001:0" value="proejct" />
      <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.PropertyDeclaration" typeId="yvvu.1196851107341:21" id="1219156362707">
        <property name="name" nameId="yvnu.1169194664001:0" value="name" />
        <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.StringType" typeId="yvvu.1196870403099:21" id="1219156362708" />
        <node role="propertyValue" roleId="yvvu.1196851904859:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1219156430486">
          <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1219156392557" resolveInfo="name.to.reference" />
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1219156434466" />
          <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1219156437485">
            <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1219156437486">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219156437487">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219156522109">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219156523114">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1219156522110" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1219156531060">
                      <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1219156455517" resolveInfo="VariableToPropertyDeclaration" />
                      <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219156538424">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219156537528" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1219156548469">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1205339484191:7" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1219157474819">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1219157474820">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219157474821">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1219157486730">
                  <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1219157486731">
                    <property name="name" nameId="yvnu.1169194664001:0" value="layout" />
                    <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1219157486732">
                      <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                    </node>
                    <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219157486733">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219157486734" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1219157486735">
                        <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1219157486736">
                          <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1219157486738">
                            <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219157512596">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="1219157537186">
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219157531358">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1219157512597">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1219157486731" resolveInfo="layout" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNullOperation" typeId="yvim.1171999116870:16" id="1219157534322" />
                    </node>
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="7323449223784932715">
                      <node role="expression" roleId="yvor.1079359253376:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="7323449223784932720">
                        <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1219157561088">
                          <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219157561955">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219157561956">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1219157561957">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1219157486731" resolveInfo="layout" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1219157561958">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1205337304382:7" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.ContainsOperation" typeId="yvix.1172254888721:7" id="1219157561959">
                              <node role="argument" roleId="yvix.1172256416782:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219157561960">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219157561961" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1219157561962">
                                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1205339484191:7" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7323449223784932724">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7323449223784932725">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7323449223784932726">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1219157486731" resolveInfo="layout" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="7323449223784932727">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1234864693585" resolveInfo="getAllVariable" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvix.ContainsOperation" typeId="yvix.1172254888721:7" id="7323449223784932728">
                            <node role="argument" roleId="yvix.1172256416782:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7323449223784932729">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7323449223784932730" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7323449223784932731">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1205339484191:7" />
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
            <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1219158039277">
              <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1219158078255">
                <property name="value" nameId="yvvu.1196861024475:21" value="node.value" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1219158078256">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1219158078257">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219158078258">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219158086532">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219158086587">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1219158086533" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1219158091994">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877173054" resolveInfo="getValue" />
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
      <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.PropertyDeclaration" typeId="yvvu.1196851107341:21" id="1219156392557">
        <property name="name" nameId="yvnu.1169194664001:0" value="name.to.reference" />
        <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.StringType" typeId="yvvu.1196870403099:21" id="1219156419867" />
        <node role="propertyValue" roleId="yvvu.1196851904859:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1219156422432">
          <property name="value" nameId="yvvu.1196861024475:21" value="" />
        </node>
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1219156362727">
        <property name="name" nameId="yvnu.1169194664001:0" value="target" />
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1219156362728">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1219156362727" resolveInfo="target" />
      </node>
    </node>
  </root>
  <root id="1203622327796">
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="1203622327847">
      <link role="applicableConcept" roleId="yvp6.1168619429071:2" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
    </node>
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1203622327848">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1203622327849">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1203622327850">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1203622327851">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227879717">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1203622327854" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1203622412590">
                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="declaration" roleId="yvwf.1200504738496:1" type="yvvu.PropertyDeclaration" typeId="yvvu.1196851107341:21" id="1203622428108">
      <property name="name" nameId="yvnu.1169194664001:0" value="deploy.dir" />
      <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.FileType" typeId="yvvu.1199032398223:21" id="1203622428109" />
      <node role="propertyValue" roleId="yvvu.1196851904859:21" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1203622428110">
        <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="4993758969474299262">
          <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1203622428111">
            <property name="value" nameId="yvvu.1196861024475:21" value="artifacts" />
          </node>
          <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="4993758969474299265">
            <property name="value" nameId="yvvu.1196861024475:21" value="../" />
            <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="4993758969474299267">
              <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="4993758969474299268">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4993758969474299269">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4993758969474303255">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4993758969474303257">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4993758969474303256" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="4993758969474330447">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.4993758969474324591:7" resolveInfo="useTmpDir" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="8804596799833413904">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="8804596799833413905">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8804596799833413906">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8804596799833414905">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="5267773026153395314">
                      <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5267773026153395535">
                        <property name="value" nameId="yvor.1070475926801:3" value="." />
                      </node>
                      <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="8804596799833414916">
                        <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvp6.TemplateFunctionParameter_templatePropertyValue" typeId="yvp6.1167756221419:2" id="8804596799833414919" />
                        <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8804596799833414907">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="8804596799833414906" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="8804596799833414911">
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
  </root>
  <root id="1219229087937">
    <node role="codeBlock" roleId="yvp6.1195501105008:2" type="yvp6.MappingScript_CodeBlock" typeId="yvp6.1195500722856:2" id="1219229087938">
      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219229087939">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1219229184990">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1219229184991">
            <property name="name" nameId="yvnu.1169194664001:0" value="holders" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1219229184992">
              <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvvm.1234968728594:7" resolveInfo="IMacroHolder" />
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219229184993">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo0.ConceptFunctionParameter_model" typeId="yvo0.1161622665029:0" id="1219229184994" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Model_RootsOperation" typeId="yvim.1171315804604:16" id="1219229184995">
                <link role="concept" roleId="yvim.1171315804605:16" targetNodeId="yvvm.1234968728594:7" resolveInfo="IMacroHolder" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1219229184997">
          <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1219229184998">
            <property name="name" nameId="yvnu.1169194664001:0" value="holder" />
          </node>
          <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1219229184999">
            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1219229184991" resolveInfo="layouts" />
          </node>
          <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219229185000">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1220980380605">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1220980380606">
                <property name="name" nameId="yvnu.1169194664001:0" value="allMAcroNames" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="1220980380607">
                  <node role="elementType" roleId="yvix.1151688676805:7" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1220980382382" />
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220980397824">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1220980396700">
                    <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1219229184998" resolveInfo="layout" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220980399922">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1234975567387" resolveInfo="getAllMacroNames" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1226494557621">
                      <property name="value" nameId="yvor.1068580123138:3" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240250938361">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240250942204">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240250939609">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1240250938362">
                    <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1219229184998" resolveInfo="holder" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240250941064">
                    <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1234969173075:7" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.LinkList_RemoveAllChildrenOperation" typeId="yvim.1215103457144:16" id="1240250950247" />
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1219229216419">
              <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1219229216420">
                <property name="name" nameId="yvnu.1169194664001:0" value="macroName" />
              </node>
              <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1219229216421">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1219229256524">
                  <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1219229256525">
                    <property name="name" nameId="yvnu.1169194664001:0" value="macro" />
                    <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1219229256526">
                      <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1219228952036:7" resolveInfo="Macro" />
                    </node>
                    <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1219229264769">
                      <node role="creator" roleId="yvor.1145553007750:3" type="yvim.SNodeCreator" typeId="yvim.1180636770613:16" id="1219229264770">
                        <node role="createdType" roleId="yvim.1180636770616:16" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1219229264771">
                          <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1219228952036:7" resolveInfo="Macro" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219229270080">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219229275858">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219229270270">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1219229270081">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1219229256525" resolveInfo="macro" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219229274549">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_SetOperation" typeId="yvim.1138661924179:16" id="1219229277261">
                      <node role="value" roleId="yvim.1138662048170:16" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1219229282017">
                        <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1219229216420" resolveInfo="macroName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219230140915">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219230144720">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219230141007">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1219230140916">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1219229256525" resolveInfo="macro" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1219230143578">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1219230127826:7" resolveInfo="path" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_SetOperation" typeId="yvim.1138661924179:16" id="1219230146955">
                      <node role="value" roleId="yvim.1138662048170:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219230315303">
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1219230322663">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1219230346174">
                            <property name="value" nameId="yvor.1070475926801:3" value="\\" />
                          </node>
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1219230338043">
                            <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                          </node>
                        </node>
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220980423771">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1220980422752">
                            <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1219229184998" resolveInfo="layout" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220980425700">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1234975967990" resolveInfo="evaluateMacro" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1220980430239">
                              <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1219229216420" resolveInfo="macroName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1219229297621">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219229312120">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1219229298616">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1219229297622">
                        <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1219229184998" resolveInfo="layout" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1234969931558">
                        <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1234969173075:7" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.LinkList_AddChildOperation" typeId="yvim.1139870260207:16" id="1219229315652">
                      <node role="childNode" roleId="yvim.1139870362308:16" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1219229318935">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1219229256525" resolveInfo="macro" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1220980402707">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1220980380606" resolveInfo="allMAcroNames" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1220026404357">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1220026417061">
      <property name="name" nameId="yvnu.1169194664001:0" value="project" />
      <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.PropertyDeclaration" typeId="yvvu.1196851107341:21" id="1220026466749">
        <property name="name" nameId="yvnu.1169194664001:0" value="macro" />
        <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.FileType" typeId="yvvu.1199032398223:21" id="1220026473468" />
        <node role="propertyValue" roleId="yvvu.1196851904859:21" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1220026478026">
          <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1220026478027">
            <property name="value" nameId="yvvu.1196861024475:21" value="" />
          </node>
        </node>
      </node>
      <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.PropertyDeclaration" typeId="yvvu.1196851107341:21" id="1220026451410">
        <property name="name" nameId="yvnu.1169194664001:0" value="property" />
        <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.FileType" typeId="yvvu.1199032398223:21" id="1220026458728" />
        <node role="propertyValue" roleId="yvvu.1196851904859:21" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1220026571250">
          <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1220026572742">
            <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1220026572743">
              <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1220026575997">
                <property name="value" nameId="yvvu.1196861024475:21" value="path.relative.to.macro" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1220026680304">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1220026680305">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220026680306">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220027244442">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220027244443">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220027244444">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220027244445" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220027329060">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1219770843283" resolveInfo="getPathWithoutMacro" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1220027244447">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1220027244448">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                            </node>
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1220027244449">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1220026572745">
                <property name="value" nameId="yvvu.1196861024475:21" value="/" />
              </node>
            </node>
            <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1220026572746">
              <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1220026466749" resolveInfo="macro" />
              <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1220026621743">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1220026621744">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220026621745">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1235062834575">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1235062834576">
                        <property name="name" nameId="yvnu.1169194664001:0" value="holder" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1235062834577">
                          <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1234968728594:7" resolveInfo="IMacroHolder" />
                        </node>
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1235062834578">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1235062834579" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1235062834580">
                            <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1235062834581">
                              <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1235062834582">
                                <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1234968728594:7" resolveInfo="IMacroHolder" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1235062834583">
                      <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1235062834584">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1235062834585">
                          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1235062834586">
                            <property name="name" nameId="yvnu.1169194664001:0" value="descendants" />
                            <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1235062834587">
                              <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvvm.1219228952036:7" resolveInfo="Macro" />
                            </node>
                            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1235062834588">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1235062834589">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1235062834590" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1235062834591">
                                  <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Root" typeId="yvim.1144101597970:16" id="1235062834592" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetDescendantsOperation" typeId="yvim.1171305280644:16" id="1235062834593">
                                <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1235062834594">
                                  <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1235062834595">
                                    <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1219228952036:7" resolveInfo="Macro" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1239121705941">
                          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1239121705942">
                            <property name="name" nameId="yvnu.1169194664001:0" value="macro" />
                            <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1239121705943">
                              <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1219228952036:7" resolveInfo="Macro" />
                            </node>
                            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239121705945">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1239121705946">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1235062834586" resolveInfo="descendants" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvix.FindFirstOperation" typeId="yvix.1225727723840:7" id="1239121705947">
                                <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="1239121705948">
                                  <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239121705949">
                                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239121705950">
                                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239121705951">
                                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239121705952">
                                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1239121705953">
                                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1239121705961" resolveInfo="it" />
                                          </node>
                                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1239121705954">
                                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                                          </node>
                                        </node>
                                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1239121705955">
                                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239121705956">
                                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239121705957">
                                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239121705958" />
                                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239121705959">
                                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1219229006340:7" />
                                              </node>
                                            </node>
                                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1239121705960">
                                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="1239121705961">
                                    <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                                    <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="1239121705962" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1239121709280">
                          <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239121709281">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1239121716246">
                              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240251710102">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240251710103">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240251710104" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputListByLabelAndInput" typeId="yvp3.1221156564099:0" id="1240251710105">
                                    <link role="label" roleId="yvp3.1221156564101:0" targetNodeId="1219167110931" resolveInfo="MacroToPropertyDeclaration" />
                                    <node role="inputNode" roleId="yvp3.1221156564104:0" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1240251715439">
                                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1239121705942" resolveInfo="macro" />
                                    </node>
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240251710107" />
                              </node>
                            </node>
                          </node>
                          <node role="condition" roleId="yvor.1068580123160:3" type="yvor.NotEqualsExpression" typeId="yvor.1073239437375:3" id="1239121712589">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1239121714087" />
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1239121711476">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1239121705942" resolveInfo="macro" />
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1239124037423">
                          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239124037424">
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.FindFirstOperation" typeId="yvix.1225727723840:7" id="1239124037425">
                              <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="1239124037426">
                                <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239124037427">
                                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239124037428">
                                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239124037429">
                                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239124037430">
                                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1239124037431">
                                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1239124037439" resolveInfo="it" />
                                        </node>
                                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1239124037432">
                                          <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                                        </node>
                                      </node>
                                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1239124037433">
                                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239124037434">
                                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239124037435">
                                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239124037436" />
                                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239124037437">
                                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1219229006340:7" />
                                            </node>
                                          </node>
                                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1239124037438">
                                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="1239124037439">
                                  <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                                  <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="1239124037440" />
                                </node>
                              </node>
                            </node>
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvim.StaticConceptMethodCall" typeId="yvim.1206019730951:16" id="1239124037441">
                              <link role="concept" roleId="yvim.1206019820684:16" targetNodeId="yvvu.1196853662806:21" resolveInfo="PropertyReference" />
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvy.1239123615225" resolveInfo="getAllVisibleDeclarations" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_outputNode" typeId="yvp6.1184690432998:2" id="1239124037442" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="condition" roleId="yvor.1068580123160:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1235062834616">
                        <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1235062834617" />
                        <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1235062834618">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1235062834576" resolveInfo="holder" />
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1235062834619">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1235062834620">
                        <property name="name" nameId="yvnu.1169194664001:0" value="macro" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1235062834621">
                          <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1219228952036:7" resolveInfo="Macro" />
                        </node>
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1235062834622">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1235062834623">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1235062834576" resolveInfo="holder" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1235062834624">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1234972707641" resolveInfo="findMacroForReference" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1235062834625">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1235062854076" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1235062855690">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1219229006340:7" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1235062834628">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240251722672">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240251722673">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240251722674" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputListByLabelAndInput" typeId="yvp3.1221156564099:0" id="1240251722676">
                            <link role="label" roleId="yvp3.1221156564101:0" targetNodeId="1219167110931" resolveInfo="MacroToPropertyDeclaration" />
                            <node role="inputNode" roleId="yvp3.1221156564104:0" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1240251722677">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1235062834620" resolveInfo="macro" />
                            </node>
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240251722678" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1220026604202">
              <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1220026604203">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220026604204">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220026613349">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220026616083">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220026613402">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220026613350" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220026615184">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1219229006340:7" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1220026617979" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1220026692997">
                <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1220026711437">
                  <property name="value" nameId="yvvu.1196861024475:21" value="path" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1220026711438">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1220026711439">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220026711440">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220027256069">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220027256070">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220027256071">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220027256072" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220027312547">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1219231432401" resolveInfo="getValue" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1220027256074">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1220027256075">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                              </node>
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1220027256076">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
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
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1220026580077" />
        </node>
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1220026417062">
        <property name="name" nameId="yvnu.1169194664001:0" value="default" />
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1220026448648">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1220026417062" resolveInfo="default" />
      </node>
    </node>
  </root>
  <root id="1220983155596">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1220983162744">
      <property name="name" nameId="yvnu.1169194664001:0" value="project" />
      <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.PropertyDeclaration" typeId="yvvu.1196851107341:21" id="1220983206046">
        <property name="name" nameId="yvnu.1169194664001:0" value="macro" />
        <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.FileType" typeId="yvvu.1199032398223:21" id="1220983212709" />
        <node role="propertyValue" roleId="yvvu.1196851904859:21" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1220983216300">
          <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1220983216301">
            <property name="value" nameId="yvvu.1196861024475:21" value="" />
          </node>
        </node>
      </node>
      <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.PropertyDeclaration" typeId="yvvu.1196851107341:21" id="1220983182214">
        <property name="name" nameId="yvnu.1169194664001:0" value="property" />
        <node role="propertyValue" roleId="yvvu.1196851904859:21" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1220983197176">
          <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1220983220569">
            <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1220983224806">
              <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1220983226129">
                <property name="value" nameId="yvvu.1196861024475:21" value="path" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1220983382898">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1220983382899">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220983382900">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220983386973">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220983402060">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220983387014">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220983386974" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220983401185">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1220974249696:7" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1220983488134">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1220983419344" resolveInfo="getPath" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1220983222466">
                <property name="value" nameId="yvvu.1196861024475:21" value="/" />
              </node>
            </node>
            <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1220983219398">
              <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1220983206046" resolveInfo="macro" />
              <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1220983242940">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1220983242941">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220983242942">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1234978534823">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1234978534824">
                        <property name="name" nameId="yvnu.1169194664001:0" value="holder" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1234978534825">
                          <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1234968728594:7" resolveInfo="IMacroHolder" />
                        </node>
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234978534826">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234978534827" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1234978534828">
                            <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1234978534829">
                              <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1234978534830">
                                <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1234968728594:7" resolveInfo="IMacroHolder" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1234978665792">
                      <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234978665793">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1235062219407">
                          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1235062219408">
                            <property name="name" nameId="yvnu.1169194664001:0" value="descendants" />
                            <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1235062219409">
                              <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvvm.1219228952036:7" resolveInfo="Macro" />
                            </node>
                            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1235062219410">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1235062219411">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1235062219412" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1235062219413">
                                  <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Root" typeId="yvim.1144101597970:16" id="1235062219414" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetDescendantsOperation" typeId="yvim.1171305280644:16" id="1235062219415">
                                <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1235062219416">
                                  <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1235062219417">
                                    <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1219228952036:7" resolveInfo="Macro" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1235062224355">
                          <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1235062224356">
                            <property name="name" nameId="yvnu.1169194664001:0" value="m" />
                          </node>
                          <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1235062231159">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1235062219408" resolveInfo="descendants" />
                          </node>
                          <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1235062224358">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1235062249352">
                              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1235062256823">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1235062251768">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1235062251563">
                                    <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1235062224356" resolveInfo="m" />
                                  </node>
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1235062255989">
                                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1235062258615">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1235062267080">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1235062260861">
                                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1235062260782" />
                                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1235062262352">
                                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1220976095387:7" />
                                      </node>
                                    </node>
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1235062272513">
                                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1220976068141:7" resolveInfo="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1235062249354">
                                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1235062275542">
                                  <node role="expression" roleId="yvor.1068581517676:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1235062279706">
                                    <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1235062224356" resolveInfo="m" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1239970808715">
                          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239970808716">
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.FindFirstOperation" typeId="yvix.1225727723840:7" id="1239970808717">
                              <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="1239970808718">
                                <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239970808719">
                                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239970808720">
                                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239970808721">
                                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239970808722">
                                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1239970808723">
                                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1239970808731" resolveInfo="it" />
                                        </node>
                                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1239970808724">
                                          <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                                        </node>
                                      </node>
                                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1239970808725">
                                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239970808726">
                                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239970808727">
                                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239970808728" />
                                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239970815455">
                                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1220976095387:7" />
                                            </node>
                                          </node>
                                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1239970816696">
                                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1220976068141:7" resolveInfo="name" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="1239970808731">
                                  <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                                  <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="1239970808732" />
                                </node>
                              </node>
                            </node>
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvim.StaticConceptMethodCall" typeId="yvim.1206019730951:16" id="1239970808733">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvy.1239123615225" resolveInfo="getAllVisibleDeclarations" />
                              <link role="concept" roleId="yvim.1206019820684:16" targetNodeId="yvvu.1196853662806:21" resolveInfo="PropertyReference" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_outputNode" typeId="yvp6.1184690432998:2" id="1239970808734" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="condition" roleId="yvor.1068580123160:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1234978670120">
                        <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1234978671469" />
                        <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1234978668953">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1234978534824" resolveInfo="holder" />
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1234978694738">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1234978694739">
                        <property name="name" nameId="yvnu.1169194664001:0" value="macro" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1234978694740">
                          <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvvm.1219228952036:7" resolveInfo="Macro" />
                        </node>
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234978694741">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1234978694742">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1234978534824" resolveInfo="holder" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1234978694743">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1234972707641" resolveInfo="findMacroForReference" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234978694744">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234978694745" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1234978694746">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1220976095387:7" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1234978694748">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240251684239">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240251684240">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240251684241" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputListByLabelAndInput" typeId="yvp3.1221156564099:0" id="1240251684242">
                            <link role="label" roleId="yvp3.1221156564101:0" targetNodeId="1219167110931" resolveInfo="MacroToPropertyDeclaration" />
                            <node role="inputNode" roleId="yvp3.1221156564104:0" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1240251684243">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1234978694739" resolveInfo="macro" />
                            </node>
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240251684244" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1220983234430" />
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1220986250251">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1220986250252">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220986250253">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1220986257932">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="5064736914037484899">
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="5064736914037487029">
                      <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5064736914037487043">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5064736914037487037">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5064736914037487032">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5064736914037487031" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5064736914037487036">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1220976095387:7" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="5064736914037487042">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1220976068141:7" resolveInfo="name" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsEmptyOperation" typeId="yvor.1225271369338:3" id="5064736914037487047" />
                      </node>
                    </node>
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1220986284928">
                      <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220986285621">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220986285622">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1220986285623">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1220986285624" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1220986285625">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1220976095387:7" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1220986285626">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1220976068141:7" resolveInfo="name" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1220986285627">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1220986285628">
                            <property name="value" nameId="yvor.1070475926801:3" value="basedir" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1220986298091">
              <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1220986323183">
                <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1220986324543">
                  <property name="value" nameId="yvvu.1196861024475:21" value="path" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1220986324544">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1220986324545">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1220986324546">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="126994763358093926">
                          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="126994763358093927">
                            <property name="name" nameId="yvnu.1169194664001:0" value="path" />
                            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="126994763358093928" />
                            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="126994763358093929">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="126994763358093930">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="126994763358093931" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="126994763358093932">
                                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1220974249696:7" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="126994763358093933">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1220983419344" resolveInfo="getPath" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="126994763358097596">
                          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="126994763358097597">
                            <property name="name" nameId="yvnu.1169194664001:0" value="roots" />
                            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ArrayType" typeId="yvor.1070534760951:3" id="126994763358097599">
                              <node role="componentType" roleId="yvor.1070534760952:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="126994763358097598">
                                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                              </node>
                            </node>
                            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="126994763358097602">
                              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~File%dlistRoots()%cjava%dio%dFile[]" resolveInfo="listRoots" />
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="126994763358097569">
                          <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="126994763358097570">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="126994763358097606">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="126994763358097608">
                                <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="126994763358097612">
                                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="126994763358097615">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="126994763358093927" resolveInfo="path" />
                                  </node>
                                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="126994763358097611">
                                    <property name="value" nameId="yvor.1070475926801:3" value="/" />
                                  </node>
                                </node>
                                <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="126994763358097607">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="126994763358093927" resolveInfo="path" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="condition" roleId="yvor.1068580123160:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="126994763358097579">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="126994763358097580">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="126994763358097581">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ArrayAccessExpression" typeId="yvor.1173175405605:3" id="126994763358097582">
                                  <node role="index" roleId="yvor.1173175577737:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="126994763358097583">
                                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                                  </node>
                                  <node role="array" roleId="yvor.1173175590490:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="126994763358097604">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="126994763358097597" resolveInfo="roots" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="126994763358097585">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~File%dgetAbsolutePath()%cjava%dlang%dString" resolveInfo="getAbsolutePath" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="126994763358097586">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="126994763358097587">
                                  <property name="value" nameId="yvor.1070475926801:3" value="/" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="126994763358097588">
                              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="126994763358097589">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="126994763358097603">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="126994763358097597" resolveInfo="roots" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.ArrayLengthOperation" typeId="yvor.1208890769693:3" id="126994763358097591" />
                              </node>
                              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="126994763358097592">
                                <property name="value" nameId="yvor.1068580320021:3" value="1" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="126994763358097617">
                          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="126994763358097619">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="126994763358093927" resolveInfo="path" />
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
        <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.FileType" typeId="yvvu.1199032398223:21" id="1220983193244" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1220983162745">
        <property name="name" nameId="yvnu.1169194664001:0" value="target" />
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1220983171841">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1220983162745" resolveInfo="target" />
      </node>
    </node>
  </root>
  <root id="1230221604639">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1230221616457">
      <property name="name" nameId="yvnu.1169194664001:0" value="tmp.project" />
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1230221616458">
        <property name="name" nameId="yvnu.1169194664001:0" value="default" />
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1230221628804">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802811777" resolveInfo="antcall" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1230221634286">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811782" resolveInfo="target" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.TargetReferencePropertyValueExpression" typeId="yvvu.1201701678947:21" id="1230221640548">
              <link role="declaration" roleId="yvvu.1201701736447:21" targetNodeId="1230221616458" resolveInfo="default" />
              <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1230221653578" />
              <node role="referenceMacro$link_attribute$declaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1230221653581">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1230221653582">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1230221653583">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1230221769525">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1230222083110">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1230221790337">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="1230221786917">
                            <node role="expression" roleId="yvor.1079359253376:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1230221787816">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1230221787817" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1230221787818">
                                <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1230211425287" resolveInfo="ConfigurationToProject" />
                                <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1230221787819">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1230221787820" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1230221787821">
                                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1230220362584:7" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1230221795227">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvu.1196859969927:21" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1230222086529">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvu.1196852953065:21" />
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
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1230221616459">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1230221616458" resolveInfo="default" />
      </node>
    </node>
  </root>
  <root id="1234271261132">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1234272564509">
      <property name="name" nameId="yvnu.1169194664001:0" value="some" />
      <node role="importProperties" roleId="yvvu.1200425203554:21" type="yvvu.ImportPropertyNode" typeId="yvvu.1200418817047:21" id="1234273137708">
        <link role="propertyNode" roleId="yvvu.1200420354547:21" targetNodeId="1203622327796" resolveInfo="project.properties" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1234272564510">
        <property name="name" nameId="yvnu.1169194664001:0" value="default" />
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1234272879004">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802812427" resolveInfo="copy" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1234272879005">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802812435" resolveInfo="file" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1234272879006">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1234272879007">
                <property name="value" nameId="yvvu.1196861024475:21" value="src.dir" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1234272879008">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1234272879009">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234272879010">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234272879011">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272879012">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234272879013" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1234272879014">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1220981955937:7" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1234272879015">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802812457" resolveInfo="tofile" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1234272879016">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1234272879017">
                <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1234272879018">
                  <property name="value" nameId="yvvu.1196861024475:21" value="target.dir" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1234272879019">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1234272879020">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234272879021">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234272879022">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1234272879023">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272879024">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272879025">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272879026">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234272879027" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1234272879028">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877333777" resolveInfo="getPath" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1234272879029">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~File%dgetPath()%cjava%dlang%dString" resolveInfo="getPath" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1234272879030">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1234272879031">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                </node>
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1234272879032">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1234272879033">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1234272879034">
                  <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                  <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840845368">
                    <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840845369">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840845370">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840851389">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840851390">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840851391">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840851392">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840851393" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840851394">
                                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840851395">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840851396" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840851397">
                                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840851398">
                                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840851399">
                                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840851400">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840851401" />
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
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="1234272879035">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802814916" resolveInfo="replace" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1234272879036">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814921" resolveInfo="file" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="1234272879037">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="1234272879038">
                <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1234272879039">
                  <property name="value" nameId="yvvu.1196861024475:21" value="file.replace.into" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1234272879040">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1234272879041">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234272879042">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234272879043">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1234272879044">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272879045">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272879046">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272879047">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272879048">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234272879049" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetParentOperation" typeId="yvim.1139613262185:16" id="1234272879050" />
                                  </node>
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1234272879051">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877333777" resolveInfo="getPath" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1234272879052">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~File%dgetPath()%cjava%dlang%dString" resolveInfo="getPath" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1234272879053">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1234272879054">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                </node>
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1234272879055">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1234272879056">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="1234272879057">
                  <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                  <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1240840856054">
                    <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1240840856055">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1240840856056">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1240840858888">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840858889">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840858890">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840858891">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1240840858892" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1240840858893">
                                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1240840858894">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1240840858895" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1240840858896">
                                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1240840858897">
                                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1240840858898">
                                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1240840858899">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1240840858900" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1234272879058">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814929" resolveInfo="token" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1234272879059">
              <property name="value" nameId="yvvu.1196861024475:21" value="token" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1234272879060">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1234272879061">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234272879062">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234272879063">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272879064">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234272879065" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1234272879066">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1212485511583:7" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="1234272879067">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802814931" resolveInfo="value" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1234272879068">
              <property name="value" nameId="yvvu.1196861024475:21" value="value" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1234272879069">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1234272879070">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234272879071">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234272879072">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272879073">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234272879074" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1234272879075">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.1212485518918:7" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1234272879076">
            <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1234272879077">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234272879078">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234272879079">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272879080">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234272879081" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1234272879082">
                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1212485610544:7" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1234272581138" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1234272627884">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1234272627885">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234272627886">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234272634622">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234272634623">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1234272634624" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_CreateUniqueName" typeId="yvp3.1218047638031:0" id="1234272634625">
                    <node role="baseName" roleId="yvp3.1218047638032:0" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1234272634626">
                      <property name="value" nameId="yvor.1070475926801:3" value="replace" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1234272564511">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1234272564510" resolveInfo="default" />
      </node>
    </node>
  </root>
  <root id="1234978022753">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1234978044606">
      <property name="name" nameId="yvnu.1169194664001:0" value="some" />
      <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.ExternalPropertyDeclaration" typeId="yvvu.1219147669362:21" id="1234978051914">
        <property name="name" nameId="yvnu.1169194664001:0" value="macro" />
        <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.FileType" typeId="yvvu.1199032398223:21" id="1234978060349" />
        <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1234978063090" />
        <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1234978065504">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1234978065505">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1234978065506">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1234978074646">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1234978075838">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1234978074647" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1234978077709">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1234978044607">
        <property name="name" nameId="yvnu.1169194664001:0" value="default" />
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1234978044608">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1234978044607" resolveInfo="default" />
      </node>
    </node>
  </root>
  <root id="1238426776123">
    <node role="codeBlock" roleId="yvp6.1195501105008:2" type="yvp6.MappingScript_CodeBlock" typeId="yvp6.1195500722856:2" id="1238426776124">
      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238426776125">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.SingleLineComment" typeId="yvor.6329021646629104954:3" id="2752707779197964564">
          <node role="commentPart" roleId="yvor.6329021646629175155:3" type="yvor.StatementCommentPart" typeId="yvor.6329021646629175143:3" id="2752707779197964565">
            <node role="commentedStatement" roleId="yvor.6329021646629175144:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1238427227220">
              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238427227221">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1238427233741" />
              </node>
              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1238427230295">
                <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238427230927">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvo0.ConceptFunctionParameter_operationContext" typeId="yvo0.1161622753914:0" id="1238427230928" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1238427230929">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~IOperationContext%disTestMode()%cboolean" resolveInfo="isTestMode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1238426812314">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1238426812315">
            <property name="name" nameId="yvnu.1169194664001:0" value="layouts" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1238426812316">
              <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238426812317">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo0.ConceptFunctionParameter_model" typeId="yvo0.1161622665029:0" id="1238426812318" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Model_RootsOperation" typeId="yvim.1171315804604:16" id="1238426812319">
                <link role="concept" roleId="yvim.1171315804605:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1238426817433">
          <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1238426817434">
            <property name="name" nameId="yvnu.1169194664001:0" value="layout" />
          </node>
          <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1238426819272">
            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1238426812315" resolveInfo="layouts" />
          </node>
          <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238426817436">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1238426844931">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1238426844932">
                <property name="name" nameId="yvnu.1169194664001:0" value="modules" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.SetType" typeId="yvix.1226511727824:7" id="1238670949692">
                  <node role="elementType" roleId="yvix.1226511765987:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1238670949693">
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~IModule" resolveInfo="IModule" />
                  </node>
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1238426850371">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvix.HashSetCreator" typeId="yvix.1226516258405:7" id="1238670949785">
                    <node role="elementType" roleId="yvix.1237721435807:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1238427018139">
                      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~IModule" resolveInfo="IModule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1238427563285">
              <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1238427563286">
                <property name="name" nameId="yvnu.1169194664001:0" value="m" />
              </node>
              <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238427563288">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1238427573530">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238427574439">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1238427573531">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1238426844932" resolveInfo="modules" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.AddSetElementOperation" typeId="yvix.1226566855640:7" id="1238671386522">
                      <node role="argument" roleId="yvix.1226567214363:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238671386523">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1238671386524">
                          <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1238427563286" resolveInfo="m" />
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1238671386525">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877515148" resolveInfo="getModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238427564563">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1238427564564">
                  <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1238426817434" resolveInfo="layout" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1238427564565">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877228340" resolveInfo="getModules" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1238426996048">
              <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1238426996049">
                <property name="name" nameId="yvnu.1169194664001:0" value="module" />
              </node>
              <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1238427022505">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1238426844932" resolveInfo="modules" />
              </node>
              <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238426996051">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1238427056786">
                  <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1238427056787">
                    <property name="name" nameId="yvnu.1169194664001:0" value="dependency" />
                    <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="6791246587134145357">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="6791246587134145352">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="6791246587134145351">
                          <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1238426996049" resolveInfo="module" />
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="6791246587134145356">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~IModule%dgetDependenciesManager()%cjetbrains%dmps%dproject%ddependency%dDependencyManager" resolveInfo="getDependenciesManager" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="6791246587134145361">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="906v.~DependencyManager%dgetAllDependOnModules()%cjava%dutil%dSet" resolveInfo="getAllDependOnModules" />
                      </node>
                    </node>
                    <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="144296692409194002">
                      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjwb.~Set" resolveInfo="Set" />
                      <node role="parameter" roleId="yvor.1109201940907:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="144296692409211795">
                        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~IModule" resolveInfo="IModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="144296692409187309">
                  <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="144296692409187310">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="144296692409188832">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="144296692409188833">
                        <property name="name" nameId="yvnu.1169194664001:0" value="d" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="144296692409188834">
                          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~DevKit" resolveInfo="DevKit" />
                        </node>
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="144296692409188837">
                          <node role="type" roleId="yvor.1070534934091:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="144296692409188840">
                            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~DevKit" resolveInfo="DevKit" />
                          </node>
                          <node role="expression" roleId="yvor.1070534934092:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="144296692409188836">
                            <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1238426996049" resolveInfo="module" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="144296692409194007">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="144296692409194009">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="144296692409194008">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1238427056787" resolveInfo="dependency" />
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="144296692409194013">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjwb.~Set%daddAll(java%dutil%dCollection)%cboolean" resolveInfo="addAll" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="144296692409194014">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="144296692409194015">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="144296692409188833" resolveInfo="d" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="144296692409194016">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~DevKit%dgetAllExportedLanguages()%cjava%dutil%dList" resolveInfo="getAllExportedLanguages" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="144296692409194021">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="144296692409194022">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="144296692409194023">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1238427056787" resolveInfo="dependency" />
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="144296692409194024">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjwb.~Set%daddAll(java%dutil%dCollection)%cboolean" resolveInfo="addAll" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="144296692409194025">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="144296692409194026">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="144296692409188833" resolveInfo="d" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="144296692409194027">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~DevKit%dgetAllExportedSolutions()%cjava%dutil%dList" resolveInfo="getAllExportedSolutions" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="144296692409194028">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="144296692409194029">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="144296692409194030">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1238427056787" resolveInfo="dependency" />
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="144296692409194031">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjwb.~Set%daddAll(java%dutil%dCollection)%cboolean" resolveInfo="addAll" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="144296692409194032">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="144296692409194033">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="144296692409188833" resolveInfo="d" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="144296692409194034">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~DevKit%dgetAllExtendedDevkits()%cjava%dutil%dList" resolveInfo="getAllExtendedDevkits" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="condition" roleId="yvor.1068580123160:3" type="yvor.InstanceOfExpression" typeId="yvor.1081256982272:3" id="144296692409188826">
                    <node role="classType" roleId="yvor.1081256993305:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="144296692409188829">
                      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="txlh.~DevKit" resolveInfo="DevKit" />
                    </node>
                    <node role="leftExpression" roleId="yvor.1081256993304:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="144296692409187313">
                      <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1238426996049" resolveInfo="module" />
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1238427068632">
                  <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1238427068633">
                    <property name="name" nameId="yvnu.1169194664001:0" value="dependent" />
                  </node>
                  <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1238427070475">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1238427056787" resolveInfo="dependency" />
                  </node>
                  <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238427068635">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1238427079871">
                      <node role="condition" roleId="yvor.1068580123160:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="1071694560679874319">
                        <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="1071694560679873330">
                          <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="1238430866881">
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1238430872581">
                              <node role="expression" roleId="yvor.1081516765348:3" type="yvor.InstanceOfExpression" typeId="yvor.1081256982272:3" id="1238430896675">
                                <node role="classType" roleId="yvor.1081256993305:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1238430903202">
                                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="8n6q.~Generator" resolveInfo="Generator" />
                                </node>
                                <node role="leftExpression" roleId="yvor.1081256993304:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1238430878367">
                                  <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1238427068633" resolveInfo="dependent" />
                                </node>
                              </node>
                            </node>
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1238427082575">
                              <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238427088251">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1238427087114">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1238426844932" resolveInfo="modules" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.ContainsOperation" typeId="yvix.1172254888721:7" id="1238671386371">
                                  <node role="argument" roleId="yvix.1172256416782:7" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1238671386372">
                                    <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1238427068633" resolveInfo="dependent" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1071694560679874309">
                            <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1071694560679874008">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1071694560679873999">
                                <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1238427068633" resolveInfo="dependent" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1071694560679874298">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~IModule%disPackaged()%cboolean" resolveInfo="isPackaged" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NotEqualsExpression" typeId="yvor.1073239437375:3" id="1071694560679874360">
                          <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1071694560679874367" />
                          <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1071694560679874339">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1071694560679874330">
                              <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1238427068633" resolveInfo="dependent" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1071694560679874351">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~IModule%dgetDescriptorFile()%cjetbrains%dmps%dvfs%dIFile" resolveInfo="getDescriptorFile" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238427079873">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1238430472235">
                          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1238430472236">
                            <property name="name" nameId="yvnu.1169194664001:0" value="errorText" />
                            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1238430472237" />
                            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1238430472245">
                              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1238430472246">
                                <property name="value" nameId="yvor.1070475926801:3" value="." />
                              </node>
                              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1238430472244">
                                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1238430472240">
                                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="1238430472238">
                                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1238430472239">
                                      <property name="value" nameId="yvor.1070475926801:3" value="Required module " />
                                    </node>
                                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238430472241">
                                      <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1238430472242">
                                        <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1238427068633" resolveInfo="dependent" />
                                      </node>
                                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1238430472243">
                                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~IModule%dgetModuleFqName()%cjava%dlang%dString" resolveInfo="getModuleFqName" />
                                      </node>
                                    </node>
                                  </node>
                                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1238430472250">
                                    <property name="value" nameId="yvor.1070475926801:3" value=" is absent. Used by module " />
                                  </node>
                                </node>
                                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238430472247">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1238430472248">
                                    <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1238426996049" resolveInfo="module" />
                                  </node>
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1238430472249">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="txlh.~IModule%dgetModuleFqName()%cjava%dlang%dString" resolveInfo="getModuleFqName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1238430480122">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238430482815">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1238430480123">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="vhgx.~System" resolveInfo="System" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="vhgx.~System%derr" resolveInfo="err" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1238430487958">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1238430490232">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1238430472236" resolveInfo="errorText" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1238427252630">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238427253752">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1238427252631" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_ShowErrorMessage" typeId="yvp3.1217960179967:0" id="1238427261509">
                              <node role="messageText" roleId="yvp3.1217960314448:0" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1238430472253">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1238430472236" resolveInfo="errorText" />
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
  </root>
  <root id="1240849283962">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="1240849283963">
      <property name="name" nameId="yvnu.1169194664001:0" value="proejct" />
      <node role="property" roleId="yvvu.1200425668297:21" type="yvvu.PropertyDeclaration" typeId="yvvu.1196851107341:21" id="1240849283964">
        <property name="name" nameId="yvnu.1169194664001:0" value="name" />
        <node role="type" roleId="yvvu.1196870993204:21" type="yvvu.StringType" typeId="yvvu.1196870403099:21" id="1240849283965" />
        <node role="propertyValue" roleId="yvvu.1196851904859:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="1240849305264">
          <property name="value" nameId="yvvu.1196861024475:21" value=" " />
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1240849308601" />
        </node>
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="1240849283976">
        <property name="name" nameId="yvnu.1169194664001:0" value="target" />
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="1240849283977">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="1240849283976" resolveInfo="target" />
      </node>
    </node>
  </root>
  <root id="8148924375507507586">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.ImportPropertiesFromFile" typeId="yvvu.1240398708423:21" id="8148924375507507624">
      <node role="propertyFile" roleId="yvvu.1240398738487:21" type="yvvm.Path" typeId="yvvm.1220973916698:7" id="8148924375507507631">
        <node role="macro" roleId="yvvm.1220976095387:7" type="yvvm.MacroReference" typeId="yvvm.1220976052975:7" id="8148924375507507632">
          <property name="name" nameId="yvvm.1220976068141:7" value="basedir" />
        </node>
        <node role="compositePathComponent" roleId="yvvm.1220974249696:7" type="yvvm.CompositePathComponent" typeId="yvvm.1220973992845:7" id="8148924375507507633" />
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="8148924375507507635">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="8148924375507507636">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8148924375507507637">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8148924375507507638">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8148924375507507640">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="8148924375507507639" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="8148924375507507644">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.2372113960322848949:7" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="8148924375507507626" />
    </node>
  </root>
  <root id="8148924375507507616">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.ImportPropertyNode" typeId="yvvu.1200418817047:21" id="8148924375507507645">
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="8148924375507507646" />
      <node role="referenceMacro$link_attribute$propertyNode" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="8148924375507507647">
        <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="8148924375507507648">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8148924375507507649">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8148924375507507650">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8148924375507507652">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="8148924375507507651" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="8148924375507507656">
                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.2372113960322853251:7" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="9027273598492288377">
    <node role="codeBlock" roleId="yvp6.1195501105008:2" type="yvp6.MappingScript_CodeBlock" typeId="yvp6.1195500722856:2" id="9027273598492288378">
      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="9027273598492288379">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.SingleLineComment" typeId="yvor.6329021646629104954:3" id="4169262926913100199">
          <node role="commentPart" roleId="yvor.6329021646629175155:3" type="yvor.TextCommentPart" typeId="yvor.6329021646629104957:3" id="4169262926913100200">
            <property name="text" nameId="yvor.6329021646629104958:3" value="blocks aren't generated so we delete them" />
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="4169262926913036278">
          <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="4169262926913036279">
            <property name="name" nameId="yvnu.1169194664001:0" value="block" />
          </node>
          <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4169262926913100186">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvo0.ConceptFunctionParameter_model" typeId="yvo0.1161622665029:0" id="4169262926913100185" />
            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Model_RootsOperation" typeId="yvim.1171315804604:16" id="4169262926913100190">
              <link role="concept" roleId="yvim.1171315804605:16" targetNodeId="yvvm.701559220729212645:7" resolveInfo="Block" />
            </node>
          </node>
          <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4169262926913036281">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4169262926913100191">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4169262926913100193">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="4169262926913100192">
                  <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="4169262926913036279" resolveInfo="block" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_DeleteOperation" typeId="yvim.1140133623887:16" id="4169262926913100197" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="4159241239519681839">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvvu.Project" typeId="yvvu.1196851066733:21" id="4159241239519682259">
      <property name="name" nameId="yvnu.1169194664001:0" value="tmp" />
      <node role="importProperties" roleId="yvvu.1200425203554:21" type="yvvu.ImportPropertyNode" typeId="yvvu.1200418817047:21" id="4159241239519682309">
        <link role="propertyNode" roleId="yvvu.1200420354547:21" targetNodeId="1203622327796" resolveInfo="project.properties" />
      </node>
      <node role="target" roleId="yvvu.1196851079482:21" type="yvvu.TargetDeclaration" typeId="yvvu.1196851099544:21" id="4159241239519682260">
        <property name="name" nameId="yvnu.1169194664001:0" value="default" />
        <node role="taskCall" roleId="yvvu.1196851542249:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="4159241239519682262">
          <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802813521" resolveInfo="jar" />
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="4159241239519682263">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815899" resolveInfo="destfile" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="4159241239519682265">
              <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="4159241239519682266">
                <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="4159241239519682267">
                  <property name="value" nameId="yvvu.1196861024475:21" value="" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="4159241239519682268">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="4159241239519682269">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4159241239519682270">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4159241239519682271">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="4159241239519682272">
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4159241239519682273">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4159241239519682274">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4159241239519682275">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4159241239519682276" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="4159241239519682277">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877333777" resolveInfo="getPath" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4159241239519682278">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~File%dgetPath()%cjava%dlang%dString" resolveInfo="getPath" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4159241239519682279">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dreplace(java%dlang%dCharSequence,java%dlang%dCharSequence)%cjava%dlang%dString" resolveInfo="replace" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="4159241239519682280">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="tiz1.~File" resolveInfo="File" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="tiz1.~File%dseparator" resolveInfo="separator" />
                                </node>
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="4159241239519682281">
                                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                                </node>
                              </node>
                            </node>
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="4159241239519682282">
                              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.PropertyReference" typeId="yvvu.1196853662806:21" id="4159241239519682283">
                  <link role="propertyDeclaration" roleId="yvvu.1196853671400:21" targetNodeId="1203622428108" resolveInfo="deploy.dir" />
                  <node role="referenceMacro$link_attribute$propertyDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="4159241239519682284">
                    <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="4159241239519682285">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4159241239519682286">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4159241239519682287">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4159241239519682288">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4159241239519682289">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4159241239519682290">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="4159241239519682291" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="4159241239519682292">
                                  <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1240840704414" resolveInfo="LayoutToPropertyNode" />
                                  <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4159241239519682293">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4159241239519682294" />
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="4159241239519682295">
                                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="4159241239519682296">
                                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="4159241239519682297">
                                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="4159241239519682298">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvwf.1200504738496:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="4159241239519682299" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="4159241239519689098">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815911" resolveInfo="filesonly" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.BooleanLiteral" typeId="yvvu.1196865966685:21" id="4159241239519689100">
              <property name="value" nameId="yvvu.1196866040780:21" value="true" />
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="4159241239519689101">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815901" resolveInfo="duplicate" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="4159241239519689103">
              <property name="value" nameId="yvvu.1196861024475:21" value="preserve" />
            </node>
          </node>
          <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="888657369809429063">
            <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802815897" resolveInfo="compress" />
            <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.BooleanLiteral" typeId="yvvu.1196865966685:21" id="888657369809429065">
              <property name="value" nameId="yvvu.1196866040780:21" value="true" />
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="4159241239519682310" />
          <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="888657369809402614">
            <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802815941" resolveInfo="zipfileset" />
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="888657369809402615">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811856" resolveInfo="dir" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="888657369809402720">
                <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="888657369809429053">
                  <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="888657369809402721">
                    <property name="value" nameId="yvvu.1196861024475:21" value="plugin.root" />
                    <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="888657369809429067">
                      <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="888657369809429068">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="888657369809429069">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="888657369809429070">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="888657369809429072">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="888657369809429071" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="888657369809461631">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.4159241239519649209:7" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="34695628122115586">
                    <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="34695628122115589">
                      <property name="value" nameId="yvvu.1196861024475:21" value="/" />
                      <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="34695628122115590">
                        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="34695628122115591">
                          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="34695628122115592">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="34695628122115593">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="34695628122115595">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="888657369809429056">
                      <property name="value" nameId="yvvu.1196861024475:21" value="META-INF" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="888657369809429032">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811542" resolveInfo="includes" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="888657369809429034">
                <property name="value" nameId="yvvu.1196861024475:21" value="**/plugin.xml" />
              </node>
            </node>
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="888657369809429060">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811860" resolveInfo="prefix" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="888657369809429062">
                <property name="value" nameId="yvvu.1196861024475:21" value="META-INF" />
              </node>
            </node>
          </node>
          <node role="nested" roleId="yvvu.1196858559206:21" type="6oxb.TaskCall" typeId="6oxb.353793545802643477:22" id="888657369809429040">
            <link role="declaration" roleId="6oxb.353793545802643478:22" targetNodeId="77q6.353793545802815941" resolveInfo="zipfileset" />
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="888657369809429041">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811856" resolveInfo="dir" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.FileName" typeId="yvvu.1199031681512:21" id="888657369809429043">
                <node role="value" roleId="yvvu.1199031757132:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="888657369809429049">
                  <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.PlusOperation" typeId="yvvu.1197108973325:21" id="34695628122115596">
                    <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="34695628122115599">
                      <property name="value" nameId="yvvu.1196861024475:21" value="/" />
                      <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="34695628122115600">
                        <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="34695628122115601">
                          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="34695628122115602">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="34695628122115603">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="34695628122115604">
                                <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yvvn.1210761300056" resolveInfo="Util" />
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yvvn.1210761316257" resolveInfo="SEPARATOR" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="right" roleId="yvvu.1197107881958:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="888657369809429052">
                      <property name="value" nameId="yvvu.1196861024475:21" value="classes" />
                    </node>
                  </node>
                  <node role="left" roleId="yvvu.1197107855106:21" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="888657369809429045">
                    <property name="value" nameId="yvvu.1196861024475:21" value="plugin.root" />
                    <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="888657369809461633">
                      <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="888657369809461634">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="888657369809461635">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="888657369809461636">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="888657369809461638">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="888657369809461637" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="888657369809461642">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.4159241239519649209:7" />
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
            <node role="atributes" roleId="6oxb.353793545802643479:22" type="6oxb.Attribute" typeId="6oxb.353793545802643466:22" id="888657369809429057">
              <link role="attributeDeclaration" roleId="6oxb.353793545802643467:22" targetNodeId="77q6.353793545802811860" resolveInfo="prefix" />
              <node role="value" roleId="6oxb.353793545802643468:22" type="yvvu.StringLiteral" typeId="yvvu.1196861005114:21" id="888657369809429059">
                <property name="value" nameId="yvvu.1196861024475:21" value="" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="default" roleId="yvvu.1196859969927:21" type="yvvu.TargetReference" typeId="yvvu.1196852921336:21" id="4159241239519682261">
        <link role="targetDeclaration" roleId="yvvu.1196852953065:21" targetNodeId="4159241239519682260" resolveInfo="default" />
      </node>
    </node>
  </root>
  <root id="1672810677919754483">
    <node role="createRootRule" roleId="yvp6.1167088157977:2" type="yvp6.CreateRootRule" typeId="yvp6.1167087469898:2" id="3028065460252959247">
      <link role="templateNode" roleId="yvp6.1167087469901:2" targetNodeId="3028065460252927838" resolveInfo="idea.additional.classpath" />
      <node role="conditionFunction" roleId="yvp6.1167087469900:2" type="yvp6.CreateRootRule_Condition" typeId="yvp6.1167087518662:2" id="5471562003147840954">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5471562003147840955">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.SingleLineComment" typeId="yvor.6329021646629104954:3" id="5471562003147840975">
            <node role="commentPart" roleId="yvor.6329021646629175155:3" type="yvor.TextCommentPart" typeId="yvor.6329021646629104957:3" id="5471562003147840979">
              <property name="text" nameId="yvor.6329021646629104958:3" value="we do not want to generate idea.classpath for user models, only for mpsautobuild" />
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.SingleLineComment" typeId="yvor.6329021646629104954:3" id="5471562003147909280">
            <node role="commentPart" roleId="yvor.6329021646629175155:3" type="yvor.TextCommentPart" typeId="yvor.6329021646629104957:3" id="5471562003147909281">
              <property name="text" nameId="yvor.6329021646629104958:3" value="todo remove this out of here: packaging is not a 'special language for building mps', should not know about mpsautobuild" />
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5471562003147840956">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5471562003147840968">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5471562003147840963">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5471562003147840958">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="5471562003147840957" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOriginalInputModel" typeId="yvp3.1217026863835:0" id="5471562003147840962" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Model_GetLongNameOperation" typeId="yvim.1212008292747:16" id="5471562003147840967" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="5471562003147840972">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5471562003147840973">
                  <property name="value" nameId="yvor.1070475926801:3" value="jetbrains.mps.build.mpsautobuild" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1672810677919754484">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvvm.701559220729139189:7" resolveInfo="BlockReference" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1672810677919754485">
        <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvvm.AbstractProjectComponent" typeId="yvvm.1203598300291:7" id="1672810677919754486">
          <node role="nodeMacro$attribute" type="yvp6.CopySrcListMacro" typeId="yvp6.1114729360583:2" id="1672810677919754487">
            <node role="sourceNodesQuery" roleId="yvp6.1168278589236:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1672810677919754488">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1672810677919754489">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1672810677919933090">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yviq.CompactInvokeFunctionExpression" typeId="yviq.1235746970280:3" id="1672810677919962473">
                    <node role="parameter" roleId="yviq.1235747002942:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1672810677919974748">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1672810677919974743">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1672810677919962503" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1672810677919974747">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.701559220729212648:7" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1672810677919974752">
                        <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.701559220729212646:7" />
                      </node>
                    </node>
                    <node role="function" roleId="yviq.1235746996653:3" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="1672810677919962474">
                      <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1672810677919962475">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ForeachStatement" typeId="yvor.1144226303539:3" id="1672810677919962476">
                          <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1672810677919962477">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1672810677919962478">
                              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1672810677919962479">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1672810677919962480">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1672810677919962492" resolveInfo="apc" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsInstanceOfOperation" typeId="yvim.1139621453865:16" id="1672810677919962481">
                                  <node role="conceptArgument" roleId="yvim.1177027386292:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1672810677919962482">
                                    <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.701559220729139189:7" resolveInfo="BlockReference" />
                                  </node>
                                </node>
                              </node>
                              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1672810677919962483">
                                <node role="statement" roleId="yvor.1068581517665:3" type="yviq.YieldAllStatement" typeId="yviq.1228997946467:3" id="1672810677919962484">
                                  <node role="expression" roleId="yviq.1228997959377:3" type="yviq.InvokeExpression" typeId="yviq.1199711271002:3" id="1672810677919962485">
                                    <node role="parameter" roleId="yviq.1199711344856:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1672810677919974758">
                                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1672810677919974753">
                                        <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1672810677919962486">
                                          <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvvm.701559220729139189:7" resolveInfo="BlockReference" />
                                          <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1672810677919962487">
                                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1672810677919962492" resolveInfo="apc" />
                                          </node>
                                        </node>
                                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1672810677919974757">
                                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvvm.701559220729212648:7" />
                                        </node>
                                      </node>
                                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1672810677919974762">
                                        <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.701559220729212646:7" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="ifFalseStatement" roleId="yvor.1082485599094:3" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1672810677919962488">
                                <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1672810677919962489">
                                  <node role="statement" roleId="yvor.1068581517665:3" type="yviq.YieldStatement" typeId="yviq.1200830824066:3" id="1672810677919962490">
                                    <node role="expression" roleId="yviq.1200830928149:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1672810677919962491">
                                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1672810677919962492" resolveInfo="apc" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="variable" roleId="yvor.1144230900587:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1672810677919962492">
                            <property name="name" nameId="yvnu.1169194664001:0" value="apc" />
                            <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1672810677919962493" />
                          </node>
                          <node role="iterable" roleId="yvor.1144226360166:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="3028065460252797661">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1672810677919962499" resolveInfo="in" />
                          </node>
                        </node>
                      </node>
                      <node role="parameter" roleId="yviq.1199569906740:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1672810677919962499">
                        <property name="name" nameId="yvnu.1169194664001:0" value="in" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.SequenceType" typeId="yvix.1151689724996:7" id="1672810677919962500">
                          <node role="elementType" roleId="yvix.1151689745422:7" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1672810677919962501" />
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
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="1672810677919754496">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1672810677919754497">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1672810677919754498">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1672810677919754499">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1672810677919754500">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1672810677919754501" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1672810677919754502">
                  <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1672810677919754503">
                    <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1672810677919754504">
                      <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvvm.1202916958754:7" resolveInfo="MPSLayout" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1672810677919754505" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="postMappingScript" roleId="yvp6.1195502346405:2" type="yvp6.MappingScriptReference" typeId="yvp6.1195502151594:2" id="4382266938873448301">
      <link role="mappingScript" roleId="yvp6.1195502167610:2" targetNodeId="9027273598492288377" resolveInfo="ResolveBlockReferences" />
    </node>
  </root>
  <root id="3028065460252927838">
    <node role="item" roleId="yvqs.1184639733180:0" type="yvqs.GLine" typeId="yvqs.1166926309597:0" id="3028065460253121663">
      <node role="item" roleId="yvqs.1166928665191:0" type="yvqs.GText" typeId="yvqs.1164412789837:0" id="3028065460253121673">
        <property name="text" nameId="yvqs.1164413036326:0" value=" " />
        <node role="propertyMacro$property_attribute$text" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="3028065460253121732">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="3028065460253121733">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3028065460253121734">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3028065460253121735">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3028065460253121736">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3028065460253121737" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="3028065460253121738">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvvm.1208952075958:7" resolveInfo="fullPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="3028065460253121676">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="3028065460253121677">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3028065460253121678">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3028065460253121685">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3028065460253121686">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3028065460253121687">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3028065460253121688">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3028065460253121689">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="3028065460253121690" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetInputModel" typeId="yvp3.1217004708011:0" id="3028065460253121691" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Model_RootsOperation" typeId="yvim.1171315804604:16" id="3028065460253121692">
                      <link role="concept" roleId="yvim.1171315804605:16" targetNodeId="yvvm.701559220729212645:7" resolveInfo="Block" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.WhereOperation" typeId="yvix.1202120902084:7" id="3028065460253121693">
                    <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="3028065460253121694">
                      <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3028065460253121695">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3028065460253121696">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="3028065460253121697">
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3028065460253121698">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="3028065460253121699">
                                <property name="value" nameId="yvor.1070475926801:3" value="core.baseLanguage" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="3028065460253121700">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3028065460253121701">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="3028065460253121702">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="3028065460253121710" resolveInfo="blk" />
                                  </node>
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="3028065460253121703">
                                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3028065460253121704">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="3028065460253121705">
                                <property name="value" nameId="yvor.1070475926801:3" value="core.languageDesign" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="3028065460253121706">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3028065460253121707">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="3028065460253121708">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="3028065460253121710" resolveInfo="blk" />
                                  </node>
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="3028065460253121709">
                                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="3028065460253121710">
                        <property name="name" nameId="yvnu.1169194664001:0" value="blk" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="3028065460253121711" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.TranslateOperation" typeId="yvix.1201792049884:7" id="3028065460253121712">
                  <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="3028065460253121713">
                    <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3028065460253121714">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3028065460253121715">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3028065460253121716">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="3028065460253121717">
                            <property name="asCast" nameId="yvim.1238684351431:16" value="true" />
                            <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvvm.1203598512427:7" resolveInfo="Folder" />
                            <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3028065460253121718">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3028065460253121719">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="3028065460253121720">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="3028065460253121724" resolveInfo="blk" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="3028065460253121721">
                                  <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.701559220729212646:7" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="3028065460253121722" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="3028065460253121723">
                            <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvvm.1203617897549:7" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="3028065460253121724">
                      <property name="name" nameId="yvnu.1169194664001:0" value="blk" />
                      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="3028065460253121725" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="3028065460253121680">
        <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="3028065460253121681">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3028065460253121682">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3028065460253121726">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4261422048970582364">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3028065460253121727">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="3028065460253121728">
                    <property name="asCast" nameId="yvim.1238684351431:16" value="true" />
                    <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
                    <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3028065460253121729" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="3028065460253188765">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877515083" resolveInfo="getClassPath" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.ConcatOperation" typeId="yvix.1180964022718:7" id="4261422048970582370">
                  <node role="rightExpression" roleId="yvix.1176906787974:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4261422048970613617">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="4261422048970613609">
                      <property name="asCast" nameId="yvim.1238684351431:16" value="true" />
                      <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvvm.1203599702327:7" resolveInfo="Module" />
                      <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4261422048970582373" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="4261422048970613625">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvvr.1213877515098" resolveInfo="getRuntimeClassPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="3028065460252927840" />
  </root>
</model>


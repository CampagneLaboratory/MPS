<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:b4456070-b665-4c03-b3d3-15a7362ba923(jetbrains.mps.debugger.java.runtime.ui.evaluation)">
  <persistence version="7" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <language namespace="63650c59-16c8-498a-99c8-005c7ee9515d(jetbrains.mps.lang.access)" />
  <language namespace="760a0a8c-eabb-4521-8bfd-65db761a9ba3(jetbrains.mps.baseLanguage.logging)" />
  <language namespace="774bf8a0-62e5-41e1-af63-f4812e60e48b(jetbrains.mps.baseLanguage.checkedDots)" />
  <import index="tpru" modelUID="r:00000000-0000-4000-0000-011c895904a6(jetbrains.mps.ide.embeddableEditor)" version="-1" />
  <import index="f3c7" modelUID="r:86d21248-3bf4-41d8-8375-ab68885d035f(jetbrains.mps.debugger.java.runtime.evaluation.model)" version="-1" />
  <import index="anh2" modelUID="r:1f2ecb68-8f37-460f-acb8-866f8f05b15e(jetbrains.mps.debugger.java.runtime.evaluation)" version="-1" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(java.lang@java_stub)" version="-1" />
  <import index="dbrf" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing(javax.swing@java_stub)" version="-1" />
  <import index="1t7x" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt(java.awt@java_stub)" version="-1" />
  <import index="8q6x" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt.event(java.awt.event@java_stub)" version="-1" />
  <import index="osf5" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing.tree(javax.swing.tree@java_stub)" version="-1" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(java.io@java_stub)" version="-1" />
  <import index="vjwt" modelUID="r:96c2681b-d258-4b28-81fb-0850456a3cee(jetbrains.mps.debugger.java.api.ui)" version="-1" />
  <import index="qgwr" modelUID="r:f326a98e-32f7-47a0-ba29-239107a89ca4(jetbrains.mps.debugger.java.api.evaluation)" version="-1" />
  <import index="dcbi" modelUID="r:ea2e6d1f-eab5-4a08-8299-1abe57148f37(jetbrains.mps.debugger.java.api.evaluation.proxies)" version="-1" />
  <import index="2s0o" modelUID="r:6ed9d174-6cbf-4569-b2b8-259c43efcbd9(jetbrains.mps.debugger.java.api.state.watchables)" version="-1" />
  <import index="cu2c" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="mzqo" modelUID="f:java_stub#86441d7a-e194-42da-81a5-2161ec62a379#jetbrains.mps.ide.dialogs(MPS.Workbench/jetbrains.mps.ide.dialogs@java_stub)" version="-1" />
  <import index="9a8" modelUID="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor(MPS.Editor/jetbrains.mps.nodeEditor@java_stub)" version="-1" />
  <import index="vsqj" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" version="-1" />
  <import index="v38v" modelUID="f:java_stub#86441d7a-e194-42da-81a5-2161ec62a379#jetbrains.mps.ide.ui(MPS.Workbench/jetbrains.mps.ide.ui@java_stub)" version="-1" />
  <import index="to5d" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.logging(MPS.Core/jetbrains.mps.logging@java_stub)" version="-1" />
  <import index="y3sp" modelUID="r:ac4cce94-c169-4971-be8f-807482637028(jetbrains.mps.debugger.java.api.state.proxy)" version="-1" />
  <import index="ieao" modelUID="r:171d7488-7735-44dd-8049-f905d8fca4b0(jetbrains.mps.debugger.java.runtime)" version="-1" />
  <import index="choc" modelUID="r:a35795b4-c996-4cf6-bdbd-9ddbda25cde5(jetbrains.mps.debugger.api.ui.tree)" version="-1" />
  <import index="pry4" modelUID="r:0a0d7eec-6e5a-412b-8e16-e3ee5ed7fb95(jetbrains.mps.debug.api.programState)" version="-1" />
  <import index="1l1h" modelUID="r:c02662c0-67c5-4c3a-8d3a-cd7ffe189340(jetbrains.mps.debug.api)" version="-1" />
  <import index="lt1n" modelUID="r:4a0301da-c964-420c-8e35-486843de9df5(jetbrains.mps.debug.api.evaluation)" version="-1" />
  <import index="cyfb" modelUID="r:a3396333-01e8-4d8f-ac7d-92203e663cdb(jetbrains.mps.debugger.java.runtime.ui.actions)" version="-1" />
  <import index="1rri" modelUID="r:01820806-c285-4459-a416-37590f94adc8(jetbrains.mps.debugger.api.ui.actions)" version="-1" />
  <import index="6tyf" modelUID="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#com.intellij.openapi.actionSystem(MPS.Platform/com.intellij.openapi.actionSystem@java_stub)" version="-1" />
  <import index="pdak" modelUID="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.messages(MPS.Platform/jetbrains.mps.ide.messages@java_stub)" version="-1" />
  <import index="mepa" modelUID="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#com.intellij.openapi.application(MPS.Platform/com.intellij.openapi.application@java_stub)" version="-1" />
  <import index="pt5l" modelUID="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.project(MPS.Platform/jetbrains.mps.ide.project@java_stub)" version="-1" />
  <import index="aw8c" modelUID="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#com.intellij.ui.components(MPS.Platform/com.intellij.ui.components@java_stub)" version="-1" />
  <import index="5xh9" modelUID="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.actions(MPS.Platform/jetbrains.mps.ide.actions@java_stub)" version="-1" />
  <import index="ph2v" modelUID="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#com.intellij.openapi.project(MPS.Platform/com.intellij.openapi.project@java_stub)" version="-1" />
  <import index="t7eg" modelUID="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#com.intellij.openapi.components(MPS.Platform/com.intellij.openapi.components@java_stub)" version="-1" />
  <import index="xqpa" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang.reflect(JDK/java.lang.reflect@java_stub)" version="-1" />
  <import index="xptu" modelUID="r:6c060161-192f-4aa3-a797-df89b30aa449(jetbrains.mps.debugger.java.runtime.engine.events)" version="-1" />
  <import index="d822" modelUID="r:63e7a653-1334-49d4-8e81-fd72b84fb4ff(jetbrains.mps.debugger.java.runtime.state)" version="-1" />
  <import index="1nsa" modelUID="r:0b933946-5ee4-42ea-9b69-bd1790a8e611(jetbrains.mps.debugger.java.runtime.engine)" version="-1" />
  <import index="a3o9" modelUID="r:6c15a5c9-1bba-4ade-a066-13f2741b04fc(jetbrains.mps.debugger.java.api.state)" version="-1" />
  <import index="h12" modelUID="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#com.intellij.openapi.ui(MPS.Platform/com.intellij.openapi.ui@java_stub)" version="-1" />
  <import index="as9o" modelUID="f:java_stub#3f233e7f-b8a6-46d2-a57f-795d56775243#org.jetbrains.annotations(Annotations/org.jetbrains.annotations@java_stub)" version="-1" />
  <import index="f5hh" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#com.sun.jdi(JDK/com.sun.jdi@java_stub)" version="-1" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="tp4k" modelUID="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" version="35" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" implicit="yes" />
  <import index="qff7" modelUID="r:2ba2e307-a81d-4a21-9e0b-de3624e2fb83(jetbrains.mps.lang.access.structure)" version="0" implicit="yes" />
  <import index="pxpg" modelUID="r:5a550369-d6d9-4c89-a89b-1bb748dc20b3(jetbrains.mps.baseLanguage.checkedDots.structure)" version="-1" implicit="yes" />
  <roots>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="5849716370568348282">
      <property name="name" nameId="tpck.1169194664001" value="EvaluationDialog" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="920354110794004331">
      <property name="name" nameId="tpck.1169194664001" value="EvaluationPanel" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7406771907178597948">
      <property name="name" nameId="tpck.1169194664001" value="EvaluationTree" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7406771907178600108">
      <property name="name" nameId="tpck.1169194664001" value="EvaluationUi" />
      <property name="abstractClass" nameId="tpee.1075300953594" value="true" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="4577525712681038408">
      <property name="name" nameId="tpck.1169194664001" value="EditWatchDialog" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="4577525712681046198">
      <property name="name" nameId="tpck.1169194664001" value="AbstractEvaluationDialog" />
      <property name="abstractClass" nameId="tpee.1075300953594" value="true" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="5600062460044309378">
      <property name="name" nameId="tpck.1169194664001" value="WatchesPanel" />
    </node>
  </roots>
  <root id="5849716370568348282">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5849716370568348283" />
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4577525712681047536">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="4577525712681046198" resolveInfo="AbstractEvaluationDialog" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="5849716370568348349">
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5849716370568348350" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5849716370568348351">
        <property name="name" nameId="tpck.1169194664001" value="context" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="5849716370568348352">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="cu2c.~IOperationContext" resolveInfo="IOperationContext" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2814952292830128614">
        <property name="name" nameId="tpck.1169194664001" value="provider" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1504158228282810884">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="anh2.671562190169411198" resolveInfo="EvaluationProvider" />
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="2814952292830128617">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2814952292830127447">
        <property name="name" nameId="tpck.1169194664001" value="evalModel" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4892916258071779723">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5849716370568348355">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SuperConstructorInvocation" typeId="tpee.1070475587102" id="5849716370568348356">
          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="4577525712681046200" resolveInfo="AbstractEvaluationDialog" />
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5849716370568348358">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5849716370568348351" resolveInfo="context" />
          </node>
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4577525712681047538">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2814952292830128614" resolveInfo="provider" />
          </node>
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4577525712681101291">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2814952292830127447" resolveInfo="evalModel" />
          </node>
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="5849716370568348360">
            <property name="value" nameId="tpee.1070475926801" value="Evaluate" />
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="2656624718522764989">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="createActions" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="2656624718522764990" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ArrayType" typeId="tpee.1070534760951" id="2656624718522764991">
        <node role="componentType" roleId="tpee.1070534760952" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2656624718522764992">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Action" resolveInfo="Action" />
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2656624718522764993">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="2656624718522764997">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2656624718522764999">
            <node role="creator" roleId="tpee.1145553007750" type="tpee.ArrayCreatorWithInitializer" typeId="tpee.1154542696413" id="2656624718522765025">
              <node role="componentType" roleId="tpee.1154542793668" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2656624718522765004">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Action" resolveInfo="Action" />
              </node>
              <node role="initValue" roleId="tpee.1154542803372" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2656624718522765027">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="2656624718522778458">
                  <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="2656624718522778459">
                    <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                    <link role="classifier" roleId="tpee.1170346070688" targetNodeId="h12.~DialogWrapper$DialogWrapperAction" resolveInfo="DialogWrapper.DialogWrapperAction" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h12.~DialogWrapper$DialogWrapperAction%d&lt;init&gt;(com%dintellij%dopenapi%dui%dDialogWrapper,java%dlang%dString)" resolveInfo="DialogWrapper.DialogWrapperAction" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2656624718522778468">
                      <property name="value" nameId="tpee.1070475926801" value="Evaluate" />
                    </node>
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2656624718522778460" />
                    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="2656624718522778461">
                      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
                      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                      <property name="name" nameId="tpck.1169194664001" value="doAction" />
                      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
                      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="2656624718522778462" />
                      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="2656624718522778463" />
                      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2656624718522778464">
                        <property name="name" nameId="tpck.1169194664001" value="p0" />
                        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2656624718522778465">
                          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="8q6x.~ActionEvent" resolveInfo="ActionEvent" />
                        </node>
                      </node>
                      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2656624718522778466">
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2656624718522778469">
                          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2656624718522778470">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2656624718522778471">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046228" resolveInfo="myEvaluationPanel" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2656624718522778472">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="920354110794005252" resolveInfo="evaluate" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="initValue" roleId="tpee.1154542803372" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2656624718522778484">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="2656624718522778486">
                  <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="2656624718522778487">
                    <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                    <link role="classifier" roleId="tpee.1170346070688" targetNodeId="h12.~DialogWrapper$DialogWrapperAction" resolveInfo="DialogWrapper.DialogWrapperAction" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h12.~DialogWrapper$DialogWrapperAction%d&lt;init&gt;(com%dintellij%dopenapi%dui%dDialogWrapper,java%dlang%dString)" resolveInfo="DialogWrapper.DialogWrapperAction" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2656624718522778496">
                      <property name="value" nameId="tpee.1070475926801" value="Watch" />
                    </node>
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2656624718522778488" />
                    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="2656624718522778489">
                      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
                      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                      <property name="name" nameId="tpck.1169194664001" value="doAction" />
                      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
                      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="2656624718522778490" />
                      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="2656624718522778491" />
                      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2656624718522778492">
                        <property name="name" nameId="tpck.1169194664001" value="p0" />
                        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2656624718522778493">
                          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="8q6x.~ActionEvent" resolveInfo="ActionEvent" />
                        </node>
                      </node>
                      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2656624718522778494">
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2656624718522778497">
                          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2656624718522778498">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2656624718522778499">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046225" resolveInfo="myProvider" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2656624718522778500">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="anh2.671562190169411468" resolveInfo="addWatch" />
                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2656624718522778501">
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2656624718522778502">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046228" resolveInfo="myEvaluationPanel" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2656624718522778503">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7222423519129192554" resolveInfo="getEvaluationModel" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2656624718522778505">
                          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="2656624718522778506">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h12.~DialogWrapper%ddoOKAction()%cvoid" resolveInfo="doOKAction" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="initValue" roleId="tpee.1154542803372" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2656624718522778519">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="2656624718522778521">
                  <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="2656624718522778522">
                    <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                    <link role="classifier" roleId="tpee.1170346070688" targetNodeId="h12.~DialogWrapper$DialogWrapperAction" resolveInfo="DialogWrapper.DialogWrapperAction" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h12.~DialogWrapper$DialogWrapperAction%d&lt;init&gt;(com%dintellij%dopenapi%dui%dDialogWrapper,java%dlang%dString)" resolveInfo="DialogWrapper.DialogWrapperAction" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2656624718522778530">
                      <property name="value" nameId="tpee.1070475926801" value="Close" />
                    </node>
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2656624718522778523" />
                    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="2656624718522778524">
                      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
                      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                      <property name="name" nameId="tpck.1169194664001" value="doAction" />
                      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
                      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="2656624718522778525" />
                      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="2656624718522778526" />
                      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2656624718522778527">
                        <property name="name" nameId="tpck.1169194664001" value="p0" />
                        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2656624718522778528">
                          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="8q6x.~ActionEvent" resolveInfo="ActionEvent" />
                        </node>
                      </node>
                      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2656624718522778529">
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2656624718522778531">
                          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="2656624718522778532">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h12.~DialogWrapper%ddoOKAction()%cvoid" resolveInfo="doOKAction" />
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
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="2656624718522764994">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="2207019569356890542">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="1568068832543932916">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="getDimensionServiceKey" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="1568068832543932917" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1568068832543932918">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~String" resolveInfo="String" />
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="1568068832543932919">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~Nullable" resolveInfo="Nullable" />
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="1568068832543932920">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NonNls" resolveInfo="NonNls" />
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1568068832543932921">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1568068832543932926">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1568068832543932949">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.ClassifierClassExpression" typeId="tpee.1116615150612" id="1568068832543932928">
              <link role="classifier" roleId="tpee.1116615189566" targetNodeId="5849716370568348282" resolveInfo="EvaluationDialog" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1568068832543944950">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Class%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
            </node>
          </node>
        </node>
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="1568068832543932922">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
      </node>
    </node>
  </root>
  <root id="920354110794004331">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="920354110794004332" />
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600115">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7406771907178600108" resolveInfo="EvaluationUi" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="920354110794004952">
      <property name="name" nameId="tpck.1169194664001" value="myTabbedPane" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="920354110794004953" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="920354110794004954">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~JTabbedPane" resolveInfo="JTabbedPane" />
      </node>
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="920354110794004955">
        <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="920354110794004956">
          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JTabbedPane%d&lt;init&gt;()" resolveInfo="JTabbedPane" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="920354110794004963">
      <property name="name" nameId="tpck.1169194664001" value="myEditor" />
      <property name="isFinal" nameId="tpee.1176718929932" value="false" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="920354110794004964">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="tpru.1219405202223" resolveInfo="EmbeddableEditor" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="920354110794004965" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="920354110794004966">
      <property name="name" nameId="tpck.1169194664001" value="myResultEditor" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="920354110794004967" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="920354110794004968">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="tpru.1219405202223" resolveInfo="EmbeddableEditor" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="920354110794004969">
      <property name="name" nameId="tpck.1169194664001" value="myEvaluationModel" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="920354110794004970" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4892916258071779720">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="920354110794005626">
      <property name="name" nameId="tpck.1169194664001" value="myHighlighter" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="920354110794005627" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="920354110794005628">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="9a8.~Highlighter" resolveInfo="Highlighter" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="1055996919827581981">
      <property name="name" nameId="tpck.1169194664001" value="myIsDisposed" />
      <property name="isVolatile" nameId="tpee.1240249534625" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="1055996919827581982" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.BooleanType" typeId="tpee.1070534644030" id="1055996919827581984" />
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="1055996919827581986">
        <property name="value" nameId="tpee.1068580123138" value="false" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="920354110794004972">
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="920354110794004973" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="920354110794194624">
        <property name="name" nameId="tpck.1169194664001" value="project" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="920354110794194626">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ph2v.~Project" resolveInfo="Project" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2814952292830089909">
        <property name="name" nameId="tpck.1169194664001" value="session" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3432969378035544355">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="d822.4352118152439824931" resolveInfo="DebugSession" />
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="2814952292830089912">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2814952292830089907">
        <property name="name" nameId="tpck.1169194664001" value="evaluationModel" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4892916258071779721">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="8668174811004040710">
        <property name="name" nameId="tpck.1169194664001" value="autoUpdate" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.BooleanType" typeId="tpee.1070534644030" id="8668174811004042153" />
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="920354110794004980">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SuperConstructorInvocation" typeId="tpee.1070475587102" id="7406771907178600471">
          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600110" resolveInfo="EvaluationUi" />
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600472">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2814952292830089909" resolveInfo="session" />
          </node>
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3196684409400996665">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8668174811004040710" resolveInfo="autoUpdate" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="920354110794004992">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="920354110794004993">
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="920354110794004994">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794005626" resolveInfo="myHighlighter" />
            </node>
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794004995">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="920354110794272812">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794194624" resolveInfo="project" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794004997">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="t7eg.~ComponentManager%dgetComponent(java%dlang%dClass)%cjava%dlang%dObject" resolveInfo="getComponent" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ClassifierClassExpression" typeId="tpee.1116615150612" id="920354110794004998">
                  <link role="classifier" roleId="tpee.1116615189566" targetNodeId="9a8.~Highlighter" resolveInfo="Highlighter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="920354110794005047" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="920354110794005048">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="2814952292830089914">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="2814952292830089917">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2814952292830089907" resolveInfo="evaluationModel" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="920354110794005050">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="920354110794005061">
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="920354110794005062">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="920354110794005063">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005064">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="920354110794005065">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005066">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189578" resolveInfo="addGenerationListener" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="920354110794005067">
                    <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="920354110794005068">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="920354110794005069">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005070">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="920354110794005071" />
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005072">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="920354110794005532" resolveInfo="updateGenerationResultTab" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="920354110794005073">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794005074" resolveInfo="result" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="920354110794005074">
                      <property name="name" nameId="tpck.1169194664001" value="result" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="920354110794005075" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005076">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="920354110794005077">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005078">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189591" resolveInfo="isDeveloperMode" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="920354110794005079" />
        <node role="statement" roleId="tpee.1068581517665" type="qff7.ExecuteCommandStatement" typeId="qff7.8974276187400348177" id="920354110794005080">
          <node role="commandClosureLiteral" roleId="qff7.8974276187400348171" type="qff7.CommandClosureLiteral" typeId="qff7.8974276187400348173" id="920354110794005081">
            <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="920354110794005082">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="276193728322571070">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="276193728322571071">
                  <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="276193728322571072">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004963" resolveInfo="myEditor" />
                  </node>
                  <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="276193728322571073">
                    <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="276193728322571074">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpru.276193728322472400" resolveInfo="EmbeddableEditor" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="276193728322571075">
                        <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="276193728322571076">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vsqj.~ModuleContext%d&lt;init&gt;(jetbrains%dmps%dproject%dIModule,jetbrains%dmps%dproject%dProject)" resolveInfo="ModuleContext" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="276193728322571077">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="276193728322571078">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="276193728322571079">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189533" resolveInfo="getModule" />
                            </node>
                          </node>
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="276193728322571081">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="276193728322571082">
                              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="276193728322571083">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
                              </node>
                              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="276193728322571084">
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189533" resolveInfo="getModule" />
                              </node>
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="276193728322571085">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.1247371618987947156" resolveInfo="getMPSProject" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="276193728322571087">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="276193728322571088">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="276193728322571089">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.5720687632037780193" resolveInfo="getModel" />
                        </node>
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5720687632037803818">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="5720687632037803817">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5720687632037803822">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189568" resolveInfo="getNodeToShow" />
                        </node>
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="276193728322571096">
                        <property name="value" nameId="tpee.1068580123138" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="920354110794005120" />
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="920354110794005121">
                <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005122">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="162769737603668787">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005126">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189561" resolveInfo="getRequiredLanguages" />
                  </node>
                </node>
                <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="920354110794005127">
                  <property name="name" nameId="tpck.1169194664001" value="language" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="920354110794005128">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="cu2c.~Language" resolveInfo="Language" />
                  </node>
                </node>
                <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="920354110794005129">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="920354110794005130">
                    <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005131">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="162769737603668786">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004963" resolveInfo="myEditor" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005135">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpru.1227605579938" resolveInfo="addLanguage" />
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="920354110794005136">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794005127" resolveInfo="language" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="920354110794005155" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600501">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600503">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178600502">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178601692">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178597990" resolveInfo="addModel" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178601693">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7930787450152614848">
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7930787450152614849">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7930787450152615900">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7930787450152615901">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7930787450152615902">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7930787450152615903">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="4519228156633480337" resolveInfo="updateLocation" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7930787450152615904">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7930787450152615905">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7930787450152615906">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7930787450152615907">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7930787450152615908">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7930787450152615909">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1l1h.4474271214082917131" resolveInfo="getUiState" />
                          </node>
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7930787450152615910">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="a3o9.3432969378036015514" resolveInfo="getStackFrame" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7930787450152615911">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="y3sp.3432969378036016734" resolveInfo="getLocation" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7930787450152615912">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="y3sp.4209988649465089997" resolveInfo="getUnitName" />
                    </node>
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7930787450152615913">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7930787450152615914">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7930787450152615915">
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7930787450152615916">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1l1h.4474271214082917131" resolveInfo="getUiState" />
                        </node>
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7930787450152615917">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7930787450152615918">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="a3o9.3432969378036015518" resolveInfo="getThread" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7930787450152615919">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="y3sp.3432969378036014659" resolveInfo="getThread" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7930787450152615895">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7930787450152614858">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7930787450152614857">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7930787450152614863">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189525" resolveInfo="getDebugSession" />
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7930787450152615899">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1l1h.4474271214082916949" resolveInfo="isPaused" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7406771907178600499" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7283833278907755783">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7283833278907755784">
            <property name="name" nameId="tpck.1169194664001" value="splitPane" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7283833278907755785">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~JSplitPane" resolveInfo="JSplitPane" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7283833278907755786">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7283833278907755787">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JSplitPane%d&lt;init&gt;(int)" resolveInfo="JSplitPane" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="7283833278907755788">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="dbrf.~JSplitPane" resolveInfo="JSplitPane" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="dbrf.~JSplitPane%dVERTICAL_SPLIT" resolveInfo="VERTICAL_SPLIT" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1055996919827634276">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1055996919827634278">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1055996919827634277">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7283833278907755784" resolveInfo="splitPane" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1055996919827634282">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JSplitPane%dsetResizeWeight(double)%cvoid" resolveInfo="setResizeWeight" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.FloatingPointConstant" typeId="tpee.1111509017652" id="1055996919827634284">
                <property name="value" nameId="tpee.1113006610751" value="0.8" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7283833278907755789">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7283833278907755790">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7283833278907755791">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7283833278907755784" resolveInfo="splitPane" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7283833278907755792">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JSplitPane%dsetTopComponent(java%dawt%dComponent)%cvoid" resolveInfo="setTopComponent" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7283833278907755793">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7283833278907755794">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004963" resolveInfo="myEditor" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7283833278907755795">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpru.1220278334166" resolveInfo="getComponenet" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7283833278907755803">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7283833278907755804">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7283833278907755805">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7283833278907755784" resolveInfo="splitPane" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7283833278907755806">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JSplitPane%dsetBottomComponent(java%dawt%dComponent)%cvoid" resolveInfo="setBottomComponent" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7283833278907755807">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7283833278907755808">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="aw8c.~JBScrollPane%d&lt;init&gt;(java%dawt%dComponent)" resolveInfo="JBScrollPane" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7283833278907755809">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7283833278907755810" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7283833278907755811">
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7283833278907755812">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7283833278907755813">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7283833278907755814">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7283833278907755815">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004952" resolveInfo="myTabbedPane" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7283833278907755816">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JTabbedPane%daddTab(java%dlang%dString,java%dawt%dComponent)%cvoid" resolveInfo="addTab" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7283833278907755817">
                    <property name="value" nameId="tpee.1070475926801" value="Main" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7283833278907755818">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7283833278907755784" resolveInfo="splitPane" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7283833278907755819">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7283833278907755820">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1t7x.~Container%dadd(java%dawt%dComponent)%cjava%dawt%dComponent" resolveInfo="add" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7283833278907755821">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004952" resolveInfo="myTabbedPane" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7283833278907755822">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7283833278907755823">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7283833278907755824">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189591" resolveInfo="isDeveloperMode" />
            </node>
          </node>
          <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="7283833278907755825">
            <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="7283833278907755826">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7283833278907755827">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7283833278907755828">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1t7x.~Container%dadd(java%dawt%dComponent)%cjava%dawt%dComponent" resolveInfo="add" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7283833278907755829">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7283833278907755784" resolveInfo="splitPane" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1321036565876643956" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1321036565876657781">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1321036565876657788">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1321036565876657783">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="1321036565876657782">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004963" resolveInfo="myEditor" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1321036565876657787">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpru.1220278334166" resolveInfo="getComponenet" />
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1321036565876658977">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JComponent%dregisterKeyboardAction(java%dawt%devent%dActionListener,javax%dswing%dKeyStroke,int)%cvoid" resolveInfo="registerKeyboardAction" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1321036565876658978">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="1321036565876658980">
                  <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="1321036565876658981">
                    <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                    <link role="classifier" roleId="tpee.1170346070688" targetNodeId="dbrf.~AbstractAction" resolveInfo="AbstractAction" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~AbstractAction%d&lt;init&gt;()" resolveInfo="AbstractAction" />
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1321036565876658982" />
                    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="1321036565876658983">
                      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                      <property name="name" nameId="tpck.1169194664001" value="actionPerformed" />
                      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1321036565876658984" />
                      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="1321036565876658985" />
                      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1321036565876658986">
                        <property name="name" nameId="tpck.1169194664001" value="p0" />
                        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1321036565876658987">
                          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="8q6x.~ActionEvent" resolveInfo="ActionEvent" />
                        </node>
                      </node>
                      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1321036565876658988">
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1321036565876658989">
                          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="1321036565876658990">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="920354110794005252" resolveInfo="evaluate" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1321036565876658993">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~KeyStroke%dgetKeyStroke(java%dlang%dString)%cjavax%dswing%dKeyStroke" resolveInfo="getKeyStroke" />
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="dbrf.~KeyStroke" resolveInfo="KeyStroke" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1321036565876658994">
                  <property name="value" nameId="tpee.1070475926801" value="ctrl ENTER" />
                </node>
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="1321036565876658996">
                <link role="classifier" roleId="tpee.1144433057691" targetNodeId="dbrf.~JComponent" resolveInfo="JComponent" />
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="dbrf.~JComponent%dWHEN_ANCESTOR_OF_FOCUSED_COMPONENT" resolveInfo="WHEN_ANCESTOR_OF_FOCUSED_COMPONENT" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="8668174811004042154" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7283833278907755831">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7283833278907755832">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="162769737603668785">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794005626" resolveInfo="myHighlighter" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7283833278907755836">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="9a8.~Highlighter%daddAdditionalEditor(jetbrains%dmps%dopenapi%deditor%dEditor)%cvoid" resolveInfo="addAdditionalEditor" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7283833278907755837">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7283833278907755838">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004963" resolveInfo="myEditor" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7283833278907755839">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpru.3094411788089107832" resolveInfo="getEditor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7222423519129192554">
      <property name="name" nameId="tpck.1169194664001" value="getEvaluationModel" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4892916258071779722">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7222423519129192556" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7222423519129192557">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7222423519129192559">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7222423519129192560">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7283833278907764604">
      <property name="name" nameId="tpck.1169194664001" value="dispose" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7283833278907764605" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7283833278907764606" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7283833278907764607">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="9220693556914316976">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6405654937062418786">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="9220693556914316978">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6405654937062418790">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dassertIsDispatchThread()%cvoid" resolveInfo="assertIsDispatchThread" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="6405654937062418792">
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="6405654937062418793">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="6405654937062418794" />
          </node>
          <node role="condition" roleId="tpee.1068580123160" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="6405654937062418795">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1055996919827581981" resolveInfo="myIsDisposed" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6405654937062418796">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="6405654937062418797">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="6405654937062418798">
              <property name="value" nameId="tpee.1068580123138" value="true" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="6405654937062418799">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1055996919827581981" resolveInfo="myIsDisposed" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3196684409401005433">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.SuperMethodCall" typeId="tpee.1073063089578" id="3196684409401005434">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3196684409401005401" resolveInfo="dispose" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6405654937062418805">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6405654937062418806">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="6405654937062418807">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794005626" resolveInfo="myHighlighter" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6405654937062418808">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="9a8.~Highlighter%dremoveAdditionalEditor(jetbrains%dmps%dopenapi%deditor%dEditor)%cvoid" resolveInfo="removeAdditionalEditor" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6405654937062418809">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="6405654937062418810">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004963" resolveInfo="myEditor" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6405654937062418811">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpru.3094411788089107832" resolveInfo="getEditor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6405654937062418812">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6405654937062418813">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="6405654937062418814">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004963" resolveInfo="myEditor" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6405654937062418815">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpru.5602187481573650797" resolveInfo="disposeEditor" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="6405654937062418816">
                <property name="value" nameId="tpee.1068580123138" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="920354110794005252">
      <property name="name" nameId="tpck.1169194664001" value="evaluate" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="920354110794005253" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="920354110794005254" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="920354110794005255">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599908">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178599909">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600119" resolveInfo="evaluate" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178599910">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="920354110794005532">
      <property name="name" nameId="tpck.1169194664001" value="updateGenerationResultTab" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="920354110794005533">
        <property name="name" nameId="tpck.1169194664001" value="generatedResult" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="920354110794005534" />
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="920354110794005535" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="920354110794005536" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="920354110794005537">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="920354110794005538">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005539">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="920354110794005540">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005541">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dinvokeLater(java%dlang%dRunnable,com%dintellij%dopenapi%dapplication%dModalityState)%cvoid" resolveInfo="invokeLater" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="920354110794005542">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="920354110794005543">
                  <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="920354110794005544">
                    <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                    <link role="classifier" roleId="tpee.1170346070688" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="920354110794005545" />
                    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="920354110794005546">
                      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                      <property name="name" nameId="tpck.1169194664001" value="run" />
                      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="920354110794005547" />
                      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="920354110794005548" />
                      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="920354110794005549">
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="920354110794005550">
                          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="920354110794005551">
                            <node role="statement" roleId="tpee.1068581517665" type="qff7.ExecuteCommandStatement" typeId="qff7.8974276187400348177" id="920354110794005552">
                              <node role="commandClosureLiteral" roleId="qff7.8974276187400348171" type="qff7.CommandClosureLiteral" typeId="qff7.8974276187400348173" id="920354110794005553">
                                <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="920354110794005554">
                                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="920354110794005555">
                                    <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="920354110794005556">
                                      <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="920354110794005557">
                                        <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="920354110794005558">
                                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpru.199149364782675564" resolveInfo="EmbeddableEditor" />
                                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="920354110794005559">
                                            <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="920354110794005560">
                                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vsqj.~ModuleContext%d&lt;init&gt;(jetbrains%dmps%dproject%dIModule,jetbrains%dmps%dproject%dProject)" resolveInfo="ModuleContext" />
                                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005561">
                                                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="920354110794005562">
                                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
                                                </node>
                                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005563">
                                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189533" resolveInfo="getModule" />
                                                </node>
                                              </node>
                                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005564">
                                                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005565">
                                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="920354110794005566">
                                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
                                                  </node>
                                                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005567">
                                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189533" resolveInfo="getModule" />
                                                  </node>
                                                </node>
                                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005568">
                                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.1247371618987947156" resolveInfo="getMPSProject" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005569">
                                            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="920354110794005570">
                                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
                                            </node>
                                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005571">
                                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189533" resolveInfo="getModule" />
                                            </node>
                                          </node>
                                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3541949508827666814">
                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794005533" resolveInfo="generatedResult" />
                                          </node>
                                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="920354110794005574">
                                            <property name="value" nameId="tpee.1068580123138" value="false" />
                                          </node>
                                        </node>
                                      </node>
                                      <node role="lValue" roleId="tpee.1068498886295" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005575">
                                        <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="920354110794005576">
                                          <link role="classConcept" roleId="tpee.1182955020723" targetNodeId="920354110794004331" resolveInfo="EvaluationPanel" />
                                        </node>
                                        <node role="operation" roleId="tpee.1197027833540" type="tpee.FieldReferenceOperation" typeId="tpee.1197029447546" id="920354110794005577">
                                          <link role="fieldDeclaration" roleId="tpee.1197029500499" targetNodeId="920354110794004966" resolveInfo="myResultEditor" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="920354110794005578">
                              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005579">
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005580">
                                  <node role="operation" roleId="tpee.1197027833540" type="tpee.FieldReferenceOperation" typeId="tpee.1197029447546" id="920354110794005581">
                                    <link role="fieldDeclaration" roleId="tpee.1197029500499" targetNodeId="920354110794004952" resolveInfo="myTabbedPane" />
                                  </node>
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="920354110794005582">
                                    <link role="classConcept" roleId="tpee.1182955020723" targetNodeId="920354110794004331" resolveInfo="EvaluationPanel" />
                                  </node>
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005583">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JTabbedPane%dadd(java%dlang%dString,java%dawt%dComponent)%cjava%dawt%dComponent" resolveInfo="add" />
                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="920354110794005584">
                                    <property name="value" nameId="tpee.1070475926801" value="Generated Result" />
                                  </node>
                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005585">
                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005586">
                                      <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="920354110794005587">
                                        <link role="classConcept" roleId="tpee.1182955020723" targetNodeId="920354110794004331" resolveInfo="EvaluationPanel" />
                                      </node>
                                      <node role="operation" roleId="tpee.1197027833540" type="tpee.FieldReferenceOperation" typeId="tpee.1197029447546" id="920354110794005588">
                                        <link role="fieldDeclaration" roleId="tpee.1197029500499" targetNodeId="920354110794004966" resolveInfo="myResultEditor" />
                                      </node>
                                    </node>
                                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005589">
                                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpru.1220278334166" resolveInfo="getComponenet" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="920354110794005590">
                              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005591">
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005592">
                                  <node role="operation" roleId="tpee.1197027833540" type="tpee.FieldReferenceOperation" typeId="tpee.1197029447546" id="920354110794005593">
                                    <link role="fieldDeclaration" roleId="tpee.1197029500499" targetNodeId="920354110794004952" resolveInfo="myTabbedPane" />
                                  </node>
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="920354110794005594">
                                    <link role="classConcept" roleId="tpee.1182955020723" targetNodeId="920354110794004331" resolveInfo="EvaluationPanel" />
                                  </node>
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005595">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1t7x.~Container%dvalidate()%cvoid" resolveInfo="validate" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="condition" roleId="tpee.1068580123160" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="920354110794005596">
                            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005597">
                              <node role="operation" roleId="tpee.1197027833540" type="tpee.FieldReferenceOperation" typeId="tpee.1197029447546" id="920354110794005598">
                                <link role="fieldDeclaration" roleId="tpee.1197029500499" targetNodeId="920354110794004966" resolveInfo="myResultEditor" />
                              </node>
                              <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="920354110794005599">
                                <link role="classConcept" roleId="tpee.1182955020723" targetNodeId="920354110794004331" resolveInfo="EvaluationPanel" />
                              </node>
                            </node>
                            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="920354110794005600" />
                          </node>
                          <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="920354110794005601">
                            <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="920354110794005602">
                              <node role="statement" roleId="tpee.1068581517665" type="qff7.ExecuteCommandStatement" typeId="qff7.8974276187400348177" id="728525129182592783">
                                <node role="commandClosureLiteral" roleId="qff7.8974276187400348171" type="qff7.CommandClosureLiteral" typeId="qff7.8974276187400348173" id="728525129182592784">
                                  <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="728525129182592785">
                                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="728525129182592787">
                                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005607">
                                        <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="920354110794005608">
                                          <node role="operation" roleId="tpee.1197027833540" type="tpee.FieldReferenceOperation" typeId="tpee.1197029447546" id="920354110794005609">
                                            <link role="fieldDeclaration" roleId="tpee.1197029500499" targetNodeId="920354110794004966" resolveInfo="myResultEditor" />
                                          </node>
                                          <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="920354110794005610">
                                            <link role="classConcept" roleId="tpee.1182955020723" targetNodeId="920354110794004331" resolveInfo="EvaluationPanel" />
                                          </node>
                                        </node>
                                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="920354110794005611">
                                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpru.1476208411437217394" resolveInfo="setNode" />
                                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="920354110794005612">
                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794005533" resolveInfo="generatedResult" />
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
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="920354110794005613">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="mepa.~ModalityState%dNON_MODAL" resolveInfo="NON_MODAL" />
                <link role="classifier" roleId="tpee.1144433057691" targetNodeId="mepa.~ModalityState" resolveInfo="ModalityState" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="3196684409401005381">
      <property name="name" nameId="tpck.1169194664001" value="update" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3196684409401005382" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="3196684409401005383" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3196684409401005384">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3196684409401005385">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3196684409401005387">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="3196684409401005386">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="920354110794004969" resolveInfo="myEvaluationModel" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3196684409401005391">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189597" resolveInfo="updateState" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="7406771907178597948">
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178597950">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTree" resolveInfo="MPSTree" />
    </node>
    <node role="implementedInterface" roleId="tpee.1095933932569" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231500427">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="6tyf.~DataProvider" resolveInfo="DataProvider" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7406771907178597951">
      <property name="name" nameId="tpck.1169194664001" value="myClassFqName" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178597952" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7406771907178597953" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7406771907178597954">
      <property name="name" nameId="tpck.1169194664001" value="myThreadReference" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="24185091199436491">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f5hh.~ThreadReference" resolveInfo="ThreadReference" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178597955" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7406771907178597957">
      <property name="name" nameId="tpck.1169194664001" value="myStates" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178597958" />
      <node role="type" roleId="tpee.5680397130376446158" type="tp2q.MapType" typeId="tp2q.1197683403723" id="7406771907178597959">
        <node role="keyType" roleId="tp2q.1197683466920" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178597960">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
        <node role="valueType" roleId="tp2q.1197683475734" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178597961">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7406771907178598564" resolveInfo="EvaluationTree.EvaluationState" />
        </node>
      </node>
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178597962">
        <node role="creator" roleId="tpee.1145553007750" type="tp2q.HashMapCreator" typeId="tp2q.1197686869805" id="7406771907178597963">
          <node role="keyType" roleId="tp2q.1197687026896" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178597964">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
          </node>
          <node role="valueType" roleId="tp2q.1197687035757" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178597965">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7406771907178598564" resolveInfo="EvaluationTree.EvaluationState" />
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="2202960751294089827">
      <property name="name" nameId="tpck.1169194664001" value="myActionGroup" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="2202960751294089828" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2202960751294089842">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="6tyf.~ActionGroup" resolveInfo="ActionGroup" />
      </node>
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="2202960751294089848" />
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="2202960751294089851">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~Nullable" resolveInfo="Nullable" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7406771907178597966">
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178597967" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178597968">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SuperConstructorInvocation" typeId="tpee.1070475587102" id="7406771907178597969">
          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTree%d&lt;init&gt;()" resolveInfo="MPSTree" />
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178597978">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178597979">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JTree%dsetRootVisible(boolean)%cvoid" resolveInfo="setRootVisible" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="7406771907178597980" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178597981">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178597982">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JTree%dsetShowsRootHandles(boolean)%cvoid" resolveInfo="setShowsRootHandles" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="7406771907178597983">
              <property name="value" nameId="tpee.1068580123138" value="true" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178597984">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178597985">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTree%drebuildNow()%cvoid" resolveInfo="rebuildNow" />
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4519228156633480337">
      <property name="name" nameId="tpck.1169194664001" value="updateLocation" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4519228156633480341">
        <property name="name" nameId="tpck.1169194664001" value="classFqName" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="4519228156633494908" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4519228156633494909">
        <property name="name" nameId="tpck.1169194664001" value="threadReference" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4519228156633494912">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f5hh.~ThreadReference" resolveInfo="ThreadReference" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4519228156633480338" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4519228156633480339">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4519228156633494913">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="4519228156633494914">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4519228156633494915">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4519228156633480341" resolveInfo="classFqName" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="4519228156633494916">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178597951" resolveInfo="myClassFqName" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4519228156633494917">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="4519228156633494918">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4519228156633494919">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4519228156633494909" resolveInfo="threadReference" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="4519228156633494920">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178597954" resolveInfo="myThreadReference" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4519228156633480340" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178597990">
      <property name="name" nameId="tpck.1169194664001" value="addModel" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178597991" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178597993">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1488682280965957997">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1488682280965958000">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1488682280965957999">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1488682280965958004">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dassertIsDispatchThread()%cvoid" resolveInfo="assertIsDispatchThread" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178597994">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7406771907178597995">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178597996">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7406771907178597997">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178598578" resolveInfo="EvaluationTree.InitializedState" />
              </node>
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7406771907178597998">
              <node role="key" roleId="tp2q.1197932525128" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178597999">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598001" resolveInfo="model" />
              </node>
              <node role="map" roleId="tp2q.1197932505799" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598000">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178597957" resolveInfo="myStates" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598001">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598002">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="671257137235333029">
      <property name="name" nameId="tpck.1169194664001" value="removeModel" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="671257137235333030" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="671257137235333031">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1488682280965958006">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1488682280965958007">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1488682280965958008">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1488682280965958009">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dassertIsDispatchThread()%cvoid" resolveInfo="assertIsDispatchThread" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="671257137235341698">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="671257137235341700">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="671257137235341699">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178597957" resolveInfo="myStates" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.MapRemoveOperation" typeId="tp2q.1207233427108" id="671257137235341704">
              <node role="key" roleId="tp2q.1207233489861" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="671257137235341706">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="671257137235333039" resolveInfo="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="671257137235333039">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="671257137235333040">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178598003">
      <property name="name" nameId="tpck.1169194664001" value="setResultProxy" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598005" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598006">
        <property name="name" nameId="tpck.1169194664001" value="valueProxy" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4469516346142915609">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dcbi.4727801710070560812" resolveInfo="IValueProxy" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598008">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598009">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598010">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1488682280965958011">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1488682280965958012">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1488682280965958013">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1488682280965958014">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dassertIsDispatchThread()%cvoid" resolveInfo="assertIsDispatchThread" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178598011">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7406771907178598012">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178598013">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7406771907178598014">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178598623" resolveInfo="EvaluationTree.ResultState" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="148720074658494213">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="148720074658494212">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598008" resolveInfo="model" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="148720074658494217">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.3988550529129685725" resolveInfo="getPresentation" />
                  </node>
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598015">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598006" resolveInfo="valueProxy" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="4519228156633494921">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178597951" resolveInfo="myClassFqName" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598017">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178597954" resolveInfo="myThreadReference" />
                </node>
              </node>
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7406771907178598018">
              <node role="key" roleId="tp2q.1197932525128" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598019">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598008" resolveInfo="model" />
              </node>
              <node role="map" roleId="tp2q.1197932505799" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598020">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178597957" resolveInfo="myStates" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178598021">
      <property name="name" nameId="tpck.1169194664001" value="setError" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598022" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598024">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1488682280965958016">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1488682280965958017">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1488682280965958018">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1488682280965958019">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dassertIsDispatchThread()%cvoid" resolveInfo="assertIsDispatchThread" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178598025">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7406771907178598026">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178598027">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7406771907178598028">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178598676" resolveInfo="EvaluationTree.FailureState" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598029">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598033" resolveInfo="text" />
                </node>
              </node>
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7406771907178598030">
              <node role="key" roleId="tp2q.1197932525128" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598031">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598036" resolveInfo="model" />
              </node>
              <node role="map" roleId="tp2q.1197932505799" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598032">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178597957" resolveInfo="myStates" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598033">
        <property name="name" nameId="tpck.1169194664001" value="text" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7406771907178598034" />
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178598035">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598036">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598037">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178598038">
      <property name="name" nameId="tpck.1169194664001" value="setError" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598039" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598041">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1488682280965958021">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1488682280965958022">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1488682280965958023">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1488682280965958024">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dassertIsDispatchThread()%cvoid" resolveInfo="assertIsDispatchThread" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178598042">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7406771907178598043">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178598044">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7406771907178598045">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178598686" resolveInfo="EvaluationTree.FailureState" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598046">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598050" resolveInfo="error" />
                </node>
              </node>
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7406771907178598047">
              <node role="key" roleId="tp2q.1197932525128" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598048">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598053" resolveInfo="model" />
              </node>
              <node role="map" roleId="tp2q.1197932505799" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598049">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178597957" resolveInfo="myStates" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598050">
        <property name="name" nameId="tpck.1169194664001" value="error" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598051">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Throwable" resolveInfo="Throwable" />
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178598052">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598053">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598054">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178598055">
      <property name="name" nameId="tpck.1169194664001" value="setEvaluating" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598056">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598057">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598058" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598060">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1488682280965958026">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1488682280965958027">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1488682280965958028">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1488682280965958029">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dassertIsDispatchThread()%cvoid" resolveInfo="assertIsDispatchThread" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178598061">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7406771907178598062">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178598063">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7406771907178598064">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178598593" resolveInfo="EvaluationTree.EvaluationInProgressState" />
              </node>
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7406771907178598065">
              <node role="key" roleId="tp2q.1197932525128" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598066">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598056" resolveInfo="model" />
              </node>
              <node role="map" roleId="tp2q.1197932505799" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598067">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178597957" resolveInfo="myStates" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178598068">
      <property name="name" nameId="tpck.1169194664001" value="rebuild" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="7406771907178598069" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598070">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTreeNode" resolveInfo="MPSTreeNode" />
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598071">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7406771907178598072">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7406771907178598073">
            <property name="name" nameId="tpck.1169194664001" value="rootTreeNode" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598074">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTreeNode" resolveInfo="MPSTreeNode" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178598075">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7406771907178598076">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~TextTreeNode%d&lt;init&gt;(java%dlang%dString)" resolveInfo="TextTreeNode" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7406771907178598077">
                  <property name="value" nameId="tpee.1070475926801" value="Evaluation Result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="7406771907178598078">
          <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="7406771907178598079">
            <property name="name" nameId="tpck.1169194664001" value="model" />
          </node>
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598080">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178598081">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178598082">
                <node role="operand" roleId="tpee.1197027771414" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7704359791231501444">
                  <node role="key" roleId="tp2q.1197932525128" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="7704359791231501447">
                    <link role="variable" roleId="tp2q.1153944258490" targetNodeId="7406771907178598079" resolveInfo="model" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7704359791231501443">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178597957" resolveInfo="myStates" />
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178598084">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178598565" resolveInfo="rebuild" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178598085">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598073" resolveInfo="rootTreeNode" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="7704359791231501448">
                    <link role="variable" roleId="tp2q.1153944258490" targetNodeId="7406771907178598079" resolveInfo="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178598086">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598087">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178597957" resolveInfo="myStates" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetKeysOperation" typeId="tp2q.1201872418428" id="7704359791231501441" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="7406771907178598089">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178598090">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598073" resolveInfo="rootTreeNode" />
          </node>
        </node>
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178598091">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="2999655953941662116">
      <property name="name" nameId="tpck.1169194664001" value="rebuildEvaluationTreeNowIfNotDisposed" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="2999655953941662117" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2999655953941662118">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2999655953941664012">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2999655953941664015">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2999655953941664014">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2999655953941668601">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dassertIsDispatchThread()%cvoid" resolveInfo="assertIsDispatchThread" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="3994058048873162591">
          <node role="condition" roleId="tpee.1068580123160" type="tpee.NotExpression" typeId="tpee.1081516740877" id="3994058048873162594">
            <node role="expression" roleId="tpee.1081516765348" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="2999655953941668603">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTree%disDisposed()%cboolean" resolveInfo="isDisposed" />
            </node>
          </node>
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="3994058048873162593">
            <node role="statement" roleId="tpee.1068581517665" type="qff7.ExecuteLightweightCommandStatement" typeId="qff7.8974276187400348181" id="3994058048873163858">
              <node role="commandClosureLiteral" roleId="qff7.8974276187400348171" type="qff7.CommandClosureLiteral" typeId="qff7.8974276187400348173" id="3994058048873163859">
                <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="3994058048873163860">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2999655953941668604">
                    <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="2999655953941668605">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTree%drebuildNow()%cvoid" resolveInfo="rebuildNow" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="2999655953941668602" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4613278401347199465">
      <property name="name" nameId="tpck.1169194664001" value="dispose" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4613278401347199466" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4613278401347199467" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4613278401347199468">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4613278401347199473">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4613278401347199475">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="4613278401347199474">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178597957" resolveInfo="myStates" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.MapClearOperation" typeId="tp2q.1208542034276" id="4613278401347199479" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8636858894554623274">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8636858894554623276">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="8636858894554623275" />
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8636858894554623280">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTree%dclear()%cvoid" resolveInfo="clear" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4613278401347199470">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.SuperMethodCall" typeId="tpee.1073063089578" id="4613278401347199471">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTree%ddispose()%cvoid" resolveInfo="dispose" />
          </node>
        </node>
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="4613278401347199469">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="6803133305480959080">
      <property name="name" nameId="tpck.1169194664001" value="findSelectedNode" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6803133305480959082">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="6803133305480959093">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="6803133305480959094">
            <property name="name" nameId="tpck.1169194664001" value="path" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480959095">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="osf5.~TreePath" resolveInfo="TreePath" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="6803133305480959096">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JTree%dgetSelectionPath()%cjavax%dswing%dtree%dTreePath" resolveInfo="getSelectionPath" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="6803133305480959097">
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="6803133305480959098">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="6803133305480959099">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="6803133305480959100">
                <property name="name" nameId="tpck.1169194664001" value="component" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480959101">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
                </node>
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6803133305480959102">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480959103">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6803133305480959094" resolveInfo="path" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6803133305480959104">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="osf5.~TreePath%dgetLastPathComponent()%cjava%dlang%dObject" resolveInfo="getLastPathComponent" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="6803133305480959105">
              <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="6803133305480959106">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="6803133305480959107">
                  <node role="expression" roleId="tpee.1068581517676" type="tpee.CastExpression" typeId="tpee.1070534934090" id="6803133305480959110">
                    <node role="expression" roleId="tpee.1070534934092" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480959111">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6803133305480959100" resolveInfo="component" />
                    </node>
                    <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480985082">
                      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTreeNode" resolveInfo="MPSTreeNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="tpee.1068580123160" type="tpee.InstanceOfExpression" typeId="tpee.1081256982272" id="6803133305480959114">
                <node role="classType" roleId="tpee.1081256993305" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480985855">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTreeNode" resolveInfo="MPSTreeNode" />
                </node>
                <node role="leftExpression" roleId="tpee.1081256993304" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480959116">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6803133305480959100" resolveInfo="component" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="tpee.1068580123160" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="6803133305480959117">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="6803133305480959118" />
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480959119">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6803133305480959094" resolveInfo="path" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="6803133305480959176">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="6803133305480966730" />
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="6803133305480959141" />
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="6803133305480966731">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~Nullable" resolveInfo="Nullable" />
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480985071">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTreeNode" resolveInfo="MPSTreeNode" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7704359791231500428">
      <property name="name" nameId="tpck.1169194664001" value="getData" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7704359791231500429" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231500430">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7704359791231500431">
        <property name="name" nameId="tpck.1169194664001" value="dataId" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7704359791231500438" />
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7704359791231500433">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NonNls" resolveInfo="NonNls" />
        </node>
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7704359791231500434">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~Nullable" resolveInfo="Nullable" />
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7704359791231500435">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7704359791231500439">
          <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7704359791231500443">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7704359791231500442">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231500431" resolveInfo="dataId" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7704359791231500447">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7704359791231500449">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="60037598617197274">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="7406771907178600108" resolveInfo="EvaluationUi" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="60037598617197268" resolveInfo="EVALUATION_MODEL" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7704359791231500453">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~DataKey%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
                </node>
              </node>
            </node>
          </node>
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7704359791231500441">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="6803133305480966748">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="6803133305480966749">
                <property name="name" nameId="tpck.1169194664001" value="node" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480986136">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTreeNode" resolveInfo="MPSTreeNode" />
                </node>
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="6803133305480966752">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6803133305480959080" resolveInfo="findSelectedNode" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="6803133305480966754">
              <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="6803133305480966755">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="6803133305480966763">
                  <node role="expression" roleId="tpee.1068581517676" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6803133305480986129">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.ParenthesizedExpression" typeId="tpee.1079359253375" id="6803133305480986102">
                      <node role="expression" roleId="tpee.1079359253376" type="tpee.CastExpression" typeId="tpee.1070534934090" id="6803133305480986105">
                        <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480986108">
                          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7704359791231500630" resolveInfo="EvaluationTree.EvaluationModelNode" />
                        </node>
                        <node role="expression" roleId="tpee.1070534934092" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480966765">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6803133305480966749" resolveInfo="node" />
                        </node>
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6803133305480986135">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7704359791231500632" resolveInfo="getModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="tpee.1068580123160" type="tpee.AndExpression" typeId="tpee.1080120340718" id="6803133305480986074">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.InstanceOfExpression" typeId="tpee.1081256982272" id="6803133305480986078">
                  <node role="classType" roleId="tpee.1081256993305" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480986081">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7704359791231500630" resolveInfo="EvaluationTree.EvaluationModelNode" />
                  </node>
                  <node role="leftExpression" roleId="tpee.1081256993304" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480986077">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6803133305480966749" resolveInfo="node" />
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="6803133305480966759">
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480966758">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6803133305480966749" resolveInfo="node" />
                  </node>
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="6803133305480966762" />
                </node>
              </node>
            </node>
          </node>
          <node role="elsifClauses" roleId="tpee.1206060520071" type="tpee.ElsifClause" typeId="tpee.1206060495898" id="9195085101460300250">
            <node role="condition" roleId="tpee.1206060619838" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9195085101460300294">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="9195085101460300273">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231500431" resolveInfo="dataId" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9195085101460300300">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9195085101460300327">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="9195085101460300306">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="choc.4474271214083118048" resolveInfo="VariablesTree" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="choc.418270182880555024" resolveInfo="MPS_DEBUGGER_VALUE" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9195085101460300333">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~DataKey%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statementList" roleId="tpee.1206060644605" type="tpee.StatementList" typeId="tpee.1068580123136" id="9195085101460300252">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="6803133305480966806">
                <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="6803133305480966807">
                  <property name="name" nameId="tpck.1169194664001" value="node" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480986053">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTreeNode" resolveInfo="MPSTreeNode" />
                  </node>
                  <node role="initializer" roleId="tpee.1068431790190" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="6803133305480966809">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6803133305480959080" resolveInfo="findSelectedNode" />
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="6803133305480966811">
                <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="6803133305480966812">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="6803133305480966813">
                    <node role="expression" roleId="tpee.1068581517676" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6803133305480985997">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.ParenthesizedExpression" typeId="tpee.1079359253375" id="6803133305480985970">
                        <node role="expression" roleId="tpee.1079359253376" type="tpee.CastExpression" typeId="tpee.1070534934090" id="6803133305480985973">
                          <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480985976">
                            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7704359791231501369" resolveInfo="EvaluationTree.ResultState.MyWatchableNode" />
                          </node>
                          <node role="expression" roleId="tpee.1070534934092" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480966815">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6803133305480966807" resolveInfo="node" />
                          </node>
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6803133305480986003">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="choc.4474271214083120203" resolveInfo="getValue" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition" roleId="tpee.1068580123160" type="tpee.AndExpression" typeId="tpee.1080120340718" id="6803133305480986025">
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.InstanceOfExpression" typeId="tpee.1081256982272" id="6803133305480986049">
                    <node role="classType" roleId="tpee.1081256993305" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480986052">
                      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7704359791231501369" resolveInfo="EvaluationTree.ResultState.MyWatchableNode" />
                    </node>
                    <node role="leftExpression" roleId="tpee.1081256993304" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480986028">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6803133305480966807" resolveInfo="node" />
                    </node>
                  </node>
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="6803133305480966817">
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480966819">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6803133305480966807" resolveInfo="node" />
                    </node>
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="6803133305480966818" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="elsifClauses" roleId="tpee.1206060520071" type="tpee.ElsifClause" typeId="tpee.1206060495898" id="6803133305480958998">
            <node role="statementList" roleId="tpee.1206060644605" type="tpee.StatementList" typeId="tpee.1068580123136" id="6803133305480959000">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="6803133305480977757">
                <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="6803133305480977758">
                  <property name="name" nameId="tpck.1169194664001" value="node" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480985866">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTreeNode" resolveInfo="MPSTreeNode" />
                  </node>
                  <node role="initializer" roleId="tpee.1068431790190" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="6803133305480977760">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6803133305480959080" resolveInfo="findSelectedNode" />
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="6803133305480977764">
                <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="6803133305480977765">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="6803133305480977793">
                    <node role="expression" roleId="tpee.1068581517676" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6803133305480985943">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.ParenthesizedExpression" typeId="tpee.1079359253375" id="6803133305480985915">
                        <node role="expression" roleId="tpee.1079359253376" type="tpee.CastExpression" typeId="tpee.1070534934090" id="6803133305480985919">
                          <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480985922">
                            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7406771907178599348" resolveInfo="EvaluationTree.ErrorTreeNode" />
                          </node>
                          <node role="expression" roleId="tpee.1070534934092" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480977795">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6803133305480977758" resolveInfo="node" />
                          </node>
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6803133305480985949">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6803133305480958640" resolveInfo="getThrowable" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition" roleId="tpee.1068580123160" type="tpee.AndExpression" typeId="tpee.1080120340718" id="6803133305480985887">
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.InstanceOfExpression" typeId="tpee.1081256982272" id="6803133305480985891">
                    <node role="classType" roleId="tpee.1081256993305" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480985894">
                      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7406771907178599348" resolveInfo="EvaluationTree.ErrorTreeNode" />
                    </node>
                    <node role="leftExpression" roleId="tpee.1081256993304" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480985890">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6803133305480977758" resolveInfo="node" />
                    </node>
                  </node>
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="6803133305480977789">
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480977768">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6803133305480977758" resolveInfo="node" />
                    </node>
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="6803133305480977792" />
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" roleId="tpee.1206060619838" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6803133305480959047">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="6803133305480959026">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231500431" resolveInfo="dataId" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6803133305480959053">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6803133305480959074">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4893181994832024807">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5xh9.~MPSCommonDataKeys" resolveInfo="MPSCommonDataKeys" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5xh9.~MPSCommonDataKeys%dEXCEPTION" resolveInfo="EXCEPTION" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6803133305480959079">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~DataKey%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="7704359791231500472">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7704359791231500474" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="2202960751294089854">
      <property name="name" nameId="tpck.1169194664001" value="setActionGroup" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="2202960751294089855" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2202960751294089856">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2202960751294089900">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="2202960751294089922">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="2202960751294089925">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2202960751294089888" resolveInfo="group" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2202960751294089901">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2202960751294089827" resolveInfo="myActionGroup" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2202960751294089877" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2202960751294089888">
        <property name="name" nameId="tpck.1169194664001" value="group" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2202960751294089889">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="6tyf.~ActionGroup" resolveInfo="ActionGroup" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="2915139105446498560">
      <property name="name" nameId="tpck.1169194664001" value="getStackTrace" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ArrayType" typeId="tpee.1070534760951" id="2915139105446498535">
        <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="2915139105446498536" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2915139105446498537">
        <property name="name" nameId="tpck.1169194664001" value="t" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2915139105446498538">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Throwable" resolveInfo="Throwable" />
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2915139105446498539">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2915139105446498540">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2915139105446498541">
            <property name="name" nameId="tpck.1169194664001" value="writer" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2915139105446498542">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="fxg7.~StringWriter" resolveInfo="StringWriter" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2915139105446498543">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="2915139105446498544">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~StringWriter%d&lt;init&gt;()" resolveInfo="StringWriter" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2915139105446498545">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2915139105446498546">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="2915139105446498547">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2915139105446498537" resolveInfo="t" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2915139105446498548">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Throwable%dprintStackTrace(java%dio%dPrintWriter)%cvoid" resolveInfo="printStackTrace" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2915139105446498549">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="2915139105446498550">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintWriter%d&lt;init&gt;(java%dio%dWriter)" resolveInfo="PrintWriter" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="2915139105446498551">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2915139105446498541" resolveInfo="writer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2915139105446498552">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2915139105446498553">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2915139105446498554">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="2915139105446498555">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2915139105446498541" resolveInfo="writer" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2915139105446498556">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~StringWriter%dtoString()%cjava%dlang%dString" resolveInfo="toString" />
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2915139105446498557">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dsplit(java%dlang%dString)%cjava%dlang%dString[]" resolveInfo="split" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2915139105446498558">
                <property name="value" nameId="tpee.1070475926801" value="\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2915139105446498563" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7406771907178598564">
      <property name="name" nameId="tpck.1169194664001" value="EvaluationState" />
      <property name="nonStatic" nameId="tpee.521412098689998745" value="false" />
      <property name="abstractClass" nameId="tpee.1075300953594" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178598571" />
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7406771907178598572">
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598573" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178598574" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598575" />
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178598565">
        <property name="isAbstract" nameId="tpee.1178608670077" value="true" />
        <property name="name" nameId="tpck.1169194664001" value="rebuild" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598566" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178598567" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598568" />
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598569">
          <property name="name" nameId="tpck.1169194664001" value="rootTreeNode" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598570">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTreeNode" resolveInfo="MPSTreeNode" />
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7704359791231501421">
          <property name="name" nameId="tpck.1169194664001" value="model" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231501423">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.Interface" typeId="tpee.1107796713796" id="7704359791231500630">
      <property name="name" nameId="tpck.1169194664001" value="EvaluationModelNode" />
      <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7704359791231500631" />
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7704359791231500632">
        <property name="isAbstract" nameId="tpee.1178608670077" value="true" />
        <property name="name" nameId="tpck.1169194664001" value="getModel" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231500636">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7704359791231500634" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7704359791231500635" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7406771907178598576">
      <property name="name" nameId="tpck.1169194664001" value="InitializedState" />
      <property name="nonStatic" nameId="tpee.521412098689998745" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178598577" />
      <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598582">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7406771907178598564" resolveInfo="EvaluationTree.EvaluationState" />
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7406771907178598578">
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598579" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178598580" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598581" />
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178598583">
        <property name="name" nameId="tpck.1169194664001" value="rebuild" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598584" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178598585" />
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598586">
          <property name="name" nameId="tpck.1169194664001" value="rootTreeNode" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598587">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTreeNode" resolveInfo="MPSTreeNode" />
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7704359791231501632">
          <property name="name" nameId="tpck.1169194664001" value="model" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231501634">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
          </node>
        </node>
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598588">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4157161565487791228">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4157161565487791230">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4157161565487791229">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598586" resolveInfo="rootTreeNode" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4157161565487794059">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="osf5.~DefaultMutableTreeNode%dadd(javax%dswing%dtree%dMutableTreeNode)%cvoid" resolveInfo="add" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="4157161565487794060">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="4120145653580383656">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="4120145653580383633" resolveInfo="EvaluationTree.InitialTreeNode" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4120145653580383657">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231501632" resolveInfo="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="4120145653580383006">
            <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="4120145653580383007">
              <property name="text" nameId="tpee.6329021646629104958" value="todo?" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7406771907178598591">
      <property name="name" nameId="tpck.1169194664001" value="EvaluationInProgressState" />
      <property name="nonStatic" nameId="tpee.521412098689998745" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178598592" />
      <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598597">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7406771907178598564" resolveInfo="EvaluationTree.EvaluationState" />
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7406771907178598593">
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598594" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178598595" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598596" />
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178598598">
        <property name="name" nameId="tpck.1169194664001" value="rebuild" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598599" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178598600" />
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598601">
          <property name="name" nameId="tpck.1169194664001" value="rootTreeNode" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598602">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTreeNode" resolveInfo="MPSTreeNode" />
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7704359791231501424">
          <property name="name" nameId="tpck.1169194664001" value="model" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231501426">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
          </node>
        </node>
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598603">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178598604">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178598605">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598606">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598601" resolveInfo="rootTreeNode" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178598607">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="osf5.~DefaultMutableTreeNode%dadd(javax%dswing%dtree%dMutableTreeNode)%cvoid" resolveInfo="add" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178598608">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7406771907178598609">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178599557" resolveInfo="EvaluationTree.EvaluatingTreeNode" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7704359791231501428">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231501424" resolveInfo="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7406771907178598610">
      <property name="name" nameId="tpck.1169194664001" value="ResultState" />
      <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178598622" />
      <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598645">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7406771907178598564" resolveInfo="EvaluationTree.EvaluationState" />
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7406771907178598611">
        <property name="name" nameId="tpck.1169194664001" value="myValueProxy" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598612">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dcbi.4727801710070560812" resolveInfo="IValueProxy" />
        </node>
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178598613" />
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178598614">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7406771907178598615">
        <property name="name" nameId="tpck.1169194664001" value="myClassFqName" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178598616" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7406771907178598617" />
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178598618">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7406771907178598619">
        <property name="name" nameId="tpck.1169194664001" value="myThreadReference" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178598620" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598621">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f5hh.~ThreadReference" resolveInfo="ThreadReference" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="148720074658494222">
        <property name="name" nameId="tpck.1169194664001" value="myPresentation" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="148720074658494223" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="148720074658494225" />
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="612015978684684282">
        <property name="name" nameId="tpck.1169194664001" value="myCachedWatchable" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="612015978684684283" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2596130676084677703">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="2s0o.3432969378036017747" resolveInfo="CalculatedWatchable" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7406771907178598623">
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="148720074658494218">
          <property name="name" nameId="tpck.1169194664001" value="presentation" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="148720074658494221" />
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598624">
          <property name="name" nameId="tpck.1169194664001" value="proxy" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598625">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dcbi.4727801710070560812" resolveInfo="IValueProxy" />
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598626">
          <property name="name" nameId="tpck.1169194664001" value="classFqName" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7406771907178598627" />
          <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="55706870180656545">
            <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598628">
          <property name="name" nameId="tpck.1169194664001" value="threadReference" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598629">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f5hh.~ThreadReference" resolveInfo="ThreadReference" />
          </node>
        </node>
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598630" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178598631" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598632">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="148720074658494227">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="148720074658494229">
              <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="148720074658494232">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="148720074658494218" resolveInfo="presentation" />
              </node>
              <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="148720074658494228">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="148720074658494222" resolveInfo="myPresentation" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178598633">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7406771907178598634">
              <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598635">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598624" resolveInfo="proxy" />
              </node>
              <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598636">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598611" resolveInfo="myValueProxy" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178598637">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7406771907178598638">
              <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598639">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598626" resolveInfo="classFqName" />
              </node>
              <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598640">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598615" resolveInfo="myClassFqName" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178598641">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7406771907178598642">
              <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598643">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598628" resolveInfo="threadReference" />
              </node>
              <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598644">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598619" resolveInfo="myThreadReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178598646">
        <property name="name" nameId="tpck.1169194664001" value="rebuild" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598647" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178598648" />
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598649">
          <property name="name" nameId="tpck.1169194664001" value="rootTreeNode" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598650">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTreeNode" resolveInfo="MPSTreeNode" />
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7704359791231501429">
          <property name="name" nameId="tpck.1169194664001" value="model" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231501431">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
          </node>
        </node>
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598651">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="8590356478998757174">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="8590356478998757175">
              <property name="name" nameId="tpck.1169194664001" value="canEvalaute" />
              <property name="isFinal" nameId="tpee.1176718929932" value="true" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.BooleanType" typeId="tpee.1070534644030" id="8590356478998757176" />
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6647443673251176088">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8590356478998757177">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8590356478998757178">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="8590356478998757179">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231501429" resolveInfo="model" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8590356478998757180">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189525" resolveInfo="getDebugSession" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8590356478998757181">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="d822.4352118152439825345" resolveInfo="getEvaluationProvider" />
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6647443673251176092">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="lt1n.4474271214082914199" resolveInfo="canEvaluate" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="612015978684709561">
            <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="612015978684709562">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="612015978684709572">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="612015978684709574">
                  <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="612015978684709573">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="612015978684684282" resolveInfo="myCachedWatchable" />
                  </node>
                  <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="612015978684709577">
                    <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="612015978684709578">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2s0o.3432969378036017757" resolveInfo="CalculatedWatchable" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="612015978684709579">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="148720074658494222" resolveInfo="myPresentation" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="612015978684709580">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="612015978684709581">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598611" resolveInfo="myValueProxy" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="612015978684709582">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dcbi.4727801710070560815" resolveInfo="getJDIValue" />
                        </node>
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="612015978684709583">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598615" resolveInfo="myClassFqName" />
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="612015978684709584">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598619" resolveInfo="myThreadReference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" roleId="tpee.1068580123160" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8590356478998757182">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8590356478998757175" resolveInfo="canEvalaute" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="612015978684709586">
            <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="612015978684709587">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="612015978684709596">
                <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="612015978684709597">
                  <property name="name" nameId="tpck.1169194664001" value="watchableNode" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1278811218404158497">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="choc.4474271214083120082" resolveInfo="WatchableNode" />
                  </node>
                  <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="6647443673251181314">
                    <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="6647443673251181320">
                      <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="6647443673251181321">
                        <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                        <link role="classifier" roleId="tpee.1170346070688" targetNodeId="7704359791231501369" resolveInfo="EvaluationTree.ResultState.MyWatchableNode" />
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7704359791231501371" resolveInfo="EvaluationTree.ResultState.MyWatchableNode" />
                        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="6647443673251181322" />
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="6647443673251181317">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231501429" resolveInfo="model" />
                        </node>
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="6647443673251181319">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="612015978684684282" resolveInfo="myCachedWatchable" />
                        </node>
                        <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="6647443673251181360">
                          <property name="name" nameId="tpck.1169194664001" value="isLeaf" />
                          <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="6647443673251181361" />
                          <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="6647443673251181362" />
                          <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6647443673251181363">
                            <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="6647443673251181367">
                              <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="6647443673251181368">
                                <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="6647443673251181369">
                                  <node role="expression" roleId="tpee.1068581517676" type="tpee.SuperMethodCall" typeId="tpee.1073063089578" id="6647443673251181370">
                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="choc.4474271214083120185" resolveInfo="isLeaf" />
                                  </node>
                                </node>
                              </node>
                              <node role="condition" roleId="tpee.1068580123160" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6647443673251181371">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8590356478998757175" resolveInfo="canEvalaute" />
                              </node>
                            </node>
                            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6647443673251181372">
                              <node role="expression" roleId="tpee.1068580123156" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="6647443673251181373">
                                <property name="value" nameId="tpee.1068580123138" value="true" />
                              </node>
                            </node>
                          </node>
                          <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="6647443673251181364">
                            <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="612015978684709604">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="612015978684709605">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="612015978684709606">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598649" resolveInfo="rootTreeNode" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="612015978684709607">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="osf5.~DefaultMutableTreeNode%dadd(javax%dswing%dtree%dMutableTreeNode)%cvoid" resolveInfo="add" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="612015978684709608">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="612015978684709597" resolveInfo="watchableNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" roleId="tpee.1068580123160" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="612015978684709591">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="612015978684709594" />
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="612015978684709590">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="612015978684684282" resolveInfo="myCachedWatchable" />
              </node>
            </node>
            <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="612015978684709609">
              <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="612015978684709610">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="612015978684709611">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="612015978684709613">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="612015978684709612">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598649" resolveInfo="rootTreeNode" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="612015978684712442">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="osf5.~DefaultMutableTreeNode%dadd(javax%dswing%dtree%dMutableTreeNode)%cvoid" resolveInfo="add" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="6647443673251181309">
                        <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="6647443673251181311">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="4120145653580383633" resolveInfo="EvaluationTree.InitialTreeNode" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="6647443673251181312">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231501429" resolveInfo="model" />
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
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7704359791231501369">
        <property name="name" nameId="tpck.1169194664001" value="MyWatchableNode" />
        <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7704359791231501375" />
        <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1278811218404158503">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="choc.4474271214083120082" resolveInfo="WatchableNode" />
        </node>
        <node role="implementedInterface" roleId="tpee.1095933932569" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231501393">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7704359791231500630" resolveInfo="EvaluationTree.EvaluationModelNode" />
        </node>
        <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7704359791231501400">
          <property name="name" nameId="tpck.1169194664001" value="myModel" />
          <property name="isFinal" nameId="tpee.1176718929932" value="true" />
          <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7704359791231501401" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231501403">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
          </node>
        </node>
        <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7704359791231501371">
          <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7704359791231501372" />
          <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7704359791231501373" />
          <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7704359791231501374">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.SuperConstructorInvocation" typeId="tpee.1070475587102" id="1278811218404158505">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="choc.4474271214083120092" resolveInfo="WatchableNode" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="1278811218404158506">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231501377" resolveInfo="watchable" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="654837219999433453">
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="654837219999551548">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.654837219999539507" resolveInfo="getUiState" />
                </node>
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="654837219999433093">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231501395" resolveInfo="model" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7704359791231501405">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7704359791231501407">
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7704359791231501410">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231501395" resolveInfo="model" />
                </node>
                <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7704359791231501406">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231501400" resolveInfo="myModel" />
                </node>
              </node>
            </node>
          </node>
          <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7704359791231501395">
            <property name="name" nameId="tpck.1169194664001" value="model" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231501397">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
            </node>
          </node>
          <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7704359791231501377">
            <property name="name" nameId="tpck.1169194664001" value="watchable" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2596130676084677702">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="pry4.4474271214082916598" resolveInfo="IWatchable" />
            </node>
            <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7704359791231501379">
              <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
            </node>
          </node>
        </node>
        <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7704359791231501411">
          <property name="name" nameId="tpck.1169194664001" value="getModel" />
          <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231501412">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
          </node>
          <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7704359791231501413" />
          <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7704359791231501414">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7704359791231501417">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7704359791231501418">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231501400" resolveInfo="myModel" />
              </node>
            </node>
          </node>
        </node>
        <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="8480601813070769370">
          <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
          <property name="name" nameId="tpck.1169194664001" value="getActionGroup" />
          <property name="isFinal" nameId="tpee.1181808852946" value="false" />
          <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="8480601813070769371" />
          <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8480601813070769372">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="6tyf.~ActionGroup" resolveInfo="ActionGroup" />
          </node>
          <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="8480601813070769373">
            <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
          </node>
          <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="8480601813070769374">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2112175608612037342">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2112175608612037343">
                <property name="name" nameId="tpck.1169194664001" value="group" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2112175608612037344">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="6tyf.~DefaultActionGroup" resolveInfo="DefaultActionGroup" />
                </node>
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2112175608612037345">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="2112175608612037346">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~DefaultActionGroup%d&lt;init&gt;()" resolveInfo="DefaultActionGroup" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="2202960751294081927">
              <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="2202960751294081928">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2112175608612037376">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2112175608612037398">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="2112175608612037377">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2112175608612037343" resolveInfo="group" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2112175608612037404">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~DefaultActionGroup%dadd(com%dintellij%dopenapi%dactionSystem%dAnAction)%cvoid" resolveInfo="add" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2202960751294089928">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2202960751294089827" resolveInfo="myActionGroup" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6803133305480958697">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6803133305480958719">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6803133305480958698">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2112175608612037343" resolveInfo="group" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6803133305480958991">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~DefaultActionGroup%dadd(com%dintellij%dopenapi%dactionSystem%dAnAction)%cvoid" resolveInfo="add" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="6803133305480958993">
                        <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="6803133305480958997">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~Separator%d&lt;init&gt;()" resolveInfo="Separator" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="tpee.1068580123160" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="2202960751294081952">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="2202960751294081955" />
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2202960751294089929">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2202960751294089827" resolveInfo="myActionGroup" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8480601813070777757">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2112175608612037368">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="2112175608612037347">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2112175608612037343" resolveInfo="group" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2112175608612037374">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~DefaultActionGroup%dadd(com%dintellij%dopenapi%dactionSystem%dAnAction)%cvoid" resolveInfo="add" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp4k.GroupAccessOperation" typeId="tp4k.3205675194086686068" id="8643693251546861109">
                    <link role="group" roleId="tp4k.3205675194086686070" targetNodeId="1rri.8643693251546855502" resolveInfo="AbstractWatchableNodeActions" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="2112175608612037407">
              <node role="expression" roleId="tpee.1068581517676" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="2112175608612037409">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2112175608612037343" resolveInfo="group" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7406771907178598667">
      <property name="name" nameId="tpck.1169194664001" value="FailureState" />
      <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178598675" />
      <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598696">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7406771907178598564" resolveInfo="EvaluationTree.EvaluationState" />
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7406771907178598668">
        <property name="name" nameId="tpck.1169194664001" value="myErrorText" />
        <property name="isFinal" nameId="tpee.1176718929932" value="false" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178598669" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7406771907178598670" />
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178598671">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~Nullable" resolveInfo="Nullable" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7406771907178598672">
        <property name="name" nameId="tpck.1169194664001" value="myError" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178598673" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598674">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Throwable" resolveInfo="Throwable" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7406771907178598676">
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598677" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178598678" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598679">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178598680">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7406771907178598681">
              <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598682">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598684" resolveInfo="errorText" />
              </node>
              <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598683">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598668" resolveInfo="myErrorText" />
              </node>
            </node>
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598684">
          <property name="name" nameId="tpck.1169194664001" value="errorText" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7406771907178598685" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7406771907178598686">
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598687" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178598688" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598689">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178598690">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7406771907178598691">
              <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598692">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598694" resolveInfo="error" />
              </node>
              <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598693">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598672" resolveInfo="myError" />
              </node>
            </node>
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598694">
          <property name="name" nameId="tpck.1169194664001" value="error" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598695">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Throwable" resolveInfo="Throwable" />
          </node>
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178598697">
        <property name="name" nameId="tpck.1169194664001" value="rebuild" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178598698" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178598699" />
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178598700">
          <property name="name" nameId="tpck.1169194664001" value="rootTreeNode" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178598701">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~MPSTreeNode" resolveInfo="MPSTreeNode" />
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7704359791231501434">
          <property name="name" nameId="tpck.1169194664001" value="model" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231501436">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
          </node>
        </node>
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598702">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7406771907178598703">
            <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598704">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178598705">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178598706">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598707">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598700" resolveInfo="rootTreeNode" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178598708">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="osf5.~DefaultMutableTreeNode%dadd(javax%dswing%dtree%dMutableTreeNode)%cvoid" resolveInfo="add" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178598709">
                      <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7406771907178598710">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178599429" resolveInfo="EvaluationTree.ErrorTreeNode" />
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7704359791231501437">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231501434" resolveInfo="model" />
                        </node>
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598711">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598672" resolveInfo="myError" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" roleId="tpee.1068580123160" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="7406771907178598712">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7406771907178598713" />
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598714">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598672" resolveInfo="myError" />
              </node>
            </node>
            <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="7406771907178598715">
              <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178598716">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178598717">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178598718">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178598719">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598700" resolveInfo="rootTreeNode" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178598720">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="osf5.~DefaultMutableTreeNode%dadd(javax%dswing%dtree%dMutableTreeNode)%cvoid" resolveInfo="add" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178598721">
                        <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7406771907178598722">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178599383" resolveInfo="EvaluationTree.ErrorTreeNode" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7704359791231501438">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231501434" resolveInfo="model" />
                          </node>
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178598723">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178598668" resolveInfo="myErrorText" />
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
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7406771907178599348">
      <property name="name" nameId="tpck.1169194664001" value="ErrorTreeNode" />
      <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178599382" />
      <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178599450">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~TextTreeNode" resolveInfo="TextTreeNode" />
      </node>
      <node role="implementedInterface" roleId="tpee.1095933932569" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231500706">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7704359791231500630" resolveInfo="EvaluationTree.EvaluationModelNode" />
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7406771907178599375">
        <property name="name" nameId="tpck.1169194664001" value="myExtendedMessage" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178599376" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp2q.ListType" typeId="tp2q.1151688443754" id="7406771907178599377">
          <node role="elementType" roleId="tp2q.1151688676805" type="tpee.StringType" typeId="tpee.1225271177708" id="7406771907178599378" />
        </node>
        <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178599379">
          <node role="creator" roleId="tpee.1145553007750" type="tp2q.ListCreatorWithInit" typeId="tp2q.1160600644654" id="7406771907178599380">
            <node role="elementType" roleId="tp2q.1237721435807" type="tpee.StringType" typeId="tpee.1225271177708" id="7406771907178599381" />
          </node>
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7704359791231500696">
        <property name="name" nameId="tpck.1169194664001" value="myModel" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7704359791231500697" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231500699">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="4893181994832024712">
        <property name="name" nameId="tpck.1169194664001" value="myThrowable" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="4893181994832024713" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4893181994832024723">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Throwable" resolveInfo="Throwable" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7406771907178599383">
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7704359791231500691">
          <property name="name" nameId="tpck.1169194664001" value="model" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231500693">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178599384">
          <property name="name" nameId="tpck.1169194664001" value="text" />
          <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178599385">
            <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
          </node>
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7406771907178599386" />
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178599387">
          <property name="name" nameId="tpck.1169194664001" value="extendedMessage" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.VariableArityType" typeId="tpee.1219920932475" id="7406771907178599388">
            <node role="componentType" roleId="tpee.1219921048460" type="tpee.StringType" typeId="tpee.1225271177708" id="7406771907178599389" />
          </node>
        </node>
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178599390" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178599391" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178599392">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.SuperConstructorInvocation" typeId="tpee.1070475587102" id="7406771907178599393">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~TextTreeNode%d&lt;init&gt;(java%dlang%dString)" resolveInfo="TextTreeNode" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4577525712681026502">
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4577525712681026511">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4577525712681026514">
                  <property name="value" nameId="tpee.1070475926801" value=" = " />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4577525712681026506">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4577525712681026505">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231500691" resolveInfo="model" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4577525712681026510">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.3988550529129685725" resolveInfo="getPresentation" />
                  </node>
                </node>
              </node>
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178599394">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599384" resolveInfo="text" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7704359791231500700">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7704359791231500702">
              <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7704359791231500705">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231500691" resolveInfo="model" />
              </node>
              <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7704359791231500701">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231500696" resolveInfo="myModel" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7406771907178599396">
            <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178599397">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ForStatement" typeId="tpee.1144231330558" id="7406771907178599398">
                <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7406771907178599399">
                  <property name="name" nameId="tpck.1169194664001" value="i" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="7406771907178599400" />
                  <node role="initializer" roleId="tpee.1068431790190" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7406771907178599401">
                    <property name="value" nameId="tpee.1068580320021" value="0" />
                  </node>
                </node>
                <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178599402">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599403">
                    <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178599404">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178599405">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599375" resolveInfo="myExtendedMessage" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp2q.AddElementOperation" typeId="tp2q.1160612413312" id="7406771907178599406">
                        <node role="argument" roleId="tp2q.1160612519549" type="tpee.ArrayAccessExpression" typeId="tpee.1173175405605" id="7406771907178599407">
                          <node role="index" roleId="tpee.1173175577737" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178599408">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599399" resolveInfo="i" />
                          </node>
                          <node role="array" roleId="tpee.1173175590490" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178599409">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599387" resolveInfo="extendedMessage" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition" roleId="tpee.1144231399730" type="tpee.LessThanExpression" typeId="tpee.1081506773034" id="7406771907178599410">
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178599411">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178599412">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599387" resolveInfo="extendedMessage" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.ArrayLengthOperation" typeId="tpee.1208890769693" id="7406771907178599413" />
                  </node>
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178599414">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599399" resolveInfo="i" />
                  </node>
                </node>
                <node role="iteration" roleId="tpee.1144231408325" type="tpee.PostfixIncrementExpression" typeId="tpee.1214918800624" id="7406771907178599415">
                  <node role="expression" roleId="tpee.1239714902950" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178599416">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599399" resolveInfo="i" />
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" roleId="tpee.1068580123160" type="tpee.AndExpression" typeId="tpee.1080120340718" id="7406771907178599417">
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="7406771907178599418">
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178599419">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599387" resolveInfo="extendedMessage" />
                </node>
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7406771907178599420" />
              </node>
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.GreaterThanExpression" typeId="tpee.1081506762703" id="7406771907178599421">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7406771907178599422">
                  <property name="value" nameId="tpee.1068580320021" value="0" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178599423">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178599424">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599387" resolveInfo="extendedMessage" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.ArrayLengthOperation" typeId="tpee.1208890769693" id="7406771907178599425" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7406771907178599426" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599427">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178599428">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178599476" resolveInfo="doInit" />
            </node>
          </node>
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7406771907178599429">
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178599430" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178599431" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178599432">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ThisConstructorInvocation" typeId="tpee.1178893518978" id="7406771907178599433">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178599383" resolveInfo="EvaluationTree.ErrorTreeNode" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7704359791231500742">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231500738" resolveInfo="model" />
            </node>
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.TernaryOperatorExpression" typeId="tpee.1163668896201" id="7406771907178599434">
              <node role="ifTrue" roleId="tpee.1163668922816" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178599435">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178599436">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599448" resolveInfo="t" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178599437">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Throwable%dtoString()%cjava%dlang%dString" resolveInfo="toString" />
                </node>
              </node>
              <node role="ifFalse" roleId="tpee.1163668934364" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178599438">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178599439">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599448" resolveInfo="t" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178599440">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Throwable%dgetMessage()%cjava%dlang%dString" resolveInfo="getMessage" />
                </node>
              </node>
              <node role="condition" roleId="tpee.1163668914799" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="7406771907178599441">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7406771907178599442" />
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178599443">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178599444">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599448" resolveInfo="t" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178599445">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Throwable%dgetMessage()%cjava%dlang%dString" resolveInfo="getMessage" />
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalStaticMethodCall" typeId="tpee.1172058436953" id="7406771907178599446">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2915139105446498560" resolveInfo="getStackTrace" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178599447">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599448" resolveInfo="t" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4893181994832024725">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="4893181994832024727">
              <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4893181994832024730">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599448" resolveInfo="t" />
              </node>
              <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="4893181994832024726">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4893181994832024712" resolveInfo="myThrowable" />
              </node>
            </node>
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7704359791231500738">
          <property name="name" nameId="tpck.1169194664001" value="model" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231500740">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178599448">
          <property name="name" nameId="tpck.1169194664001" value="t" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178599449">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Throwable" resolveInfo="Throwable" />
          </node>
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178599451">
        <property name="name" nameId="tpck.1169194664001" value="isLeaf" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178599452" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="7406771907178599453" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178599454">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599455">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="7406771907178599456">
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178599457">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178599458">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599375" resolveInfo="myExtendedMessage" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="7406771907178599459" />
              </node>
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="7406771907178599460">
                <property name="value" nameId="tpee.1068580320021" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178599461">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178599462">
        <property name="name" nameId="tpck.1169194664001" value="updatePresentation" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="7406771907178599463" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178599464" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178599465">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599466">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.SuperMethodCall" typeId="tpee.1073063089578" id="7406771907178599467">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTreeNode%dupdatePresentation()%cvoid" resolveInfo="updatePresentation" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7406771907178599468" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599469">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178599470">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTreeNode%dsetColor(java%dawt%dColor)%cvoid" resolveInfo="setColor" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="7406771907178599471">
                <link role="classifier" roleId="tpee.1144433057691" targetNodeId="1t7x.~Color" resolveInfo="Color" />
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1t7x.~Color%dRED" resolveInfo="RED" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599472">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178599473">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTreeNode%dsetIcon(javax%dswing%dIcon)%cvoid" resolveInfo="setIcon" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="7406771907178599474">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="pdak.~Icons%dERROR_ICON" resolveInfo="ERROR_ICON" />
                <link role="classifier" roleId="tpee.1144433057691" targetNodeId="pdak.~Icons" resolveInfo="Icons" />
              </node>
            </node>
          </node>
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178599475">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178599476">
        <property name="name" nameId="tpck.1169194664001" value="doInit" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="7406771907178599477" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178599478" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178599479">
          <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="7406771907178599480">
            <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="7406771907178599481">
              <property name="name" nameId="tpck.1169194664001" value="messagePart" />
            </node>
            <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178599482">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599375" resolveInfo="myExtendedMessage" />
            </node>
            <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178599483">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7406771907178599484">
                <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7406771907178599485">
                  <property name="name" nameId="tpck.1169194664001" value="node" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178599486">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~TextTreeNode" resolveInfo="TextTreeNode" />
                  </node>
                  <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178599487">
                    <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="7406771907178599488">
                      <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="7406771907178599489">
                        <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~TextTreeNode%d&lt;init&gt;(java%dlang%dString)" resolveInfo="TextTreeNode" />
                        <link role="classifier" roleId="tpee.1170346070688" targetNodeId="v38v.~TextTreeNode" resolveInfo="TextTreeNode" />
                        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178599490" />
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="7406771907178599491">
                          <link role="variable" roleId="tp2q.1153944258490" targetNodeId="7406771907178599481" resolveInfo="messagePart" />
                        </node>
                        <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178599492">
                          <property name="name" nameId="tpck.1169194664001" value="isLeaf" />
                          <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178599493" />
                          <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="7406771907178599494" />
                          <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178599495">
                            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599496">
                              <node role="expression" roleId="tpee.1068580123156" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="7406771907178599497">
                                <property name="value" nameId="tpee.1068580123138" value="true" />
                              </node>
                            </node>
                          </node>
                          <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178599498">
                            <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599499">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178599500">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="osf5.~DefaultMutableTreeNode%dadd(javax%dswing%dtree%dMutableTreeNode)%cvoid" resolveInfo="add" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178599501">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599485" resolveInfo="node" />
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599502">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178599503">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178599504">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178599485" resolveInfo="node" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178599505">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTreeNode%dsetIcon(javax%dswing%dIcon)%cvoid" resolveInfo="setIcon" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="7406771907178599506">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="pdak.~Icons%dERROR_ICON" resolveInfo="ERROR_ICON" />
                      <link role="classifier" roleId="tpee.1144433057691" targetNodeId="pdak.~Icons" resolveInfo="Icons" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178599507">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7704359791231500707">
        <property name="name" nameId="tpck.1169194664001" value="getModel" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231500708">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7704359791231500709" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7704359791231500710">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7704359791231500713">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7704359791231500714">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231500696" resolveInfo="myModel" />
            </node>
          </node>
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="6803133305480958640">
        <property name="name" nameId="tpck.1169194664001" value="getThrowable" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6803133305480958663">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Throwable" resolveInfo="Throwable" />
        </node>
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="6803133305480958652" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6803133305480958643">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6803133305480958674">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="6803133305480958675">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4893181994832024712" resolveInfo="myThrowable" />
            </node>
          </node>
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="6053191321461498133">
        <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
        <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
        <property name="name" nameId="tpck.1169194664001" value="getActionGroup" />
        <property name="isFinal" nameId="tpee.1181808852946" value="false" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="6053191321461498134" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6053191321461498135">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="6tyf.~ActionGroup" resolveInfo="ActionGroup" />
        </node>
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6053191321461498136">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="6053191321461498148">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="6053191321461498149">
              <property name="name" nameId="tpck.1169194664001" value="group" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6053191321461498150">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="6tyf.~DefaultActionGroup" resolveInfo="DefaultActionGroup" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="6053191321461498151">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="6053191321461498152">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~DefaultActionGroup%d&lt;init&gt;()" resolveInfo="DefaultActionGroup" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="6053191321461498153">
            <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="6053191321461498154">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6053191321461498155">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6053191321461498156">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6053191321461498157">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6053191321461498149" resolveInfo="group" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6053191321461498158">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~DefaultActionGroup%dadd(com%dintellij%dopenapi%dactionSystem%dAnAction)%cvoid" resolveInfo="add" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="6053191321461498159">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2202960751294089827" resolveInfo="myActionGroup" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6053191321461498160">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6053191321461498161">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6053191321461498162">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6053191321461498149" resolveInfo="group" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6053191321461498163">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~DefaultActionGroup%dadd(com%dintellij%dopenapi%dactionSystem%dAnAction)%cvoid" resolveInfo="add" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="6053191321461498164">
                      <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="6053191321461498165">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~Separator%d&lt;init&gt;()" resolveInfo="Separator" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" roleId="tpee.1068580123160" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="6053191321461498166">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="6053191321461498167" />
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="6053191321461498168">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2202960751294089827" resolveInfo="myActionGroup" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6053191321461498169">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6053191321461498170">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6053191321461498171">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6053191321461498149" resolveInfo="group" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6053191321461498172">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~DefaultActionGroup%dadd(com%dintellij%dopenapi%dactionSystem%dAnAction)%cvoid" resolveInfo="add" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tp4k.GroupAccessOperation" typeId="tp4k.3205675194086686068" id="6053191321461498173">
                  <link role="group" roleId="tp4k.3205675194086686070" targetNodeId="1rri.8643693251546855502" resolveInfo="AbstractWatchableNodeActions" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="6053191321461498174">
            <node role="expression" roleId="tpee.1068581517676" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6053191321461498175">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6053191321461498149" resolveInfo="group" />
            </node>
          </node>
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="6053191321461498137">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7406771907178599555">
      <property name="name" nameId="tpck.1169194664001" value="EvaluatingTreeNode" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178599556" />
      <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178599563">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~TextTreeNode" resolveInfo="TextTreeNode" />
      </node>
      <node role="implementedInterface" roleId="tpee.1095933932569" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231500660">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7704359791231500630" resolveInfo="EvaluationTree.EvaluationModelNode" />
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7704359791231500669">
        <property name="name" nameId="tpck.1169194664001" value="myModel" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7704359791231500670" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231500672">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7406771907178599557">
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178599558" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178599559" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178599560">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.SuperConstructorInvocation" typeId="tpee.1070475587102" id="7406771907178599561">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~TextTreeNode%d&lt;init&gt;(java%dlang%dString)" resolveInfo="TextTreeNode" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4577525712681026519">
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4577525712681026531">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4577525712681026534">
                  <property name="value" nameId="tpee.1070475926801" value=" = " />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4577525712681026523">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4577525712681026522">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231500667" resolveInfo="model" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4577525712681026527">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.3988550529129685725" resolveInfo="getPresentation" />
                  </node>
                </node>
              </node>
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7406771907178599562">
                <property name="value" nameId="tpee.1070475926801" value="evaluating..." />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7704359791231500674">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7704359791231500676">
              <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7704359791231500679">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231500667" resolveInfo="model" />
              </node>
              <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7704359791231500675">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231500669" resolveInfo="myModel" />
              </node>
            </node>
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7704359791231500667">
          <property name="name" nameId="tpck.1169194664001" value="model" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231500668">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
          </node>
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178599564">
        <property name="name" nameId="tpck.1169194664001" value="isLeaf" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178599565" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="7406771907178599566" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178599567">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599568">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="7406771907178599569">
              <property name="value" nameId="tpee.1068580123138" value="true" />
            </node>
          </node>
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178599570">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178599571">
        <property name="name" nameId="tpck.1169194664001" value="updatePresentation" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="7406771907178599572" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178599573" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178599574">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599575">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.SuperMethodCall" typeId="tpee.1073063089578" id="7406771907178599576">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTreeNode%dupdatePresentation()%cvoid" resolveInfo="updatePresentation" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599577">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178599578">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTreeNode%dsetColor(java%dawt%dColor)%cvoid" resolveInfo="setColor" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="7406771907178599579">
                <link role="classifier" roleId="tpee.1144433057691" targetNodeId="1t7x.~Color" resolveInfo="Color" />
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1t7x.~Color%dGRAY" resolveInfo="GRAY" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178599580">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178599581">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTreeNode%dsetIcon(javax%dswing%dIcon)%cvoid" resolveInfo="setIcon" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="7406771907178599582">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="pdak.~Icons%dINFORMATION_ICON" resolveInfo="INFORMATION_ICON" />
                <link role="classifier" roleId="tpee.1144433057691" targetNodeId="pdak.~Icons" resolveInfo="Icons" />
              </node>
            </node>
          </node>
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178599583">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7704359791231500661">
        <property name="name" nameId="tpck.1169194664001" value="getModel" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7704359791231500662">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7704359791231500663" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7704359791231500664">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7704359791231500686">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7704359791231500687">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7704359791231500669" resolveInfo="myModel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ClassConcept" typeId="tpee.1068390468198" id="4120145653580383632">
      <property name="name" nameId="tpck.1169194664001" value="InitialTreeNode" />
      <property name="nonStatic" nameId="tpee.521412098689998745" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="4120145653580383648" />
      <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4120145653580383655">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="v38v.~TextTreeNode" resolveInfo="TextTreeNode" />
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="4120145653580383633">
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4120145653580383634" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4120145653580383635" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4120145653580383636">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.SuperConstructorInvocation" typeId="tpee.1070475587102" id="4120145653580383637">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~TextTreeNode%d&lt;init&gt;(java%dlang%dString)" resolveInfo="TextTreeNode" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4120145653580383638">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4120145653580383639">
                <property name="value" nameId="tpee.1070475926801" value=" = " />
              </node>
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4120145653580383640">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4120145653580383641">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4120145653580383646" resolveInfo="model" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4120145653580383642">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.3988550529129685725" resolveInfo="getPresentation" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4120145653580383643">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="4120145653580383644">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="v38v.~MPSTreeNode%dsetIcon(javax%dswing%dIcon)%cvoid" resolveInfo="setIcon" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4120145653580383645">
                <link role="classifier" roleId="tpee.1144433057691" targetNodeId="vjwt.3432969378036014082" resolveInfo="Icons" />
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="vjwt.1247371618987935859" resolveInfo="WATCH" />
              </node>
            </node>
          </node>
        </node>
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4120145653580383646">
          <property name="name" nameId="tpck.1169194664001" value="model" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4120145653580383647">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
          </node>
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4120145653580383649">
        <property name="name" nameId="tpck.1169194664001" value="isLeaf" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4120145653580383650" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="4120145653580383651" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4120145653580383652">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4120145653580383653">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="4120145653580383654">
              <property name="value" nameId="tpee.1068580123138" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="7406771907178600108">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178600109" />
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600114">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~JPanel" resolveInfo="JPanel" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="7406771907178600403">
      <property name="name" nameId="tpck.1169194664001" value="LOG" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600404">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="to5d.~Logger" resolveInfo="Logger" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178600405" />
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7406771907178600406">
        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="to5d.~Logger%dgetLogger(java%dlang%dClass)%cjetbrains%dmps%dlogging%dLogger" resolveInfo="getLogger" />
        <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="to5d.~Logger" resolveInfo="Logger" />
        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ClassifierClassExpression" typeId="tpee.1116615150612" id="7406771907178600410">
          <link role="classifier" roleId="tpee.1116615189566" targetNodeId="7406771907178600108" resolveInfo="EvaluationUi" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="60037598617197268">
      <property name="name" nameId="tpck.1169194664001" value="EVALUATION_MODEL" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="60037598617197269" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="60037598617197270">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="6tyf.~DataKey" resolveInfo="DataKey" />
        <node role="parameter" roleId="tpee.1109201940907" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="60037598617197271">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="60037598617197272">
        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~DataKey%dcreate(java%dlang%dString)%ccom%dintellij%dopenapi%dactionSystem%dDataKey" resolveInfo="create" />
        <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="6tyf.~DataKey" resolveInfo="DataKey" />
        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="60037598617197273">
          <property name="value" nameId="tpee.1070475926801" value="Evaluation Model" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7406771907178600393">
      <property name="name" nameId="tpck.1169194664001" value="myDebugSession" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="7406771907178600394" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2596130676084754384">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="d822.4352118152439824931" resolveInfo="DebugSession" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7406771907178600399">
      <property name="name" nameId="tpck.1169194664001" value="myTree" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600400">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7406771907178597948" resolveInfo="EvaluationTree" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="7406771907178600402" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="7406771907178600435">
      <property name="name" nameId="tpck.1169194664001" value="myErrorListener" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178600436" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600437">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7406771907178600438" resolveInfo="EvaluationUi.IErrorTextListener" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="3196684409400996633">
      <property name="name" nameId="tpck.1169194664001" value="myAutoUpdate" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="3196684409400996634" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.BooleanType" typeId="tpee.1070534644030" id="3196684409400996635" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="3196684409401005405">
      <property name="name" nameId="tpck.1169194664001" value="mySessionChangeAdapter" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="3196684409401005406" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2596130676084754397">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="1l1h.4474271214082916323" resolveInfo="SessionChangeAdapter" />
      </node>
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="3196684409401005420">
        <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="2596130676084754398">
          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3196684409401005394" resolveInfo="EvaluationUi.MySessionChangeAdapter" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7406771907178600110">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178600111" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178600112" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600113">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SuperConstructorInvocation" typeId="tpee.1070475587102" id="7406771907178600116">
          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JPanel%d&lt;init&gt;(java%dawt%dLayoutManager)" resolveInfo="JPanel" />
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178600117">
            <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7406771907178600118">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1t7x.~BorderLayout%d&lt;init&gt;()" resolveInfo="BorderLayout" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600463">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7406771907178600465">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600468">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600460" resolveInfo="session" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178600464">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3196684409400996640">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="3196684409400996642">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3196684409400996645">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3196684409400996636" resolveInfo="autoUpdate" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="3196684409400996641">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3196684409400996633" resolveInfo="myAutoUpdate" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4519228156633494923">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4519228156633494925">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="4519228156633494924">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4519228156633494929">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1l1h.4474271214082917089" resolveInfo="addChangeListener" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2596130676084754388">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3196684409401005405" resolveInfo="mySessionChangeAdapter" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600474">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7406771907178600475">
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178600476">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
            </node>
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178600477">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="4893181994832001273">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178597966" resolveInfo="EvaluationTree" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178600460">
        <property name="name" nameId="tpck.1169194664001" value="session" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2596130676084754387">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="d822.4352118152439824931" resolveInfo="DebugSession" />
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178600473">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3196684409400996636">
        <property name="name" nameId="tpck.1169194664001" value="autoUpdate" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.BooleanType" typeId="tpee.1070534644030" id="3196684409400996638" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="3196684409400996621">
      <property name="isAbstract" nameId="tpee.1178608670077" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="update" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3196684409400996622" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="3196684409400996625" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3196684409400996624" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="3196684409400996646">
      <property name="isAbstract" nameId="tpee.1178608670077" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="evaluate" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3196684409400996647" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3196684409400996651" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3196684409400996649" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="3196684409401005401">
      <property name="name" nameId="tpck.1169194664001" value="dispose" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3196684409401005402" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3196684409401005403" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3196684409401005404">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3196684409401005423">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3196684409401005425">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="3196684409401005424">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3196684409401005429">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1l1h.4474271214082917101" resolveInfo="removeChangeListener" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="3196684409401005430">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3196684409401005405" resolveInfo="mySessionChangeAdapter" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="565981641821022175">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="565981641821022177">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="565981641821022176">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="565981641821022182">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="4613278401347199465" resolveInfo="dispose" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178600119">
      <property name="name" nameId="tpck.1169194664001" value="evaluate" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178600120" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="7406771907178600392" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600122">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7406771907178600123">
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600124">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600125">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178600126">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600416" resolveInfo="setErrorText" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7406771907178600127">
                  <property name="value" nameId="tpee.1070475926801" value="Program should be paused on breakpoint to evaluate" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="7406771907178600128" />
          </node>
          <node role="condition" roleId="tpee.1068580123160" type="tpee.NotExpression" typeId="tpee.1081516740877" id="7406771907178600129">
            <node role="expression" roleId="tpee.1081516765348" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6647443673251176083">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600131">
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600132">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="d822.4352118152439825345" resolveInfo="getEvaluationProvider" />
                </node>
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="6647443673251176082">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6647443673251176087">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="lt1n.4474271214082914199" resolveInfo="canEvaluate" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.TryCatchStatement" typeId="tpee.1164879751025" id="7406771907178600135">
          <node role="catchClause" roleId="tpee.1164903496223" type="tpee.CatchClause" typeId="tpee.1164903280175" id="7406771907178600136">
            <node role="throwable" roleId="tpee.1164903359217" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7406771907178600137">
              <property name="name" nameId="tpck.1169194664001" value="e" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600138">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="qgwr.4727801710070564141" resolveInfo="InvalidEvaluatedExpressionException" />
              </node>
            </node>
            <node role="catchBody" roleId="tpee.1164903359218" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600139">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600140">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178600141">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600324" resolveInfo="setFailure" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600142">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178600143">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600137" resolveInfo="e" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600144">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Throwable%dgetCause()%cjava%dlang%dThrowable" resolveInfo="getCause" />
                    </node>
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7406771907178600145" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600146">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600268" resolveInfo="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="body" roleId="tpee.1164879758292" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600147">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7406771907178600148">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7406771907178600149">
                <property name="name" nameId="tpck.1169194664001" value="clazz" />
                <property name="isFinal" nameId="tpee.1176718929932" value="true" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3247539798412778325">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Class" resolveInfo="Class" />
                </node>
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600151">
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600152">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189612" resolveInfo="generateAndLoadEvaluatorClass" />
                  </node>
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600153">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600268" resolveInfo="model" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600154">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178600155">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600299" resolveInfo="setEvaluating" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600156">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600268" resolveInfo="model" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8197435796639340571">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8197435796639340591">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8197435796639341053">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="8197435796639341054">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8197435796639341055">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="d822.4352118152439825157" resolveInfo="getEventsProcessor" />
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8197435796639340601">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="xptu.3070226725409668916" resolveInfo="scheduleEvaluation" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="8197435796639340602">
                    <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="8197435796639340603">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.TryCatchStatement" typeId="tpee.1164879751025" id="8197435796639340845">
                        <node role="body" roleId="tpee.1164879758292" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600188">
                          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3247539798412871841">
                            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3247539798412871842">
                              <property name="name" nameId="tpck.1169194664001" value="evaluator" />
                              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3247539798412871843">
                                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="qgwr.4727801710070563175" resolveInfo="Evaluator" />
                              </node>
                              <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3247539798412871844">
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3247539798412871845">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600268" resolveInfo="model" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3247539798412871846">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.3247539798412785646" resolveInfo="createEvaluatorInstance" />
                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3247539798412871847">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600149" resolveInfo="clazz" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7406771907178600194">
                            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7406771907178600195">
                              <property name="name" nameId="tpck.1169194664001" value="evaluatedValue" />
                              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4469516346142915607">
                                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dcbi.4727801710070560812" resolveInfo="IValueProxy" />
                              </node>
                              <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600197">
                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600199">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qgwr.4727801710070563277" resolveInfo="evaluate" />
                                </node>
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3247539798412871849">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3247539798412871842" resolveInfo="evaluator" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7406771907178600200">
                            <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600201">
                              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600202">
                                <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178600203">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600270" resolveInfo="setSuccess" />
                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178600204">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600195" resolveInfo="evaluatedValue" />
                                  </node>
                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600205">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600268" resolveInfo="model" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="condition" roleId="tpee.1068580123160" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="7406771907178600206">
                              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7406771907178600207" />
                              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178600208">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600195" resolveInfo="evaluatedValue" />
                              </node>
                            </node>
                            <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="7406771907178600209">
                              <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600210">
                                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600211">
                                  <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178600212">
                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600324" resolveInfo="setFailure" />
                                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7406771907178600213" />
                                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7406771907178600214">
                                      <property name="value" nameId="tpee.1070475926801" value="Evaluation returned null." />
                                    </node>
                                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600215">
                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600268" resolveInfo="model" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="catchClause" roleId="tpee.1164903496223" type="tpee.CatchClause" typeId="tpee.1164903280175" id="775296678941431090">
                          <node role="throwable" roleId="tpee.1164903359217" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="775296678941431091">
                            <property name="name" nameId="tpck.1169194664001" value="e" />
                            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="775296678941460284">
                              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="qgwr.4727801710070563894" resolveInfo="EvaluationException" />
                            </node>
                          </node>
                          <node role="catchBody" roleId="tpee.1164903359218" type="tpee.StatementList" typeId="tpee.1068580123136" id="775296678941431093">
                            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="775296678941461179">
                              <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="775296678941461180">
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600324" resolveInfo="setFailure" />
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="775296678941517358">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="775296678941431091" resolveInfo="e" />
                                </node>
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="775296678941517360" />
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="775296678941517362">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600268" resolveInfo="model" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="catchClause" roleId="tpee.1164903496223" type="tpee.CatchClause" typeId="tpee.1164903280175" id="7406771907178600216">
                          <node role="throwable" roleId="tpee.1164903359217" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7406771907178600217">
                            <property name="name" nameId="tpck.1169194664001" value="t" />
                            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600218">
                              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Throwable" resolveInfo="Throwable" />
                            </node>
                          </node>
                          <node role="catchBody" roleId="tpee.1164903359218" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600219">
                            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600220">
                              <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178600221">
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600324" resolveInfo="setFailure" />
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178600222">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600217" resolveInfo="t" />
                                </node>
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7406771907178600223" />
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600224">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600268" resolveInfo="model" />
                                </node>
                              </node>
                            </node>
                            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600225">
                              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600226">
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalStaticFieldReference" typeId="tpee.1172008963197" id="8197435796639340605">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600403" resolveInfo="LOG" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600228">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="to5d.~Logger%derror(java%dlang%dThrowable)%cvoid" resolveInfo="error" />
                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178600229">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600217" resolveInfo="t" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="pxpg.CheckedDotExpression" typeId="pxpg.4079382982702596667" id="8197435796639341047">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8197435796639340980">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8197435796639340955">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="8197435796639340936">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8197435796639340961">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1l1h.4474271214082917131" resolveInfo="getUiState" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8197435796639340986">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="a3o9.3432969378036015518" resolveInfo="getThread" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8197435796639341052">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="y3sp.3432969378036014659" resolveInfo="getThread" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="catchClause" roleId="tpee.1164903496223" type="tpee.CatchClause" typeId="tpee.1164903280175" id="7406771907178600236">
            <node role="throwable" roleId="tpee.1164903359217" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7406771907178600237">
              <property name="name" nameId="tpck.1169194664001" value="e" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600238">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="qgwr.4727801710070563657" resolveInfo="InvocationTargetEvaluationException" />
              </node>
            </node>
            <node role="catchBody" roleId="tpee.1164903359218" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600239">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600240">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178600241">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600324" resolveInfo="setFailure" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600242">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178600243">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600237" resolveInfo="e" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600244">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Throwable%dgetCause()%cjava%dlang%dThrowable" resolveInfo="getCause" />
                    </node>
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7406771907178600245" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600246">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600268" resolveInfo="model" />
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600247">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600248">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalStaticFieldReference" typeId="tpee.1172008963197" id="7406771907178600249">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600403" resolveInfo="LOG" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600250">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="to5d.~Logger%derror(java%dlang%dThrowable)%cvoid" resolveInfo="error" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600251">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178600252">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600237" resolveInfo="e" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600253">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Throwable%dgetCause()%cjava%dlang%dThrowable" resolveInfo="getCause" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="catchClause" roleId="tpee.1164903496223" type="tpee.CatchClause" typeId="tpee.1164903280175" id="5207878536355550406">
            <node role="throwable" roleId="tpee.1164903359217" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="5207878536355550407">
              <property name="name" nameId="tpck.1169194664001" value="e" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="5207878536355562589">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="qgwr.4727801710070563894" resolveInfo="EvaluationException" />
              </node>
            </node>
            <node role="catchBody" roleId="tpee.1164903359218" type="tpee.StatementList" typeId="tpee.1068580123136" id="5207878536355550409">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5207878536355562590">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="5207878536355562591">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600324" resolveInfo="setFailure" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="5207878536355562592">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5207878536355550407" resolveInfo="e" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="5207878536355562599" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5207878536355562601">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600268" resolveInfo="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="catchClause" roleId="tpee.1164903496223" type="tpee.CatchClause" typeId="tpee.1164903280175" id="7406771907178600254">
            <node role="throwable" roleId="tpee.1164903359217" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7406771907178600255">
              <property name="name" nameId="tpck.1169194664001" value="t" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600256">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Throwable" resolveInfo="Throwable" />
              </node>
            </node>
            <node role="catchBody" roleId="tpee.1164903359218" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600257">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600258">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178600259">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600324" resolveInfo="setFailure" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178600260">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600255" resolveInfo="t" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7406771907178600261" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600262">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600268" resolveInfo="model" />
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600263">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600264">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalStaticFieldReference" typeId="tpee.1172008963197" id="7406771907178600265">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600403" resolveInfo="LOG" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600266">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="to5d.~Logger%derror(java%dlang%dThrowable)%cvoid" resolveInfo="error" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="7406771907178600267">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600255" resolveInfo="t" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178600268">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600269">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178600270">
      <property name="name" nameId="tpck.1169194664001" value="setSuccess" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178600271" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178600272" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600273">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600274">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178600275">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600369" resolveInfo="invokeLaterIfNeeded" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178600276">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="7406771907178600277">
                <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="7406771907178600278">
                  <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                  <link role="classifier" roleId="tpee.1170346070688" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                  <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178600279" />
                  <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178600280">
                    <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                    <property name="name" nameId="tpck.1169194664001" value="run" />
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178600281" />
                    <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178600282" />
                    <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600283">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600284">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600285">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178600286">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600287">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178598003" resolveInfo="setResultProxy" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600288">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600294" resolveInfo="evaluatedValue" />
                            </node>
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600289">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600297" resolveInfo="model" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2999655953941675147">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2999655953941675148">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2999655953941675149">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2999655953941675150">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2999655953941662116" resolveInfo="rebuildEvaluationTreeNowIfNotDisposed" />
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
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178600294">
        <property name="name" nameId="tpck.1169194664001" value="evaluatedValue" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4469516346142915608">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dcbi.4727801710070560812" resolveInfo="IValueProxy" />
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178600296">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178600297">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600298">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178600299">
      <property name="name" nameId="tpck.1169194664001" value="setEvaluating" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178600300">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600301">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178600302" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178600303" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600304">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600305">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178600306">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600369" resolveInfo="invokeLaterIfNeeded" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178600307">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="7406771907178600308">
                <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="7406771907178600309">
                  <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                  <link role="classifier" roleId="tpee.1170346070688" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                  <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178600310" />
                  <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178600311">
                    <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                    <property name="name" nameId="tpck.1169194664001" value="run" />
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178600312" />
                    <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178600313" />
                    <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600314">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600315">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600316">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178600317">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600318">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178598055" resolveInfo="setEvaluating" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600319">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600300" resolveInfo="model" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2999655953941675142">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2999655953941675143">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2999655953941675144">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2999655953941675145">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2999655953941662116" resolveInfo="rebuildEvaluationTreeNowIfNotDisposed" />
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
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178600324">
      <property name="name" nameId="tpck.1169194664001" value="setFailure" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178600325">
        <property name="name" nameId="tpck.1169194664001" value="error" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600326">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Throwable" resolveInfo="Throwable" />
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178600327">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~Nullable" resolveInfo="Nullable" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178600328">
        <property name="name" nameId="tpck.1169194664001" value="message" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7406771907178600329" />
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7406771907178600330">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~Nullable" resolveInfo="Nullable" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178600331">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600332">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178600333" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178600334" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600335">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600336">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="7406771907178600337">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600369" resolveInfo="invokeLaterIfNeeded" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7406771907178600338">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="7406771907178600339">
                <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="7406771907178600340">
                  <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                  <link role="classifier" roleId="tpee.1170346070688" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
                  <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178600341" />
                  <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178600342">
                    <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                    <property name="name" nameId="tpck.1169194664001" value="run" />
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178600343" />
                    <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178600344" />
                    <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600345">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7406771907178600346">
                        <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600347">
                          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600348">
                            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600349">
                              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178600350">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                              </node>
                              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600351">
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178598038" resolveInfo="setError" />
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600352">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600325" resolveInfo="error" />
                                </node>
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600353">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600331" resolveInfo="model" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="condition" roleId="tpee.1068580123160" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="7406771907178600354">
                          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7406771907178600355" />
                          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600356">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600325" resolveInfo="error" />
                          </node>
                        </node>
                        <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="7406771907178600357">
                          <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600358">
                            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600359">
                              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600360">
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178600361">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600362">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178598021" resolveInfo="setError" />
                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600363">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600328" resolveInfo="message" />
                                  </node>
                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600364">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600331" resolveInfo="model" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2999655953941675137">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2999655953941675138">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2999655953941675139">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2999655953941675140">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2999655953941662116" resolveInfo="rebuildEvaluationTreeNowIfNotDisposed" />
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
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178600416">
      <property name="name" nameId="tpck.1169194664001" value="setErrorText" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="7406771907178600446" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178600418" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178600419">
        <property name="name" nameId="tpck.1169194664001" value="text" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7406771907178600420" />
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600421">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7406771907178600422">
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600423">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600424">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600425">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178600426">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600435" resolveInfo="myErrorListener" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600427">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600439" resolveInfo="updateErrorText" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600428">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600419" resolveInfo="text" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="tpee.1068580123160" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="7406771907178600429">
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178600430">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600435" resolveInfo="myErrorListener" />
            </node>
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7406771907178600431" />
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178600369">
      <property name="name" nameId="tpck.1169194664001" value="invokeLaterIfNeeded" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178600370" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7406771907178600371" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600372">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7406771907178600373">
          <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600374">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7406771907178600375">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600376">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%disDispatchThread()%cboolean" resolveInfo="isDispatchThread" />
            </node>
          </node>
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600377">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600378">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600379">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600380">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600390" resolveInfo="runnable" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600381">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Runnable%drun()%cvoid" resolveInfo="run" />
                </node>
              </node>
            </node>
          </node>
          <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="7406771907178600382">
            <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600383">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600384">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7406771907178600385">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7406771907178600386">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7406771907178600387">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dinvokeLater(java%dlang%dRunnable,com%dintellij%dopenapi%dapplication%dModalityState)%cvoid" resolveInfo="invokeLater" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600388">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600390" resolveInfo="runnable" />
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="7406771907178600389">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="mepa.~ModalityState%dNON_MODAL" resolveInfo="NON_MODAL" />
                      <link role="classifier" roleId="tpee.1144433057691" targetNodeId="mepa.~ModalityState" resolveInfo="ModalityState" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178600390">
        <property name="name" nameId="tpck.1169194664001" value="runnable" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600391">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178600450">
      <property name="name" nameId="tpck.1169194664001" value="setErrorTextListener" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178600451" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178600452" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600453">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7406771907178600454">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7406771907178600455">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="7406771907178600456">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600458" resolveInfo="listener" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="7406771907178600457">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600435" resolveInfo="myErrorListener" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178600458">
        <property name="name" nameId="tpck.1169194664001" value="listener" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7406771907178600459">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7406771907178600438" resolveInfo="EvaluationUi.IErrorTextListener" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.Interface" typeId="tpee.1107796713796" id="7406771907178600438">
      <property name="name" nameId="tpck.1169194664001" value="IErrorTextListener" />
      <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178600445" />
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7406771907178600439">
        <property name="isAbstract" nameId="tpee.1178608670077" value="true" />
        <property name="name" nameId="tpck.1169194664001" value="updateErrorText" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7406771907178600440" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7406771907178600441" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7406771907178600442" />
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7406771907178600443">
          <property name="name" nameId="tpck.1169194664001" value="text" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7406771907178600444" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ClassConcept" typeId="tpee.1068390468198" id="3196684409401005392">
      <property name="name" nameId="tpck.1169194664001" value="MySessionChangeAdapter" />
      <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="3196684409401005398" />
      <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2596130676084754393">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="1l1h.4474271214082916323" resolveInfo="SessionChangeAdapter" />
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="3196684409401005394">
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3196684409401005395" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3196684409401005396" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3196684409401005397" />
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4519228156633494935">
        <property name="name" nameId="tpck.1169194664001" value="paused" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4519228156633494936" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4519228156633494937" />
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4519228156633494938">
          <property name="name" nameId="tpck.1169194664001" value="session" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2596130676084754394">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="1l1h.4474271214082912940" resolveInfo="AbstractDebugSession" />
          </node>
        </node>
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4519228156633494940">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="3196684409400996588">
            <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="3196684409400996589">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="55706870180663535">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="55706870180663536">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="55706870180663537">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="55706870180663538">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="4519228156633480337" resolveInfo="updateLocation" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="55706870180663539">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="55706870180663540">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="55706870180663541">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="55706870180663542">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="55706870180663543">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="55706870180663544">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1l1h.4474271214082917131" resolveInfo="getUiState" />
                            </node>
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="55706870180663545">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="a3o9.3432969378036015514" resolveInfo="getStackFrame" />
                          </node>
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="55706870180663546">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="y3sp.3432969378036016734" resolveInfo="getLocation" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="55706870180663547">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="y3sp.4209988649465089997" resolveInfo="getUnitName" />
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="55706870180663548">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="55706870180663549">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="55706870180663550">
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="55706870180663551">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1l1h.4474271214082917131" resolveInfo="getUiState" />
                          </node>
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="55706870180663552">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
                          </node>
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="55706870180663553">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="a3o9.3432969378036015518" resolveInfo="getThread" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="55706870180663554">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="y3sp.3432969378036014659" resolveInfo="getThread" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3196684409400996590">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3196684409400996591">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3196684409400996592">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3196684409400996593">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dinvokeLater(java%dlang%dRunnable)%cvoid" resolveInfo="invokeLater" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="3196684409400996594">
                      <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="3196684409400996595">
                        <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="3196684409400996596">
                          <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                          <link role="classifier" roleId="tpee.1170346070688" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                          <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3196684409400996597" />
                          <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="3196684409400996598">
                            <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                            <property name="name" nameId="tpck.1169194664001" value="run" />
                            <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3196684409400996599" />
                            <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3196684409400996600" />
                            <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3196684409400996601">
                              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3196684409400996602">
                                <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="3196684409400996603">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600416" resolveInfo="setErrorText" />
                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3196684409400996604">
                                    <property name="value" nameId="tpee.1070475926801" value="" />
                                  </node>
                                </node>
                              </node>
                              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3196684409400996628">
                                <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="3196684409400996629">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3196684409400996621" resolveInfo="update" />
                                </node>
                              </node>
                              <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="3196684409400996609">
                                <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="3196684409400996610">
                                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3196684409400996611">
                                    <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="3196684409400996612">
                                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3196684409400996646" resolveInfo="evaluate" />
                                    </node>
                                  </node>
                                </node>
                                <node role="condition" roleId="tpee.1068580123160" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="3196684409400996613">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3196684409400996633" resolveInfo="myAutoUpdate" />
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
            <node role="condition" roleId="tpee.1068580123160" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="3196684409400996614">
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="3196684409400996615">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
              </node>
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3196684409400996626">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4519228156633494938" resolveInfo="session" />
              </node>
            </node>
          </node>
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="4519228156633494941">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="3196684409400996654">
        <property name="name" nameId="tpck.1169194664001" value="stateChanged" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3196684409400996655" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3196684409400996656" />
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3196684409400996657">
          <property name="name" nameId="tpck.1169194664001" value="session" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2596130676084754395">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="1l1h.4474271214082912940" resolveInfo="AbstractDebugSession" />
          </node>
        </node>
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3196684409400996659">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="3196684409400996674">
            <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="3196684409400996675">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3196684409400996676">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3196684409400996677">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3196684409400996678">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3196684409400996679">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dinvokeLater(java%dlang%dRunnable)%cvoid" resolveInfo="invokeLater" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="3196684409400996680">
                      <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="3196684409400996681">
                        <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="3196684409400996682">
                          <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                          <link role="classifier" roleId="tpee.1170346070688" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                          <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3196684409400996683" />
                          <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="3196684409400996684">
                            <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                            <property name="name" nameId="tpck.1169194664001" value="run" />
                            <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3196684409400996685" />
                            <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3196684409400996686" />
                            <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3196684409400996687">
                              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3196684409400996688">
                                <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="3196684409400996689">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3196684409400996621" resolveInfo="update" />
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
            <node role="condition" roleId="tpee.1068580123160" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="3196684409400996690">
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="3196684409400996691">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
              </node>
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3196684409400996693">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3196684409400996657" resolveInfo="session" />
              </node>
            </node>
          </node>
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="3196684409400996660">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
        </node>
      </node>
      <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="612015978684720989">
        <property name="name" nameId="tpck.1169194664001" value="resumed" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="612015978684720990" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="612015978684720991" />
        <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="612015978684720992">
          <property name="name" nameId="tpck.1169194664001" value="session" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2596130676084754396">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="1l1h.4474271214082912940" resolveInfo="AbstractDebugSession" />
          </node>
        </node>
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="612015978684720994">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="612015978684720999">
            <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="612015978684721000">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="612015978684721001">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="612015978684721002">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="612015978684721003">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="612015978684721004">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dinvokeLater(java%dlang%dRunnable)%cvoid" resolveInfo="invokeLater" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="612015978684721005">
                      <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="612015978684721006">
                        <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="612015978684721007">
                          <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                          <link role="classifier" roleId="tpee.1170346070688" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
                          <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="612015978684721008" />
                          <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="612015978684721009">
                            <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                            <property name="name" nameId="tpck.1169194664001" value="run" />
                            <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="612015978684721010" />
                            <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="612015978684721011" />
                            <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="612015978684721012">
                              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2999655953941673857">
                                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2999655953941673859">
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2999655953941673858">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                                  </node>
                                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2999655953941675135">
                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2999655953941662116" resolveInfo="rebuildEvaluationTreeNowIfNotDisposed" />
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
            <node role="condition" roleId="tpee.1068580123160" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="612015978684721015">
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="612015978684721016">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
              </node>
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="612015978684721017">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="612015978684720992" resolveInfo="session" />
              </node>
            </node>
          </node>
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="612015978684720995">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
        </node>
      </node>
    </node>
  </root>
  <root id="4577525712681038408">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4577525712681038409" />
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4577525712681101560">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="4577525712681046198" resolveInfo="AbstractEvaluationDialog" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="3566077830424367644">
      <property name="name" nameId="tpck.1169194664001" value="myOkAction" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="3566077830424367645" />
      <node role="type" roleId="tpee.5680397130376446158" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="3566077830424367646">
        <node role="resultType" roleId="tp2c.1199542457201" type="tpee.VoidType" typeId="tpee.1068581517677" id="3566077830424367647" />
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="3566077830424367648">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~Nullable" resolveInfo="Nullable" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="4577525712681038410">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4577525712681038411" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4577525712681038412" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4577525712681038413">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ThisConstructorInvocation" typeId="tpee.1178893518978" id="5498026401458111774">
          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="5498026401458099190" resolveInfo="EditWatchDialog" />
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5498026401458111775">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046186" resolveInfo="context" />
          </node>
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5498026401458111777">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046189" resolveInfo="provider" />
          </node>
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5498026401458111779">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046192" resolveInfo="model" />
          </node>
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="5498026401458111781" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4577525712681046186">
        <property name="name" nameId="tpck.1169194664001" value="context" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4577525712681046187">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="cu2c.~IOperationContext" resolveInfo="IOperationContext" />
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="4577525712681046188">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4577525712681046189">
        <property name="name" nameId="tpck.1169194664001" value="provider" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1504158228282737409">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="anh2.671562190169411198" resolveInfo="EvaluationProvider" />
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="4577525712681046196">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4577525712681046192">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4577525712681046194">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="4577525712681046195">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="5498026401458099190">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5498026401458099191" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5498026401458099192" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5498026401458099193">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SuperConstructorInvocation" typeId="tpee.1070475587102" id="5498026401458099194">
          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="4577525712681046200" resolveInfo="AbstractEvaluationDialog" />
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5498026401458099195">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5498026401458099199" resolveInfo="context" />
          </node>
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5498026401458099196">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5498026401458099202" resolveInfo="provider" />
          </node>
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5498026401458099197">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5498026401458099205" resolveInfo="model" />
          </node>
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="5498026401458099198">
            <property name="value" nameId="tpee.1070475926801" value="Edit Watch" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5498026401458111783">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="5498026401458111785">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5498026401458111788">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5498026401458099208" resolveInfo="okAction" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="3566077830424367649">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3566077830424367644" resolveInfo="myOkAction" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5498026401458099199">
        <property name="name" nameId="tpck.1169194664001" value="context" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="5498026401458099200">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="cu2c.~IOperationContext" resolveInfo="IOperationContext" />
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5498026401458099201">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5498026401458099202">
        <property name="name" nameId="tpck.1169194664001" value="provider" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1504158228282737406">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="anh2.671562190169411198" resolveInfo="EvaluationProvider" />
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5498026401458099204">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5498026401458099205">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="5498026401458099206">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
        <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5498026401458099207">
          <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5498026401458099208">
        <property name="name" nameId="tpck.1169194664001" value="okAction" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="5498026401458111759">
          <node role="resultType" roleId="tp2c.1199542457201" type="tpee.VoidType" typeId="tpee.1068581517677" id="5498026401458111761" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="2656624718522727935">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="doOKAction" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="2656624718522727936" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="2656624718522727937" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2656624718522727938">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="2656624718522727944">
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="2656624718522727945">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2656624718522727946">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2656624718522727947">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2656624718522727948">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3566077830424367644" resolveInfo="myOkAction" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp2c.InvokeFunctionOperation" typeId="tp2c.1225797177491" id="2656624718522727949" />
              </node>
            </node>
          </node>
          <node role="condition" roleId="tpee.1068580123160" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="2656624718522727950">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="2656624718522727951" />
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2656624718522727952">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3566077830424367644" resolveInfo="myOkAction" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2656624718522727940">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.SuperMethodCall" typeId="tpee.1073063089578" id="2656624718522727941">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h12.~DialogWrapper%ddoOKAction()%cvoid" resolveInfo="doOKAction" />
          </node>
        </node>
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="2656624718522727939">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="2656624718522764943">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="createActions" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="2656624718522764944" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ArrayType" typeId="tpee.1070534760951" id="2656624718522764945">
        <node role="componentType" roleId="tpee.1070534760952" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2656624718522764946">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Action" resolveInfo="Action" />
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2656624718522764947">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="2656624718522764952">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2656624718522764955">
            <node role="creator" roleId="tpee.1145553007750" type="tpee.ArrayCreatorWithInitializer" typeId="tpee.1154542696413" id="2656624718522764981">
              <node role="componentType" roleId="tpee.1154542793668" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2656624718522764960">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Action" resolveInfo="Action" />
              </node>
              <node role="initValue" roleId="tpee.1154542803372" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="2656624718522764983">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h12.~DialogWrapper%dgetOKAction()%cjavax%dswing%dAction" resolveInfo="getOKAction" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="2656624718522764948">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="2207019569356885523">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NotNull" resolveInfo="NotNull" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="1568068832543944951">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="getDimensionServiceKey" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="1568068832543944952" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1568068832543944953">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~String" resolveInfo="String" />
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="1568068832543944954">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~Nullable" resolveInfo="Nullable" />
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="1568068832543944955">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~NonNls" resolveInfo="NonNls" />
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1568068832543944956">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1568068832543949350">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1568068832543949403">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.ClassifierClassExpression" typeId="tpee.1116615150612" id="1568068832543949382">
              <link role="classifier" roleId="tpee.1116615189566" targetNodeId="4577525712681038408" resolveInfo="EditWatchDialog" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1568068832543949409">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Class%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
            </node>
          </node>
        </node>
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="1568068832543944957">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
      </node>
    </node>
  </root>
  <root id="4577525712681046198">
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2656624718522723647">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="h12.~DialogWrapper" resolveInfo="DialogWrapper" />
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="55706870180648834" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="4577525712681046225">
      <property name="name" nameId="tpck.1169194664001" value="myProvider" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="4577525712681101292" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1504158228282737408">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="anh2.671562190169411198" resolveInfo="EvaluationProvider" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="4577525712681046228">
      <property name="name" nameId="tpck.1169194664001" value="myEvaluationPanel" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="4577525712681101294" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4577525712681046230">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="920354110794004331" resolveInfo="EvaluationPanel" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="4577525712681046231">
      <property name="name" nameId="tpck.1169194664001" value="mySessionStopDisposer" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="4577525712681101295" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3432969378035544335">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="d822.4352118152439835940" resolveInfo="SessionStopDisposer" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="4577525712681046200">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4577525712681046201" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4577525712681046202" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4577525712681046203">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SuperConstructorInvocation" typeId="tpee.1070475587102" id="4577525712681046213">
          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h12.~DialogWrapper%d&lt;init&gt;(com%dintellij%dopenapi%dproject%dProject)" resolveInfo="DialogWrapper" />
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1568068832543910572">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="pt5l.~ProjectHelper%dtoIdeaProject(jetbrains%dmps%dproject%dProject)%ccom%dintellij%dopenapi%dproject%dProject" resolveInfo="toIdeaProject" />
            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="pt5l.~ProjectHelper" resolveInfo="ProjectHelper" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1568068832543910553">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1568068832543910532">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046205" resolveInfo="context" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1568068832543910565">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~IOperationContext%dgetProject()%cjetbrains%dmps%dproject%dProject" resolveInfo="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2656624718522723648">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="2656624718522723649">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h12.~DialogWrapper%dsetTitle(java%dlang%dString)%cvoid" resolveInfo="setTitle" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="2656624718522723650">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046221" resolveInfo="title" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4577525712681046234" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4577525712681046244">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="4577525712681046245">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h12.~DialogWrapper%dsetModal(boolean)%cvoid" resolveInfo="setModal" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="4577525712681046246" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4577525712681046247" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4577525712681046248">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="4577525712681046249">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4577525712681046250">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046207" resolveInfo="provider" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="4577525712681046251">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046225" resolveInfo="myProvider" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4577525712681046252">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4577525712681046253">
            <property name="name" nameId="tpck.1169194664001" value="debugSession" />
            <property name="isFinal" nameId="tpee.1176718929932" value="true" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3432969378035544339">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="d822.4352118152439824931" resolveInfo="DebugSession" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4577525712681046255">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4577525712681046256">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046207" resolveInfo="provider" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4577525712681046257">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="anh2.671562190169411580" resolveInfo="getDebugSession" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4577525712681046258">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="4577525712681046259">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="4577525712681046260">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="4577525712681046261">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="920354110794004972" resolveInfo="EvaluationPanel" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3600162130553932420">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="pt5l.~ProjectHelper%dtoIdeaProject(jetbrains%dmps%dproject%dProject)%ccom%dintellij%dopenapi%dproject%dProject" resolveInfo="toIdeaProject" />
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="pt5l.~ProjectHelper" resolveInfo="ProjectHelper" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4577525712681046262">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4577525712681046263">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046205" resolveInfo="context" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4577525712681046264">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~IOperationContext%dgetProject()%cjetbrains%dmps%dproject%dProject" resolveInfo="getProject" />
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="4577525712681046265">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046253" resolveInfo="debugSession" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4577525712681046313">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046210" resolveInfo="model" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="4577525712681046267">
                  <property name="value" nameId="tpee.1068580123138" value="false" />
                </node>
              </node>
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="4577525712681046268">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046228" resolveInfo="myEvaluationPanel" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1568068832543915732">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1568068832543915754">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1568068832543915733">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046228" resolveInfo="myEvaluationPanel" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1568068832543915760">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JComponent%dsetMinimumSize(java%dawt%dDimension)%cvoid" resolveInfo="setMinimumSize" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2656624718522723734">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="2656624718522727930">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1t7x.~Dimension%d&lt;init&gt;(int,int)" resolveInfo="Dimension" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="2656624718522727931">
                    <property name="value" nameId="tpee.1068580320021" value="500" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="2656624718522727933">
                    <property name="value" nameId="tpee.1068580320021" value="500" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4577525712681046269">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4577525712681046270">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="4577525712681046271">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046228" resolveInfo="myEvaluationPanel" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4577525712681046272">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600450" resolveInfo="setErrorTextListener" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="4577525712681046273">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="4577525712681046274">
                  <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="4577525712681046275">
                    <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                    <link role="classifier" roleId="tpee.1170346070688" targetNodeId="7406771907178600438" resolveInfo="EvaluationUi.IErrorTextListener" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4577525712681046276" />
                    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4577525712681046277">
                      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                      <property name="name" nameId="tpck.1169194664001" value="updateErrorText" />
                      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4577525712681046278" />
                      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4577525712681046279" />
                      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4577525712681046280">
                        <property name="name" nameId="tpck.1169194664001" value="text" />
                        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="4577525712681046281" />
                      </node>
                      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4577525712681046282">
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4577525712681046283">
                          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="4577525712681046284">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h12.~DialogWrapper%dsetErrorText(java%dlang%dString)%cvoid" resolveInfo="setErrorText" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="4577525712681046285">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046280" resolveInfo="text" />
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
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4577525712681046286" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4577525712681046287">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="4577525712681046288">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="4577525712681046289">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="4577525712681046290">
                <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="4577525712681046291">
                  <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                  <link role="classifier" roleId="tpee.1170346070688" targetNodeId="d822.4352118152439835940" resolveInfo="SessionStopDisposer" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="d822.4352118152439835945" resolveInfo="SessionStopDisposer" />
                  <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4577525712681046292" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="4577525712681046311">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046253" resolveInfo="debugSession" />
                  </node>
                  <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4577525712681046293">
                    <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                    <property name="name" nameId="tpck.1169194664001" value="doDispose" />
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4577525712681046294" />
                    <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4577525712681046295" />
                    <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4577525712681046296">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4577525712681046297">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4577525712681046298">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4577525712681046299">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
                            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4577525712681046300">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dinvokeLater(java%dlang%dRunnable)%cvoid" resolveInfo="invokeLater" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="4577525712681046301">
                              <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="4577525712681046302">
                                <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="4577525712681046303">
                                  <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                                  <link role="classifier" roleId="tpee.1170346070688" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
                                  <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4577525712681046304" />
                                  <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4577525712681046305">
                                    <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                                    <property name="name" nameId="tpck.1169194664001" value="run" />
                                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4577525712681046306" />
                                    <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4577525712681046307" />
                                    <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4577525712681046308">
                                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4577525712681046309">
                                        <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="4577525712681046310">
                                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="4577525712681101545" resolveInfo="dispose" />
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
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="4577525712681046312">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046231" resolveInfo="mySessionStopDisposer" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="4577525712681046235" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2656624718522723660">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="2656624718522723661">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h12.~DialogWrapper%dinit()%cvoid" resolveInfo="init" />
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4577525712681046205">
        <property name="name" nameId="tpck.1169194664001" value="context" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4577525712681046206">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="cu2c.~IOperationContext" resolveInfo="IOperationContext" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4577525712681046207">
        <property name="name" nameId="tpck.1169194664001" value="provider" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1504158228282737407">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="anh2.671562190169411198" resolveInfo="EvaluationProvider" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4577525712681046210">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4577525712681046212">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4577525712681046221">
        <property name="name" nameId="tpck.1169194664001" value="title" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="4577525712681046223" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4577525712681101536">
      <property name="name" nameId="tpck.1169194664001" value="getMainComponent" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="4577525712681101537" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4577525712681101538">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~JComponent" resolveInfo="JComponent" />
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4577525712681101539">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4577525712681101542">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="4577525712681101543">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046228" resolveInfo="myEvaluationPanel" />
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="2656624718522723663">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="createCenterPanel" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="2656624718522723664" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2656624718522723665">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~JComponent" resolveInfo="JComponent" />
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="2656624718522723666">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="as9o.~Nullable" resolveInfo="Nullable" />
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2656624718522723667">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2656624718522723671">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2656624718522723672">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046228" resolveInfo="myEvaluationPanel" />
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="4577525712681101545">
      <property name="name" nameId="tpck.1169194664001" value="dispose" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="2656624718522764940" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4577525712681101547" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4577525712681101548">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4577525712681101549">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4577525712681101550">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="4577525712681101551">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4577525712681101552">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dassertIsDispatchThread()%cvoid" resolveInfo="assertIsDispatchThread" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4577525712681101553">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.SuperMethodCall" typeId="tpee.1073063089578" id="4577525712681101554">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="h12.~DialogWrapper%ddispose()%cvoid" resolveInfo="dispose" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4577525712681101555">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4577525712681101556">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="4577525712681101557">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4577525712681046228" resolveInfo="myEvaluationPanel" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="4577525712681101558">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7283833278907764604" resolveInfo="dispose" />
            </node>
          </node>
        </node>
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="4577525712681101559">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
      </node>
    </node>
  </root>
  <root id="5600062460044309378">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5600062460044309379" />
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8112728422487168527">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7406771907178600108" resolveInfo="EvaluationUi" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="5600062460044309381">
      <property name="name" nameId="tpck.1169194664001" value="mySessionStopDisposer" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3432969378035544749">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="d822.4352118152439835940" resolveInfo="SessionStopDisposer" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="5600062460044309383" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.FieldDeclaration" typeId="tpee.1068390468200" id="5600062460044309384">
      <property name="name" nameId="tpck.1169194664001" value="myProvider" />
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="671562190169587918">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="anh2.671562190169411198" resolveInfo="EvaluationProvider" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="5600062460044309386" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="5600062460044309387">
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5600062460044309388" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5600062460044309389" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5600062460044309390">
        <property name="name" nameId="tpck.1169194664001" value="provider" />
        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="671562190169587758">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="anh2.671562190169411198" resolveInfo="EvaluationProvider" />
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5600062460044309392">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SuperConstructorInvocation" typeId="tpee.1070475587102" id="5600062460044309393">
          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600110" resolveInfo="EvaluationUi" />
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309394">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5600062460044309395">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5600062460044309390" resolveInfo="provider" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309396">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="anh2.671562190169411580" resolveInfo="getDebugSession" />
            </node>
          </node>
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="5600062460044309397">
            <property name="value" nameId="tpee.1068580123138" value="true" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2202960751294089945">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2202960751294089967">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="2202960751294089946">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2202960751294096564">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2202960751294089854" resolveInfo="setActionGroup" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tp4k.GroupAccessOperation" typeId="tp4k.3205675194086686068" id="2202960751294096567">
                <link role="group" roleId="tp4k.3205675194086686070" targetNodeId="cyfb.8643693251546861612" resolveInfo="WatchesTreeActions" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309398">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="5600062460044309399">
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="5600062460044309400">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5600062460044309384" resolveInfo="myProvider" />
            </node>
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5600062460044309401">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5600062460044309390" resolveInfo="provider" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309402">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309403">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="8112728422487168529">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5600062460044309384" resolveInfo="myProvider" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309405">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="anh2.671562190169411698" resolveInfo="addWatchListener" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="5600062460044309406">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="5600062460044309407">
                  <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="5600062460044309408">
                    <property name="name" nameId="tpck.1169194664001" value="" />
                    <link role="classifier" roleId="tpee.1170346070688" targetNodeId="anh2.671562190169411221" resolveInfo="EvaluationProvider.WatchAdapter" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="anh2.671562190169411224" resolveInfo="EvaluationProvider.WatchAdapter" />
                    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5600062460044309409">
                      <property name="name" nameId="tpck.1169194664001" value="watchAdded" />
                      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5600062460044309410" />
                      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5600062460044309411" />
                      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5600062460044309412">
                        <property name="name" nameId="tpck.1169194664001" value="model" />
                        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
                        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8112728422487168365">
                          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
                        </node>
                      </node>
                      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5600062460044309414">
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309415">
                          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309416">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="5600062460044309417">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
                              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309418">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dinvokeLater(java%dlang%dRunnable)%cvoid" resolveInfo="invokeLater" />
                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="5600062460044309419">
                                <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="5600062460044309420">
                                  <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="5600062460044309421">
                                    <property name="name" nameId="tpck.1169194664001" value="" />
                                    <link role="classifier" roleId="tpee.1170346070688" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                                    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5600062460044309422">
                                      <property name="name" nameId="tpck.1169194664001" value="run" />
                                      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5600062460044309423" />
                                      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5600062460044309424" />
                                      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5600062460044309425">
                                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309426">
                                          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309427">
                                            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="8112728422487168530">
                                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                                            </node>
                                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309429">
                                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178597990" resolveInfo="addModel" />
                                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5600062460044309430">
                                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5600062460044309412" resolveInfo="model" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309431">
                                          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="5600062460044309432">
                                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600119" resolveInfo="evaluate" />
                                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5600062460044309433">
                                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5600062460044309412" resolveInfo="model" />
                                            </node>
                                          </node>
                                        </node>
                                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309434">
                                          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309435">
                                            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="8112728422487168531">
                                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                                            </node>
                                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309437">
                                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2999655953941662116" resolveInfo="rebuildEvaluationTreeNowIfNotDisposed" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5600062460044309438">
                                        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5600062460044309439">
                        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                      </node>
                    </node>
                    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5600062460044309440">
                      <property name="name" nameId="tpck.1169194664001" value="watchUpdated" />
                      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5600062460044309441" />
                      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5600062460044309442" />
                      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5600062460044309443">
                        <property name="name" nameId="tpck.1169194664001" value="model" />
                        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
                        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8112728422487168366">
                          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
                        </node>
                      </node>
                      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5600062460044309445">
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309446">
                          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309447">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="5600062460044309448">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
                              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309449">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dinvokeLater(java%dlang%dRunnable)%cvoid" resolveInfo="invokeLater" />
                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="5600062460044309450">
                                <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="5600062460044309451">
                                  <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="5600062460044309452">
                                    <property name="name" nameId="tpck.1169194664001" value="" />
                                    <link role="classifier" roleId="tpee.1170346070688" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                                    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5600062460044309453">
                                      <property name="name" nameId="tpck.1169194664001" value="run" />
                                      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5600062460044309454" />
                                      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5600062460044309455" />
                                      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5600062460044309456">
                                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309457">
                                          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="5600062460044309458">
                                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600119" resolveInfo="evaluate" />
                                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5600062460044309459">
                                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5600062460044309443" resolveInfo="model" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5600062460044309460">
                                        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5600062460044309461">
                        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                      </node>
                    </node>
                    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5600062460044309462">
                      <property name="name" nameId="tpck.1169194664001" value="watchRemoved" />
                      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5600062460044309463" />
                      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5600062460044309464" />
                      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5600062460044309465">
                        <property name="name" nameId="tpck.1169194664001" value="model" />
                        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
                        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8112728422487168367">
                          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
                        </node>
                      </node>
                      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5600062460044309467">
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309468">
                          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309469">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="5600062460044309470">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
                              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309471">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dinvokeLater(java%dlang%dRunnable)%cvoid" resolveInfo="invokeLater" />
                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="5600062460044309472">
                                <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="5600062460044309473">
                                  <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="5600062460044309474">
                                    <property name="name" nameId="tpck.1169194664001" value="" />
                                    <link role="classifier" roleId="tpee.1170346070688" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                                    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5600062460044309475">
                                      <property name="name" nameId="tpck.1169194664001" value="run" />
                                      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5600062460044309476" />
                                      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5600062460044309477" />
                                      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5600062460044309478">
                                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309479">
                                          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309480">
                                            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="8112728422487168532">
                                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                                            </node>
                                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309482">
                                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="671257137235333029" resolveInfo="removeModel" />
                                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5600062460044309483">
                                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5600062460044309465" resolveInfo="model" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309484">
                                          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309485">
                                            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="8112728422487168533">
                                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                                            </node>
                                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309487">
                                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2999655953941662116" resolveInfo="rebuildEvaluationTreeNowIfNotDisposed" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5600062460044309488">
                                        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5600062460044309489">
                        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309490">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="5600062460044309491">
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="5600062460044309492">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5600062460044309381" resolveInfo="mySessionStopDisposer" />
            </node>
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="5600062460044309493">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="5600062460044309494">
                <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="5600062460044309495">
                  <property name="name" nameId="tpck.1169194664001" value="" />
                  <link role="classifier" roleId="tpee.1170346070688" targetNodeId="d822.4352118152439835940" resolveInfo="SessionStopDisposer" />
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="d822.4352118152439835945" resolveInfo="SessionStopDisposer" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="8112728422487168534">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600393" resolveInfo="myDebugSession" />
                  </node>
                  <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5600062460044309496">
                    <property name="name" nameId="tpck.1169194664001" value="doDispose" />
                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5600062460044309497" />
                    <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5600062460044309498" />
                    <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5600062460044309499">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309500">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309501">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="5600062460044309502">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~ApplicationManager%dgetApplication()%ccom%dintellij%dopenapi%dapplication%dApplication" resolveInfo="getApplication" />
                            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="mepa.~ApplicationManager" resolveInfo="ApplicationManager" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309503">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="mepa.~Application%dinvokeLater(java%dlang%dRunnable)%cvoid" resolveInfo="invokeLater" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="5600062460044309504">
                              <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="5600062460044309505">
                                <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="5600062460044309506">
                                  <property name="name" nameId="tpck.1169194664001" value="" />
                                  <link role="classifier" roleId="tpee.1170346070688" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                                  <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5600062460044309507">
                                    <property name="name" nameId="tpck.1169194664001" value="run" />
                                    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5600062460044309508" />
                                    <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5600062460044309509" />
                                    <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5600062460044309510">
                                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309511">
                                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309512">
                                          <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="5600062460044309513">
                                            <link role="classConcept" roleId="tpee.1182955020723" targetNodeId="5600062460044309378" resolveInfo="WatchesPanel" />
                                          </node>
                                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309514">
                                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3196684409401005401" resolveInfo="dispose" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5600062460044309515">
                                      <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5600062460044309516">
                      <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2757277907255793368">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2757277907255793369">
            <property name="name" nameId="tpck.1169194664001" value="toolbar" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2757277907255793370">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="6tyf.~ActionToolbar" resolveInfo="ActionToolbar" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2757277907255793371">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2757277907255793372">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~ActionManager%dgetInstance()%ccom%dintellij%dopenapi%dactionSystem%dActionManager" resolveInfo="getInstance" />
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="6tyf.~ActionManager" resolveInfo="ActionManager" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2757277907255793373">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~ActionManager%dcreateActionToolbar(java%dlang%dString,com%dintellij%dopenapi%dactionSystem%dActionGroup,boolean)%ccom%dintellij%dopenapi%dactionSystem%dActionToolbar" resolveInfo="createActionToolbar" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="2757277907255793374">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6tyf.~ActionPlaces%dUNKNOWN" resolveInfo="UNKNOWN" />
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="6tyf.~ActionPlaces" resolveInfo="ActionPlaces" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tp4k.GroupAccessOperation" typeId="tp4k.3205675194086686068" id="9133858534420834082">
                  <link role="group" roleId="tp4k.3205675194086686070" targetNodeId="cyfb.9133858534420786537" resolveInfo="WatchesToolbarActions" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="2757277907255793381">
                  <property name="value" nameId="tpee.1068580123138" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2906125741921844207">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2906125741921844229">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="2906125741921844208">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2757277907255793369" resolveInfo="toolbar" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2906125741921844235">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~ActionToolbar%dsetLayoutPolicy(int)%cvoid" resolveInfo="setLayoutPolicy" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="2906125741921844251">
                <link role="classifier" roleId="tpee.1144433057691" targetNodeId="6tyf.~ActionToolbar" resolveInfo="ActionToolbar" />
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6tyf.~ActionToolbar%dWRAP_LAYOUT_POLICY" resolveInfo="WRAP_LAYOUT_POLICY" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3738676476220330582" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3738676476220330585">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="3738676476220330586">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1t7x.~Container%dadd(java%dawt%dComponent,java%dlang%dObject)%cvoid" resolveInfo="add" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3738676476220330631">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3738676476220330587">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2757277907255793369" resolveInfo="toolbar" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3738676476220330911">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="6tyf.~ActionToolbar%dgetComponent()%cjavax%dswing%dJComponent" resolveInfo="getComponent" />
              </node>
            </node>
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3738676476220330599">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="1t7x.~BorderLayout" resolveInfo="BorderLayout" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1t7x.~BorderLayout%dWEST" resolveInfo="WEST" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3738676476220330608">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="3738676476220330609">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1t7x.~Container%dadd(java%dawt%dComponent,java%dlang%dObject)%cvoid" resolveInfo="add" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="3738676476220330916">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="3738676476220330917">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="aw8c.~JBScrollPane%d&lt;init&gt;(java%dawt%dComponent)" resolveInfo="JBScrollPane" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="3738676476220330918">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7406771907178600399" resolveInfo="myTree" />
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3738676476220330931">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="1t7x.~BorderLayout" resolveInfo="BorderLayout" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1t7x.~BorderLayout%dCENTER" resolveInfo="CENTER" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5600062460044309540">
      <property name="name" nameId="tpck.1169194664001" value="update" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.ProtectedVisibility" typeId="tpee.1146644641414" id="5600062460044309541" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5600062460044309542" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5600062460044309543">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="5600062460044309544">
          <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309545">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="8112728422487168540">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5600062460044309384" resolveInfo="myProvider" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309547">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="anh2.671562190169411606" resolveInfo="getWatches" />
            </node>
          </node>
          <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="5600062460044309548">
            <property name="name" nameId="tpck.1169194664001" value="model" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="671562190169587916">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
            </node>
          </node>
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="5600062460044309550">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309551">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309552">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="5600062460044309553">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5600062460044309548" resolveInfo="model" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309554">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="f3c7.7757449281563189597" resolveInfo="updateState" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5600062460044309555">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5600062460044309556">
      <property name="name" nameId="tpck.1169194664001" value="evaluate" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5600062460044309557" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5600062460044309558" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5600062460044309559">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="5600062460044309560">
          <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5600062460044309561">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalInstanceFieldReference" typeId="tpee.7785501532031639928" id="5600062460044309562">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5600062460044309384" resolveInfo="myProvider" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5600062460044309563">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="anh2.671562190169411606" resolveInfo="getWatches" />
            </node>
          </node>
          <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="5600062460044309564">
            <property name="name" nameId="tpck.1169194664001" value="model" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="671562190169587919">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="f3c7.7757449281563189239" resolveInfo="AbstractEvaluationModel" />
            </node>
          </node>
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="5600062460044309566">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5600062460044309567">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalInstanceMethodCall" typeId="tpee.3066917033203108594" id="5600062460044309568">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7406771907178600119" resolveInfo="evaluate" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="5600062460044309569">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5600062460044309564" resolveInfo="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5600062460044309570">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
      </node>
    </node>
  </root>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f97bb30d-7cf7-420d-ba6b-395564fcaa7f(jetbrains.mps.ide.vcs)" concise="true">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
  </languages>
  <imports>
    <import index="tbz9" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.platform(MPS.IDEA/com.intellij.platform@java_stub)" />
    <import index="3dcm" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.vcs(MPS.IDEA/com.intellij.openapi.vcs@java_stub)" />
    <import index="b2mh" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.project(MPS.IDEA/com.intellij.openapi.project@java_stub)" />
    <import index="15tk" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.vcs.impl(MPS.IDEA/com.intellij.openapi.vcs.impl@java_stub)" />
    <import index="o84r" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.vcs.changes(MPS.IDEA/com.intellij.openapi.vcs.changes@java_stub)" />
    <import index="3df7" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.vfs(MPS.IDEA/com.intellij.openapi.vfs@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(java.lang@java_stub)" />
    <import index="as9o" ref="f:java_stub#3f233e7f-b8a6-46d2-a57f-795d56775243#org.jetbrains.annotations(Annotations/org.jetbrains.annotations@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="m373" ref="r:4095af4f-a097-4799-aaa9-03df087ddfa6(jetbrains.mps.baseLanguage.javadoc.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="5349172909345532722" name="author" index="P$JXp" />
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="8465538089690331490" name="since" index="TZ5HC" />
      </concept>
      <concept id="5349172909345530174" name="jetbrains.mps.baseLanguage.javadoc.structure.AuthorBlockDocTag" flags="ng" index="P$Jll">
        <property id="5349172909345532826" name="text" index="P$JZL" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8465538089690324397" name="jetbrains.mps.baseLanguage.javadoc.structure.SinceBlockDocTag" flags="ng" index="TZ7YB">
        <property id="8465538089690324399" name="text" index="TZ7Y_" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4mqZImXW559">
    <property role="TrG5h" value="SourceRevision" />
    <property role="1sVAO0" value="true" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="4mqZImXW57a" role="1B3o_S" />
    <node concept="3UR2Jj" id="4mqZImXW57K" role="lGtFl">
      <node concept="TZ5HA" id="4mqZImXW57N" role="TZ5H$">
        <node concept="1dT_AC" id="4mqZImXWfx2" role="1dT_Ay" />
      </node>
      <node concept="P$Jll" id="4mqZImXWfwZ" role="P$JXp">
        <property role="P$JZL" value="Evgeny Gerashchenko" />
      </node>
      <node concept="TZ7YB" id="4mqZImXWfx1" role="TZ5HC">
        <property role="TZ7Y_" value="10/15/11" />
      </node>
    </node>
    <node concept="Wx3nA" id="4mqZImXW57b" role="jymVt">
      <property role="TrG5h" value="ourProvider" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="4mqZImXW57c" role="1tU5fm">
        <reference role="3uigEE" target="5015601397718077769" resolve="SourceRevision" />
      </node>
      <node concept="3Tm6S6" id="4mqZImXW57d" role="1B3o_S" />
      <node concept="2ShNRf" id="4mqZImXW57e" role="33vP2m">
        <node concept="YeOm9" id="4mqZImXW57f" role="2ShVmc">
          <node concept="1Y3b0j" id="4mqZImXW57g" role="YeSDq">
            <property role="TrG5h" value="" />
            <property role="2bfB8j" value="true" />
            <reference role="1Y3XeK" target="5015601397718077769" resolve="SourceRevision" />
            <reference role="37wK5l" target="5015601397718077908" resolve="SourceRevision" />
            <node concept="3clFb_" id="4mqZImXW57h" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="get" />
              <property role="DiZV1" value="false" />
              <node concept="3Tm1VV" id="4mqZImXW57i" role="1B3o_S" />
              <node concept="17QB3L" id="4mqZImXWdb6" role="3clF45" />
              <node concept="3clFbS" id="4mqZImXW57P" role="3clF47">
                <node concept="3cpWs6" id="4mqZImXW57Q" role="3cqZAp">
                  <node concept="10Nm6u" id="4mqZImXW57R" role="3cqZAk" />
                </node>
              </node>
              <node concept="2AHcQZ" id="4mqZImXW57S" role="2AJF6D">
                <reference role="2AI5Lk" target="e2lb.~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="4mqZImXW57k" role="jymVt">
      <node concept="3Tm1VV" id="4mqZImXW57l" role="1B3o_S" />
      <node concept="3cqZAl" id="4mqZImXW57m" role="3clF45" />
      <node concept="3clFbS" id="4mqZImXW57n" role="3clF47" />
    </node>
    <node concept="3clFb_" id="4mqZImXW57o" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="get" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4mqZImXW57p" role="1B3o_S" />
      <node concept="17QB3L" id="4mqZImXWdb7" role="3clF45" />
      <node concept="3clFbS" id="4mqZImXW57r" role="3clF47">
        <node concept="3SKdUt" id="4mqZImXW5dk" role="3cqZAp">
          <node concept="3SKdUq" id="4mqZImXW5dl" role="3SKWNk">
            <property role="3SKdUp" value=" TODO rewrite using extension point" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4mqZImXW57s" role="2AJF6D">
        <reference role="2AI5Lk" target="as9o.~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2YIFZL" id="4mqZImXW57t" role="jymVt">
      <property role="TrG5h" value="setProvider" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4mqZImXW57u" role="1B3o_S" />
      <node concept="3cqZAl" id="4mqZImXW57v" role="3clF45" />
      <node concept="37vLTG" id="4mqZImXW57w" role="3clF46">
        <property role="TrG5h" value="provider" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4mqZImXW57x" role="1tU5fm">
          <reference role="3uigEE" target="5015601397718077769" resolve="SourceRevision" />
        </node>
      </node>
      <node concept="3clFbS" id="4mqZImXW57y" role="3clF47">
        <node concept="3clFbF" id="4mqZImXW57z" role="3cqZAp">
          <node concept="37vLTI" id="4mqZImXW57$" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeoicA" role="37vLTJ">
              <reference role="3cqZAo" target="5015601397718077899" resolve="ourProvider" />
            </node>
            <node concept="37vLTw" id="2BHiRxgl3kr" role="37vLTx">
              <reference role="3cqZAo" target="5015601397718077920" resolve="provider" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="4mqZImXW57B" role="jymVt">
      <property role="TrG5h" value="getSourceRevision" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4mqZImXW57C" role="1B3o_S" />
      <node concept="17QB3L" id="4mqZImXWdb8" role="3clF45" />
      <node concept="3clFbS" id="4mqZImXW57E" role="3clF47">
        <node concept="3cpWs6" id="4mqZImXW57F" role="3cqZAp">
          <node concept="2OqwBi" id="4mqZImXW57G" role="3cqZAk">
            <node concept="37vLTw" id="2BHiRxeomCv" role="2Oq$k0">
              <reference role="3cqZAo" target="5015601397718077899" resolve="ourProvider" />
            </node>
            <node concept="liA8E" id="4mqZImXW57I" role="2OqNvi">
              <reference role="37wK5l" target="5015601397718077912" resolve="get" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4mqZImXW57J" role="2AJF6D">
        <reference role="2AI5Lk" target="as9o.~Nullable" resolve="Nullable" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4mqZImXXUXr">
    <property role="TrG5h" value="ExtendedDefaultVcsRootPolicy" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="4mqZImXXUXs" role="1B3o_S" />
    <node concept="3uibUv" id="4mqZImXXUXt" role="1zkMxy">
      <reference role="3uigEE" target="15tk.~BasicDefaultVcsRootPolicy" resolve="BasicDefaultVcsRootPolicy" />
    </node>
    <node concept="312cEg" id="4mqZImXXUXu" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="4mqZImXXUXv" role="1tU5fm">
        <reference role="3uigEE" target="b2mh.~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="4mqZImXXUXw" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="4mqZImXXUXx" role="jymVt">
      <node concept="3Tm1VV" id="4mqZImXXUXy" role="1B3o_S" />
      <node concept="3cqZAl" id="4mqZImXXUXz" role="3clF45" />
      <node concept="37vLTG" id="4mqZImXXUX$" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4mqZImXXUX_" role="1tU5fm">
          <reference role="3uigEE" target="b2mh.~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="4mqZImXXUXA" role="3clF47">
        <node concept="XkiVB" id="4mqZImXXUXB" role="3cqZAp">
          <reference role="37wK5l" target="15tk.~BasicDefaultVcsRootPolicy%d&lt;init&gt;(com%dintellij%dopenapi%dproject%dProject)" resolve="BasicDefaultVcsRootPolicy" />
          <node concept="37vLTw" id="2BHiRxgm5Eu" role="37wK5m">
            <reference role="3cqZAo" target="5015601397718560612" resolve="project" />
          </node>
        </node>
        <node concept="3clFbF" id="4mqZImXXUXD" role="3cqZAp">
          <node concept="37vLTI" id="4mqZImXXUXE" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeut5q" role="37vLTJ">
              <reference role="3cqZAo" target="5015601397718560606" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="2BHiRxgkWm5" role="37vLTx">
              <reference role="3cqZAo" target="5015601397718560612" resolve="project" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4mqZImXXUXH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="markDefaultRootsDirty" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4mqZImXXUXI" role="1B3o_S" />
      <node concept="3cqZAl" id="4mqZImXXUXJ" role="3clF45" />
      <node concept="37vLTG" id="4mqZImXXUXK" role="3clF46">
        <property role="TrG5h" value="builder" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4mqZImXXUXL" role="1tU5fm">
          <reference role="3uigEE" target="o84r.~DirtBuilder" resolve="DirtBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="4mqZImXXUXM" role="3clF46">
        <property role="TrG5h" value="vcsGuess" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4mqZImXXUXN" role="1tU5fm">
          <reference role="3uigEE" target="o84r.~VcsGuess" resolve="VcsGuess" />
        </node>
      </node>
      <node concept="3clFbS" id="4mqZImXXUXO" role="3clF47">
        <node concept="3clFbF" id="4mqZImXXUXP" role="3cqZAp">
          <node concept="3nyPlj" id="4mqZImXXUXQ" role="3clFbG">
            <reference role="37wK5l" target="15tk.~BasicDefaultVcsRootPolicy%dmarkDefaultRootsDirty(com%dintellij%dopenapi%dvcs%dchanges%dDirtBuilder,com%dintellij%dopenapi%dvcs%dchanges%dVcsGuess)%cvoid" resolve="markDefaultRootsDirty" />
            <node concept="37vLTw" id="2BHiRxglnUx" role="37wK5m">
              <reference role="3cqZAo" target="5015601397718560624" resolve="builder" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmFdE" role="37wK5m">
              <reference role="3cqZAo" target="5015601397718560626" resolve="vcsGuess" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6eOYjWvCtqX" role="3cqZAp">
          <node concept="3SKdUq" id="6eOYjWvCtqY" role="3SKWNk">
            <property role="3SKdUp" value="TODO is it needed?" />
          </node>
        </node>
        <node concept="3cpWs8" id="4mqZImXXUXT" role="3cqZAp">
          <node concept="3cpWsn" id="4mqZImXXUXU" role="3cpWs9">
            <property role="TrG5h" value="manager" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="4mqZImXXUXV" role="1tU5fm">
              <reference role="3uigEE" target="3dcm.~ProjectLevelVcsManager" resolve="ProjectLevelVcsManager" />
            </node>
            <node concept="2YIFZM" id="4mqZImXXUXW" role="33vP2m">
              <reference role="1Pybhc" target="3dcm.~ProjectLevelVcsManager" resolve="ProjectLevelVcsManager" />
              <reference role="37wK5l" target="3dcm.~ProjectLevelVcsManager%dgetInstance(com%dintellij%dopenapi%dproject%dProject)%ccom%dintellij%dopenapi%dvcs%dProjectLevelVcsManager" resolve="getInstance" />
              <node concept="37vLTw" id="2BHiRxeuQwu" role="37wK5m">
                <reference role="3cqZAo" target="5015601397718560606" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4mqZImXXUXY" role="3cqZAp">
          <node concept="3cpWsn" id="4mqZImXXUXZ" role="3cpWs9">
            <property role="TrG5h" value="roots" />
            <property role="3TUv4t" value="false" />
            <node concept="10Q1$e" id="4mqZImXXUY0" role="1tU5fm">
              <node concept="3uibUv" id="4mqZImXXUY1" role="10Q1$1">
                <reference role="3uigEE" target="3dcm.~VcsRoot" resolve="VcsRoot" />
              </node>
            </node>
            <node concept="2OqwBi" id="4mqZImXXUY2" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTzOM" role="2Oq$k0">
                <reference role="3cqZAo" target="5015601397718560634" resolve="manager" />
              </node>
              <node concept="liA8E" id="4mqZImXXUY4" role="2OqNvi">
                <reference role="37wK5l" target="3dcm.~ProjectLevelVcsManager%dgetAllVcsRoots()%ccom%dintellij%dopenapi%dvcs%dVcsRoot[]" resolve="getAllVcsRoots" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4mqZImXXUY5" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTAUV" role="1DdaDG">
            <reference role="3cqZAo" target="5015601397718560639" resolve="roots" />
          </node>
          <node concept="3cpWsn" id="4mqZImXXUY7" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="4mqZImXXUY8" role="1tU5fm">
              <reference role="3uigEE" target="3dcm.~VcsRoot" resolve="VcsRoot" />
            </node>
          </node>
          <node concept="3clFbS" id="4mqZImXXUY9" role="2LFqv$">
            <node concept="3clFbF" id="4mqZImXXUYa" role="3cqZAp">
              <node concept="2OqwBi" id="4mqZImXXUYb" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxglfWH" role="2Oq$k0">
                  <reference role="3cqZAo" target="5015601397718560624" resolve="builder" />
                </node>
                <node concept="liA8E" id="4mqZImXXUYd" role="2OqNvi">
                  <reference role="37wK5l" target="o84r.~DirtBuilder%daddDirtyDirRecursively(com%dintellij%dopenapi%dvcs%dVcsRoot)%cvoid" resolve="addDirtyDirRecursively" />
                  <node concept="37vLTw" id="3GM_nagTrPm" role="37wK5m">
                    <reference role="3cqZAo" target="5015601397718560647" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4mqZImXXUYf" role="2AJF6D">
        <reference role="2AI5Lk" target="e2lb.~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4mqZImXXUYg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="matchesDefaultMapping" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="4mqZImXXUYh" role="1B3o_S" />
      <node concept="10P_77" id="4mqZImXXUYi" role="3clF45" />
      <node concept="37vLTG" id="4mqZImXXUYj" role="3clF46">
        <property role="TrG5h" value="file" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4mqZImXXUYk" role="1tU5fm">
          <reference role="3uigEE" target="3df7.~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="37vLTG" id="4mqZImXXUYl" role="3clF46">
        <property role="TrG5h" value="matchContext" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4mqZImXXUYm" role="1tU5fm">
          <reference role="3uigEE" target="e2lb.~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="4mqZImXXUYn" role="3clF47">
        <node concept="3clFbJ" id="4mqZImXXUYo" role="3cqZAp">
          <node concept="3clFbC" id="4mqZImXXUYp" role="3clFbw">
            <node concept="2OqwBi" id="4mqZImXXUYq" role="3uHU7B">
              <node concept="2YIFZM" id="4mqZImXXUYr" role="2Oq$k0">
                <reference role="37wK5l" target="tbz9.~ProjectBaseDirectory%dgetInstance(com%dintellij%dopenapi%dproject%dProject)%ccom%dintellij%dplatform%dProjectBaseDirectory" resolve="getInstance" />
                <reference role="1Pybhc" target="tbz9.~ProjectBaseDirectory" resolve="ProjectBaseDirectory" />
                <node concept="37vLTw" id="2BHiRxeuoVj" role="37wK5m">
                  <reference role="3cqZAo" target="5015601397718560606" resolve="myProject" />
                </node>
              </node>
              <node concept="liA8E" id="4mqZImXXUYt" role="2OqNvi">
                <reference role="37wK5l" target="tbz9.~ProjectBaseDirectory%dgetBaseDir()%ccom%dintellij%dopenapi%dvfs%dVirtualFile" resolve="getBaseDir" />
              </node>
            </node>
            <node concept="10Nm6u" id="4mqZImXXUYu" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="4mqZImXXUYv" role="3clFbx">
            <node concept="3SKdUt" id="6eOYjWvCjtv" role="3cqZAp">
              <node concept="3SKdUq" id="6eOYjWvCjtw" role="3SKWNk">
                <property role="3SKdUp" value="TODO is it needed?" />
              </node>
            </node>
            <node concept="3cpWs6" id="4mqZImXXUYw" role="3cqZAp">
              <node concept="3clFbT" id="4mqZImXXUYx" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4mqZImXXUYy" role="3cqZAp">
          <node concept="3nyPlj" id="4mqZImXXUYz" role="3cqZAk">
            <reference role="37wK5l" target="15tk.~BasicDefaultVcsRootPolicy%dmatchesDefaultMapping(com%dintellij%dopenapi%dvfs%dVirtualFile,java%dlang%dObject)%cboolean" resolve="matchesDefaultMapping" />
            <node concept="37vLTw" id="2BHiRxgmhCI" role="37wK5m">
              <reference role="3cqZAo" target="5015601397718560659" resolve="file" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmLqO" role="37wK5m">
              <reference role="3cqZAo" target="5015601397718560661" resolve="matchContext" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4mqZImXXUYA" role="2AJF6D">
        <reference role="2AI5Lk" target="e2lb.~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>


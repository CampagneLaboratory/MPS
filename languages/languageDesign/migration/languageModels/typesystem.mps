<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:47a77104-3b09-4998-a2bd-ada4655c0c77(jetbrains.mps.lang.migration.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="53vh" ref="r:53885008-7612-46ff-8b11-27f1d42c3adb(jetbrains.mps.lang.migration.structure)" />
    <import index="cu2c" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="ec5l" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="88zw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="5jto" ref="r:5dd063a0-3217-40ce-84a4-0ef961abad0b(jetbrains.mps.lang.migration.util)" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="vsqj" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="kqhl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project.structure.modules(MPS.Core/jetbrains.mps.project.structure.modules@java_stub)" implicit="true" />
    <import index="buve" ref="r:306236c1-379e-4cee-b600-470a90233e2f(jetbrains.mps.lang.migration.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785117" name="jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation" flags="ng" index="2c44tb" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175517400280" name="jetbrains.mps.lang.typesystem.structure.AssertStatement" flags="nn" index="2Mj0R9">
        <child id="1175517761460" name="condition" index="2MkoU_" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1179832490862" name="jetbrains.mps.lang.typesystem.structure.CreateStrongLessThanInequationStatement" flags="nn" index="2NvLDW" />
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1216383170661" name="jetbrains.mps.lang.typesystem.structure.TypesystemQuickFix" flags="ng" index="Q5z_Y">
        <child id="1216383424566" name="executeBlock" index="Q6x$H" />
        <child id="1216383476350" name="quickFixArgument" index="Q6Id_" />
        <child id="1216391046856" name="descriptionBlock" index="QzAvj" />
      </concept>
      <concept id="1216383287005" name="jetbrains.mps.lang.typesystem.structure.QuickFixExecuteBlock" flags="in" index="Q5ZZ6" />
      <concept id="1216383482742" name="jetbrains.mps.lang.typesystem.structure.QuickFixArgument" flags="ng" index="Q6JDH">
        <child id="1216383511839" name="argumentType" index="Q6QK4" />
      </concept>
      <concept id="1216390348809" name="jetbrains.mps.lang.typesystem.structure.QuickFixArgumentReference" flags="nn" index="QwW4i">
        <reference id="1216390348810" name="quickFixArgument" index="QwW4h" />
      </concept>
      <concept id="1216390987552" name="jetbrains.mps.lang.typesystem.structure.QuickFixDescriptionBlock" flags="in" index="QznSV" />
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <property id="1206359757216" name="checkOnly" index="3wDh2S" />
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="linkRole" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="2T7ZPM5bRTD">
    <property role="TrG5h" value="MigrationScriptVersions" />
    <node concept="3clFbS" id="2T7ZPM5bRZd" role="18ibNy">
      <node concept="3cpWs8" id="1IkLLL1qAj2" role="3cqZAp">
        <node concept="3cpWsn" id="1IkLLL1qAj3" role="3cpWs9">
          <property role="TrG5h" value="errors" />
          <node concept="3rvAFt" id="1IkLLL1qAiK" role="1tU5fm">
            <node concept="3Tqbb2" id="1IkLLL1qAiV" role="3rvQeY" />
            <node concept="3vKaQO" id="1IkLLL1qAiT" role="3rvSg0">
              <node concept="3uibUv" id="1IkLLL1qAiU" role="3O5elw">
                <ref role="3uigEE" to="e2lb:~String" resolve="String" />
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="1IkLLL1qAj4" role="33vP2m">
            <ref role="37wK5l" to="5jto:3WpkgLwxAbe" resolve="checkMigrationsVersions" />
            <ref role="1Pybhc" to="5jto:3WpkgLwxyX3" resolve="MigrationsCheckUtil" />
            <node concept="2OqwBi" id="1IkLLL1qAj5" role="37wK5m">
              <node concept="2JrnkZ" id="1IkLLL1qAj6" role="2Oq$k0">
                <node concept="2OqwBi" id="1IkLLL1qAj7" role="2JrQYb">
                  <node concept="1YBJjd" id="1IkLLL1qAj8" role="2Oq$k0">
                    <ref role="1YBMHb" node="2T7ZPM5bRZf" resolve="ms" />
                  </node>
                  <node concept="I4A8Y" id="1IkLLL1qAj9" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="1IkLLL1qAja" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbF" id="1IkLLL1qBSN" role="3cqZAp">
        <node concept="2OqwBi" id="1IkLLL1qCPP" role="3clFbG">
          <node concept="3EllGN" id="1IkLLL1qC_Y" role="2Oq$k0">
            <node concept="1YBJjd" id="1IkLLL1qCBV" role="3ElVtu">
              <ref role="1YBMHb" node="2T7ZPM5bRZf" resolve="ms" />
            </node>
            <node concept="37vLTw" id="1IkLLL1qBSL" role="3ElQJh">
              <ref role="3cqZAo" node="1IkLLL1qAj3" resolve="errors" />
            </node>
          </node>
          <node concept="2es0OD" id="1IkLLL1qEkW" role="2OqNvi">
            <node concept="1bVj0M" id="1IkLLL1qEkY" role="23t8la">
              <node concept="3clFbS" id="1IkLLL1qEkZ" role="1bW5cS">
                <node concept="2MkqsV" id="1IkLLL1qEo8" role="3cqZAp">
                  <node concept="1YBJjd" id="1IkLLL1qGa3" role="2OEOjV">
                    <ref role="1YBMHb" node="2T7ZPM5bRZf" resolve="ms" />
                  </node>
                  <node concept="37vLTw" id="1IkLLL1qECt" role="2MkJ7o">
                    <ref role="3cqZAo" node="1IkLLL1qEl0" resolve="it" />
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="1IkLLL1qEl0" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="1IkLLL1qEl1" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2T7ZPM5bRZf" role="1YuTPh">
      <property role="TrG5h" value="ms" />
      <ref role="1YaFvo" to="53vh:7fCCGqboGqz" resolve="MigrationScript" />
    </node>
  </node>
  <node concept="Q5z_Y" id="2T7ZPM5dYT_">
    <property role="TrG5h" value="FixLanguageVersion" />
    <node concept="Q6JDH" id="2T7ZPM5dYTS" role="Q6Id_">
      <property role="TrG5h" value="wanted" />
      <node concept="10Oyi0" id="2T7ZPM5dYU0" role="Q6QK4" />
    </node>
    <node concept="Q6JDH" id="2T7ZPM5eMe8" role="Q6Id_">
      <property role="TrG5h" value="l" />
      <node concept="3uibUv" id="2T7ZPM5eMjy" role="Q6QK4">
        <ref role="3uigEE" to="cu2c:~Language" resolve="Language" />
      </node>
    </node>
    <node concept="Q5ZZ6" id="2T7ZPM5dYTA" role="Q6x$H">
      <node concept="3clFbS" id="2T7ZPM5dYTB" role="2VODD2">
        <node concept="3clFbF" id="2T7ZPM5eMjK" role="3cqZAp">
          <node concept="2OqwBi" id="2T7ZPM5eMYx" role="3clFbG">
            <node concept="2OqwBi" id="2T7ZPM5eMnT" role="2Oq$k0">
              <node concept="QwW4i" id="2T7ZPM5eMjJ" role="2Oq$k0">
                <ref role="QwW4h" node="2T7ZPM5eMe8" resolve="l" />
              </node>
              <node concept="liA8E" id="2T7ZPM5eMXd" role="2OqNvi">
                <ref role="37wK5l" to="cu2c:~Language.getModuleDescriptor():jetbrains.mps.project.structure.modules.LanguageDescriptor" resolve="getModuleDescriptor" />
              </node>
            </node>
            <node concept="liA8E" id="2T7ZPM5f2JQ" role="2OqNvi">
              <ref role="37wK5l" to="kqhl:~LanguageDescriptor.setVersion(int):void" resolve="setVersion" />
              <node concept="QwW4i" id="2T7ZPM5gwmY" role="37wK5m">
                <ref role="QwW4h" node="2T7ZPM5dYTS" resolve="wanted" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="MlMxr8k0zN" role="3cqZAp">
          <node concept="2OqwBi" id="MlMxr8k0Ck" role="3clFbG">
            <node concept="QwW4i" id="MlMxr8k0zL" role="2Oq$k0">
              <ref role="QwW4h" node="2T7ZPM5eMe8" resolve="l" />
            </node>
            <node concept="liA8E" id="MlMxr8k1eK" role="2OqNvi">
              <ref role="37wK5l" to="vsqj:~AbstractModule.setChanged():void" resolve="setChanged" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="QznSV" id="2T7ZPM5eKyF" role="QzAvj">
      <node concept="3clFbS" id="2T7ZPM5eKyG" role="2VODD2">
        <node concept="3clFbF" id="2T7ZPM5eKHi" role="3cqZAp">
          <node concept="Xl_RD" id="2T7ZPM5eKHh" role="3clFbG">
            <property role="Xl_RC" value="Set correct language version" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1YbPZF" id="3yKhys4A4Zw">
    <property role="TrG5h" value="typeof_DataDependency" />
    <property role="3GE5qa" value="member" />
    <node concept="3clFbS" id="3yKhys4A4Zx" role="18ibNy">
      <node concept="1Z5TYs" id="3yKhys4A51_" role="3cqZAp">
        <node concept="mw_s8" id="3yKhys4A51C" role="1ZfhK$">
          <node concept="1Z2H0r" id="3yKhys4A4ZE" role="mwGJk">
            <node concept="1YBJjd" id="3yKhys4A50h" role="1Z2MuG">
              <ref role="1YBMHb" node="3yKhys4A4Zz" resolve="dD" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="3yKhys4AczN" role="1ZfhKB">
          <node concept="2c44tf" id="3yKhys4AczL" role="mwGJk">
            <node concept="3rvAFt" id="6d7r2Fq3uEz" role="2c44tc">
              <node concept="3uibUv" id="6d7r2Fq3uOq" role="3rvQeY">
                <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
              </node>
              <node concept="3Tqbb2" id="3yKhys4Ac_9" role="3rvSg0">
                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                <node concept="2c44tb" id="3yKhys4Ac_O" role="lGtFl">
                  <property role="2qtEX8" value="concept" />
                  <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                  <node concept="2OqwBi" id="3yKhys4AdRK" role="2c44t1">
                    <node concept="2OqwBi" id="3yKhys4AcFs" role="2Oq$k0">
                      <node concept="1YBJjd" id="3yKhys4AcAC" role="2Oq$k0">
                        <ref role="1YBMHb" node="3yKhys4A4Zz" resolve="dD" />
                      </node>
                      <node concept="3TrEf2" id="3yKhys4Adpe" role="2OqNvi">
                        <ref role="3Tt5mk" to="53vh:4XFiG3drkFP" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="3yKhys4Afds" role="2OqNvi">
                      <ref role="37wK5l" to="buve:7s$_UJMVDH8" resolve="getProducedData" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3yKhys4A4Zz" role="1YuTPh">
      <property role="TrG5h" value="dD" />
      <ref role="1YaFvo" to="53vh:4iMwkz$0syh" resolve="DataDependency" />
    </node>
  </node>
  <node concept="1YbPZF" id="6d7r2FpJ_l3">
    <property role="TrG5h" value="typeof_DataDependencyReference" />
    <property role="3GE5qa" value="member" />
    <node concept="3clFbS" id="6d7r2FpJ_l4" role="18ibNy">
      <node concept="1Z5TYs" id="6d7r2FpJ_px" role="3cqZAp">
        <node concept="mw_s8" id="6d7r2FpJ_pS" role="1ZfhKB">
          <node concept="1Z2H0r" id="6d7r2FpJ_pO" role="mwGJk">
            <node concept="2OqwBi" id="6d7r2FpJ_sj" role="1Z2MuG">
              <node concept="1YBJjd" id="6d7r2FpJ_ql" role="2Oq$k0">
                <ref role="1YBMHb" node="6d7r2FpJ_l6" resolve="ddr" />
              </node>
              <node concept="3TrEf2" id="6d7r2FpJ_IP" role="2OqNvi">
                <ref role="3Tt5mk" to="53vh:6d7r2FpJdsT" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6d7r2FpJ_p$" role="1ZfhK$">
          <node concept="1Z2H0r" id="6d7r2FpJ_nI" role="mwGJk">
            <node concept="1YBJjd" id="6d7r2FpJ_ol" role="1Z2MuG">
              <ref role="1YBMHb" node="6d7r2FpJ_l6" resolve="ddr" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6d7r2FpJ_l6" role="1YuTPh">
      <property role="TrG5h" value="ddr" />
      <ref role="1YaFvo" to="53vh:6d7r2FpJdsQ" resolve="DataDependencyReference" />
    </node>
  </node>
  <node concept="18kY7G" id="Czdt9sZoEx">
    <property role="TrG5h" value="MigrationScriptCycles" />
    <node concept="3clFbS" id="Czdt9sZoEy" role="18ibNy">
      <node concept="2Mj0R9" id="Czdt9t40Ww" role="3cqZAp">
        <node concept="3fqX7Q" id="Czdt9t40XE" role="2MkoU_">
          <node concept="1eOMI4" id="Czdt9t40XG" role="3fr31v">
            <node concept="2YIFZM" id="Czdt9t40Vo" role="1eOMHV">
              <ref role="37wK5l" to="5jto:Czdt9t3YHI" resolve="hasCycles" />
              <ref role="1Pybhc" to="5jto:3WpkgLwxyX3" resolve="MigrationsCheckUtil" />
              <node concept="1YBJjd" id="Czdt9t40VC" role="37wK5m">
                <ref role="1YBMHb" node="Czdt9sZoIW" resolve="migrationScript" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1YBJjd" id="Czdt9t410f" role="2OEOjV">
          <ref role="1YBMHb" node="Czdt9sZoIW" resolve="migrationScript" />
        </node>
        <node concept="Xl_RD" id="Czdt9t417u" role="2MkJ7o">
          <property role="Xl_RC" value="Cyclic migration script dependency detected" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="Czdt9sZoIW" role="1YuTPh">
      <property role="TrG5h" value="migrationScript" />
      <ref role="1YaFvo" to="53vh:7fCCGqboGqz" resolve="MigrationScript" />
    </node>
  </node>
  <node concept="1YbPZF" id="4SSaNAQkTwF">
    <property role="TrG5h" value="typeof_ConsequenceFunction" />
    <property role="3GE5qa" value="transformExtension" />
    <node concept="3clFbS" id="4SSaNAQkTwG" role="18ibNy">
      <node concept="2NvLDW" id="7uoTbAzPlbJ" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="7uoTbAzPlbO" role="1ZfhK$">
          <node concept="1Z2H0r" id="7uoTbAzPlbP" role="mwGJk">
            <node concept="1YBJjd" id="7uoTbAzPlbR" role="1Z2MuG">
              <ref role="1YBMHb" node="4SSaNAQkTwI" resolve="cf" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="7uoTbAzPlbL" role="1ZfhKB">
          <node concept="2c44tf" id="7uoTbAzPlbM" role="mwGJk">
            <node concept="1ajhzC" id="gwqcHBKGzd" role="2c44tc">
              <node concept="3Tqbb2" id="7uoTbAzPljF" role="1ajw0F">
                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                <node concept="2c44tb" id="7uoTbAzPljG" role="lGtFl">
                  <property role="2qtEX8" value="concept" />
                  <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                  <node concept="2OqwBi" id="7uoTbAzPljH" role="2c44t1">
                    <node concept="1PxgMI" id="7uoTbAzPljI" role="2Oq$k0">
                      <ref role="1PxNhF" to="53vh:4SSaNAQkDV9" resolve="TransformStatement" />
                      <node concept="2OqwBi" id="7uoTbAzPljJ" role="1PxMeX">
                        <node concept="1YBJjd" id="7uoTbAzPljK" role="2Oq$k0">
                          <ref role="1YBMHb" node="4SSaNAQkTwI" resolve="cf" />
                        </node>
                        <node concept="1mfA1w" id="7uoTbAzPljL" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="7uoTbAzPljM" role="2OqNvi">
                      <ref role="37wK5l" to="buve:4SSaNAQl5wN" resolve="getPatternConcept" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tqbb2" id="gwqcHBKGZT" role="1ajl9A" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4SSaNAQkTwI" role="1YuTPh">
      <property role="TrG5h" value="cf" />
      <ref role="1YaFvo" to="53vh:4SSaNAQkMUR" resolve="ConsequenceFunction" />
    </node>
  </node>
  <node concept="1YbPZF" id="4SSaNAQl8MZ">
    <property role="TrG5h" value="typeof_TransformStatement" />
    <property role="3GE5qa" value="transformExtension" />
    <node concept="3clFbS" id="4SSaNAQl8N0" role="18ibNy">
      <node concept="1Z5TYs" id="4SSaNAQl9rE" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="4SSaNAQlar6" role="1ZfhKB">
          <node concept="2c44tf" id="4SSaNAQlar2" role="mwGJk">
            <node concept="1ajhzC" id="4SSaNAQlarJ" role="2c44tc">
              <node concept="10P_77" id="4SSaNAQlb0z" role="1ajl9A" />
              <node concept="3Tqbb2" id="4SSaNAQlas_" role="1ajw0F">
                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                <node concept="2c44tb" id="4SSaNAQlatn" role="lGtFl">
                  <property role="2qtEX8" value="concept" />
                  <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                  <node concept="2OqwBi" id="4SSaNAQlawD" role="2c44t1">
                    <node concept="1YBJjd" id="4SSaNAQlatB" role="2Oq$k0">
                      <ref role="1YBMHb" node="4SSaNAQl8N2" resolve="ts" />
                    </node>
                    <node concept="2qgKlT" id="4SSaNAQlaY9" role="2OqNvi">
                      <ref role="37wK5l" to="buve:4SSaNAQl5wN" resolve="getPatternConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4SSaNAQl9rH" role="1ZfhK$">
          <node concept="1Z2H0r" id="4SSaNAQl8N9" role="mwGJk">
            <node concept="2OqwBi" id="4SSaNAQl8Ry" role="1Z2MuG">
              <node concept="1YBJjd" id="4SSaNAQl8Oq" role="2Oq$k0">
                <ref role="1YBMHb" node="4SSaNAQl8N2" resolve="ts" />
              </node>
              <node concept="3TrEf2" id="4SSaNAQl9jk" role="2OqNvi">
                <ref role="3Tt5mk" to="53vh:4SSaNAQkDVO" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Z5TYs" id="4SSaNAQlb3$" role="3cqZAp">
        <property role="3wDh2S" value="true" />
        <node concept="mw_s8" id="4SSaNAQlb3_" role="1ZfhKB">
          <node concept="2c44tf" id="4SSaNAQlb3A" role="mwGJk">
            <node concept="1ajhzC" id="4SSaNAQlb3B" role="2c44tc">
              <node concept="3cqZAl" id="4SSaNAQlgx8" role="1ajl9A" />
              <node concept="3Tqbb2" id="4SSaNAQlb3D" role="1ajw0F">
                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                <node concept="2c44tb" id="4SSaNAQlb3E" role="lGtFl">
                  <property role="2qtEX8" value="concept" />
                  <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                  <node concept="2OqwBi" id="4SSaNAQlb3F" role="2c44t1">
                    <node concept="1YBJjd" id="4SSaNAQlb3G" role="2Oq$k0">
                      <ref role="1YBMHb" node="4SSaNAQl8N2" resolve="ts" />
                    </node>
                    <node concept="2qgKlT" id="4SSaNAQlb3H" role="2OqNvi">
                      <ref role="37wK5l" to="buve:4SSaNAQl5wN" resolve="getPatternConcept" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tqbb2" id="4SSaNAQlbsm" role="1ajw0F">
                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
                <node concept="2c44tb" id="4SSaNAQlgbB" role="lGtFl">
                  <property role="2qtEX8" value="concept" />
                  <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                  <node concept="2OqwBi" id="4SSaNAQlgeT" role="2c44t1">
                    <node concept="1YBJjd" id="4SSaNAQlgbR" role="2Oq$k0">
                      <ref role="1YBMHb" node="4SSaNAQl8N2" resolve="ts" />
                    </node>
                    <node concept="2qgKlT" id="4SSaNAQlguR" role="2OqNvi">
                      <ref role="37wK5l" to="buve:4SSaNAQlbzK" resolve="getQuotationConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4SSaNAQlb3I" role="1ZfhK$">
          <node concept="1Z2H0r" id="4SSaNAQlb3J" role="mwGJk">
            <node concept="2OqwBi" id="4SSaNAQlb3K" role="1Z2MuG">
              <node concept="1YBJjd" id="4SSaNAQlb3L" role="2Oq$k0">
                <ref role="1YBMHb" node="4SSaNAQl8N2" resolve="ts" />
              </node>
              <node concept="3TrEf2" id="4SSaNAQlbmz" role="2OqNvi">
                <ref role="3Tt5mk" to="53vh:4SSaNAQkDVS" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="4SSaNAQl8N2" role="1YuTPh">
      <property role="TrG5h" value="ts" />
      <ref role="1YaFvo" to="53vh:4SSaNAQkDV9" resolve="TransformStatement" />
    </node>
  </node>
  <node concept="1YbPZF" id="2MN8ysKPzfb">
    <property role="TrG5h" value="typeof_LinkPatternVariableReference" />
    <property role="3GE5qa" value="transformExtension" />
    <node concept="3clFbS" id="2MN8ysKPzfc" role="18ibNy">
      <node concept="1Z5TYs" id="2MN8ysKPzho" role="3cqZAp">
        <node concept="mw_s8" id="2MN8ysKPzhJ" role="1ZfhKB">
          <node concept="1Z2H0r" id="2MN8ysKPzhF" role="mwGJk">
            <node concept="2OqwBi" id="2MN8ysKPzkq" role="1Z2MuG">
              <node concept="1YBJjd" id="5kfvu3HCR0P" role="2Oq$k0">
                <ref role="1YBMHb" node="2MN8ysKPzfe" resolve="linkPatternVariableReference" />
              </node>
              <node concept="3TrEf2" id="2MN8ysKPzBc" role="2OqNvi">
                <ref role="3Tt5mk" to="53vh:2MN8ysKPshW" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="2MN8ysKPzhr" role="1ZfhK$">
          <node concept="1Z2H0r" id="2MN8ysKPzfl" role="mwGJk">
            <node concept="1YBJjd" id="5kfvu3HCR08" role="1Z2MuG">
              <ref role="1YBMHb" node="2MN8ysKPzfe" resolve="linkPatternVariableReference" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2MN8ysKPzfe" role="1YuTPh">
      <property role="TrG5h" value="linkPatternVariableReference" />
      <ref role="1YaFvo" to="53vh:2MN8ysKPshV" resolve="LinkPatternVariableReference" />
    </node>
  </node>
  <node concept="1YbPZF" id="6xRUAczIfmQ">
    <property role="TrG5h" value="typeof_NodePatternVariableReference" />
    <property role="3GE5qa" value="transformExtension" />
    <node concept="3clFbS" id="6xRUAczIfmR" role="18ibNy">
      <node concept="1Z5TYs" id="6xRUAczIfmS" role="3cqZAp">
        <node concept="mw_s8" id="6xRUAczIfmT" role="1ZfhK$">
          <node concept="1Z2H0r" id="6xRUAczIfmU" role="mwGJk">
            <node concept="1YBJjd" id="5kfvu3HCR4J" role="1Z2MuG">
              <ref role="1YBMHb" node="6xRUAczIfn1" resolve="nodePatternVariableReference" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="6xRUAczIfmW" role="1ZfhKB">
          <node concept="1Z2H0r" id="6xRUAczIfmX" role="mwGJk">
            <node concept="2OqwBi" id="6xRUAczIfmY" role="1Z2MuG">
              <node concept="1YBJjd" id="5kfvu3HCR5s" role="2Oq$k0">
                <ref role="1YBMHb" node="6xRUAczIfn1" resolve="nodePatternVariableReference" />
              </node>
              <node concept="3TrEf2" id="5$lI4Sjifyu" role="2OqNvi">
                <ref role="3Tt5mk" to="53vh:6xRUAczIf6$" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6xRUAczIfn1" role="1YuTPh">
      <property role="TrG5h" value="nodePatternVariableReference" />
      <ref role="1YaFvo" to="53vh:6xRUAczIf6z" resolve="NodePatternVariableReference" />
    </node>
  </node>
  <node concept="1YbPZF" id="2MN8ysKOpjW">
    <property role="TrG5h" value="typeof_PropertyPatternVariableReference" />
    <property role="3GE5qa" value="transformExtension" />
    <node concept="3clFbS" id="2MN8ysKOpps" role="18ibNy">
      <node concept="1Z5TYs" id="2MN8ysKOpuP" role="3cqZAp">
        <node concept="mw_s8" id="2MN8ysKOpuS" role="1ZfhK$">
          <node concept="1Z2H0r" id="2MN8ysKOpp_" role="mwGJk">
            <node concept="1YBJjd" id="5kfvu3HCR8X" role="1Z2MuG">
              <ref role="1YBMHb" node="2MN8ysKOppu" resolve="propertyPatternVariableReference" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="2MN8ysKPe9g" role="1ZfhKB">
          <node concept="1Z2H0r" id="2MN8ysKPe9e" role="mwGJk">
            <node concept="2OqwBi" id="2MN8ysKPeby" role="1Z2MuG">
              <node concept="1YBJjd" id="5kfvu3HCR9E" role="2Oq$k0">
                <ref role="1YBMHb" node="2MN8ysKOppu" resolve="propertyPatternVariableReference" />
              </node>
              <node concept="3TrEf2" id="2MN8ysKPetS" role="2OqNvi">
                <ref role="3Tt5mk" to="53vh:2MN8ysKNYhD" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2MN8ysKOppu" role="1YuTPh">
      <property role="TrG5h" value="propertyPatternVariableReference" />
      <ref role="1YaFvo" to="53vh:2MN8ysKNWJc" resolve="PropertyPatternVariableReference" />
    </node>
  </node>
  <node concept="1YbPZF" id="5kfvu3HEc72">
    <property role="TrG5h" value="typeof_ListPatternVariableReference" />
    <property role="3GE5qa" value="transformExtension" />
    <node concept="3clFbS" id="5kfvu3HEc73" role="18ibNy">
      <node concept="1Z5TYs" id="5kfvu3HEc74" role="3cqZAp">
        <node concept="mw_s8" id="5kfvu3HEc75" role="1ZfhKB">
          <node concept="1Z2H0r" id="5kfvu3HEc76" role="mwGJk">
            <node concept="2OqwBi" id="5kfvu3HEc77" role="1Z2MuG">
              <node concept="1YBJjd" id="5kfvu3HEc78" role="2Oq$k0">
                <ref role="1YBMHb" node="5kfvu3HEc7d" resolve="lvr" />
              </node>
              <node concept="3TrEf2" id="2I2rfXvlPl1" role="2OqNvi">
                <ref role="3Tt5mk" to="53vh:5kfvu3HEc1V" />
              </node>
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="5kfvu3HEc7a" role="1ZfhK$">
          <node concept="1Z2H0r" id="5kfvu3HEc7b" role="mwGJk">
            <node concept="1YBJjd" id="5kfvu3HEc7c" role="1Z2MuG">
              <ref role="1YBMHb" node="5kfvu3HEc7d" resolve="lvr" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5kfvu3HEc7d" role="1YuTPh">
      <property role="TrG5h" value="lvr" />
      <ref role="1YaFvo" to="53vh:5kfvu3HEc1U" resolve="ListPatternVariableReference" />
    </node>
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b54bdfd2-1093-4bb6-bc08-562a3cd72450(jetbrains.mps.debugger.java.runtime.ui)" concise="true">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="-1" />
  </languages>
  <imports>
    <import index="dbrf" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing(JDK/javax.swing@java_stub)" />
    <import index="zxm0" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.icons(MPS.IDEA/com.intellij.icons@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="1oap" ref="r:03d44d4c-3d65-461c-9085-0f48e9569e59(jetbrains.mps.lang.resources.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.IconResource" flags="ng" index="1QGGSu">
        <child id="6976585500156684809" name="iconExpression" index="3xaMm5" />
      </concept>
      <concept id="8974276187400029891" name="jetbrains.mps.lang.resources.structure.IconResourceExpression" flags="nn" index="1QGGTA">
        <child id="8974276187400029893" name="icon" index="1QGGTw" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" index="3clFbS" />
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
    </language>
  </registry>
  <node concept="312cEu" id="3187167456722827906">
    <property role="TrG5h" value="Icons" />
    <node concept="3Tm1VV" id="3187167456722827937" role="1B3o_S" />
    <node concept="Wx3nA" id="3187167456722827907" role="jymVt">
      <property role="TrG5h" value="EXCEPTION_BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3187167456722827908" role="1tU5fm">
        <reference role="3uigEE" target="dbrf.~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3187167456722827909" role="1B3o_S" />
      <node concept="1QGGTA" id="3187167456722827910" role="33vP2m">
        <node concept="1QGGSu" id="8606147516853466400" role="1QGGTw">
          <node concept="10M0yZ" id="8606147516853467384" role="3xaMm5">
            <reference role="1PxDUh" target="zxm0.~AllIcons$Debugger" resolve="AllIcons.Debugger" />
            <reference role="3cqZAo" target="zxm0.~AllIcons$Debugger%dDb_exception_breakpoint" resolve="Db_exception_breakpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3187167456722827912" role="jymVt">
      <property role="TrG5h" value="DISABLED_EXCEPTION_BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3187167456722827913" role="1tU5fm">
        <reference role="3uigEE" target="dbrf.~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3187167456722827914" role="1B3o_S" />
      <node concept="1QGGTA" id="3187167456722827915" role="33vP2m">
        <node concept="1QGGSu" id="8606147516853472758" role="1QGGTw">
          <node concept="10M0yZ" id="8606147516853472772" role="3xaMm5">
            <reference role="1PxDUh" target="zxm0.~AllIcons$Debugger" resolve="AllIcons.Debugger" />
            <reference role="3cqZAo" target="zxm0.~AllIcons$Debugger%dDb_disabled_exception_breakpoint" resolve="Db_disabled_exception_breakpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3187167456722827917" role="jymVt">
      <property role="TrG5h" value="METHOD_BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3187167456722827918" role="1tU5fm">
        <reference role="3uigEE" target="dbrf.~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3187167456722827919" role="1B3o_S" />
      <node concept="1QGGTA" id="3187167456722827920" role="33vP2m">
        <node concept="1QGGSu" id="8606147516853476537" role="1QGGTw">
          <node concept="10M0yZ" id="8606147516853476551" role="3xaMm5">
            <reference role="1PxDUh" target="zxm0.~AllIcons$Debugger" resolve="AllIcons.Debugger" />
            <reference role="3cqZAo" target="zxm0.~AllIcons$Debugger%dDb_method_breakpoint" resolve="Db_method_breakpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3187167456722827922" role="jymVt">
      <property role="TrG5h" value="DISABLED_METHOD_BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3187167456722827923" role="1tU5fm">
        <reference role="3uigEE" target="dbrf.~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3187167456722827924" role="1B3o_S" />
      <node concept="1QGGTA" id="3187167456722827925" role="33vP2m">
        <node concept="1QGGSu" id="8606147516853480535" role="1QGGTw">
          <node concept="10M0yZ" id="8606147516853480549" role="3xaMm5">
            <reference role="1PxDUh" target="zxm0.~AllIcons$Debugger" resolve="AllIcons.Debugger" />
            <reference role="3cqZAo" target="zxm0.~AllIcons$Debugger%dDb_disabled_method_breakpoint" resolve="Db_disabled_method_breakpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="8949162067054041097" role="jymVt">
      <property role="TrG5h" value="INVALID_METHOD_BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="8949162067054041098" role="1tU5fm">
        <reference role="3uigEE" target="dbrf.~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="8949162067054041099" role="1B3o_S" />
      <node concept="1QGGTA" id="8949162067054041100" role="33vP2m">
        <node concept="1QGGSu" id="8606147516853484612" role="1QGGTw">
          <node concept="10M0yZ" id="8606147516853484626" role="3xaMm5">
            <reference role="1PxDUh" target="zxm0.~AllIcons$Debugger" resolve="AllIcons.Debugger" />
            <reference role="3cqZAo" target="zxm0.~AllIcons$Debugger%dDb_invalid_method_breakpoint" resolve="Db_invalid_method_breakpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="8949162067054041102" role="jymVt">
      <property role="TrG5h" value="MUTED_METHOD_BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="8949162067054041103" role="1tU5fm">
        <reference role="3uigEE" target="dbrf.~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="8949162067054041104" role="1B3o_S" />
      <node concept="1QGGTA" id="8949162067054041105" role="33vP2m">
        <node concept="1QGGSu" id="8606147516853487231" role="1QGGTw">
          <node concept="10M0yZ" id="8606147516853487245" role="3xaMm5">
            <reference role="1PxDUh" target="zxm0.~AllIcons$Debugger" resolve="AllIcons.Debugger" />
            <reference role="3cqZAo" target="zxm0.~AllIcons$Debugger%dDb_muted_method_breakpoint" resolve="Db_muted_method_breakpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3187167456722827927" role="jymVt">
      <property role="TrG5h" value="FIELD_BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3187167456722827928" role="1tU5fm">
        <reference role="3uigEE" target="dbrf.~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3187167456722827929" role="1B3o_S" />
      <node concept="1QGGTA" id="3187167456722827930" role="33vP2m">
        <node concept="1QGGSu" id="8606147516853490925" role="1QGGTw">
          <node concept="10M0yZ" id="8606147516853490939" role="3xaMm5">
            <reference role="1PxDUh" target="zxm0.~AllIcons$Debugger" resolve="AllIcons.Debugger" />
            <reference role="3cqZAo" target="zxm0.~AllIcons$Debugger%dDb_field_breakpoint" resolve="Db_field_breakpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3187167456722827932" role="jymVt">
      <property role="TrG5h" value="DISABLED_FIELD_BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3187167456722827933" role="1tU5fm">
        <reference role="3uigEE" target="dbrf.~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="3187167456722827934" role="1B3o_S" />
      <node concept="1QGGTA" id="3187167456722827935" role="33vP2m">
        <node concept="1QGGSu" id="8606147516853495516" role="1QGGTw">
          <node concept="10M0yZ" id="8606147516853495530" role="3xaMm5">
            <reference role="1PxDUh" target="zxm0.~AllIcons$Debugger" resolve="AllIcons.Debugger" />
            <reference role="3cqZAo" target="zxm0.~AllIcons$Debugger%dDb_disabled_field_breakpoint" resolve="Db_disabled_field_breakpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="8949162067054041107" role="jymVt">
      <property role="TrG5h" value="INVALID_FIELD_BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="8949162067054041108" role="1tU5fm">
        <reference role="3uigEE" target="dbrf.~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="8949162067054041109" role="1B3o_S" />
      <node concept="1QGGTA" id="8949162067054041110" role="33vP2m">
        <node concept="1QGGSu" id="8606147516853499344" role="1QGGTw">
          <node concept="10M0yZ" id="8606147516853499358" role="3xaMm5">
            <reference role="1PxDUh" target="zxm0.~AllIcons$Debugger" resolve="AllIcons.Debugger" />
            <reference role="3cqZAo" target="zxm0.~AllIcons$Debugger%dDb_invalid_field_breakpoint" resolve="Db_invalid_field_breakpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="8949162067054041112" role="jymVt">
      <property role="TrG5h" value="MUTED_FIELD_BREAKPOINT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="8949162067054041113" role="1tU5fm">
        <reference role="3uigEE" target="dbrf.~Icon" resolve="Icon" />
      </node>
      <node concept="3Tm1VV" id="8949162067054041114" role="1B3o_S" />
      <node concept="1QGGTA" id="8949162067054041115" role="33vP2m">
        <node concept="1QGGSu" id="8606147516853503281" role="1QGGTw">
          <node concept="10M0yZ" id="8606147516853503303" role="3xaMm5">
            <reference role="1PxDUh" target="zxm0.~AllIcons$Debugger" resolve="AllIcons.Debugger" />
            <reference role="3cqZAo" target="zxm0.~AllIcons$Debugger%dDb_muted_field_breakpoint" resolve="Db_muted_field_breakpoint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="3187167456722827938" role="jymVt">
      <node concept="3cqZAl" id="3187167456722827939" role="3clF45" />
      <node concept="3Tm1VV" id="3187167456722827940" role="1B3o_S" />
      <node concept="3clFbS" id="3187167456722827941" role="3clF47" />
    </node>
  </node>
</model>


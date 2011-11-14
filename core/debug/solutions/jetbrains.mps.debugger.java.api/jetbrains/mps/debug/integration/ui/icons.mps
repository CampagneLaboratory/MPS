<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:96c2681b-d258-4b28-81fb-0850456a3cee(jetbrains.mps.debug.integration.ui.icons)">
  <persistence version="7" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="-1" implicit="yes" />
  <import index="dbrf" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing(javax.swing@java_stub)" version="-1" implicit="yes" />
  <import index="tp4k" modelUID="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" version="-1" implicit="yes" />
  <roots>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="3432969378036014082">
      <property name="abstractClass" nameId="tpee.1075300953594" value="false" />
      <property name="isFinal" nameId="tpee.1221565133444" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="Icons" />
    </node>
  </roots>
  <root id="3432969378036014082">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3432969378036016173" />
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="1247371618987935931">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="VARIABLE_PRIMITIVE" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1247371618987935932">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Icon" resolveInfo="Icon" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1247371618987935933" />
      <node role="initializer" roleId="tpee.1068431790190" type="tp4k.IconResourceExpression" typeId="tp4k.6759767305207977805" id="1247371618987937908">
        <node role="icon" roleId="tp4k.6759767305207977806" type="tp4k.IconResource" typeId="tp4k.2330114057060456691" id="1247371618987937909">
          <property name="path" nameId="tp4k.7855019336153226684" value="${mps_home}/core/debug/resources/jetbrains/mps/debug/integration/ui/icons/db_primitive.png" />
        </node>
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="1247371618987935922">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="VARIABLE_OBJECT" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1247371618987935923">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Icon" resolveInfo="Icon" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1247371618987935924" />
      <node role="initializer" roleId="tpee.1068431790190" type="tp4k.IconResourceExpression" typeId="tp4k.6759767305207977805" id="1247371618987937911">
        <node role="icon" roleId="tp4k.6759767305207977806" type="tp4k.IconResource" typeId="tp4k.2330114057060456691" id="1247371618987937912">
          <property name="path" nameId="tp4k.7855019336153226684" value="${mps_home}/core/debug/resources/jetbrains/mps/debug/integration/ui/icons/db_object.png" />
        </node>
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="1247371618987935859">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="WATCH" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1247371618987935860">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Icon" resolveInfo="Icon" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1247371618987935861" />
      <node role="initializer" roleId="tpee.1068431790190" type="tp4k.IconResourceExpression" typeId="tp4k.6759767305207977805" id="1247371618987937932">
        <node role="icon" roleId="tp4k.6759767305207977806" type="tp4k.IconResource" typeId="tp4k.2330114057060456691" id="1247371618987937933">
          <property name="path" nameId="tp4k.7855019336153226684" value="${mps_home}/core/debug/resources/jetbrains/mps/debug/integration/ui/icons/db_watch.png" />
        </node>
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="1247371618987935850">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="THREAD_RUNNING" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1247371618987935851">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Icon" resolveInfo="Icon" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1247371618987935852" />
      <node role="initializer" roleId="tpee.1068431790190" type="tp4k.IconResourceExpression" typeId="tp4k.6759767305207977805" id="1247371618987937935">
        <node role="icon" roleId="tp4k.6759767305207977806" type="tp4k.IconResource" typeId="tp4k.2330114057060456691" id="1247371618987937936">
          <property name="path" nameId="tp4k.7855019336153226684" value="${mps_home}/core/debug/resources/jetbrains/mps/debug/integration/ui/icons/db_thread_running.png" />
        </node>
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="1247371618987935841">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="THREAD_SUSPENDED" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1247371618987935842">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Icon" resolveInfo="Icon" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1247371618987935843" />
      <node role="initializer" roleId="tpee.1068431790190" type="tp4k.IconResourceExpression" typeId="tp4k.6759767305207977805" id="1247371618987937938">
        <node role="icon" roleId="tp4k.6759767305207977806" type="tp4k.IconResource" typeId="tp4k.2330114057060456691" id="1247371618987937939">
          <property name="path" nameId="tp4k.7855019336153226684" value="${mps_home}/core/debug/resources/jetbrains/mps/debug/integration/ui/icons/db_thread_suspended.png" />
        </node>
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="1247371618987935832">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="THREAD_AT_BREAKPOINT" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1247371618987935833">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Icon" resolveInfo="Icon" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1247371618987935834" />
      <node role="initializer" roleId="tpee.1068431790190" type="tp4k.IconResourceExpression" typeId="tp4k.6759767305207977805" id="1247371618987937941">
        <node role="icon" roleId="tp4k.6759767305207977806" type="tp4k.IconResource" typeId="tp4k.2330114057060456691" id="1247371618987937942">
          <property name="path" nameId="tp4k.7855019336153226684" value="${mps_home}/core/debug/resources/jetbrains/mps/debug/integration/ui/icons/db_thread_at_breakpoint.png" />
        </node>
      </node>
    </node>
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="3432969378036016282">
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3432969378036016283" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3432969378036016284" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3432969378036016285" />
    </node>
  </root>
</model>


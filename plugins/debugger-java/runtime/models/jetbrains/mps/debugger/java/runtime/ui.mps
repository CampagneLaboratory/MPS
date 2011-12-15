<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:b54bdfd2-1093-4bb6-bc08-562a3cd72450(jetbrains.mps.debugger.java.runtime.ui)">
  <persistence version="7" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)" />
  <import index="dbrf" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing(JDK/javax.swing@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="-1" implicit="yes" />
  <import index="tp4k" modelUID="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" version="2" implicit="yes" />
  <roots>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="3187167456722827906">
      <property name="name" nameId="tpck.1169194664001" value="Icons" />
    </node>
  </roots>
  <root id="3187167456722827906">
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="3187167456722827907">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="EXCEPTION_BREAKPOINT" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3187167456722827908">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Icon" resolveInfo="Icon" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3187167456722827909" />
      <node role="initializer" roleId="tpee.1068431790190" type="tp4k.IconResourceExpression" typeId="tp4k.6759767305207977805" id="3187167456722827910">
        <node role="icon" roleId="tp4k.6759767305207977806" type="tp4k.IconResource" typeId="tp4k.2330114057060456691" id="3187167456722827911">
          <property name="path" nameId="tp4k.7855019336153226684" value="${mps_home}/plugins/debugger-java/resources/db_exception_breakpoint.png" />
        </node>
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="3187167456722827912">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="DISABLED_EXCEPTION_BREAKPOINT" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3187167456722827913">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Icon" resolveInfo="Icon" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3187167456722827914" />
      <node role="initializer" roleId="tpee.1068431790190" type="tp4k.IconResourceExpression" typeId="tp4k.6759767305207977805" id="3187167456722827915">
        <node role="icon" roleId="tp4k.6759767305207977806" type="tp4k.IconResource" typeId="tp4k.2330114057060456691" id="3187167456722827916">
          <property name="path" nameId="tp4k.7855019336153226684" value="${mps_home}/plugins/debugger-java/resources/db_disabled_exception_breakpoint.png" />
        </node>
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="3187167456722827917">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="METHOD_BREAKPOINT" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3187167456722827918">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Icon" resolveInfo="Icon" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3187167456722827919" />
      <node role="initializer" roleId="tpee.1068431790190" type="tp4k.IconResourceExpression" typeId="tp4k.6759767305207977805" id="3187167456722827920">
        <node role="icon" roleId="tp4k.6759767305207977806" type="tp4k.IconResource" typeId="tp4k.2330114057060456691" id="3187167456722827921">
          <property name="path" nameId="tp4k.7855019336153226684" value="${mps_home}/plugins/debugger-java/resources/db_method_breakpoint.png" />
        </node>
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="3187167456722827922">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="DISABLED_METHOD_BREAKPOINT" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3187167456722827923">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Icon" resolveInfo="Icon" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3187167456722827924" />
      <node role="initializer" roleId="tpee.1068431790190" type="tp4k.IconResourceExpression" typeId="tp4k.6759767305207977805" id="3187167456722827925">
        <node role="icon" roleId="tp4k.6759767305207977806" type="tp4k.IconResource" typeId="tp4k.2330114057060456691" id="3187167456722827926">
          <property name="path" nameId="tp4k.7855019336153226684" value="${mps_home}/plugins/debugger-java/resources/db_disabled_method_breakpoint.png" />
        </node>
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="3187167456722827927">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="FIELD_BREAKPOINT" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3187167456722827928">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Icon" resolveInfo="Icon" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3187167456722827929" />
      <node role="initializer" roleId="tpee.1068431790190" type="tp4k.IconResourceExpression" typeId="tp4k.6759767305207977805" id="3187167456722827930">
        <node role="icon" roleId="tp4k.6759767305207977806" type="tp4k.IconResource" typeId="tp4k.2330114057060456691" id="3187167456722827931">
          <property name="path" nameId="tp4k.7855019336153226684" value="${mps_home}/plugins/debugger-java/resources/db_field_breakpoint.png" />
        </node>
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="3187167456722827932">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="DISABLED_FIELD_BREAKPOINT" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3187167456722827933">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~Icon" resolveInfo="Icon" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3187167456722827934" />
      <node role="initializer" roleId="tpee.1068431790190" type="tp4k.IconResourceExpression" typeId="tp4k.6759767305207977805" id="3187167456722827935">
        <node role="icon" roleId="tp4k.6759767305207977806" type="tp4k.IconResource" typeId="tp4k.2330114057060456691" id="3187167456722827936">
          <property name="path" nameId="tp4k.7855019336153226684" value="${mps_home}/plugins/debugger-java/resources/db_disabled_field_breakpoint.png" />
        </node>
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3187167456722827937" />
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="3187167456722827938">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3187167456722827939" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3187167456722827940" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3187167456722827941" />
    </node>
  </root>
</model>


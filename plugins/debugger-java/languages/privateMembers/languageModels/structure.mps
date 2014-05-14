<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:886e64b3-d82c-4444-8cd9-9ede48ec4a0f(jetbrains.mps.debugger.java.privateMembers.structure)" version="0">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6825241477451043705" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PrivateFieldReferenceOperation" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1197029447546" resolveInfo="FieldReferenceOperation" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6825241477451051014" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PrivateInstanceMethodCallOperation" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1202948039474" resolveInfo="InstanceMethodCallOperation" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4107550939057698505" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PrivateStaticFieldReference" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1070533707846" resolveInfo="StaticFieldReference" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3374946611454212811" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="PrivateStaticMethodCall" />
    <property name="staticScope" nameId="tpce.5404671619616246344" value="none" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1081236700937" resolveInfo="StaticMethodCall" />
  </root>
</model>


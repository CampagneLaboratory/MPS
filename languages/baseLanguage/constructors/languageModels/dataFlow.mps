<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a6e35534-2557-4640-a71b-fb8044ae6d8e(jetbrains.mps.baseLanguage.constructors.dataFlow)">
  <persistence version="9" />
  <debugInfo>
    <lang id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" />
    <lang id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" />
    <lang id="7fa12e9c-b949-4976-b4fa-19accbc320b4" name="jetbrains.mps.lang.dataFlow" />
    <lang id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" />
    <model ref="r:bd4b8fd9-079b-4b11-a733-9c0bea3600f2(jetbrains.mps.baseLanguage.constructors.structure)" name="jetbrains.mps.baseLanguage.constructors.structure" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" />
    <concept id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" />
    <concept id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" />
    <concept id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" />
    <concept id="7fa12e9c-b949-4976-b4fa-19accbc320b4/1206442055221" name="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" />
    <concept id="7fa12e9c-b949-4976-b4fa-19accbc320b4/1206442659665" name="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" />
    <concept id="7fa12e9c-b949-4976-b4fa-19accbc320b4/1206442747519" name="jetbrains.mps.lang.dataFlow.structure.NodeParameter" />
    <concept id="7fa12e9c-b949-4976-b4fa-19accbc320b4/1206454052847" name="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" />
    <property id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" name="name" />
    <refRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" name="variableDeclaration" />
    <refRole id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056282393/1138056546658" name="link" />
    <refRole id="7fa12e9c-b949-4976-b4fa-19accbc320b4/1206442055221/1206442096288" name="conceptDeclaration" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" name="statement" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1137021947720/1137022507850" name="body" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1144226303539/1144226360166" name="iterable" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1144230876926/1144230900587" name="variable" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1154032098014/1154032183016" name="body" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1197027756228/1197027771414" name="operand" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1197027756228/1197027833540" name="operation" />
    <childRole id="7fa12e9c-b949-4976-b4fa-19accbc320b4/1206442055221/1206442812839" name="builderBlock" />
    <childRole id="7fa12e9c-b949-4976-b4fa-19accbc320b4/1206454052847/1206454079161" name="codeFor" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/4972933694980447171/5680397130376446158" name="type" />
  </debugInfo>
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" version="-1" index="vg0i" />
    <use id="7fa12e9c-b949-4976-b4fa-19accbc320b4" version="-1" index="yx9u" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" version="-1" index="4ia1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" version="0" implicit="true" index="asn4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="fbxt" ref="r:bd4b8fd9-079b-4b11-a733-9c0bea3600f2(jetbrains.mps.baseLanguage.constructors.structure)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tp41" ref="r:00000000-0000-4000-0000-011c8959037d(jetbrains.mps.lang.dataFlow.structure)" implicit="true" />
  </imports>
  <contents>
    <node concept="yx9u.1206442055221" id="3782220528620780954" info="ig">
      <reference role="yx9u.1206442055221.1206442096288" target="fbxt.6820702584719416486" resolveInfo="CustomConstructorUsage" />
      <node concept="yx9u.1206442659665" id="3782220528620780955" role="yx9u.1206442055221.1206442812839" info="in">
        <node concept="vg0i.1068580123136" id="3782220528620780956" role="vg0i.1137021947720.1137022507850" info="sn">
          <node concept="vg0i.1144226303539" id="3782220528620807177" role="vg0i.1068580123136.1068581517665" info="nn">
            <node concept="vg0i.1068580123136" id="3782220528620807178" role="vg0i.1154032098014.1154032183016" info="sn">
              <node concept="yx9u.1206454052847" id="3782220528620807203" role="vg0i.1068580123136.1068581517665" info="nn">
                <node concept="vg0i.1068498886296" id="4265636116363111219" role="yx9u.1206454052847.1206454079161" info="nn">
                  <reference role="vg0i.1068498886296.1068581517664" target="3782220528620807181" resolveInfo="el" />
                </node>
              </node>
            </node>
            <node concept="vg0i.1197027756228" id="3782220528620807189" role="vg0i.1144226303539.1144226360166" info="nn">
              <node concept="yx9u.1206442747519" id="3782220528620807188" role="vg0i.1197027756228.1197027771414" info="nn" />
              <node concept="4ia1.1138056282393" id="3782220528620807195" role="vg0i.1197027756228.1197027833540" info="nn">
                <reference role="4ia1.1138056282393.1138056546658" target="fbxt.6820702584719569344" />
              </node>
            </node>
            <node concept="vg0i.1068581242863" id="3782220528620807181" role="vg0i.1144230876926.1144230900587" info="nr">
              <property role="asn4.1169194658468.1169194664001" value="el" />
              <node concept="4ia1.1138055754698" id="3782220528620807185" role="vg0i.4972933694980447171.5680397130376446158" info="in" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </contents>
</model>


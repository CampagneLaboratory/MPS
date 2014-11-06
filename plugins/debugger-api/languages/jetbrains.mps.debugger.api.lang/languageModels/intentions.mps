<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e5ea276a-79c7-4383-9407-3428086d3297(jetbrains.mps.debugger.api.lang.intentions)">
  <persistence version="9" />
  <debugInfo>
    <lang id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" />
    <lang id="fbc14279-5e2a-4c87-a5d1-5f7061e6c456" name="jetbrains.mps.debugger.api.lang" />
    <lang id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" />
    <lang id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" />
    <lang id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" />
    <model ref="r:f516737e-c915-4042-896e-de34190042b2(jetbrains.mps.debugger.api.lang.structure)" name="jetbrains.mps.debugger.api.lang.structure" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" />
    <concept id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" />
    <concept id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" />
    <concept id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" />
    <concept id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" />
    <concept id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" />
    <concept id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" />
    <concept id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" />
    <concept id="d7a92d38-f7db-40d0-8431-763b0c3c9f20/1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" />
    <concept id="d7a92d38-f7db-40d0-8431-763b0c3c9f20/1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" />
    <concept id="d7a92d38-f7db-40d0-8431-763b0c3c9f20/1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" />
    <concept id="d7a92d38-f7db-40d0-8431-763b0c3c9f20/1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" />
    <concept id="d7a92d38-f7db-40d0-8431-763b0c3c9f20/2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" />
    <property id="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" name="value" />
    <property id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" name="name" />
    <refRole id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056022639/1138056395725" name="property" />
    <refRole id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056143562/1138056516764" name="link" />
    <refRole id="d7a92d38-f7db-40d0-8431-763b0c3c9f20/2522969319638091381/2522969319638198290" name="forConcept" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123155/1068580123156" name="expression" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123159/1068580123160" name="condition" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123159/1068580123161" name="ifTrue" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" name="statement" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068581242878/1068581517676" name="expression" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081516740877/1081516765348" name="expression" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123159/1082485599094" name="ifFalseStatement" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1082485599095/1082485599096" name="statements" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1137021947720/1137022507850" name="body" />
    <childRole id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138661924179/1138662048170" name="value" />
    <childRole id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1140725362528/1140725362529" name="linkTarget" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1197027756228/1197027771414" name="operand" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1197027756228/1197027833540" name="operation" />
    <childRole id="d7a92d38-f7db-40d0-8431-763b0c3c9f20/2522969319638091381/2522969319638093993" name="descriptionFunction" />
    <childRole id="d7a92d38-f7db-40d0-8431-763b0c3c9f20/2522969319638091381/2522969319638198291" name="executeFunction" />
  </debugInfo>
  <languages>
    <use id="fbc14279-5e2a-4c87-a5d1-5f7061e6c456" version="-1" index="igns" />
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" version="-1" index="yupf" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" version="0" implicit="true" index="vg0i" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" version="0" implicit="true" index="asn4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" version="0" implicit="true" index="4ia1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="86gq" ref="r:f516737e-c915-4042-896e-de34190042b2(jetbrains.mps.debugger.api.lang.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tp3j" ref="r:00000000-0000-4000-0000-011c89590353(jetbrains.mps.lang.intentions.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
  </imports>
  <contents>
    <node concept="yupf.1192794744107" id="8751745335399757635" info="ig">
      <property role="asn4.1169194658468.1169194664001" value="SwitchToComplexIsApplicable" />
      <reference role="yupf.2522969319638091381.2522969319638198290" target="86gq.3157158168562219319" resolveInfo="BreakpointableNodeItem" />
      <node concept="yupf.1192794782375" id="8751745335399757636" role="yupf.2522969319638091381.2522969319638093993" info="in">
        <node concept="vg0i.1068580123136" id="8751745335399757637" role="vg0i.1137021947720.1137022507850" info="sn">
          <node concept="vg0i.1068580123159" id="8751745335399771342" role="vg0i.1068580123136.1068581517665" info="nn">
            <node concept="vg0i.1197027756228" id="8751745335399771366" role="vg0i.1068580123159.1068580123160" info="nn">
              <node concept="yupf.1192796902958" id="8751745335399771345" role="vg0i.1197027756228.1197027771414" info="nn" />
              <node concept="4ia1.1138056022639" id="8751745335399771372" role="vg0i.1197027756228.1197027833540" info="nn">
                <reference role="4ia1.1138056022639.1138056395725" target="86gq.8751745335399632086" resolveInfo="isComplex" />
              </node>
            </node>
            <node concept="vg0i.1068580123136" id="8751745335399771344" role="vg0i.1068580123159.1068580123161" info="sn">
              <node concept="vg0i.1068581242878" id="8751745335399771399" role="vg0i.1068580123136.1068581517665" info="nn">
                <node concept="vg0i.1070475926800" id="8751745335399771401" role="vg0i.1068581242878.1068581517676" info="nn">
                  <property role="vg0i.1070475926800.1070475926801" value="Use Concept List" />
                </node>
              </node>
            </node>
          </node>
          <node concept="vg0i.1068581242878" id="8751745335399771403" role="vg0i.1068580123136.1068581517665" info="nn">
            <node concept="vg0i.1070475926800" id="8751745335399771405" role="vg0i.1068581242878.1068581517676" info="nn">
              <property role="vg0i.1070475926800.1070475926801" value="Use isApplicable Function" />
            </node>
          </node>
        </node>
      </node>
      <node concept="yupf.1192795911897" id="8751745335399757638" role="yupf.2522969319638091381.2522969319638198291" info="in">
        <node concept="vg0i.1068580123136" id="8751745335399757639" role="vg0i.1137021947720.1137022507850" info="sn">
          <node concept="vg0i.1068580123155" id="8751745335399772214" role="vg0i.1068580123136.1068581517665" info="nn">
            <node concept="vg0i.1197027756228" id="8751745335399772264" role="vg0i.1068580123155.1068580123156" info="nn">
              <node concept="vg0i.1197027756228" id="8751745335399772236" role="vg0i.1197027756228.1197027771414" info="nn">
                <node concept="yupf.1192796902958" id="8751745335399772215" role="vg0i.1197027756228.1197027771414" info="nn" />
                <node concept="4ia1.1138056022639" id="8751745335399772242" role="vg0i.1197027756228.1197027833540" info="nn">
                  <reference role="4ia1.1138056022639.1138056395725" target="86gq.8751745335399632086" resolveInfo="isComplex" />
                </node>
              </node>
              <node concept="4ia1.1138661924179" id="8751745335399772269" role="vg0i.1197027756228.1197027833540" info="nn">
                <node concept="vg0i.1081516740877" id="8751745335399772271" role="4ia1.1138661924179.1138662048170" info="nn">
                  <node concept="vg0i.1197027756228" id="8751745335399772294" role="vg0i.1081516740877.1081516765348" info="nn">
                    <node concept="yupf.1192796902958" id="8751745335399772273" role="vg0i.1197027756228.1197027771414" info="nn" />
                    <node concept="4ia1.1138056022639" id="8751745335399772300" role="vg0i.1197027756228.1197027833540" info="nn">
                      <reference role="4ia1.1138056022639.1138056395725" target="86gq.8751745335399632086" resolveInfo="isComplex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="vg0i.1068580123159" id="7796501636717810798" role="vg0i.1068580123136.1068581517665" info="nn">
            <node concept="vg0i.1068580123136" id="7796501636717810799" role="vg0i.1068580123159.1068580123161" info="sn">
              <node concept="vg0i.1068580123159" id="3104811047188443448" role="vg0i.1068580123136.1068581517665" info="nn">
                <node concept="vg0i.1068580123136" id="3104811047188443451" role="vg0i.1068580123159.1068580123161" info="sn">
                  <node concept="vg0i.1068580123155" id="7796501636717810931" role="vg0i.1068580123136.1068581517665" info="nn">
                    <node concept="vg0i.1197027756228" id="7796501636717818890" role="vg0i.1068580123155.1068580123156" info="nn">
                      <node concept="vg0i.1197027756228" id="7796501636717810953" role="vg0i.1197027756228.1197027771414" info="nn">
                        <node concept="4ia1.1138056143562" id="3104811047188705555" role="vg0i.1197027756228.1197027833540" info="nn">
                          <reference role="4ia1.1138056143562.1138056516764" target="86gq.3104811047188238838" />
                        </node>
                        <node concept="yupf.1192796902958" id="7796501636717810932" role="vg0i.1197027756228.1197027771414" info="nn" />
                      </node>
                      <node concept="4ia1.1138757581985" id="7796501636717818896" role="vg0i.1197027756228.1197027833540" info="nn" />
                    </node>
                  </node>
                  <node concept="vg0i.1068580123155" id="7796501636717827562" role="vg0i.1068580123136.1068581517665" info="nn">
                    <node concept="vg0i.1197027756228" id="7796501636717827645" role="vg0i.1068580123155.1068580123156" info="nn">
                      <node concept="vg0i.1197027756228" id="7796501636717827613" role="vg0i.1197027756228.1197027771414" info="nn">
                        <node concept="vg0i.1197027756228" id="7796501636717827584" role="vg0i.1197027756228.1197027771414" info="nn">
                          <node concept="4ia1.1138056143562" id="3104811047188707141" role="vg0i.1197027756228.1197027833540" info="nn">
                            <reference role="4ia1.1138056143562.1138056516764" target="86gq.3104811047188238838" />
                          </node>
                          <node concept="yupf.1192796902958" id="7796501636717827563" role="vg0i.1197027756228.1197027771414" info="nn" />
                        </node>
                        <node concept="4ia1.1138056143562" id="7796501636717827623" role="vg0i.1197027756228.1197027833540" info="nn">
                          <reference role="4ia1.1138056143562.1138056516764" target="tpee.1137022507850" />
                        </node>
                      </node>
                      <node concept="4ia1.1138757581985" id="7796501636717827651" role="vg0i.1197027756228.1197027833540" info="nn" />
                    </node>
                  </node>
                </node>
                <node concept="vg0i.1197027756228" id="3104811047188447881" role="vg0i.1068580123159.1068580123160" info="nn">
                  <node concept="vg0i.1197027756228" id="3104811047188443772" role="vg0i.1197027756228.1197027771414" info="nn">
                    <node concept="yupf.1192796902958" id="3104811047188443674" role="vg0i.1197027756228.1197027771414" info="nn" />
                    <node concept="4ia1.1138056143562" id="3104811047188446737" role="vg0i.1197027756228.1197027833540" info="nn">
                      <reference role="4ia1.1138056143562.1138056516764" target="86gq.8751745335399632085" />
                    </node>
                  </node>
                  <node concept="4ia1.1171999116870" id="3104811047188461139" role="vg0i.1197027756228.1197027833540" info="nn" />
                </node>
              </node>
            </node>
            <node concept="vg0i.1197027756228" id="7796501636717810823" role="vg0i.1068580123159.1068580123160" info="nn">
              <node concept="yupf.1192796902958" id="7796501636717810802" role="vg0i.1197027756228.1197027771414" info="nn" />
              <node concept="4ia1.1138056022639" id="7796501636717810829" role="vg0i.1197027756228.1197027833540" info="nn">
                <reference role="4ia1.1138056022639.1138056395725" target="86gq.8751745335399632086" resolveInfo="isComplex" />
              </node>
            </node>
            <node concept="vg0i.1082485599095" id="3104811047188452659" role="vg0i.1068580123159.1082485599094" info="nn">
              <node concept="vg0i.1068580123136" id="3104811047188452660" role="vg0i.1082485599095.1082485599096" info="sn">
                <node concept="vg0i.1068580123155" id="3104811047188453437" role="vg0i.1068580123136.1068581517665" info="nn">
                  <node concept="vg0i.1197027756228" id="3104811047188456015" role="vg0i.1068580123155.1068580123156" info="nn">
                    <node concept="vg0i.1197027756228" id="3104811047188453513" role="vg0i.1197027756228.1197027771414" info="nn">
                      <node concept="yupf.1192796902958" id="3104811047188453436" role="vg0i.1197027756228.1197027771414" info="nn" />
                      <node concept="4ia1.1138056143562" id="3104811047188455073" role="vg0i.1197027756228.1197027833540" info="nn">
                        <reference role="4ia1.1138056143562.1138056516764" target="86gq.3104811047188238838" />
                      </node>
                    </node>
                    <node concept="4ia1.1140725362528" id="3104811047188457583" role="vg0i.1197027756228.1197027833540" info="nn">
                      <node concept="vg0i.1070534058343" id="3104811047188457812" role="4ia1.1140725362528.1140725362529" info="nn" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </contents>
</model>


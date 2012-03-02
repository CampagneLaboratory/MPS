<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:361d93bd-9223-4768-9e37-bcd7b8db1f40(jetbrains.mps.buildScript.tests@tests)">
  <persistence version="7" />
  <language namespace="f61473f9-130f-42f6-b98d-6c438812c2f6(jetbrains.mps.baseLanguage.unitTest)" />
  <language namespace="8585453e-6bfb-4d80-98de-b16074f1d86c(jetbrains.mps.lang.test)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="798100da-4f0a-421a-b991-71f8c50ce5d2(jetbrains.mps.buildScript)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="3a13115c-633c-4c5c-bbcc-75c4219e9555(jetbrains.mps.lang.quotation)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <import index="3ior" modelUID="r:e9081cad-d8c3-45f2-b4ad-1dabd5ff82af(jetbrains.mps.buildScript.structure)" version="-1" />
  <import index="o3n2" modelUID="r:26eadcf0-f275-4e90-be37-e4432772a74d(jetbrains.mps.buildScript.util)" version="-1" />
  <import index="n13f" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.reloading(MPS.Core/jetbrains.mps.reloading@java_stub)" version="-1" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(java.lang@java_stub)" version="-1" />
  <import index="msyo" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" version="-1" />
  <import index="vyt2" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.scope(MPS.Core/jetbrains.mps.scope@java_stub)" version="-1" />
  <import index="vbkb" modelUID="r:08f2b659-8469-4592-93bf-a6edb46ec86d(jetbrains.mps.buildScript.behavior)" version="-1" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" />
  <import index="tpcu" modelUID="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" version="-1" />
  <import index="o8zo" modelUID="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" version="-1" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" />
  <import index="qjxg" modelUID="f:java_stub#83f155ff-422c-4b5a-a2f2-b459302dd215#org.junit(jetbrains.mps.baseLanguage.unitTest.libs/org.junit@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tp5g" modelUID="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" version="4" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="-1" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="-1" implicit="yes" />
  <import index="tpe3" modelUID="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" version="-1" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <roots>
    <node type="tp5g.NodesTestCase" typeId="tp5g.1216913645126" id="4045247515868358877">
      <property name="name" nameId="tpck.1169194664001" value="TestTemporalPaths" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="5584673629410321146">
      <property name="name" nameId="tpck.1169194664001" value="TestContext" />
    </node>
    <node type="tp5g.NodesTestCase" typeId="tp5g.1216913645126" id="193602448594327346">
      <property name="name" nameId="tpck.1169194664001" value="MacroTest" />
    </node>
    <node type="tpe3.BTestCase" typeId="tpe3.1171931851043" id="5368511706901688070">
      <property name="testCaseName" nameId="tpe3.1171931851045" value="TestRelativePathHelper" />
    </node>
  </roots>
  <root id="4045247515868358877">
    <node role="nodesToCheck" roleId="tp5g.1217501822150" type="tp5g.TestNode" typeId="tp5g.1216989428737" id="4045247515868358884">
      <node role="nodeToCheck" roleId="tp5g.1216989461394" type="3ior.BuildLayout" typeId="3ior.5617550519002745364" id="280273048052535265">
        <node role="children" roleId="3ior.7389400916848037006" type="3ior.BuildLayout_Jar" typeId="3ior.7389400916848050074" id="280273048052535266">
          <property name="name" nameId="tpck.1169194664001" value="test.jar" />
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="280273048052535267">
            <property name="name" nameId="tpck.1169194664001" value="test.jar" />
          </node>
          <node role="containerName" roleId="3ior.4380385936562148502" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562229356">
            <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="9029200373494108661">
              <property name="text" nameId="3ior.4903714810883755350" value="test.jar" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="nodesToCheck" roleId="tp5g.1217501822150" type="tp5g.TestNode" typeId="tp5g.1216989428737" id="280273048052535283">
      <node role="nodeToCheck" roleId="tp5g.1216989461394" type="3ior.BuildLayout" typeId="3ior.5617550519002745364" id="280273048052535284">
        <node role="children" roleId="3ior.7389400916848037006" type="3ior.BuildLayout_Folder" typeId="3ior.7389400916848036984" id="280273048052535287">
          <property name="name" nameId="tpck.1169194664001" value="folder" />
          <node role="children" roleId="3ior.7389400916848037006" type="3ior.BuildLayout_Jar" typeId="3ior.7389400916848050074" id="280273048052535289">
            <property name="name" nameId="tpck.1169194664001" value="test.jar" />
            <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="280273048052535290">
              <property name="name" nameId="tpck.1169194664001" value="test.jar" />
            </node>
            <node role="children" roleId="3ior.7389400916848037006" type="3ior.BuildLayout_Folder" typeId="3ior.7389400916848036984" id="8104754176559709900">
              <property name="name" nameId="tpck.1169194664001" value="internalFolder" />
              <node role="children" roleId="3ior.7389400916848037006" type="3ior.BuildLayout_Folder" typeId="3ior.7389400916848036984" id="8104754176559709938">
                <property name="name" nameId="tpck.1169194664001" value="internalFolder2" />
                <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="8104754176559709939">
                  <property name="name" nameId="tpck.1169194664001" value="internalFolder2" />
                </node>
                <node role="containerName" roleId="3ior.4380385936562148502" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562229371">
                  <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="9029200373494108665">
                    <property name="text" nameId="3ior.4903714810883755350" value="internalFolder2" />
                  </node>
                </node>
              </node>
              <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="8104754176559709901">
                <property name="name" nameId="tpck.1169194664001" value="internalFolder" />
              </node>
              <node role="containerName" roleId="3ior.4380385936562148502" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562229366">
                <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="9029200373494108664">
                  <property name="text" nameId="3ior.4903714810883755350" value="internalFolder" />
                </node>
              </node>
            </node>
            <node role="containerName" roleId="3ior.4380385936562148502" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562229362">
              <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="9029200373494108663">
                <property name="text" nameId="3ior.4903714810883755350" value="test.jar" />
              </node>
            </node>
          </node>
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="280273048052535291">
            <property name="name" nameId="tpck.1169194664001" value="folder" />
          </node>
          <node role="containerName" roleId="3ior.4380385936562148502" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562229355">
            <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="9029200373494108662">
              <property name="text" nameId="3ior.4903714810883755350" value="folder" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="nodesToCheck" roleId="tp5g.1217501822150" type="tp5g.TestNode" typeId="tp5g.1216989428737" id="7422876504327290541">
      <node role="nodeToCheck" roleId="tp5g.1216989461394" type="3ior.BuildLayout" typeId="3ior.5617550519002745364" id="7422876504327290542">
        <node role="children" roleId="3ior.7389400916848037006" type="3ior.BuildLayout_Folder" typeId="3ior.7389400916848036984" id="7422876504327290543">
          <property name="name" nameId="tpck.1169194664001" value="folder" />
          <node role="children" roleId="3ior.7389400916848037006" type="3ior.BuildLayout_Folder" typeId="3ior.7389400916848036984" id="7422876504327290551">
            <property name="name" nameId="tpck.1169194664001" value="internal" />
            <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="7422876504327290552">
              <property name="name" nameId="tpck.1169194664001" value="internal" />
            </node>
            <node role="containerName" roleId="3ior.4380385936562148502" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562229380">
              <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="9029200373494108667">
                <property name="text" nameId="3ior.4903714810883755350" value="internal" />
              </node>
            </node>
          </node>
          <node role="containerName" roleId="3ior.4380385936562148502" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562229374">
            <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="9029200373494108666">
              <property name="text" nameId="3ior.4903714810883755350" value="folder" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="nodesToCheck" roleId="tp5g.1217501822150" type="tp5g.TestNode" typeId="tp5g.1216989428737" id="4209004860870558807">
      <node role="nodeToCheck" roleId="tp5g.1216989461394" type="3ior.BuildLayout" typeId="3ior.5617550519002745364" id="4209004860870558808">
        <node role="children" roleId="3ior.7389400916848037006" type="3ior.BuildLayout_Jar" typeId="3ior.7389400916848050074" id="4209004860870558809">
          <property name="name" nameId="tpck.1169194664001" value="some.jar" />
          <node role="children" roleId="3ior.7389400916848037006" type="3ior.BuildLayout_Jar" typeId="3ior.7389400916848050074" id="4209004860870558810">
            <property name="name" nameId="tpck.1169194664001" value="some.jar" />
            <node role="children" roleId="3ior.7389400916848037006" type="3ior.BuildLayout_Folder" typeId="3ior.7389400916848036984" id="4209004860870558811">
              <property name="name" nameId="tpck.1169194664001" value="someFolder" />
              <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="4209004860870558816">
                <property name="name" nameId="tpck.1169194664001" value="someFolder" />
              </node>
              <node role="containerName" roleId="3ior.4380385936562148502" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562229368">
                <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="9029200373494108670">
                  <property name="text" nameId="3ior.4903714810883755350" value="someFolder" />
                </node>
              </node>
            </node>
            <node role="containerName" roleId="3ior.4380385936562148502" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562229360">
              <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="9029200373494108669">
                <property name="text" nameId="3ior.4903714810883755350" value="some.jar" />
              </node>
            </node>
          </node>
          <node role="containerName" roleId="3ior.4380385936562148502" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562229364">
            <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="9029200373494108668">
              <property name="text" nameId="3ior.4903714810883755350" value="some.jar" />
            </node>
          </node>
        </node>
        <node role="children" roleId="3ior.7389400916848037006" type="3ior.BuildLayout_Jar" typeId="3ior.7389400916848050074" id="4209004860870558813">
          <property name="name" nameId="tpck.1169194664001" value="some.jar" />
          <node role="children" roleId="3ior.7389400916848037006" type="3ior.BuildLayout_Folder" typeId="3ior.7389400916848036984" id="4209004860870558814">
            <property name="name" nameId="tpck.1169194664001" value="someFolder" />
            <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="4209004860870558815">
              <property name="name" nameId="tpck.1169194664001" value="someFolder_1" />
            </node>
            <node role="containerName" roleId="3ior.4380385936562148502" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562229372">
              <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="9029200373494108672">
                <property name="text" nameId="3ior.4903714810883755350" value="someFolder" />
              </node>
            </node>
          </node>
          <node role="containerName" roleId="3ior.4380385936562148502" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562229359">
            <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="9029200373494108671">
              <property name="text" nameId="3ior.4903714810883755350" value="some.jar" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods" roleId="tp5g.1217501895093" type="tp5g.SimpleNodeTest" typeId="tp5g.1225978065297" id="4045247515868358881">
      <property name="name" nameId="tpck.1169194664001" value="topLevelJar" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4045247515868358882" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4045247515868358883">
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertEquals" typeId="tpe3.1171978097730" id="4045247515868406038">
          <node role="expected" roleId="tpe3.8427750732757990724" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="5584673629410321308">
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="5584673629410321311">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5584673629410321146" resolveInfo="TestContext" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="193602448594332754" resolveInfo="DEPLOY" />
            </node>
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4045247515868406041">
              <property name="value" nameId="tpee.1070475926801" value="/test.jar" />
            </node>
          </node>
          <node role="actual" roleId="tpe3.8427750732757990725" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4045247515868358892">
            <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="4045247515868358889">
              <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="280273048052535267" resolveInfo="test.jar" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="4045247515868404740">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vbkb.280273048052535414" resolveInfo="getOutputPath_WithMacro" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="5584673629410321295">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="5584673629410321297">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="5584673629410321148" resolveInfo="TestContext" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods" roleId="tp5g.1217501895093" type="tp5g.SimpleNodeTest" typeId="tp5g.1225978065297" id="8104754176559709905">
      <property name="name" nameId="tpck.1169194664001" value="topLevelFolder" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="8104754176559709906" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="8104754176559709907">
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertEquals" typeId="tpe3.1171978097730" id="280273048052535341">
          <node role="expected" roleId="tpe3.8427750732757990724" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="5584673629410321314">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="280273048052535349">
              <property name="value" nameId="tpee.1070475926801" value="/folder" />
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="5584673629410321317">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5584673629410321146" resolveInfo="TestContext" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="193602448594332754" resolveInfo="DEPLOY" />
            </node>
          </node>
          <node role="actual" roleId="tpe3.8427750732757990725" type="tpee.DotExpression" typeId="tpee.1197027756228" id="280273048052535353">
            <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="280273048052535375">
              <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="280273048052535291" resolveInfo="folder" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="280273048052535355">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vbkb.280273048052535414" resolveInfo="getOutputPath_WithMacro" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="5584673629410321298">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="5584673629410321299">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="5584673629410321148" resolveInfo="TestContext" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods" roleId="tp5g.1217501895093" type="tp5g.SimpleNodeTest" typeId="tp5g.1225978065297" id="7422876504327290553">
      <property name="name" nameId="tpck.1169194664001" value="topInternalFolder" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7422876504327290554" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7422876504327290555">
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertEquals" typeId="tpe3.1171978097730" id="7422876504327290556">
          <node role="expected" roleId="tpe3.8427750732757990724" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="7422876504327290557">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7422876504327290558">
              <property name="value" nameId="tpee.1070475926801" value="/folder/internal" />
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="7422876504327290559">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5584673629410321146" resolveInfo="TestContext" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="193602448594332754" resolveInfo="DEPLOY" />
            </node>
          </node>
          <node role="actual" roleId="tpe3.8427750732757990725" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7422876504327290560">
            <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="7422876504327290567">
              <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="7422876504327290552" resolveInfo="internal" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="7422876504327290562">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vbkb.280273048052535414" resolveInfo="getOutputPath_WithMacro" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7422876504327290563">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="7422876504327290564">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="5584673629410321148" resolveInfo="TestContext" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods" roleId="tp5g.1217501895093" type="tp5g.SimpleNodeTest" typeId="tp5g.1225978065297" id="280273048052535301">
      <property name="name" nameId="tpck.1169194664001" value="jarInFolder" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="280273048052535302" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="280273048052535303">
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertEquals" typeId="tpe3.1171978097730" id="280273048052535304">
          <node role="expected" roleId="tpe3.8427750732757990724" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="5584673629410321322">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="280273048052535309">
              <property name="value" nameId="tpee.1070475926801" value="/folder/test.jar" />
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="5584673629410321325">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5584673629410321146" resolveInfo="TestContext" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="193602448594332754" resolveInfo="DEPLOY" />
            </node>
          </node>
          <node role="actual" roleId="tpe3.8427750732757990725" type="tpee.DotExpression" typeId="tpee.1197027756228" id="280273048052535310">
            <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="280273048052535339">
              <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="280273048052535290" resolveInfo="test.jar" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="280273048052535312">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vbkb.280273048052535414" resolveInfo="getOutputPath_WithMacro" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="5584673629410321300">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="5584673629410321301">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="5584673629410321148" resolveInfo="TestContext" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods" roleId="tp5g.1217501895093" type="tp5g.SimpleNodeTest" typeId="tp5g.1225978065297" id="8104754176559709912">
      <property name="name" nameId="tpck.1169194664001" value="folderInJar" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="8104754176559709913" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="8104754176559709914">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4209004860870549128">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4209004860870549129">
            <property name="name" nameId="tpck.1169194664001" value="testContext" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4209004860870549130">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="5584673629410321146" resolveInfo="TestContext" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="4209004860870549131">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="4209004860870549132">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="5584673629410321148" resolveInfo="TestContext" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertEquals" typeId="tpe3.1171978097730" id="8104754176559709915">
          <node role="expected" roleId="tpe3.8427750732757990724" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="5584673629410321330">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="8104754176559709920">
              <property name="value" nameId="tpee.1070475926801" value="/test.jar/internalFolder" />
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="5584673629410321333">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5584673629410321146" resolveInfo="TestContext" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="193602448594332738" resolveInfo="TEMP" />
            </node>
          </node>
          <node role="actual" roleId="tpe3.8427750732757990725" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8104754176559709921">
            <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="8104754176559709934">
              <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="8104754176559709901" resolveInfo="internalFolder" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="8104754176559709923">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vbkb.280273048052535414" resolveInfo="getOutputPath_WithMacro" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="4209004860870549133">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4209004860870549129" resolveInfo="testContext" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertEquals" typeId="tpe3.1171978097730" id="8104754176559709940">
          <node role="expected" roleId="tpe3.8427750732757990724" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="5584673629410321340">
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="5584673629410321343">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5584673629410321146" resolveInfo="TestContext" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="193602448594332738" resolveInfo="TEMP" />
            </node>
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4209004860870549135">
              <property name="value" nameId="tpee.1070475926801" value="/test.jar/internalFolder/internalFolder2" />
            </node>
          </node>
          <node role="actual" roleId="tpe3.8427750732757990725" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8104754176559709946">
            <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="8104754176559741962">
              <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="8104754176559709939" resolveInfo="internalFolder2" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="8104754176559709948">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vbkb.280273048052535414" resolveInfo="getOutputPath_WithMacro" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="4209004860870549134">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4209004860870549129" resolveInfo="testContext" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods" roleId="tp5g.1217501895093" type="tp5g.SimpleNodeTest" typeId="tp5g.1225978065297" id="4209004860870558820">
      <property name="name" nameId="tpck.1169194664001" value="duplicatedNames" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4209004860870558821" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4209004860870558822">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4209004860870558823">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4209004860870558824">
            <property name="name" nameId="tpck.1169194664001" value="testContext" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4209004860870558825">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="5584673629410321146" resolveInfo="TestContext" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="4209004860870558826">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="4209004860870558827">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="5584673629410321148" resolveInfo="TestContext" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertEquals" typeId="tpe3.1171978097730" id="4209004860870558828">
          <node role="expected" roleId="tpe3.8427750732757990724" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4209004860870558829">
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4209004860870558830">
              <property name="value" nameId="tpee.1070475926801" value="/some.jar/someFolder" />
            </node>
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4209004860870558831">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5584673629410321146" resolveInfo="TestContext" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="193602448594332738" resolveInfo="TEMP" />
            </node>
          </node>
          <node role="actual" roleId="tpe3.8427750732757990725" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4209004860870558832">
            <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="4209004860870558846">
              <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="4209004860870558816" resolveInfo="someFolder" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="4209004860870558834">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vbkb.280273048052535414" resolveInfo="getOutputPath_WithMacro" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="4209004860870558835">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4209004860870558824" resolveInfo="testContext" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertEquals" typeId="tpe3.1171978097730" id="4209004860870558836">
          <node role="expected" roleId="tpe3.8427750732757990724" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4209004860870558837">
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="4209004860870558838">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="193602448594332738" resolveInfo="TEMP" />
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5584673629410321146" resolveInfo="TestContext" />
            </node>
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="4209004860870558839">
              <property name="value" nameId="tpee.1070475926801" value="/some.jar_1/someFolder" />
            </node>
          </node>
          <node role="actual" roleId="tpe3.8427750732757990725" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4209004860870558840">
            <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="4209004860870558850">
              <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="4209004860870558815" resolveInfo="someFolder_1" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="4209004860870558842">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vbkb.280273048052535414" resolveInfo="getOutputPath_WithMacro" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="4209004860870558843">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4209004860870558824" resolveInfo="testContext" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="5584673629410321146">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5584673629410321147" />
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="5584673629410321148">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5584673629410321149" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5584673629410321150" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5584673629410321151" />
    </node>
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="5584673629410321152">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="o3n2.4959435991187147167" resolveInfo="Context" />
    </node>
    <node role="method" roleId="tpee.1107880067339" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5584673629410321153">
      <property name="name" nameId="tpck.1169194664001" value="getBasePath_Local" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5584673629410321154">
        <property name="name" nameId="tpck.1169194664001" value="node" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="5584673629410321155" />
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5584673629410321156" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.StringType" typeId="tpee.1225271177708" id="5584673629410321157" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5584673629410321158">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5584673629410321183">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="5584673629410321278">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="n13f.~CommonPaths%dgetBaseMPSPath()%cjava%dlang%dString" resolveInfo="getBaseMPSPath" />
            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="n13f.~CommonPaths" resolveInfo="CommonPaths" />
          </node>
        </node>
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5584673629410321159">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="5584673629410321283">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="TEMP_MACRO" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5584673629410321293" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="5584673629410321285" />
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="5584673629410321286">
        <property name="value" nameId="tpee.1070475926801" value="build.tmp" />
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="193602448594332738">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="TEMP" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="193602448594332739" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="193602448594332740" />
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="193602448594332750">
        <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="193602448594332753">
          <property name="value" nameId="tpee.1070475926801" value="}" />
        </node>
        <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="193602448594332744">
          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="193602448594332741">
            <property name="value" nameId="tpee.1070475926801" value="${" />
          </node>
          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.LocalStaticFieldReference" typeId="tpee.1172008963197" id="193602448594332747">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5584673629410321283" resolveInfo="TEMP_MACRO" />
          </node>
        </node>
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="5584673629410321288">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="DEPLOY_MACRO" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5584673629410321294" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="5584673629410321290" />
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="5584673629410321291">
        <property name="value" nameId="tpee.1070475926801" value="build.layout" />
      </node>
    </node>
    <node role="staticField" roleId="tpee.1128555889557" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="193602448594332754">
      <property name="isFinal" nameId="tpee.1176718929932" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="DEPLOY" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="193602448594332755" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="193602448594332756" />
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="193602448594332766">
        <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="193602448594332769">
          <property name="value" nameId="tpee.1070475926801" value="}" />
        </node>
        <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="193602448594332760">
          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="193602448594332757">
            <property name="value" nameId="tpee.1070475926801" value="${" />
          </node>
          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.LocalStaticFieldReference" typeId="tpee.1172008963197" id="193602448594332763">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5584673629410321288" resolveInfo="DEPLOY_MACRO" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="193602448594327346">
    <node role="testMethods" roleId="tp5g.1217501895093" type="tp5g.SimpleNodeTest" typeId="tp5g.1225978065297" id="6593006940411759671">
      <property name="name" nameId="tpck.1169194664001" value="normalScope" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="6593006940411759672" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6593006940411759673">
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertTrue" typeId="tpe3.1171981022339" id="763409143595611766">
          <node role="condition" roleId="tpe3.1171981057159" type="tpee.DotExpression" typeId="tpee.1197027756228" id="763409143595611767">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="763409143595611768">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="763409143595611769">
                <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="4209004860870523732">
                  <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="193602448594330748" resolveInfo="build" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="763409143595611771">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.3734116213129936182" resolveInfo="getScope" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.ReadConceptReferenceExpression" typeId="tp25.448792706993295611" id="763409143595611772">
                    <link role="conceptDeclaration" roleId="tp25.448792706993295615" targetNodeId="3ior.5617550519002745375" resolveInfo="BuildMacro" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="4209004860870523733">
                    <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611366" resolveInfo="resourcesMacro" />
                  </node>
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="763409143595611774">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o8zo.3734116213129862471" resolveInfo="getAvailableElements" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="763409143595611775">
                  <property name="value" nameId="tpee.1070475926801" value="" />
                </node>
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.ContainsOperation" typeId="tp2q.1172254888721" id="763409143595611776">
              <node role="argument" roleId="tp2q.1172256416782" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="4209004860870523735">
                <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611365" resolveInfo="buildMacro" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods" roleId="tp5g.1217501895093" type="tp5g.SimpleNodeTest" typeId="tp5g.1225978065297" id="6593006940411759677">
      <property name="name" nameId="tpck.1169194664001" value="onlySeePreviouslyDeclaredMacro" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="6593006940411759678" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6593006940411759679">
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertFalse" typeId="tpe3.1171983834376" id="6593006940411756965">
          <node role="condition" roleId="tpe3.1171983854940" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6593006940411756952">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6593006940411756953">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6593006940411756954">
                <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="6593006940411756955">
                  <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="193602448594330748" resolveInfo="build" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="6593006940411756956">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.3734116213129936182" resolveInfo="getScope" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.ReadConceptReferenceExpression" typeId="tp25.448792706993295611" id="6593006940411756957">
                    <link role="conceptDeclaration" roleId="tp25.448792706993295615" targetNodeId="3ior.5617550519002745375" resolveInfo="BuildMacro" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="6593006940411756968">
                    <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611365" resolveInfo="buildMacro" />
                  </node>
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6593006940411756959">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o8zo.3734116213129862471" resolveInfo="getAvailableElements" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6593006940411756960">
                  <property name="value" nameId="tpee.1070475926801" value="" />
                </node>
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.ContainsOperation" typeId="tp2q.1172254888721" id="6593006940411756961">
              <node role="argument" roleId="tp2q.1172256416782" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="6593006940411756971">
                <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611366" resolveInfo="resourcesMacro" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods" roleId="tp5g.1217501895093" type="tp5g.SimpleNodeTest" typeId="tp5g.1225978065297" id="763409143595611370">
      <property name="name" nameId="tpck.1169194664001" value="doNotSeeItsefl" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="763409143595611371" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="763409143595611372">
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertFalse" typeId="tpe3.1171983834376" id="763409143595722576">
          <node role="condition" roleId="tpe3.1171983854940" type="tpee.DotExpression" typeId="tpee.1197027756228" id="763409143595722563">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="763409143595722564">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="763409143595722565">
                <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="763409143595722566">
                  <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611364" resolveInfo="build2" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="763409143595722567">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.3734116213129936182" resolveInfo="getScope" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.ReadConceptReferenceExpression" typeId="tp25.448792706993295611" id="763409143595722568">
                    <link role="conceptDeclaration" roleId="tp25.448792706993295615" targetNodeId="3ior.5617550519002745375" resolveInfo="BuildMacro" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="763409143595722569">
                    <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611387" resolveInfo="resources2" />
                  </node>
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="763409143595722570">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o8zo.3734116213129862471" resolveInfo="getAvailableElements" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="763409143595722571">
                  <property name="value" nameId="tpee.1070475926801" value="" />
                </node>
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.ContainsOperation" typeId="tp2q.1172254888721" id="763409143595722572">
              <node role="argument" roleId="tp2q.1172256416782" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="763409143595722578">
                <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611387" resolveInfo="resources2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods" roleId="tp5g.1217501895093" type="tp5g.SimpleNodeTest" typeId="tp5g.1225978065297" id="6593006940411759683">
      <property name="name" nameId="tpck.1169194664001" value="doNotSeeImported" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="6593006940411759684" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6593006940411759685">
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertFalse" typeId="tpe3.1171983834376" id="6593006940411759686">
          <node role="condition" roleId="tpe3.1171983854940" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6593006940411791705">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6593006940411791695">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6593006940411759691">
                <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="6593006940411759688">
                  <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611364" resolveInfo="build2" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="6593006940411791687">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.3734116213129936182" resolveInfo="getScope" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.ReadConceptReferenceExpression" typeId="tp25.448792706993295611" id="6593006940411791688">
                    <link role="conceptDeclaration" roleId="tp25.448792706993295615" targetNodeId="3ior.5617550519002745375" resolveInfo="BuildMacro" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="6593006940411791690">
                    <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611387" resolveInfo="resources2" />
                  </node>
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6593006940411791700">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o8zo.3734116213129862471" resolveInfo="getAvailableElements" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6593006940411791702">
                  <property name="value" nameId="tpee.1070475926801" value="" />
                </node>
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.ContainsOperation" typeId="tp2q.1172254888721" id="6593006940411791712">
              <node role="argument" roleId="tp2q.1172256416782" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="6593006940411791728">
                <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611365" resolveInfo="buildMacro" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertFalse" typeId="tpe3.1171983834376" id="6593006940411791715">
          <node role="condition" roleId="tpe3.1171983854940" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6593006940411791716">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6593006940411791717">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6593006940411791718">
                <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="6593006940411791719">
                  <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611364" resolveInfo="build2" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="6593006940411791720">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.3734116213129936182" resolveInfo="getScope" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.ReadConceptReferenceExpression" typeId="tp25.448792706993295611" id="6593006940411791721">
                    <link role="conceptDeclaration" roleId="tp25.448792706993295615" targetNodeId="3ior.5617550519002745375" resolveInfo="BuildMacro" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="6593006940411791722">
                    <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611387" resolveInfo="resources2" />
                  </node>
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6593006940411791723">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o8zo.3734116213129862471" resolveInfo="getAvailableElements" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6593006940411791724">
                  <property name="value" nameId="tpee.1070475926801" value="" />
                </node>
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.ContainsOperation" typeId="tp2q.1172254888721" id="6593006940411791725">
              <node role="argument" roleId="tp2q.1172256416782" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="6593006940411791726">
                <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611366" resolveInfo="resourcesMacro" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods" roleId="tp5g.1217501895093" type="tp5g.SimpleNodeTest" typeId="tp5g.1225978065297" id="384280137912212777">
      <property name="name" nameId="tpck.1169194664001" value="seeImportedVariableInScope" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="384280137912212778" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="384280137912212779">
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertTrue" typeId="tpe3.1171981022339" id="384280137912212780">
          <node role="condition" roleId="tpe3.1171981057159" type="tpee.DotExpression" typeId="tpee.1197027756228" id="384280137912212808">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="384280137912212797">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="384280137912212785">
                <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="384280137912212782">
                  <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="763409143595611364" resolveInfo="build2" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="384280137912212791">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.3734116213129936182" resolveInfo="getScope" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.ReadConceptReferenceExpression" typeId="tp25.448792706993295611" id="384280137912212792">
                    <link role="conceptDeclaration" roleId="tp25.448792706993295615" targetNodeId="3ior.5617550519002745375" resolveInfo="BuildMacro" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="384280137912212794">
                    <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="384280137912153740" resolveInfo="referenceVariable" />
                  </node>
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="384280137912212803">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o8zo.3734116213129862471" resolveInfo="getAvailableElements" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="384280137912212805">
                  <property name="value" nameId="tpee.1070475926801" value="" />
                </node>
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.ContainsOperation" typeId="tp2q.1172254888721" id="384280137912212817">
              <node role="argument" roleId="tp2q.1172256416782" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="384280137912212819">
                <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="384280137912153741" resolveInfo="variable" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods" roleId="tp5g.1217501895093" type="tp5g.SimpleNodeTest" typeId="tp5g.1225978065297" id="384280137912153769">
      <property name="name" nameId="tpck.1169194664001" value="doNotSeeForwardVariabletInScope" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="384280137912153770" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="384280137912153771">
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertFalse" typeId="tpe3.1171983834376" id="384280137912313345">
          <node role="condition" roleId="tpe3.1171983854940" type="tpee.DotExpression" typeId="tpee.1197027756228" id="384280137912153816">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="384280137912153817">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="384280137912153818">
                <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="384280137912153819">
                  <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="384280137912153774" resolveInfo="testVarReferences" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="384280137912153820">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.3734116213129936182" resolveInfo="getScope" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.ReadConceptReferenceExpression" typeId="tp25.448792706993295611" id="384280137912153821">
                    <link role="conceptDeclaration" roleId="tp25.448792706993295615" targetNodeId="3ior.5617550519002745375" resolveInfo="BuildMacro" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="384280137912153828">
                    <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="384280137912153759" resolveInfo="forwardReference" />
                  </node>
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="384280137912153823">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o8zo.3734116213129862471" resolveInfo="getAvailableElements" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="384280137912153824">
                  <property name="value" nameId="tpee.1070475926801" value="" />
                </node>
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.ContainsOperation" typeId="tp2q.1172254888721" id="384280137912153825">
              <node role="argument" roleId="tp2q.1172256416782" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="384280137912153826">
                <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="384280137912153811" resolveInfo="middle" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="testMethods" roleId="tp5g.1217501895093" type="tp5g.SimpleNodeTest" typeId="tp5g.1225978065297" id="384280137912158402">
      <property name="name" nameId="tpck.1169194664001" value="seeBackwardVariableInScope" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="384280137912158403" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="384280137912158404">
        <node role="statement" roleId="tpee.1068581517665" type="tpe3.AssertTrue" typeId="tpe3.1171981022339" id="384280137912313343">
          <node role="condition" roleId="tpe3.1171981057159" type="tpee.DotExpression" typeId="tpee.1197027756228" id="384280137912153800">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="384280137912153790">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="384280137912153778">
                <node role="operand" roleId="tpee.1197027771414" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="384280137912153775">
                  <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="384280137912153774" resolveInfo="testVarReferences" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="384280137912153784">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.3734116213129936182" resolveInfo="getScope" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.ReadConceptReferenceExpression" typeId="tp25.448792706993295611" id="384280137912153785">
                    <link role="conceptDeclaration" roleId="tp25.448792706993295615" targetNodeId="3ior.5617550519002745375" resolveInfo="BuildMacro" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="384280137912153787">
                    <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="384280137912153763" resolveInfo="backwardReference" />
                  </node>
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="384280137912153795">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o8zo.3734116213129862471" resolveInfo="getAvailableElements" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="384280137912153797">
                  <property name="value" nameId="tpee.1070475926801" value="" />
                </node>
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.ContainsOperation" typeId="tp2q.1172254888721" id="384280137912153809">
              <node role="argument" roleId="tp2q.1172256416782" type="tp5g.TestNodeReference" typeId="tp5g.1210674524691" id="384280137912153812">
                <link role="declaration" roleId="tp5g.1210674534086" targetNodeId="384280137912153811" resolveInfo="middle" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="nodesToCheck" roleId="tp5g.1217501822150" type="tp5g.TestNode" typeId="tp5g.1216989428737" id="193602448594327347">
      <node role="nodeToCheck" roleId="tp5g.1216989461394" type="3ior.BuildProject" typeId="3ior.5617550519002745363" id="193602448594327348">
        <property name="name" nameId="tpck.1169194664001" value="project" />
        <node role="layout" roleId="3ior.5617550519002745372" type="3ior.BuildLayout" typeId="3ior.5617550519002745364" id="193602448594327349" />
        <node role="macros" roleId="3ior.5617550519002745378" type="3ior.BuildFolderMacro" typeId="3ior.7389400916848136194" id="193602448594330632">
          <property name="name" nameId="tpck.1169194664001" value="build" />
          <node role="defaultPath" roleId="3ior.7389400916848144618" type="3ior.BuildSourceProjectRelativePath" typeId="3ior.5481553824944787378" id="193602448594330633">
            <node role="compositePart" roleId="3ior.7321017245477039051" type="3ior.BuildCompositePath" typeId="3ior.8618885170173601777" id="193602448594330634">
              <property name="head" nameId="3ior.8618885170173601779" value="build" />
            </node>
          </node>
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="763409143595611365">
            <property name="name" nameId="tpck.1169194664001" value="buildMacro" />
          </node>
        </node>
        <node role="macros" roleId="3ior.5617550519002745378" type="3ior.BuildFolderMacro" typeId="3ior.7389400916848136194" id="193602448594330636">
          <property name="name" nameId="tpck.1169194664001" value="resources" />
          <node role="defaultPath" roleId="3ior.7389400916848144618" type="3ior.BuildSourceMacroRelativePath" typeId="3ior.7389400916848153117" id="193602448594330642">
            <link role="macro" roleId="3ior.7389400916848153130" targetNodeId="193602448594330632" resolveInfo="build" />
            <node role="compositePart" roleId="3ior.7321017245477039051" type="3ior.BuildCompositePath" typeId="3ior.8618885170173601777" id="193602448594330643">
              <property name="head" nameId="3ior.8618885170173601779" value="resources" />
            </node>
          </node>
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="763409143595611366">
            <property name="name" nameId="tpck.1169194664001" value="resourcesMacro" />
          </node>
        </node>
        <node role="macros" roleId="3ior.5617550519002745378" type="3ior.BuildVariableMacro" typeId="3ior.3767587139141066978" id="384280137912153734">
          <property name="name" nameId="tpck.1169194664001" value="build.number" />
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="384280137912153741">
            <property name="name" nameId="tpck.1169194664001" value="variable" />
          </node>
        </node>
        <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="193602448594330748">
          <property name="name" nameId="tpck.1169194664001" value="build" />
        </node>
      </node>
    </node>
    <node role="nodesToCheck" roleId="tp5g.1217501822150" type="tp5g.TestNode" typeId="tp5g.1216989428737" id="763409143595572699">
      <node role="nodeToCheck" roleId="tp5g.1216989461394" type="3ior.BuildProject" typeId="3ior.5617550519002745363" id="763409143595572700">
        <property name="name" nameId="tpck.1169194664001" value="project2" />
        <node role="layout" roleId="3ior.5617550519002745372" type="3ior.BuildLayout" typeId="3ior.5617550519002745364" id="763409143595572701" />
        <node role="macros" roleId="3ior.5617550519002745378" type="3ior.BuildFolderMacro" typeId="3ior.7389400916848136194" id="763409143595572705">
          <property name="name" nameId="tpck.1169194664001" value="resources2" />
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="763409143595611387">
            <property name="name" nameId="tpck.1169194664001" value="resources2" />
          </node>
        </node>
        <node role="macros" roleId="3ior.5617550519002745378" type="3ior.BuildVariableMacro" typeId="3ior.3767587139141066978" id="384280137912153736">
          <property name="name" nameId="tpck.1169194664001" value="MPS" />
          <node role="value" roleId="3ior.4380385936562281299" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562316095">
            <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="384280137912153738">
              <property name="text" nameId="3ior.4903714810883755350" value="MPS-" />
            </node>
            <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildVarRefStringPart" typeId="3ior.4903714810883702017" id="384280137912153739">
              <link role="macro" roleId="3ior.4903714810883702018" targetNodeId="384280137912153734" resolveInfo="build.number" />
              <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="384280137912153740">
                <property name="name" nameId="tpck.1169194664001" value="referenceVariable" />
              </node>
            </node>
          </node>
        </node>
        <node role="dependencies" roleId="3ior.5617550519002745381" type="3ior.BuildProjectDependency" typeId="3ior.4993211115183325728" id="763409143595572709">
          <link role="script" roleId="3ior.5617550519002745380" targetNodeId="193602448594327348" resolveInfo="project" />
        </node>
        <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="763409143595611364">
          <property name="name" nameId="tpck.1169194664001" value="build2" />
        </node>
      </node>
    </node>
    <node role="nodesToCheck" roleId="tp5g.1217501822150" type="tp5g.TestNode" typeId="tp5g.1216989428737" id="384280137912153748">
      <node role="nodeToCheck" roleId="tp5g.1216989461394" type="3ior.BuildProject" typeId="3ior.5617550519002745363" id="384280137912153749">
        <property name="name" nameId="tpck.1169194664001" value="testVarReferences" />
        <node role="layout" roleId="3ior.5617550519002745372" type="3ior.BuildLayout" typeId="3ior.5617550519002745364" id="384280137912153750" />
        <node role="macros" roleId="3ior.5617550519002745378" type="3ior.BuildVariableMacro" typeId="3ior.3767587139141066978" id="384280137912153751">
          <property name="name" nameId="tpck.1169194664001" value="forward" />
          <node role="value" roleId="3ior.4380385936562281299" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562316094">
            <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="384280137912153757">
              <property name="text" nameId="3ior.4903714810883755350" value="blabla" />
            </node>
            <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildVarRefStringPart" typeId="3ior.4903714810883702017" id="384280137912153758">
              <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="384280137912153759">
                <property name="name" nameId="tpck.1169194664001" value="forwardReference" />
              </node>
            </node>
          </node>
        </node>
        <node role="macros" roleId="3ior.5617550519002745378" type="3ior.BuildVariableMacro" typeId="3ior.3767587139141066978" id="384280137912153753">
          <property name="name" nameId="tpck.1169194664001" value="middle" />
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="384280137912153811">
            <property name="name" nameId="tpck.1169194664001" value="middle" />
          </node>
        </node>
        <node role="macros" roleId="3ior.5617550519002745378" type="3ior.BuildVariableMacro" typeId="3ior.3767587139141066978" id="384280137912153755">
          <property name="name" nameId="tpck.1169194664001" value="backward" />
          <node role="value" roleId="3ior.4380385936562281299" type="3ior.BuildString" typeId="3ior.4380385936562003279" id="4380385936562316096">
            <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildTextStringPart" typeId="3ior.4903714810883702019" id="384280137912153761">
              <property name="text" nameId="3ior.4903714810883755350" value="blabla" />
            </node>
            <node role="parts" roleId="3ior.4903714810883783243" type="3ior.BuildVarRefStringPart" typeId="3ior.4903714810883702017" id="384280137912153762">
              <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="384280137912153763">
                <property name="name" nameId="tpck.1169194664001" value="backwardReference" />
              </node>
            </node>
          </node>
        </node>
        <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.TestNodeAnnotation" typeId="tp5g.1210673684636" id="384280137912153774">
          <property name="name" nameId="tpck.1169194664001" value="testVarReferences" />
        </node>
      </node>
    </node>
  </root>
  <root id="5368511706901688070">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5368511706901688071" />
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="5368511706901688072">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5368511706901688073" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5368511706901688074" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5368511706901688075" />
    </node>
    <node role="testMethodList" roleId="tpe3.1171931851044" type="tpe3.TestMethodList" typeId="tpe3.1171931858461" id="5368511706901688076">
      <node role="testMethod" roleId="tpe3.1171931858462" type="tpe3.TestMethod" typeId="tpe3.1171931690126" id="5368511706901692172">
        <property name="methodName" nameId="tpe3.1171931690128" value="testRelPaths" />
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5368511706901692173" />
        <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5368511706901692174" />
        <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5368511706901692175">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1841835149314679084">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1841835149314679085">
              <property name="name" nameId="tpck.1169194664001" value="tmpFile" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1841835149314679086">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="fxg7.~File" resolveInfo="File" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1841835149314679087">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="fxg7.~File" resolveInfo="File" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%dcreateTempFile(java%dlang%dString,java%dlang%dString)%cjava%dio%dFile" resolveInfo="createTempFile" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1841835149314679088">
                  <property name="value" nameId="tpee.1070475926801" value="mpsTestRelPathHelper" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1841835149314679089">
                  <property name="value" nameId="tpee.1070475926801" value="tmp" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1841835149314679092">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314679112">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314679093">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679085" resolveInfo="tmpFile" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314679118">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%ddelete()%cboolean" resolveInfo="delete" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1841835149314679120">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314679140">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314679121">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679085" resolveInfo="tmpFile" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314679146">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%dmkdirs()%cboolean" resolveInfo="mkdirs" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1841835149314679148">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314679168">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314679149">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679085" resolveInfo="tmpFile" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314679174">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%ddeleteOnExit()%cvoid" resolveInfo="deleteOnExit" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1841835149314679176" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1841835149314687007">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1841835149314687008">
              <property name="name" nameId="tpck.1169194664001" value="baseDir" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1841835149314687009">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="fxg7.~File" resolveInfo="File" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1841835149314687010">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1841835149314687011">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%d&lt;init&gt;(java%dio%dFile,java%dlang%dString)" resolveInfo="File" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314687012">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679085" resolveInfo="tmpFile" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1841835149314687013">
                    <property name="value" nameId="tpee.1070475926801" value="build/scripts" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1841835149314687032">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314687056">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314687033">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314687008" resolveInfo="baseDir" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314687062">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%dmkdirs()%cboolean" resolveInfo="mkdirs" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1841835149314687027" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="1841835149314690704">
            <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="1841835149314690705">
              <property name="text" nameId="tpee.6329021646629104958" value="1 go up" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1841835149314679293">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1841835149314679294">
              <property name="name" nameId="tpck.1169194664001" value="scriptsFolder" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1841835149314679295">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~String" resolveInfo="String" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314679296">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314687014">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314687008" resolveInfo="baseDir" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314679301">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%dgetCanonicalPath()%cjava%dlang%dString" resolveInfo="getCanonicalPath" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1841835149314680236">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1841835149314680237">
              <property name="name" nameId="tpck.1169194664001" value="targetFolder" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1841835149314680238">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~String" resolveInfo="String" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314680264">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1841835149314680240">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1841835149314680241">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%d&lt;init&gt;(java%dio%dFile,java%dlang%dString)" resolveInfo="File" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314680242">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679085" resolveInfo="tmpFile" />
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1841835149314680243">
                      <property name="value" nameId="tpee.1070475926801" value="build2" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314680274">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%dgetCanonicalPath()%cjava%dlang%dString" resolveInfo="getCanonicalPath" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1841835149314686956" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1841835149314679310">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1841835149314680203">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qjxg.~Assert" resolveInfo="Assert" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qjxg.~Assert%dassertEquals(java%dlang%dObject,java%dlang%dObject)%cvoid" resolveInfo="assertEquals" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1841835149314680280">
                <property name="value" nameId="tpee.1070475926801" value="../../build2" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314680353">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1841835149314680317">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1841835149314680323">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.1841835149314652654" resolveInfo="RelativePathHelper" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314680332">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679294" resolveInfo="scriptsFolder" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314680363">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.6099797596647572258" resolveInfo="makeRelative" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314680367">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314680237" resolveInfo="targetFolder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1841835149314690696" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="1841835149314690707">
            <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="1841835149314778437">
              <property name="text" nameId="tpee.6329021646629104958" value="back" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1841835149314690709">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1841835149314690710">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qjxg.~Assert%dassertEquals(java%dlang%dObject,java%dlang%dObject)%cvoid" resolveInfo="assertEquals" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qjxg.~Assert" resolveInfo="Assert" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314690723">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314680237" resolveInfo="targetFolder" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314690712">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1841835149314690713">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1841835149314690714">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.1841835149314652654" resolveInfo="RelativePathHelper" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314690715">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679294" resolveInfo="scriptsFolder" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314690716">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.6099797596647572297" resolveInfo="makeAbsolute" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1841835149314690711">
                    <property name="value" nameId="tpee.1070475926801" value="../../build2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1841835149314781642">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1841835149314781643">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qjxg.~Assert" resolveInfo="Assert" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qjxg.~Assert%dassertEquals(java%dlang%dObject,java%dlang%dObject)%cvoid" resolveInfo="assertEquals" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314781644">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314680237" resolveInfo="targetFolder" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314781645">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1841835149314781646">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1841835149314781647">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.1841835149314652654" resolveInfo="RelativePathHelper" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314781648">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679294" resolveInfo="scriptsFolder" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314781649">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.6099797596647572297" resolveInfo="makeAbsolute" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1841835149314781650">
                    <property name="value" nameId="tpee.1070475926801" value="../../build2/" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1841835149314778424" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="1841835149314778430">
            <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="1841835149314778436">
              <property name="text" nameId="tpee.6329021646629104958" value="2 same folder" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1841835149314778443">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1841835149314778444">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qjxg.~Assert%dassertEquals(java%dlang%dObject,java%dlang%dObject)%cvoid" resolveInfo="assertEquals" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qjxg.~Assert" resolveInfo="Assert" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1841835149314778445" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314778446">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1841835149314778447">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1841835149314778448">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.1841835149314652654" resolveInfo="RelativePathHelper" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314778449">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679294" resolveInfo="scriptsFolder" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314778450">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.6099797596647572258" resolveInfo="makeRelative" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314778458">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679294" resolveInfo="scriptsFolder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1841835149314778438" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="1841835149314778510">
            <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="1841835149314778520">
              <property name="text" nameId="tpee.6329021646629104958" value="back" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1841835149314778484">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1841835149314778485">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qjxg.~Assert%dassertEquals(java%dlang%dObject,java%dlang%dObject)%cvoid" resolveInfo="assertEquals" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qjxg.~Assert" resolveInfo="Assert" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314778521">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679294" resolveInfo="scriptsFolder" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314778487">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1841835149314778488">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1841835149314778489">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.1841835149314652654" resolveInfo="RelativePathHelper" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314778490">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679294" resolveInfo="scriptsFolder" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314778491">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.6099797596647572297" resolveInfo="makeAbsolute" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1841835149314778492" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1841835149314778477" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="1841835149314779974">
            <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="1841835149314779984">
              <property name="text" nameId="tpee.6329021646629104958" value="3 one level up" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1841835149314780163">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1841835149314780164">
              <property name="name" nameId="tpck.1169194664001" value="oneUp" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1841835149314780165">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~String" resolveInfo="String" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314780166">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314780167">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314780168">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314687008" resolveInfo="baseDir" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314780169">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%dgetParentFile()%cjava%dio%dFile" resolveInfo="getParentFile" />
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314780170">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%dgetCanonicalPath()%cjava%dlang%dString" resolveInfo="getCanonicalPath" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1841835149314779994">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1841835149314779995">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qjxg.~Assert%dassertEquals(java%dlang%dObject,java%dlang%dObject)%cvoid" resolveInfo="assertEquals" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qjxg.~Assert" resolveInfo="Assert" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1841835149314779996">
                <property name="value" nameId="tpee.1070475926801" value="../" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314779997">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1841835149314779998">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1841835149314779999">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.1841835149314652654" resolveInfo="RelativePathHelper" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314780000">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679294" resolveInfo="scriptsFolder" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314780001">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.6099797596647572258" resolveInfo="makeRelative" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314780171">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314780164" resolveInfo="oneUp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="1841835149314780116" />
          <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="1841835149314780128">
            <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="1841835149314780129">
              <property name="text" nameId="tpee.6329021646629104958" value="back" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1841835149314780130">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1841835149314780131">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qjxg.~Assert" resolveInfo="Assert" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qjxg.~Assert%dassertEquals(java%dlang%dObject,java%dlang%dObject)%cvoid" resolveInfo="assertEquals" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314780184">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314780164" resolveInfo="oneUp" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314780133">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1841835149314780134">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1841835149314780135">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.1841835149314652654" resolveInfo="RelativePathHelper" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314780136">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679294" resolveInfo="scriptsFolder" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314780137">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.6099797596647572297" resolveInfo="makeAbsolute" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1841835149314780138">
                    <property name="value" nameId="tpee.1070475926801" value=".." />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1841835149314781674">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1841835149314781675">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qjxg.~Assert%dassertEquals(java%dlang%dObject,java%dlang%dObject)%cvoid" resolveInfo="assertEquals" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qjxg.~Assert" resolveInfo="Assert" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314781676">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314780164" resolveInfo="oneUp" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1841835149314781677">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1841835149314781678">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1841835149314781679">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.1841835149314652654" resolveInfo="RelativePathHelper" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1841835149314781680">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1841835149314679294" resolveInfo="scriptsFolder" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1841835149314781681">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="o3n2.6099797596647572297" resolveInfo="makeAbsolute" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1841835149314781682">
                    <property name="value" nameId="tpee.1070475926801" value="../" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
</model>


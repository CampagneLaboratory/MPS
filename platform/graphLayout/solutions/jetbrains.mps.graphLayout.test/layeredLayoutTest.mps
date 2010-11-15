<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:e4338979-215b-4b9c-a1e7-b887743c18eb(layeredLayoutTest)">
  <persistence version="7" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="f61473f9-130f-42f6-b98d-6c438812c2f6(jetbrains.mps.baseLanguage.unitTest)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <import index="aequ" modelUID="r:d228b8c9-d2b1-4686-9904-e3c49a346bc6(jetbrains.mps.graphLayout.graph)" version="-1" />
  <import index="trlv" modelUID="r:56e7ed05-c300-4310-9801-1a49a3ba1a5a(jetbrains.mps.graphLayout.layeredLayout)" version="-1" />
  <import index="wj3r" modelUID="r:5aba4e89-d910-492c-9b56-c5e3fe8c0f28(jetbrains.mps.graphLayout.algorithms)" version="-1" />
  <import index="35o0" modelUID="r:1674ee60-7c44-4176-8f8c-2c87c767d971(sampleGraphs)" version="-1" />
  <import index="jh5a" modelUID="r:964bbf7c-f239-4721-836a-ba42f2f69703(visualization)" version="-1" />
  <import index="yjwb" modelUID="f:java_stub#java.util(java.util@java_stub)" version="-1" />
  <import index="tiz1" modelUID="f:java_stub#java.io(java.io@java_stub)" version="-1" />
  <import index="nz5" modelUID="r:8254b240-abed-4f97-a7cd-2eef733ec7fb(jetbrains.mps.graphLayout.util)" version="-1" />
  <import index="yvor" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" implicit="yes" />
  <import index="yvnu" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="yvix" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="yviq" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="vhgx" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" implicit="yes" />
  <import index="eqmc" modelUID="r:e4338979-215b-4b9c-a1e7-b887743c18eb(layeredLayoutTest)" version="-1" implicit="yes" />
  <import index="yvol" modelUID="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" version="-1" implicit="yes" />
  <roots>
    <node type="yvol.BTestCase" typeId="yvol.1171931851043" id="1567683135099906065">
      <property name="testCaseName" nameId="yvol.1171931851045" value="DFSEdgeReverter" />
    </node>
    <node type="yvol.BTestCase" typeId="yvol.1171931851043" id="1567683135099906087">
      <property name="testCaseName" nameId="yvol.1171931851045" value="TopologicalLayerer" />
    </node>
    <node type="yvol.BTestCase" typeId="yvol.1171931851043" id="1567683135099906440">
      <property name="testCaseName" nameId="yvol.1171931851045" value="DFSNodeSorter" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1567683135099906733">
      <property name="name" nameId="yvnu.1169194664001:0" value="CheckCycles" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="utils" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1567683135099906778">
      <property name="name" nameId="yvnu.1169194664001:0" value="CheckLayers" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="utils" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="6088058844796081230">
      <property name="name" nameId="yvnu.1169194664001:0" value="CheckDummyEdgesCrossing" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="utils" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="4519409331094619347">
      <property name="name" nameId="yvnu.1169194664001:0" value="EdgeReverterProxy" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="proxy" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="4519409331094620043">
      <property name="name" nameId="yvnu.1169194664001:0" value="LayererProxy" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="proxy" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="4519409331094621475">
      <property name="name" nameId="yvnu.1169194664001:0" value="MedianLayerByLayerSorterProxy" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="proxy" />
    </node>
    <node type="yvol.BTestCase" typeId="yvol.1171931851043" id="4519409331094801569">
      <property name="testCaseName" nameId="yvol.1171931851045" value="BlockGraphProcessor" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="8780938838750221986">
      <property name="name" nameId="yvnu.1169194664001:0" value="RefineAdjacentNodeSorterProxy" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="proxy" />
    </node>
  </roots>
  <root id="1567683135099906065">
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906066" />
    <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="1567683135099906067">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906068" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906069" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906070" />
    </node>
    <node role="testMethodList" roleId="yvol.1171931851044" type="yvol.TestMethodList" typeId="yvol.1171931858461" id="1567683135099906071">
      <node role="testMethod" roleId="yvol.1171931858462" type="yvol.TestMethod" typeId="yvol.1171931690126" id="1567683135099906072">
        <property name="methodName" nameId="yvol.1171931690128" value="cycle" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906073" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906074" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906075">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906076">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906077">
              <property name="name" nameId="yvnu.1169194664001:0" value="cycle" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906078">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1567683135099906079">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="35o0.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="35o0.3437556975695847539" resolveInfo="cycle" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906080">
                  <property name="value" nameId="yvor.1068580320021:3" value="10" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4519409331094619719">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094619726">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094619720">
                <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094619722">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094619349" resolveInfo="EdgeReverterProxy" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094619723">
                    <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094619725">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.4660430665333276850" resolveInfo="DFSEdgeReverter" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094619730">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094619366" resolveInfo="revertEdges" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094619731">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906077" resolveInfo="cycle" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1567683135099906087">
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906088" />
    <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="1567683135099906089">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906090" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906091" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906092" />
    </node>
    <node role="testMethodList" roleId="yvol.1171931851044" type="yvol.TestMethodList" typeId="yvol.1171931858461" id="1567683135099906093">
      <node role="testMethod" roleId="yvol.1171931858462" type="yvol.TestMethod" typeId="yvol.1171931690126" id="1567683135099906094">
        <property name="methodName" nameId="yvol.1171931690128" value="chain1" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906095" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906096" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906097">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906098">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906099">
              <property name="name" nameId="yvnu.1169194664001:0" value="chain" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906100">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1567683135099912675">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="35o0.3437556975695847473" resolveInfo="chain" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="35o0.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099912676">
                  <property name="value" nameId="yvor.1068580320021:3" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906103">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906104">
              <property name="name" nameId="yvnu.1169194664001:0" value="layers" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="920414672219865697">
                <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865700">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865701">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906106">
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906109">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906110">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906099" resolveInfo="chain" />
                  </node>
                </node>
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094620105">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094620107">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094620108">
                      <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094620109">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.5180427534212021893" resolveInfo="BFSLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906119">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906120">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906121">
                <property name="value" nameId="yvor.1068580320021:3" value="0" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906122">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906123">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906124">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906099" resolveInfo="chain" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906125">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906126">
                      <property name="value" nameId="yvor.1068580320021:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906127">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906104" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" roleId="yvol.1171931858462" type="yvol.TestMethod" typeId="yvol.1171931690126" id="1567683135099906128">
        <property name="methodName" nameId="yvol.1171931690128" value="chain2" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906129" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906130" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906131">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906132">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906133">
              <property name="name" nameId="yvnu.1169194664001:0" value="chain" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906134">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1567683135099912677">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="35o0.3437556975695847473" resolveInfo="chain" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="35o0.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099912678">
                  <property name="value" nameId="yvor.1068580320021:3" value="2" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906137">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906138">
              <property name="name" nameId="yvnu.1169194664001:0" value="layers" />
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094620110">
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094620111">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094620112">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906133" resolveInfo="chain" />
                  </node>
                </node>
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094620113">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094620114">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094620115">
                      <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094620116">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.5180427534212021893" resolveInfo="BFSLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="920414672219865702">
                <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865703">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865704">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906153">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906154">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906155">
                <property name="value" nameId="yvor.1068580320021:3" value="0" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906156">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906157">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906158">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906133" resolveInfo="chain" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906159">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906160">
                      <property name="value" nameId="yvor.1068580320021:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906161">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906138" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906162">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906163">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906164">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906165">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906166">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906133" resolveInfo="chain" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906167">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906168">
                      <property name="value" nameId="yvor.1068580320021:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906169">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906138" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906170">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" roleId="yvol.1171931858462" type="yvol.TestMethod" typeId="yvol.1171931690126" id="1567683135099906171">
        <property name="methodName" nameId="yvol.1171931690128" value="chain3" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906172" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906173" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906174">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906175">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906176">
              <property name="name" nameId="yvnu.1169194664001:0" value="chain" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906177">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1567683135099912679">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="35o0.3437556975695847473" resolveInfo="chain" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="35o0.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099912680">
                  <property name="value" nameId="yvor.1068580320021:3" value="3" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906180">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906181">
              <property name="name" nameId="yvnu.1169194664001:0" value="layers" />
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094620117">
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094620118">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094620119">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906176" resolveInfo="chain" />
                  </node>
                </node>
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094620120">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094620121">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094620122">
                      <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094620123">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.5180427534212021893" resolveInfo="BFSLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="920414672219865705">
                <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865706">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865707">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906196">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906197">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906198">
                <property name="value" nameId="yvor.1068580320021:3" value="0" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906199">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906200">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906201">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906176" resolveInfo="chain" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906202">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906203">
                      <property name="value" nameId="yvor.1068580320021:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906204">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906181" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906205">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906206">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906207">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906208">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906209">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906176" resolveInfo="chain" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906210">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906211">
                      <property name="value" nameId="yvor.1068580320021:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906212">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906181" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906213">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906214">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906215">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906216">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906217">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906218">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906176" resolveInfo="chain" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906219">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906220">
                      <property name="value" nameId="yvor.1068580320021:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906221">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906181" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906222">
                <property name="value" nameId="yvor.1068580320021:3" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" roleId="yvol.1171931858462" type="yvol.TestMethod" typeId="yvol.1171931690126" id="1567683135099906223">
        <property name="methodName" nameId="yvol.1171931690128" value="triangle" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906224" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906225" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906226">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906227">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906228">
              <property name="name" nameId="yvnu.1169194664001:0" value="triangle" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906229">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1567683135099912681">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="35o0.3437556975695847517" resolveInfo="triangle" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="35o0.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906231">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906232">
              <property name="name" nameId="yvnu.1169194664001:0" value="layers" />
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094620124">
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094620125">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094620147">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906228" resolveInfo="triangle" />
                  </node>
                </node>
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094620127">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094620128">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094620129">
                      <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094620130">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.5180427534212021893" resolveInfo="BFSLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="920414672219865708">
                <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865709">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865710">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906247">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906248">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906249">
                <property name="value" nameId="yvor.1068580320021:3" value="0" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906250">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906251">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906252">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906228" resolveInfo="triangle" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906253">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906254">
                      <property name="value" nameId="yvor.1068580320021:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906255">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906232" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906256">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906257">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906258">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906259">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906260">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906228" resolveInfo="triangle" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906261">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906262">
                      <property name="value" nameId="yvor.1068580320021:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906263">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906232" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906264">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906265">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906266">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906267">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906268">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906269">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906228" resolveInfo="triangle" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906270">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906271">
                      <property name="value" nameId="yvor.1068580320021:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906272">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906232" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906273">
                <property name="value" nameId="yvor.1068580320021:3" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" roleId="yvol.1171931858462" type="yvol.TestMethod" typeId="yvol.1171931690126" id="1567683135099906274">
        <property name="methodName" nameId="yvol.1171931690128" value="cycle" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906275" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906276" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906277">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="3263240354041154372">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="3263240354041154373">
              <property name="name" nameId="yvnu.1169194664001:0" value="cycle" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="3263240354041154374">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="3263240354041154377">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="35o0.3437556975695847539" resolveInfo="cycle" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="35o0.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="3263240354041154378">
                  <property name="value" nameId="yvor.1068580320021:3" value="3" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertThrows" typeId="yvol.1172069869612" id="1567683135099906283">
            <node role="exceptionType" roleId="yvol.1172070532815" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906284">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~IllegalArgumentException" resolveInfo="IllegalArgumentException" />
            </node>
            <node role="message" roleId="yvol.1172075534298" type="yvol.Message" typeId="yvol.1172073500303" id="1567683135099906285">
              <node role="message" roleId="yvol.1172073511101" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1567683135099906286">
                <property name="value" nameId="yvor.1070475926801:3" value="input graph must be acyclic" />
              </node>
            </node>
            <node role="statement" roleId="yvol.1172070029086" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1567683135099906287">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094620131">
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094620132">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="3263240354041150375">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="3263240354041154373" resolveInfo="cycle" />
                  </node>
                </node>
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094620134">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094620135">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094620136">
                      <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094620137">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.5180427534212021893" resolveInfo="BFSLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" roleId="yvol.1171931858462" type="yvol.TestMethod" typeId="yvol.1171931690126" id="1567683135099906293">
        <property name="methodName" nameId="yvol.1171931690128" value="sandwatches" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906294" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906295" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906296">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906297">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906298">
              <property name="name" nameId="yvnu.1169194664001:0" value="sandwatches" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906299">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1567683135099912684">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="35o0.3437556975695847565" resolveInfo="sandwatches" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="35o0.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906301">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906302">
              <property name="name" nameId="yvnu.1169194664001:0" value="layers" />
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094620138">
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094620139">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094620062" resolveInfo="computeLayers" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094620145">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                </node>
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094620141">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094620142">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094620045" resolveInfo="LayererProxy" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094620143">
                      <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094620144">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.5180427534212021893" resolveInfo="BFSLayerer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="920414672219865711">
                <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865712">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865713">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906317">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906318">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906319">
                <property name="value" nameId="yvor.1068580320021:3" value="0" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906320">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906321">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906322">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906323">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906324">
                      <property name="value" nameId="yvor.1068580320021:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906325">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906302" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906326">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906327">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906328">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906329">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906330">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906331">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906332">
                      <property name="value" nameId="yvor.1068580320021:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906333">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906302" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906334">
                <property name="value" nameId="yvor.1068580320021:3" value="0" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906335">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906336">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906337">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906338">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906339">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906340">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906341">
                      <property name="value" nameId="yvor.1068580320021:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906342">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906302" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906343">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906344">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906345">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906346">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906347">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906348">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906349">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906350">
                      <property name="value" nameId="yvor.1068580320021:3" value="3" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906351">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906302" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906352">
                <property name="value" nameId="yvor.1068580320021:3" value="2" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906353">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906354">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906355">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906356">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906357">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906358">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906359">
                      <property name="value" nameId="yvor.1068580320021:3" value="4" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906360">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906302" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906361">
                <property name="value" nameId="yvor.1068580320021:3" value="3" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906362">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906363">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906364">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906365">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906366">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906298" resolveInfo="sandwatches" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906367">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906368">
                      <property name="value" nameId="yvor.1068580320021:3" value="5" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906369">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906302" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906370">
                <property name="value" nameId="yvor.1068580320021:3" value="3" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" roleId="yvol.1171931858462" type="yvol.TestMethod" typeId="yvol.1171931690126" id="1567683135099906371">
        <property name="methodName" nameId="yvol.1171931690128" value="simpleFourLayers" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906372" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906373" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906374">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906375">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906376">
              <property name="name" nameId="yvnu.1169194664001:0" value="simpleGraph" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906377">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1567683135099912920">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="35o0.3437556975695846541" resolveInfo="simpleFourLayersGraph" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="35o0.3437556975695846540" resolveInfo="GraphsForLayers" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906379">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906380">
              <property name="name" nameId="yvnu.1169194664001:0" value="layers" />
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906382">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1567683135099906383">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1567683135099906384">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.5180427534212021893" resolveInfo="BFSLayerer" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906385">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.5180427534212021899" resolveInfo="computeLayers" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906386">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906376" resolveInfo="simpleGraph" />
                  </node>
                </node>
              </node>
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="920414672219865714">
                <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865715">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865716">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906395">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906396">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906397">
                <property name="value" nameId="yvor.1068580320021:3" value="0" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906398">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906399">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906400">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906376" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906401">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906402">
                      <property name="value" nameId="yvor.1068580320021:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906403">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906380" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906404">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906405">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906406">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906407">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906408">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906376" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906409">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906410">
                      <property name="value" nameId="yvor.1068580320021:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906411">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906380" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906412">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906413">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906414">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906415">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906416">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906417">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906376" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906418">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906419">
                      <property name="value" nameId="yvor.1068580320021:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906420">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906380" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906421">
                <property name="value" nameId="yvor.1068580320021:3" value="2" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906422">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906423">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906424">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906425">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906426">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906376" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906427">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906428">
                      <property name="value" nameId="yvor.1068580320021:3" value="3" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906429">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906380" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906430">
                <property name="value" nameId="yvor.1068580320021:3" value="3" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906431">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906432">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906433">
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906434">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906435">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906376" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906436">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906437">
                      <property name="value" nameId="yvor.1068580320021:3" value="4" />
                    </node>
                  </node>
                </node>
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906438">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906380" resolveInfo="layers" />
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906439">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1567683135099906440">
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906441" />
    <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="1567683135099906442">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906443" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906444" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906445" />
    </node>
    <node role="testMethodList" roleId="yvol.1171931851044" type="yvol.TestMethodList" typeId="yvol.1171931858461" id="1567683135099906446">
      <node role="testMethod" roleId="yvol.1171931858462" type="yvol.TestMethod" typeId="yvol.1171931690126" id="1567683135099906447">
        <property name="methodName" nameId="yvol.1171931690128" value="Chain" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906448" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906449" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906450">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906451">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906452">
              <property name="name" nameId="yvnu.1169194664001:0" value="chain" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906453">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1567683135099906454">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="35o0.3437556975695847443" resolveInfo="SimpleDirectedGraphs" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="35o0.3437556975695847473" resolveInfo="chain" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906455">
                  <property name="value" nameId="yvor.1068580320021:3" value="3" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="920414672219866063">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="920414672219866064">
              <property name="name" nameId="yvnu.1169194664001:0" value="layers" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="920414672219866065">
                <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219866068">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219866069">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="920414672219866071">
                <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="920414672219866073">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="nz5.5180427534211916791" resolveInfo="NodeMap" />
                  <node role="typeParameter" roleId="yvor.1212687122400:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219866075">
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                  </node>
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866076">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="920414672219866078">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="920414672219866087">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="920414672219866080">
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866079">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="920414672219866064" resolveInfo="layers" />
                </node>
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="920414672219866083">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866084">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="920414672219866085">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866086">
                      <property name="value" nameId="yvor.1068580320021:3" value="0" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866114">
                <property name="value" nameId="yvor.1068580320021:3" value="0" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="920414672219866092">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="920414672219866093">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="920414672219866095">
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866096">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="920414672219866064" resolveInfo="layers" />
                </node>
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="920414672219866097">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866098">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="920414672219866099">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866179">
                      <property name="value" nameId="yvor.1068580320021:3" value="1" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866112">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="920414672219866103">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="920414672219866104">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="920414672219866106">
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866107">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="920414672219866064" resolveInfo="layers" />
                </node>
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="920414672219866108">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866109">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="920414672219866110">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866180">
                      <property name="value" nameId="yvor.1068580320021:3" value="2" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866113">
                <property name="value" nameId="yvor.1068580320021:3" value="2" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906489">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906490">
              <property name="name" nameId="yvnu.1169194664001:0" value="order" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906491">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.2350882467504388199" resolveInfo="NodeLayeredOrder" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906492">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1567683135099906493">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1567683135099906494">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.4666079041336346282" resolveInfo="DFSNodeSorter" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906495">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.4666079041336409323" resolveInfo="sortNodes" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906496">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                  </node>
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906497">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="920414672219866064" resolveInfo="layers" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906498">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906499">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906500">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906501">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906502">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906503">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906490" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906504">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906505">
                      <property name="value" nameId="yvor.1068580320021:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="1567683135099906506" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906507">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906508">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906509">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906510">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906511">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906490" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906512">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906513">
                      <property name="value" nameId="yvor.1068580320021:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="1567683135099906514" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906515">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906516">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906517">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906518">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906519">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906520">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906490" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906521">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906522">
                      <property name="value" nameId="yvor.1068580320021:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="1567683135099906523" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906524">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906525">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906526">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906527">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906528">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906529">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906490" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906530">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906531">
                      <property name="value" nameId="yvor.1068580320021:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetElementOperation" typeId="yvix.1162934736510:7" id="1567683135099906532">
                  <node role="argument" roleId="yvix.1162934736511:7" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906533">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906534">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906535">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906536">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906537">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906538">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906539">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906540">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906541">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906542">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906490" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906543">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906544">
                      <property name="value" nameId="yvor.1068580320021:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetElementOperation" typeId="yvix.1162934736510:7" id="1567683135099906545">
                  <node role="argument" roleId="yvix.1162934736511:7" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906546">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906547">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906548">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906549">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906550">
                    <property name="value" nameId="yvor.1068580320021:3" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906551">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906552">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906553">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906554">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906555">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906490" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906556">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906557">
                      <property name="value" nameId="yvor.1068580320021:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetElementOperation" typeId="yvix.1162934736510:7" id="1567683135099906558">
                  <node role="argument" roleId="yvix.1162934736511:7" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906559">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906560">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906561">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906452" resolveInfo="chain" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906562">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906563">
                    <property name="value" nameId="yvor.1068580320021:3" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" roleId="yvol.1171931858462" type="yvol.TestMethod" typeId="yvol.1171931690126" id="1567683135099906564">
        <property name="methodName" nameId="yvol.1171931690128" value="simpleFourLeyers" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906565" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906566" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906567">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906568">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906569">
              <property name="name" nameId="yvnu.1169194664001:0" value="simpleGraph" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906570">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1567683135099906571">
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="35o0.3437556975695846540" resolveInfo="GraphsForLayers" />
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="35o0.3437556975695846541" resolveInfo="simpleFourLayersGraph" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="920414672219866117">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="920414672219866118">
              <property name="name" nameId="yvnu.1169194664001:0" value="layers" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="920414672219866119">
                <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219866120">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
                </node>
                <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219866121">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                </node>
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="920414672219866122">
                <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="920414672219866123">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="nz5.5180427534211916791" resolveInfo="NodeMap" />
                  <node role="typeParameter" roleId="yvor.1212687122400:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219866124">
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                  </node>
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866153">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="920414672219866126">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="920414672219866127">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="920414672219866128">
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866129">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="920414672219866118" resolveInfo="layers" />
                </node>
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="920414672219866130">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866154">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="920414672219866132">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866133">
                      <property name="value" nameId="yvor.1068580320021:3" value="0" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866134">
                <property name="value" nameId="yvor.1068580320021:3" value="0" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="920414672219866135">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="920414672219866136">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="920414672219866137">
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866138">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="920414672219866118" resolveInfo="layers" />
                </node>
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="920414672219866139">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866155">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="920414672219866141">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866181">
                      <property name="value" nameId="yvor.1068580320021:3" value="1" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866143">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="920414672219866144">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="920414672219866145">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="920414672219866146">
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866147">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="920414672219866118" resolveInfo="layers" />
                </node>
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="920414672219866148">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866156">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="920414672219866150">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866182">
                      <property name="value" nameId="yvor.1068580320021:3" value="2" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866152">
                <property name="value" nameId="yvor.1068580320021:3" value="2" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="920414672219866161">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="920414672219866162">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="920414672219866163">
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866164">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="920414672219866118" resolveInfo="layers" />
                </node>
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="920414672219866165">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866166">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="920414672219866167">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866183">
                      <property name="value" nameId="yvor.1068580320021:3" value="3" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866186">
                <property name="value" nameId="yvor.1068580320021:3" value="3" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="920414672219866170">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="920414672219866171">
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="920414672219866172">
                <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866173">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="920414672219866118" resolveInfo="layers" />
                </node>
                <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="920414672219866174">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="920414672219866175">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="920414672219866176">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866184">
                      <property name="value" nameId="yvor.1068580320021:3" value="4" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="920414672219866185">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1567683135099906623">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1567683135099906624">
              <property name="name" nameId="yvnu.1169194664001:0" value="order" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906625">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.2350882467504388199" resolveInfo="NodeLayeredOrder" />
              </node>
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906626">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1567683135099906627">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1567683135099906628">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.4666079041336346282" resolveInfo="DFSNodeSorter" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906629">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.4666079041336409323" resolveInfo="sortNodes" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906630">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                  </node>
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906631">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="920414672219866118" resolveInfo="layers" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906632">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906633">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906634">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906635">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906636">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906637">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906638">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906639">
                      <property name="value" nameId="yvor.1068580320021:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="1567683135099906640" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906641">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906642">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906643">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906644">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906645">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906646">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906647">
                      <property name="value" nameId="yvor.1068580320021:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="1567683135099906648" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906649">
                <property name="value" nameId="yvor.1068580320021:3" value="2" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906650">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906651">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906652">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906653">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906654">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906655">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906656">
                      <property name="value" nameId="yvor.1068580320021:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="1567683135099906657" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906658">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906659">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906660">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906661">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906662">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906663">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906664">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906665">
                      <property name="value" nameId="yvor.1068580320021:3" value="3" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="1567683135099906666" />
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906667">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906668">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906669">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906670">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906671">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906672">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906673">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906674">
                      <property name="value" nameId="yvor.1068580320021:3" value="0" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetElementOperation" typeId="yvix.1162934736510:7" id="1567683135099906675">
                  <node role="argument" roleId="yvix.1162934736511:7" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906676">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906677">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906678">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906679">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906680">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906681">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906682">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906683">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906684">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906685">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906686">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906687">
                      <property name="value" nameId="yvor.1068580320021:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetElementOperation" typeId="yvix.1162934736510:7" id="1567683135099906688">
                  <node role="argument" roleId="yvix.1162934736511:7" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906689">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906690">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906691">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906692">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906693">
                    <property name="value" nameId="yvor.1068580320021:3" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906694">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906695">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906696">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906697">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906698">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906699">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906700">
                      <property name="value" nameId="yvor.1068580320021:3" value="1" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetElementOperation" typeId="yvix.1162934736510:7" id="1567683135099906701">
                  <node role="argument" roleId="yvix.1162934736511:7" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906702">
                    <property name="value" nameId="yvor.1068580320021:3" value="1" />
                  </node>
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906703">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906704">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906705">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906706">
                    <property name="value" nameId="yvor.1068580320021:3" value="4" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906707">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906708">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906709">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906710">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906711">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906712">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906713">
                      <property name="value" nameId="yvor.1068580320021:3" value="2" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetElementOperation" typeId="yvix.1162934736510:7" id="1567683135099906714">
                  <node role="argument" roleId="yvix.1162934736511:7" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906715">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906716">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906717">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906718">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906719">
                    <property name="value" nameId="yvor.1068580320021:3" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertTrue" typeId="yvol.1171981022339" id="1567683135099906720">
            <node role="condition" roleId="yvol.1171981057159" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906721">
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906722">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906723">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906724">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906624" resolveInfo="order" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906725">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906726">
                      <property name="value" nameId="yvor.1068580320021:3" value="3" />
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetElementOperation" typeId="yvix.1162934736510:7" id="1567683135099906727">
                  <node role="argument" roleId="yvix.1162934736511:7" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906728">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  </node>
                </node>
              </node>
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906729">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1567683135099906730">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906569" resolveInfo="simpleGraph" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906731">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821112501" resolveInfo="getNode" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906732">
                    <property name="value" nameId="yvor.1068580320021:3" value="3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1567683135099906733">
    <node role="field" roleId="yvor.1068390468199:3" type="yvor.FieldDeclaration" typeId="yvor.1068390468200:3" id="1567683135099906734">
      <property name="name" nameId="yvnu.1169194664001:0" value="hasCycles" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PrivateVisibility" typeId="yvor.1146644623116:3" id="1567683135099906735" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1567683135099906736" />
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1567683135099906737">
      <property name="name" nameId="yvnu.1169194664001:0" value="hasCycle" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1567683135099906738" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906739" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906740">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1567683135099906741">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1567683135099906742">
            <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1567683135099906743">
              <property name="value" nameId="yvor.1068580123138:3" value="false" />
            </node>
            <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalInstanceFieldReference" typeId="yvor.7785501532031639928:3" id="1567683135099906744">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906734" resolveInfo="hasCycles" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1567683135099906745">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.LocalInstanceMethodCall" typeId="yvor.3066917033203108594:3" id="1567683135099906746">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="wj3r.1646208389854254821" resolveInfo="doDfs" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1567683135099906747">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906750" resolveInfo="graph" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1567683135099906748">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalInstanceFieldReference" typeId="yvor.7785501532031639928:3" id="1567683135099906749">
            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906734" resolveInfo="hasCycles" />
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1567683135099906750">
        <property name="name" nameId="yvnu.1169194664001:0" value="graph" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906751">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
        </node>
      </node>
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1567683135099906752">
      <property name="name" nameId="yvnu.1169194664001:0" value="processEdge" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906753" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.ProtectedVisibility" typeId="yvor.1146644641414:3" id="1567683135099906754" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906757">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1567683135099906758">
          <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906759">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1567683135099906760">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1567683135099906761">
                <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1567683135099906762">
                  <property name="value" nameId="yvor.1068580123138:3" value="false" />
                </node>
                <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalInstanceFieldReference" typeId="yvor.7785501532031639928:3" id="1567683135099906763">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906734" resolveInfo="hasCycles" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="yvor.1068580123160:3" type="yvor.EqualsExpression" typeId="yvor.1068580123152:3" id="1567683135099906764">
            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1567683135099906765">
              <property name="value" nameId="yvor.1068580320021:3" value="0" />
            </node>
            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvix.MapElement" typeId="yvix.1197932370469:7" id="1567683135099906766">
              <node role="key" roleId="yvix.1197932525128:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906767">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1567683135099906768">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906755" resolveInfo="edge" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906769">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821111989" resolveInfo="getTarget" />
                </node>
              </node>
              <node role="map" roleId="yvix.1197932505799:7" type="yvor.LocalInstanceMethodCall" typeId="yvor.3066917033203108594:3" id="1567683135099906770">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="wj3r.4660430665333277452" resolveInfo="getDfsState" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="annotation" roleId="yvor.1188208488637:3" type="yvor.AnnotationInstance" typeId="yvor.1188207840427:3" id="1567683135099906771">
        <link role="annotation" roleId="yvor.1188208074048:3" targetNodeId="vhgx.~Override" resolveInfo="Override" />
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1567683135099906755">
        <property name="name" nameId="yvnu.1169194664001:0" value="edge" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1646208389854266713">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103292" resolveInfo="Edge" />
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1646208389854266714">
        <property name="name" nameId="yvnu.1169194664001:0" value="source" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1646208389854266715">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
        </node>
      </node>
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906772" />
    <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="1567683135099906773">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1567683135099906774" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906775" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906776" />
    </node>
    <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906777">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="wj3r.4660430665333277271" resolveInfo="Dfs" />
    </node>
  </root>
  <root id="1567683135099906778">
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="1567683135099906779">
      <property name="name" nameId="yvnu.1169194664001:0" value="hasBadEdges" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1567683135099906780" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906781" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906782">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1567683135099906783">
          <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1567683135099906784">
            <property name="name" nameId="yvnu.1169194664001:0" value="node" />
          </node>
          <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906785">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1567683135099906786">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906841" resolveInfo="graph" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906787">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821107956" resolveInfo="getNodes" />
            </node>
          </node>
          <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906788">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1567683135099906789">
              <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1567683135099906790">
                <property name="name" nameId="yvnu.1169194664001:0" value="edge" />
              </node>
              <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906791">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1567683135099906792">
                  <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1567683135099906784" resolveInfo="node" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906793">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821110932" resolveInfo="getOutEdges" />
                </node>
              </node>
              <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906794">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1567683135099906795">
                  <node role="condition" roleId="yvor.1068580123160:3" type="yvor.GreaterThanExpression" typeId="yvor.1081506762703:3" id="4519409331094621132">
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094621135">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4519409331094621136">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906843" resolveInfo="layers" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094621137">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjwb.~Map%dget(java%dlang%dObject)%cjava%dlang%dObject" resolveInfo="get" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094621138">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="4519409331094621139">
                            <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1567683135099906790" resolveInfo="edge" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094621140">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821111981" resolveInfo="getSource" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094621141">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4519409331094621142">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906843" resolveInfo="layers" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094621143">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjwb.~Map%dget(java%dlang%dObject)%cjava%dlang%dObject" resolveInfo="get" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094621144">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="4519409331094621145">
                            <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1567683135099906790" resolveInfo="edge" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094621146">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821111989" resolveInfo="getTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906811">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1567683135099906812">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1567683135099906813">
                        <property name="value" nameId="yvor.1068580123138:3" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="1567683135099906814">
              <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="1567683135099906815">
                <property name="name" nameId="yvnu.1169194664001:0" value="edge" />
              </node>
              <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1567683135099906816">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="1567683135099906817">
                  <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1567683135099906784" resolveInfo="node" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1567683135099906818">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.190081711777510135" resolveInfo="getInEdges" />
                </node>
              </node>
              <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906819">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1567683135099906820">
                  <node role="condition" roleId="yvor.1068580123160:3" type="yvor.GreaterThanExpression" typeId="yvor.1081506762703:3" id="4519409331094621147">
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094621150">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4519409331094621151">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906843" resolveInfo="layers" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094621152">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjwb.~Map%dget(java%dlang%dObject)%cjava%dlang%dObject" resolveInfo="get" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094621153">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="4519409331094621154">
                            <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1567683135099906815" resolveInfo="edge" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094621155">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821111981" resolveInfo="getSource" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094621156">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4519409331094621157">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1567683135099906843" resolveInfo="layers" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094621158">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjwb.~Map%dget(java%dlang%dObject)%cjava%dlang%dObject" resolveInfo="get" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094621159">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="4519409331094621160">
                            <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="1567683135099906815" resolveInfo="edge" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094621161">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821111989" resolveInfo="getTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1567683135099906836">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1567683135099906837">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1567683135099906838">
                        <property name="value" nameId="yvor.1068580123138:3" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1567683135099906839">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1567683135099906840" />
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1567683135099906841">
        <property name="name" nameId="yvnu.1169194664001:0" value="graph" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1567683135099906842">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1567683135099906843">
        <property name="name" nameId="yvnu.1169194664001:0" value="layers" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="920414672219862082">
          <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219862085">
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
          </node>
          <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219862086">
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1567683135099906845" />
  </root>
  <root id="6088058844796081230">
    <node role="staticMethod" roleId="yvor.1070462273904:3" type="yvor.StaticMethodDeclaration" typeId="yvor.1081236700938:3" id="7033456583153162448">
      <property name="name" nameId="yvnu.1169194664001:0" value="hasCrosses" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="7033456583153162586" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="7033456583153162450" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7033456583153162451">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ForStatement" typeId="yvor.1144231330558:3" id="7033456583153162475">
          <node role="variable" roleId="yvor.1144230900587:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="7033456583153162476">
            <property name="name" nameId="yvnu.1169194664001:0" value="layer" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="7033456583153162477" />
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="7033456583153162478">
              <property name="value" nameId="yvor.1068580320021:3" value="0" />
            </node>
          </node>
          <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7033456583153162479">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="7033456583153162480">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="7033456583153162481">
                <property name="name" nameId="yvnu.1169194664001:0" value="dummyNodes" />
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094661747">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7033456583153162484">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094688043">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4519409331094688042">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162458" resolveInfo="order" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094688047">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094688048">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162476" resolveInfo="layer" />
                        </node>
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.WhereOperation" typeId="yvix.1202120902084:7" id="7033456583153162488">
                      <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="7033456583153162489">
                        <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7033456583153162490">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7033456583153162491">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7033456583153162492">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="7033456583153162493">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162495" resolveInfo="it" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="7033456583153162494">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.6088058844796081325" resolveInfo="isDummy" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="7033456583153162495">
                          <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="7033456583153162496" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.ToListOperation" typeId="yvix.1151702311717:7" id="4519409331094661751" />
                </node>
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="4519409331094661743">
                  <node role="elementType" roleId="yvix.1151688676805:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094661745">
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ForStatement" typeId="yvor.1144231330558:3" id="7033456583153162497">
              <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7033456583153162498">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ForStatement" typeId="yvor.1144231330558:3" id="7033456583153162499">
                  <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7033456583153162500">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="7033456583153162501">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="7033456583153162502">
                        <property name="name" nameId="yvnu.1169194664001:0" value="firstTarget" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="7033456583153162503">
                          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
                        </node>
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7033456583153162504">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ListElementAccessExpression" typeId="yvix.1225711141656:7" id="7033456583153162505">
                            <node role="index" roleId="yvix.1225711191269:7" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="7033456583153162506">
                              <property name="value" nameId="yvor.1068580320021:3" value="0" />
                            </node>
                            <node role="list" roleId="yvix.1225711182005:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7033456583153162507">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094661739">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094661738">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162481" resolveInfo="dummyNodes" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetElementOperation" typeId="yvix.1162934736510:7" id="4519409331094661752">
                                  <node role="argument" roleId="yvix.1162934736511:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094661754">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162561" resolveInfo="first" />
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="7033456583153162512">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821110932" resolveInfo="getOutEdges" />
                              </node>
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="7033456583153162513">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821111989" resolveInfo="getTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="7033456583153162514">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="7033456583153162515">
                        <property name="name" nameId="yvnu.1169194664001:0" value="secondTarget" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="7033456583153162516">
                          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
                        </node>
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7033456583153162517">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ListElementAccessExpression" typeId="yvix.1225711141656:7" id="7033456583153162518">
                            <node role="index" roleId="yvix.1225711191269:7" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="7033456583153162519">
                              <property name="value" nameId="yvor.1068580320021:3" value="0" />
                            </node>
                            <node role="list" roleId="yvix.1225711182005:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7033456583153162520">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094661755">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094661756">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162481" resolveInfo="dummyNodes" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetElementOperation" typeId="yvix.1162934736510:7" id="4519409331094661757">
                                  <node role="argument" roleId="yvix.1162934736511:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094661759">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162549" resolveInfo="second" />
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="7033456583153162525">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821110932" resolveInfo="getOutEdges" />
                              </node>
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="7033456583153162526">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821111989" resolveInfo="getTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="4519409331094687696">
                      <node role="condition" roleId="yvor.1068580123160:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="4519409331094687705">
                        <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094687713">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094687712">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162515" resolveInfo="secondTarget" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094687717">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.6088058844796081325" resolveInfo="isDummy" />
                          </node>
                        </node>
                        <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094687700">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094687699">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162502" resolveInfo="firstTarget" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094687704">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.6088058844796081325" resolveInfo="isDummy" />
                          </node>
                        </node>
                      </node>
                      <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4519409331094687698">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="7033456583153162527">
                          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="7033456583153162528">
                            <property name="name" nameId="yvnu.1169194664001:0" value="nextLayerOrder" />
                            <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="7033456583153162529">
                              <node role="elementType" roleId="yvix.1151688676805:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="7033456583153162530">
                                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
                              </node>
                            </node>
                            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7033456583153162531">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="7033456583153162532">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162458" resolveInfo="order" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="7033456583153162533">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.3256072703923739006" resolveInfo="getOrder" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="7033456583153162534">
                                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="7033456583153162535">
                                    <property name="value" nameId="yvor.1068580320021:3" value="1" />
                                  </node>
                                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162536">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162476" resolveInfo="layer" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="7033456583153162537">
                          <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7033456583153162538">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="7033456583153162583">
                              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="7033456583153162585">
                                <property name="value" nameId="yvor.1068580123138:3" value="true" />
                              </node>
                            </node>
                          </node>
                          <node role="condition" roleId="yvor.1068580123160:3" type="yvor.GreaterThanExpression" typeId="yvor.1081506762703:3" id="7033456583153162540">
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7033456583153162541">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162542">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162528" resolveInfo="nextLayerOrder" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetIndexOfOperation" typeId="yvix.1171391069720:7" id="7033456583153162543">
                                <node role="argument" roleId="yvix.1171391518575:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162544">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162502" resolveInfo="firstTarget" />
                                </node>
                              </node>
                            </node>
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7033456583153162545">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162546">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162528" resolveInfo="nextLayerOrder" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetIndexOfOperation" typeId="yvix.1171391069720:7" id="7033456583153162547">
                                <node role="argument" roleId="yvix.1171391518575:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162548">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162515" resolveInfo="secondTarget" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="variable" roleId="yvor.1144230900587:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="7033456583153162549">
                    <property name="name" nameId="yvnu.1169194664001:0" value="second" />
                    <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="7033456583153162550" />
                    <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="7033456583153162551">
                      <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="7033456583153162552">
                        <property name="value" nameId="yvor.1068580320021:3" value="1" />
                      </node>
                      <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162553">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162561" resolveInfo="first" />
                      </node>
                    </node>
                  </node>
                  <node role="condition" roleId="yvor.1144231399730:3" type="yvor.LessThanExpression" typeId="yvor.1081506773034:3" id="7033456583153162554">
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7033456583153162555">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162556">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162481" resolveInfo="dummyNodes" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="7033456583153162557" />
                    </node>
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162558">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162549" resolveInfo="second" />
                    </node>
                  </node>
                  <node role="iteration" roleId="yvor.1144231408325:3" type="yvor.PostfixIncrementExpression" typeId="yvor.1214918800624:3" id="7033456583153162559">
                    <node role="expression" roleId="yvor.1239714902950:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162560">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162549" resolveInfo="second" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="variable" roleId="yvor.1144230900587:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="7033456583153162561">
                <property name="name" nameId="yvnu.1169194664001:0" value="first" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="7033456583153162562" />
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="7033456583153162563">
                  <property name="value" nameId="yvor.1068580320021:3" value="0" />
                </node>
              </node>
              <node role="condition" roleId="yvor.1144231399730:3" type="yvor.LessThanExpression" typeId="yvor.1081506773034:3" id="7033456583153162564">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7033456583153162565">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162566">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162481" resolveInfo="dummyNodes" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="7033456583153162567" />
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162568">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162561" resolveInfo="first" />
                </node>
              </node>
              <node role="iteration" roleId="yvor.1144231408325:3" type="yvor.PostfixIncrementExpression" typeId="yvor.1214918800624:3" id="7033456583153162569">
                <node role="expression" roleId="yvor.1239714902950:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162570">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162561" resolveInfo="first" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="yvor.1144231399730:3" type="yvor.LessThanExpression" typeId="yvor.1081506773034:3" id="7033456583153162571">
            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162572">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162476" resolveInfo="layer" />
            </node>
            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.MinusExpression" typeId="yvor.1068581242869:3" id="7033456583153167818">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="7033456583153167821">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7033456583153162574">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="7033456583153162575">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162458" resolveInfo="order" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="7033456583153162576">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.4660430665333276421" resolveInfo="getMaxLayer" />
                </node>
              </node>
            </node>
          </node>
          <node role="iteration" roleId="yvor.1144231408325:3" type="yvor.PostfixIncrementExpression" typeId="yvor.1214918800624:3" id="7033456583153162578">
            <node role="expression" roleId="yvor.1239714902950:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7033456583153162579">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7033456583153162476" resolveInfo="layer" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="7033456583153162588">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="7033456583153162590">
            <property name="value" nameId="yvor.1068580123138:3" value="false" />
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="7033456583153162458">
        <property name="name" nameId="yvnu.1169194664001:0" value="order" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="7033456583153162459">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.2350882467504388199" resolveInfo="NodeLayeredOrder" />
        </node>
      </node>
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="6088058844796081231" />
  </root>
  <root id="4519409331094619347">
    <node role="field" roleId="yvor.1068390468199:3" type="yvor.FieldDeclaration" typeId="yvor.1068390468200:3" id="4519409331094619356">
      <property name="name" nameId="yvnu.1169194664001:0" value="myReverter" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PrivateVisibility" typeId="yvor.1146644623116:3" id="4519409331094619357" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094619359">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.4660430665333276854" resolveInfo="IEdgeReverter" />
      </node>
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4519409331094619348" />
    <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="4519409331094619349">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="4519409331094619350" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4519409331094619351" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4519409331094619352">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4519409331094619360">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="4519409331094619362">
            <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4519409331094619365">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094619354" resolveInfo="reverter" />
            </node>
            <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalInstanceFieldReference" typeId="yvor.7785501532031639928:3" id="4519409331094619361">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094619356" resolveInfo="myReverter" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="4519409331094619354">
        <property name="name" nameId="yvnu.1169194664001:0" value="reverter" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094619355">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.4660430665333276854" resolveInfo="IEdgeReverter" />
        </node>
      </node>
    </node>
    <node role="implementedInterface" roleId="yvor.1095933932569:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094619353">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.4660430665333276854" resolveInfo="IEdgeReverter" />
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="4519409331094619366">
      <property name="name" nameId="yvnu.1169194664001:0" value="revertEdges" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvix.SetType" typeId="yvix.1226511727824:7" id="4519409331094619367">
        <node role="elementType" roleId="yvix.1226511765987:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094619368">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103292" resolveInfo="Edge" />
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4519409331094619369" />
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="4519409331094619370">
        <property name="name" nameId="yvnu.1169194664001:0" value="g" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094619371">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
        </node>
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4519409331094619372">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="4519409331094619373">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="4519409331094619374">
            <property name="name" nameId="yvnu.1169194664001:0" value="reverted" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.SetType" typeId="yvix.1226511727824:7" id="4519409331094619375">
              <node role="elementType" roleId="yvix.1226511765987:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094619377">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103292" resolveInfo="Edge" />
              </node>
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094619380">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalInstanceFieldReference" typeId="yvor.7785501532031639928:3" id="4519409331094619379">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094619356" resolveInfo="myReverter" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094619384">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.4660430665333276856" resolveInfo="revertEdges" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4519409331094619385">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094619370" resolveInfo="g" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertFalse" typeId="yvol.1171983834376" id="4519409331094619392">
          <node role="condition" roleId="yvol.1171983854940" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094619397">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094619394">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094619396">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1567683135099906773" resolveInfo="CheckCycles" />
              </node>
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094619401">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1567683135099906737" resolveInfo="hasCycle" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4519409331094619402">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094619370" resolveInfo="g" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="4519409331094619387">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094619389">
            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094619374" resolveInfo="reverted" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="4519409331094620043">
    <node role="field" roleId="yvor.1068390468199:3" type="yvor.FieldDeclaration" typeId="yvor.1068390468200:3" id="4519409331094620050">
      <property name="name" nameId="yvnu.1169194664001:0" value="myLayerer" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PrivateVisibility" typeId="yvor.1146644623116:3" id="4519409331094620051" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094620053">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.8567569493821107820" resolveInfo="ILayerer" />
      </node>
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4519409331094620044" />
    <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="4519409331094620045">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="4519409331094620046" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4519409331094620047" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4519409331094620048">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4519409331094620056">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="4519409331094620058">
            <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4519409331094620061">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094620054" resolveInfo="layerer" />
            </node>
            <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalInstanceFieldReference" typeId="yvor.7785501532031639928:3" id="4519409331094620057">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094620050" resolveInfo="myLayerer" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="4519409331094620054">
        <property name="name" nameId="yvnu.1169194664001:0" value="layerer" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094620055">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.8567569493821107820" resolveInfo="ILayerer" />
        </node>
      </node>
    </node>
    <node role="implementedInterface" roleId="yvor.1095933932569:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094620049">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.8567569493821107820" resolveInfo="ILayerer" />
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="4519409331094620062">
      <property name="name" nameId="yvnu.1169194664001:0" value="computeLayers" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="920414672219862059">
        <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219862062">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
        </node>
        <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219862063">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4519409331094620064" />
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="4519409331094620065">
        <property name="name" nameId="yvnu.1169194664001:0" value="graph" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094620066">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
        </node>
      </node>
      <node role="throwsItem" roleId="yvor.1164879685961:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094620067">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~IllegalArgumentException" resolveInfo="IllegalArgumentException" />
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4519409331094620068">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="4519409331094620073">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="4519409331094620074">
            <property name="name" nameId="yvnu.1169194664001:0" value="layers" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="920414672219862065">
              <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219862068">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
              </node>
              <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219862069">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
              </node>
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="920414672219862071">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalInstanceFieldReference" typeId="yvor.7785501532031639928:3" id="920414672219862070">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094620050" resolveInfo="myLayerer" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="920414672219862075">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.8567569493821107822" resolveInfo="computeLayers" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="920414672219862076">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094620065" resolveInfo="graph" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertFalse" typeId="yvol.1171983834376" id="4519409331094620099">
          <node role="condition" roleId="yvol.1171983854940" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="4519409331094620101">
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="1567683135099906778" resolveInfo="CheckLayers" />
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1567683135099906779" resolveInfo="hasBadEdges" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4519409331094620104">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094620065" resolveInfo="graph" />
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094620102">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094620074" resolveInfo="layers" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="4519409331094620085">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094620087">
            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094620074" resolveInfo="layers" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="4519409331094621475">
    <node role="field" roleId="yvor.1068390468199:3" type="yvor.FieldDeclaration" typeId="yvor.1068390468200:3" id="4519409331094621482">
      <property name="name" nameId="yvnu.1169194664001:0" value="mySorter" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PrivateVisibility" typeId="yvor.1146644623116:3" id="4519409331094621483" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094621486">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.190081711777509436" resolveInfo="LayerByLayerNodeSorter" />
      </node>
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4519409331094621476" />
    <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="4519409331094621477">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="4519409331094621478" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4519409331094621479" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4519409331094621480">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4519409331094621487">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="4519409331094621489">
            <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalInstanceFieldReference" typeId="yvor.7785501532031639928:3" id="4519409331094621488">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094621482" resolveInfo="mySorter" />
            </node>
            <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094621492">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094621494">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.190081711777509438" resolveInfo="LayerByLayerNodeSorter" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4519409331094621495">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4519409331094621497">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.190081711777509917" resolveInfo="MedianLayerSorter" />
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="8780938838750221983">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="8780938838750221985">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.4666079041336346282" resolveInfo="DFSNodeSorter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="implementedInterface" roleId="yvor.1095933932569:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094621481">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.4666079041336343296" resolveInfo="INodeSorter" />
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="4519409331094621498">
      <property name="name" nameId="yvnu.1169194664001:0" value="sortNodes" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4519409331094621499" />
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="4519409331094621500">
        <property name="name" nameId="yvnu.1169194664001:0" value="graph" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094621501">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="4519409331094621502">
        <property name="name" nameId="yvnu.1169194664001:0" value="layers" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="920414672219865347">
          <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865350">
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
          </node>
          <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865351">
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094621504">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.2350882467504388199" resolveInfo="NodeLayeredOrder" />
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4519409331094621505">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="4519409331094621511">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="4519409331094621512">
            <property name="name" nameId="yvnu.1169194664001:0" value="order" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="4519409331094621513">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.2350882467504388199" resolveInfo="NodeLayeredOrder" />
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4519409331094621516">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalInstanceFieldReference" typeId="yvor.7785501532031639928:3" id="4519409331094621515">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094621482" resolveInfo="mySorter" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4519409331094621520">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.190081711777509447" resolveInfo="sortNodes" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4519409331094621521">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094621500" resolveInfo="graph" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="4519409331094621523">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094621502" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertFalse" typeId="yvol.1171983834376" id="4519409331094621529">
          <node role="condition" roleId="yvol.1171983854940" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="4519409331094621532">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="7033456583153162448" resolveInfo="hasCrosses" />
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6088058844796081230" resolveInfo="CheckDummyEdgesCrossing" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094621533">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094621512" resolveInfo="order" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="4519409331094621525">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4519409331094621527">
            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094621512" resolveInfo="order" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="4519409331094801569">
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="5180427534211902517">
      <property name="name" nameId="yvnu.1169194664001:0" value="test" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="5180427534211902518" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="5180427534211902519" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5180427534211902520">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="5180427534211902524">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="5180427534211902525">
            <property name="name" nameId="yvnu.1169194664001:0" value="blockGraph" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="5180427534211902526">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5180427534211902527">
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="jh5a.1567683135099906914" resolveInfo="GraphIO" />
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="jh5a.1567683135099906915" resolveInfo="scanGraph" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="5180427534211902528">
                <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="5180427534211902529">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjwb.~Scanner%d&lt;init&gt;(java%dlang%dString)" resolveInfo="Scanner" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="5180427534211902538">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="5180427534211902521" resolveInfo="graphString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="5180427534211903959">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="5180427534211903960">
            <property name="name" nameId="yvnu.1169194664001:0" value="layers" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="920414672219865342">
              <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865345">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
              </node>
              <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="920414672219865346">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
              </node>
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5180427534211903963">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="5180427534211903964">
                <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="5180427534211903965">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.5180427534212031824" resolveInfo="BlockGraphProcessor" />
                </node>
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="5180427534211903966">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.5180427534212031550" resolveInfo="process" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="5180427534211903967">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="5180427534211902525" resolveInfo="blockGraph" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvix.ForEachStatement" typeId="yvix.1153943597977:7" id="5180427534211903969">
          <node role="variable" roleId="yvix.1153944400369:7" type="yvix.ForEachVariable" typeId="yvix.1153944193378:7" id="5180427534211903970">
            <property name="name" nameId="yvnu.1169194664001:0" value="node" />
          </node>
          <node role="inputSequence" roleId="yvix.1153944424730:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5180427534211903974">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="5180427534211903973">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="5180427534211902525" resolveInfo="blockGraph" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="5180427534211903978">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.8567569493821107956" resolveInfo="getNodes" />
            </node>
          </node>
          <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5180427534211903972">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5180427534211903979">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5180427534211903981">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="5180427534211903980">
                  <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="vhgx.~System" resolveInfo="System" />
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="vhgx.~System%dout" resolveInfo="out" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="5180427534211903985">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="5180427534211904004">
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="5180427534211904000">
                      <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="5180427534211903987">
                        <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5180427534211903986">
                          <property name="value" nameId="yvor.1070475926801:3" value="node " />
                        </node>
                        <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5180427534211903995">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="5180427534211903994">
                            <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="5180427534211903970" resolveInfo="node" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="5180427534211903999">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="aequ.4660430665333281569" resolveInfo="getIndex" />
                          </node>
                        </node>
                      </node>
                      <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5180427534211904003">
                        <property name="value" nameId="yvor.1070475926801:3" value=": " />
                      </node>
                    </node>
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5180427534211904008">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="5180427534211904007">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="5180427534211903960" resolveInfo="layers" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="5180427534211904012">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjwb.~Map%dget(java%dlang%dObject)%cjava%dlang%dObject" resolveInfo="get" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvix.ForEachVariableReference" typeId="yvix.1153944233411:7" id="5180427534211904013">
                          <link role="variable" roleId="yvix.1153944258490:7" targetNodeId="5180427534211903970" resolveInfo="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5180427534211904355">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5180427534211904357">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="5180427534211904356">
              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="vhgx.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="vhgx.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="5180427534211904361">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="tiz1.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5180427534211904362">
                <property name="value" nameId="yvor.1070475926801:3" value="----" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="5180427534211902521">
        <property name="name" nameId="yvnu.1169194664001:0" value="graphString" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="5180427534211902522" />
      </node>
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4519409331094801570" />
    <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="4519409331094801571">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="4519409331094801572" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4519409331094801573" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4519409331094801574" />
    </node>
    <node role="testMethodList" roleId="yvol.1171931851044" type="yvol.TestMethodList" typeId="yvol.1171931858461" id="4519409331094801575">
      <node role="testMethod" roleId="yvol.1171931858462" type="yvol.TestMethod" typeId="yvol.1171931690126" id="4519409331094801576">
        <property name="methodName" nameId="yvol.1171931690128" value="test1" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4519409331094801577" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="4519409331094801578" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4519409331094801579">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="4519409331094801580">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="4519409331094801581">
              <property name="name" nameId="yvnu.1169194664001:0" value="graphString" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="4519409331094801582" />
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="4519409331094801584">
                <property name="value" nameId="yvor.1070475926801:3" value="5 4  0 1  1 2  3 2  3 4" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5180427534211902540">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.LocalInstanceMethodCall" typeId="yvor.3066917033203108594:3" id="5180427534211902541">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="5180427534211902517" resolveInfo="test" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="5180427534211902542">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="4519409331094801581" resolveInfo="graphString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" roleId="yvol.1171931858462" type="yvol.TestMethod" typeId="yvol.1171931690126" id="5180427534211902494">
        <property name="methodName" nameId="yvol.1171931690128" value="test2" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="5180427534211902495" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="5180427534211902496" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5180427534211902497">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="5180427534211902500">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="5180427534211902501">
              <property name="name" nameId="yvnu.1169194664001:0" value="graphString" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="5180427534211902502" />
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5180427534211902503">
                <property name="value" nameId="yvor.1070475926801:3" value="7 8  0 1  0 2  1 2  2 3  4 2  4 5   5 6  6 3" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5180427534211902544">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.LocalInstanceMethodCall" typeId="yvor.3066917033203108594:3" id="5180427534211902545">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="5180427534211902517" resolveInfo="test" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="5180427534211902546">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="5180427534211902501" resolveInfo="graphString" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="testMethod" roleId="yvol.1171931858462" type="yvol.TestMethod" typeId="yvol.1171931690126" id="5180427534211903487">
        <property name="methodName" nameId="yvol.1171931690128" value="test3" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="5180427534211903488" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="5180427534211903489" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5180427534211903490">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="5180427534211903503">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="5180427534211903504">
              <property name="name" nameId="yvnu.1169194664001:0" value="graphString" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="5180427534211903505" />
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5180427534211903506">
                <property name="value" nameId="yvor.1070475926801:3" value="8 10  0 1  0 2  1 2  2 3  4 2  4 5   5 6  6 3  6 7  7 3" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5180427534211903507">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.LocalInstanceMethodCall" typeId="yvor.3066917033203108594:3" id="5180427534211903508">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="5180427534211902517" resolveInfo="test" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="5180427534211903509">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="5180427534211903504" resolveInfo="graphString" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="8780938838750221986">
    <node role="field" roleId="yvor.1068390468199:3" type="yvor.FieldDeclaration" typeId="yvor.1068390468200:3" id="8780938838750221993">
      <property name="name" nameId="yvnu.1169194664001:0" value="mySorter" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PrivateVisibility" typeId="yvor.1146644623116:3" id="8780938838750221994" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="8780938838750221996">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.190081711777509436" resolveInfo="LayerByLayerNodeSorter" />
      </node>
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="8780938838750221987" />
    <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="8780938838750221988">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="8780938838750221989" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="8780938838750221990" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8780938838750221991">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="8780938838750222012">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="8780938838750222013">
            <property name="name" nameId="yvnu.1169194664001:0" value="medianSorter" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="8780938838750222014">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.4666079041336343296" resolveInfo="INodeSorter" />
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="8780938838750222016">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="8780938838750222018">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="4519409331094621477" resolveInfo="MedianLayerByLayerSorterProxy" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8780938838750221997">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="8780938838750221999">
            <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="8780938838750222002">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="8780938838750222004">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.190081711777509438" resolveInfo="LayerByLayerNodeSorter" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="8780938838750222005">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="8780938838750222007">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.8780938838750220385" resolveInfo="AdjacentExhangeNodeSorter" />
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="8780938838750222019">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="8780938838750222013" resolveInfo="medianSorter" />
                </node>
              </node>
            </node>
            <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalInstanceFieldReference" typeId="yvor.7785501532031639928:3" id="8780938838750221998">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="8780938838750221993" resolveInfo="mySorter" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="implementedInterface" roleId="yvor.1095933932569:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="8780938838750221992">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.4666079041336343296" resolveInfo="INodeSorter" />
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="8780938838750222021">
      <property name="name" nameId="yvnu.1169194664001:0" value="sortNodes" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="8780938838750222022" />
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="8780938838750222023">
        <property name="name" nameId="yvnu.1169194664001:0" value="graph" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="8780938838750222024">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.8567569493821103298" resolveInfo="Graph" />
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="8780938838750222025">
        <property name="name" nameId="yvnu.1169194664001:0" value="layers" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.MapType" typeId="yvix.1197683403723:7" id="8780938838750222026">
          <node role="keyType" roleId="yvix.1197683466920:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="8780938838750222027">
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="aequ.4671312709908983848" resolveInfo="Node" />
          </node>
          <node role="valueType" roleId="yvix.1197683475734:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="8780938838750222028">
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="8780938838750222029">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.2350882467504388199" resolveInfo="NodeLayeredOrder" />
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8780938838750222030">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="8780938838750222033">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="8780938838750222034">
            <property name="name" nameId="yvnu.1169194664001:0" value="order" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="8780938838750222035">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="trlv.2350882467504388199" resolveInfo="NodeLayeredOrder" />
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8780938838750222036">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalInstanceFieldReference" typeId="yvor.7785501532031639928:3" id="8780938838750222037">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="8780938838750221993" resolveInfo="mySorter" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="8780938838750222038">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="trlv.190081711777509447" resolveInfo="sortNodes" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="8780938838750222039">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="8780938838750222023" resolveInfo="graph" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="8780938838750222040">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="8780938838750222025" resolveInfo="layers" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvol.AssertFalse" typeId="yvol.1171983834376" id="8780938838750222041">
          <node role="condition" roleId="yvol.1171983854940" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="8780938838750222042">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="7033456583153162448" resolveInfo="hasCrosses" />
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="6088058844796081230" resolveInfo="CheckDummyEdgesCrossing" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="8780938838750222043">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="8780938838750222034" resolveInfo="order" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="8780938838750222044">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="8780938838750222045">
            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="8780938838750222034" resolveInfo="order" />
          </node>
        </node>
      </node>
    </node>
  </root>
</model>


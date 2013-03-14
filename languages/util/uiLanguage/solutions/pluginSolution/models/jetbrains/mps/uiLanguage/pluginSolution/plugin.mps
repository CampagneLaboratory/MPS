<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:398aa954-b452-478c-93d3-de5d80fe2afa(jetbrains.mps.uiLanguage.pluginSolution.plugin)">
  <persistence version="7" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="ef7bf5ac-d06c-4342-b11d-e42104eb9343(jetbrains.mps.lang.plugin.standalone)" />
  <language namespace="982eb8df-2c96-4bd7-9963-11712ea622e5(jetbrains.mps.lang.resources)" />
  <import index="tphr" modelUID="r:00000000-0000-4000-0000-011c89590553(jetbrains.mps.uiLanguage.structure)" version="1" />
  <import index="tphs" modelUID="r:00000000-0000-4000-0000-011c8959054c(jetbrains.mps.uiLanguage.behavior)" version="-1" />
  <import index="cu2c" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="ec5l" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" implicit="yes" />
  <import index="tp4k" modelUID="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" version="35" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="tgbt" modelUID="r:c70ee934-afb1-4c02-b6a9-1c4d1908a792(jetbrains.mps.lang.plugin.standalone.structure)" version="1" implicit="yes" />
  <import index="1oap" modelUID="r:03d44d4c-3d65-461c-9085-0f48e9569e59(jetbrains.mps.lang.resources.structure)" version="0" implicit="yes" />
  <roots>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="5487985028841950396">
      <property name="name" nameId="tpck.1169194664001" value="ComponentEditor_Helper" />
    </node>
    <node type="tp4k.EditorTab" typeId="tp4k.3743831881070611759" id="5487985028841950420">
      <property name="name" nameId="tpck.1169194664001" value="Component" />
      <link role="baseNodeConcept" roleId="tp4k.3743831881070611760" targetNodeId="tphr.1202387718766" resolveInfo="ComponentDeclaration" />
    </node>
    <node type="tp4k.EditorTab" typeId="tp4k.3743831881070611759" id="5487985028841950437">
      <property name="commandOnCreate" nameId="tp4k.8204570419206313935" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="Controller" />
      <link role="baseNodeConcept" roleId="tp4k.3743831881070611760" targetNodeId="tphr.1202387718766" resolveInfo="ComponentDeclaration" />
    </node>
    <node type="tgbt.StandalonePluginDescriptor" typeId="tgbt.7520713872864775836" id="7162597690968001880" />
    <node type="1oap.IconResourceBundle" typeId="1oap.8974276187400029885" id="6423088429871243083">
      <property name="name" nameId="tpck.1169194664001" value="uiLangIcons" />
    </node>
  </roots>
  <root id="5487985028841950396">
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="5487985028841950416">
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5487985028841950419" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5487985028841950418" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5487985028841950417" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="5487985028841950397">
      <property name="name" nameId="tpck.1169194664001" value="getBaseNode" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5487985028841950402">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="5487985028841950403">
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="5487985028841950408">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="5487985028841950409">
              <node role="expression" roleId="tpee.1068581517676" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5487985028841950410">
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5487985028841950413">
                  <link role="link" roleId="tp25.1138056516764" targetNodeId="tphr.1202388401455" />
                </node>
                <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="5487985028841950411">
                  <link role="concept" roleId="tp25.1140138128738" targetNodeId="tphr.1202388384249" resolveInfo="ComponentController" />
                  <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5487985028841950412">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5487985028841950398" resolveInfo="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5487985028841950404">
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="5487985028841950406">
              <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="5487985028841950407">
                <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tphr.1202388384249" resolveInfo="ComponentController" />
              </node>
            </node>
            <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="5487985028841950405">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5487985028841950398" resolveInfo="node" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="5487985028841950414">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="5487985028841950415" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tp25.SNodeType" typeId="tp25.1138055754698" id="5487985028841950400" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5487985028841950401" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5487985028841950398">
        <property name="name" nameId="tpck.1169194664001" value="node" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="5487985028841950399" />
      </node>
    </node>
  </root>
  <root id="5487985028841950420">
    <node role="baseNodeBlock" roleId="tp4k.3743831881070611762" type="tp4k.BaseNodeBlock" typeId="tp4k.3743831881070657672" id="5487985028841950421">
      <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="5487985028841950422">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5487985028841950423">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="5487985028841950424">
            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="5487985028841950396" resolveInfo="ComponentEditor_Helper" />
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="5487985028841950397" resolveInfo="getBaseNode" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tp4k.ConceptFunctionParameter_node" typeId="tp4k.1203853034639" id="5487985028841950425" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableBlock" roleId="tp4k.3743831881070657666" type="tp4k.IsApplicableTabBlock" typeId="tp4k.3743831881070613135" id="5487985028841950426">
      <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="5487985028841950427">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5487985028841950428">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5487985028841950429">
            <node role="operand" roleId="tpee.1197027771414" type="tp4k.ConceptFunctionParameter_node" typeId="tp4k.1203853034639" id="5487985028841950430" />
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="5487985028841950431">
              <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="5487985028841950432">
                <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tphr.1202387718766" resolveInfo="ComponentDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="nodesBlock" roleId="tp4k.3743831881070612960" type="tp4k.GetNodeBlock" typeId="tp4k.1203851983563" id="5487985028841950433">
      <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="5487985028841950434">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5487985028841950435">
          <node role="expression" roleId="tpee.1068580123156" type="tp4k.ConceptFunctionParameter_node" typeId="tp4k.1203853034639" id="5487985028841950436" />
        </node>
      </node>
    </node>
    <node role="icon" roleId="tp4k.2386275659558598338" type="1oap.IconResource" typeId="1oap.8974276187400029883" id="6423088429872208971">
      <node role="iconExpression" roleId="1oap.6976585500156684809" type="1oap.IconResourceReference" typeId="1oap.8974276187400029895" id="6423088429872216869">
        <link role="declaration" roleId="1oap.8974276187400029896" targetNodeId="6423088429871243418" resolveInfo="Component" />
      </node>
    </node>
  </root>
  <root id="5487985028841950437">
    <node role="baseNodeBlock" roleId="tp4k.3743831881070611762" type="tp4k.BaseNodeBlock" typeId="tp4k.3743831881070657672" id="5487985028841950438">
      <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="5487985028841950439">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5487985028841950440">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="5487985028841950441">
            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="5487985028841950396" resolveInfo="ComponentEditor_Helper" />
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="5487985028841950397" resolveInfo="getBaseNode" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tp4k.ConceptFunctionParameter_node" typeId="tp4k.1203853034639" id="5487985028841950442" />
          </node>
        </node>
      </node>
    </node>
    <node role="isApplicableBlock" roleId="tp4k.3743831881070657666" type="tp4k.IsApplicableTabBlock" typeId="tp4k.3743831881070613135" id="5487985028841950443">
      <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="5487985028841950444">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5487985028841950445">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5487985028841950446">
            <node role="operand" roleId="tpee.1197027771414" type="tp4k.ConceptFunctionParameter_node" typeId="tp4k.1203853034639" id="5487985028841950447" />
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="5487985028841950448">
              <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="5487985028841950449">
                <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tphr.1202387718766" resolveInfo="ComponentDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="nodesBlock" roleId="tp4k.3743831881070612960" type="tp4k.GetNodeBlock" typeId="tp4k.1203851983563" id="5487985028841950450">
      <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="5487985028841950451">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5487985028841950452">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5487985028841950453">
            <node role="operand" roleId="tpee.1197027771414" type="tp4k.ConceptFunctionParameter_node" typeId="tp4k.1203853034639" id="5487985028841950454" />
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="5487985028841950455">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tphs.1213877495364" resolveInfo="getController" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="createTabBlock" roleId="tp4k.1640281869714699888" type="tp4k.CreateTabBlock" typeId="tp4k.1640281869714699879" id="5487985028841950456">
      <property name="commandOnCreate" nameId="tp4k.1640281869714699886" value="true" />
      <node role="createBlock" roleId="tp4k.1640281869714699884" type="tp4k.NewCreateBlock" typeId="tp4k.7692832593197710972" id="5487985028841950457">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="5487985028841950458">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="5487985028841950459">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="5487985028841950460">
              <property name="name" nameId="tpck.1169194664001" value="controller" />
              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="5487985028841950461">
                <link role="concept" roleId="tp25.1138405853777" targetNodeId="tphr.1202388384249" resolveInfo="ComponentController" />
              </node>
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="5487985028841950462">
                <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="5487985028841950463">
                  <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="5487985028841950464">
                    <link role="concept" roleId="tp25.1138405853777" targetNodeId="tphr.1202388384249" resolveInfo="ComponentController" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5487985028841950465">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="5487985028841950466">
              <node role="rValue" roleId="tpee.1068498886297" type="tp4k.ConceptFunctionParameter_node" typeId="tp4k.1203853034639" id="5487985028841950467" />
              <node role="lValue" roleId="tpee.1068498886295" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5487985028841950468">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="5487985028841950469">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5487985028841950460" resolveInfo="controller" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5487985028841950470">
                  <link role="link" roleId="tp25.1138056516764" targetNodeId="tphr.1202388401455" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5487985028841950471">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5487985028841950472">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5487985028841950473">
                <node role="operand" roleId="tpee.1197027771414" type="tp4k.ConceptFunctionParameter_node" typeId="tp4k.1203853034639" id="5487985028841950474" />
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetModelOperation" typeId="tp25.1143234257716" id="5487985028841950475" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.Model_AddRootOperation" typeId="tp25.1206482823744" id="5487985028841950476">
                <node role="nodeArgument" roleId="tp25.1206482823746" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="5487985028841950477">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5487985028841950460" resolveInfo="controller" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="5487985028841950478">
            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="5487985028841950479">
              <property name="name" nameId="tpck.1169194664001" value="virtualPackage" />
              <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6497389703574368780">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ec5l.~SNodeAccessUtil" resolveInfo="SNodeAccessUtil" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ec5l.~SNodeAccessUtil%dgetProperty(org%djetbrains%dmps%dopenapi%dmodel%dSNode,java%dlang%dString)%cjava%dlang%dString" resolveInfo="getProperty" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.SemanticDowncastExpression" typeId="tp25.1145404486709" id="6497389703574368781">
                  <node role="leftExpression" roleId="tp25.1145404616321" type="tp4k.ConceptFunctionParameter_node" typeId="tp4k.1203853034639" id="6497389703574368782" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="6497389703574368783">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="cu2c.~SNodeUtil%dproperty_BaseConcept_virtualPackage" resolveInfo="property_BaseConcept_virtualPackage" />
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="cu2c.~SNodeUtil" resolveInfo="SNodeUtil" />
                </node>
              </node>
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="5487985028841950480" />
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5487985028841950486">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6497389703574369318">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="ec5l.~SNodeAccessUtil" resolveInfo="SNodeAccessUtil" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ec5l.~SNodeAccessUtil%dsetProperty(org%djetbrains%dmps%dopenapi%dmodel%dSNode,java%dlang%dString,java%dlang%dString)%cvoid" resolveInfo="setProperty" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.SemanticDowncastExpression" typeId="tp25.1145404486709" id="6497389703574369319">
                <node role="leftExpression" roleId="tp25.1145404616321" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6497389703574369320">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5487985028841950460" resolveInfo="controller" />
                </node>
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="6497389703574369321">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="cu2c.~SNodeUtil%dproperty_BaseConcept_virtualPackage" resolveInfo="property_BaseConcept_virtualPackage" />
                <link role="classifier" roleId="tpee.1144433057691" targetNodeId="cu2c.~SNodeUtil" resolveInfo="SNodeUtil" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6497389703574369322">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5487985028841950479" resolveInfo="virtualPackage" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="5487985028841950493">
            <node role="expression" roleId="tpee.1068581517676" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="5487985028841950494">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5487985028841950460" resolveInfo="controller" />
            </node>
          </node>
        </node>
      </node>
      <node role="conceptsBlock" roleId="tp4k.1640281869714699882" type="tp4k.GetConceptsBlock" typeId="tp4k.7692832593197705758" id="5487985028841950495">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="5487985028841950496">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5487985028841950497">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="5487985028841950498">
              <node role="creator" roleId="tpee.1145553007750" type="tp2q.ListCreatorWithInit" typeId="tp2q.1160600644654" id="5487985028841950499">
                <node role="elementType" roleId="tp2q.1237721435807" type="tp25.SConceptType" typeId="tp25.1172420572800" id="5487985028841950500" />
                <node role="initValue" roleId="tp2q.1237721435808" type="tp25.ConceptRefExpression" typeId="tp25.1172424058054" id="5487985028841950501">
                  <link role="conceptDeclaration" roleId="tp25.1172424100906" targetNodeId="tphr.1202388384249" resolveInfo="ComponentController" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="icon" roleId="tp4k.2386275659558598338" type="1oap.IconResource" typeId="1oap.8974276187400029883" id="6423088429872062188">
      <node role="iconExpression" roleId="1oap.6976585500156684809" type="1oap.IconResourceReference" typeId="1oap.8974276187400029895" id="6423088429872159852">
        <link role="declaration" roleId="1oap.8974276187400029896" targetNodeId="6423088429871243345" resolveInfo="Controller" />
      </node>
    </node>
  </root>
  <root id="7162597690968001880" />
  <root id="6423088429871243083">
    <node role="icons" roleId="1oap.8974276187400029886" type="1oap.IconResourceDeclaration" typeId="1oap.8974276187400029888" id="6423088429871243345">
      <property name="name" nameId="tpck.1169194664001" value="Controller" />
      <node role="iconExpression" roleId="1oap.8974276187400029889" type="1oap.IconResourceExpression" typeId="1oap.8974276187400029891" id="6423088429871280747">
        <node role="icon" roleId="1oap.8974276187400029893" type="1oap.IconResource" typeId="1oap.8974276187400029883" id="6423088429871280748">
          <property name="path" nameId="1oap.8974276187400029899" value="${module}../../icons/controller.png" />
        </node>
      </node>
    </node>
    <node role="icons" roleId="1oap.8974276187400029886" type="1oap.IconResourceDeclaration" typeId="1oap.8974276187400029888" id="6423088429871243418">
      <property name="name" nameId="tpck.1169194664001" value="Component" />
      <node role="iconExpression" roleId="1oap.8974276187400029889" type="1oap.IconResourceExpression" typeId="1oap.8974276187400029891" id="6423088429871280643">
        <node role="icon" roleId="1oap.8974276187400029893" type="1oap.IconResource" typeId="1oap.8974276187400029883" id="6423088429871280645">
          <property name="path" nameId="1oap.8974276187400029899" value="${module}../../icons/component.png" />
        </node>
      </node>
    </node>
  </root>
</model>


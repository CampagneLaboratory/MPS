<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:08f902c8-ff6a-43df-b543-532598ca57f7(jetbrains.mps.gwt.client.sandbox)">
  <persistence version="8" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <import index="taj" modelUID="f:java_stub#954c4d77-e24b-4e49-a5a5-5476c966c092#com.google.gwt.core.client(com.google.gwt.core.client@java_stub)" version="-1" />
  <import index="od37" modelUID="f:java_stub#954c4d77-e24b-4e49-a5a5-5476c966c092#com.google.gwt.user.client.ui(com.google.gwt.user.client.ui@java_stub)" version="-1" />
  <import index="63d2" modelUID="f:java_stub#954c4d77-e24b-4e49-a5a5-5476c966c092#com.google.gwt.dom.client(com.google.gwt.dom.client@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="1957929848381708039" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Test" />
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1957929848381708040" nodeInfo="nn" />
    <node role="implementedInterface" roleId="tpee.1095933932569" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1957929848381761287" nodeInfo="in">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="taj.~EntryPoint" resolveInfo="EntryPoint" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="1957929848381708041" nodeInfo="igu">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="1957929848381708042" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1957929848381708043" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1957929848381708044" nodeInfo="nn" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="1957929848381761288" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="onModuleLoad" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1957929848381761289" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="1957929848381761290" nodeInfo="in" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1957929848381761291" nodeInfo="nn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2492830749281986371" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2492830749281986372" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="cmp" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2492830749281986373" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="od37.~Widget" resolveInfo="Widget" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2492830749281986374" nodeInfo="nn">
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2492830749281986405" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2492830749281986401" resolveInfo="createComponent" />
              </node>
              <node role="operand" roleId="tpee.1197027771414" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="2492830749281986377" nodeInfo="nn" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2492830749281986378" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2492830749281986379" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2492830749281986380" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="od37.~RootLayoutPanel" resolveInfo="RootLayoutPanel" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="od37.~RootLayoutPanel%dget()%ccom%dgoogle%dgwt%duser%dclient%dui%dRootLayoutPanel" resolveInfo="get" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2492830749281986381" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="od37.~LayoutPanel%dadd(com%dgoogle%dgwt%duser%dclient%dui%dWidget)%cvoid" resolveInfo="add" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="2492830749281986382" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2492830749281986372" resolveInfo="cmp" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="3998760702358622724" nodeInfo="nn">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="2492830749281986401" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="createComponent" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="2492830749281986403" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2492830749281986406" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="od37.~Widget" resolveInfo="Widget" />
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2492830749281989375" nodeInfo="nn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2492830749281989386" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2492830749281989387" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="lp" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2492830749281989388" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="od37.~DockLayoutPanel" resolveInfo="DockLayoutPanel" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2492830749281989389" nodeInfo="nn">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="2492830749281989390" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="od37.~DockLayoutPanel%d&lt;init&gt;(com%dgoogle%dgwt%ddom%dclient%dStyle$Unit)" resolveInfo="DockLayoutPanel" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.EnumConstantReference" typeId="tpee.1083260308424" id="2492830749281989391" nodeInfo="nn">
                  <link role="enumConstantDeclaration" roleId="tpee.1083260308426" targetNodeId="63d2.~Style$Unit%dEM" resolveInfo="EM" />
                  <link role="enumClass" roleId="tpee.1144432896254" targetNodeId="63d2.~Style$Unit" resolveInfo="Style.Unit" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2492830749281990807" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2492830749281990808" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="label" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2492830749281990809" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="od37.~Label" resolveInfo="Label" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2492830749281990810" nodeInfo="nn">
              <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="2492830749281990811" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="od37.~Label%d&lt;init&gt;()" resolveInfo="Label" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2492830749281990813" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2492830749281990815" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="2492830749281990814" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2492830749281990808" resolveInfo="label" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2492830749281990819" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="od37.~Label%dsetText(java%dlang%dString)%cvoid" resolveInfo="setText" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2492830749281990820" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="This is a test." />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2492830749281990823" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2492830749281990825" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="2492830749281990824" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2492830749281989387" resolveInfo="lp" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2492830749281990829" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="od37.~DockLayoutPanel%dadd(com%dgoogle%dgwt%duser%dclient%dui%dWidget)%cvoid" resolveInfo="add" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="2492830749281990830" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2492830749281990808" resolveInfo="label" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2492830749281990842" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="2492830749281990843" nodeInfo="nn">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2492830749281989387" resolveInfo="lp" />
          </node>
        </node>
      </node>
    </node>
  </root>
</model>


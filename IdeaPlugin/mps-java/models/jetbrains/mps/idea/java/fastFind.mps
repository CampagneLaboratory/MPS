<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:714e1a8b-f5ef-43ca-864f-d3aa5fa2e53e(jetbrains.mps.idea.java.fastFind)">
  <persistence version="7" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <import index="wvgn" modelUID="r:e32ada56-1876-4524-85c0-29075cbd8d32(jetbrains.mps.idea.java.psiStubs)" version="-1" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(java.util@java_stub)" version="-1" />
  <import index="ec5l" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(org.jetbrains.mps.openapi.model@java_stub)" version="-1" />
  <import index="qx6n" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.persistence(org.jetbrains.mps.openapi.persistence@java_stub)" version="-1" />
  <import index="t3eg" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.language(org.jetbrains.mps.openapi.language@java_stub)" version="-1" />
  <import index="s08w" modelUID="f:java_stub#~MPS-core#org.jetbrains.mps.openapi.persistence(org.jetbrains.mps.openapi.persistence@java_stub)" version="-1" />
  <import index="81p4" modelUID="f:java_stub#~IDEA IC#com.intellij.openapi.components(com.intellij.openapi.components@java_stub)" version="-1" />
  <import index="s13e" modelUID="f:java_stub#~MPS-core#org.jetbrains.mps.openapi.model(org.jetbrains.mps.openapi.model@java_stub)" version="-1" />
  <import index="mz8j" modelUID="f:java_stub#~MPS-core#org.jetbrains.mps.util(org.jetbrains.mps.util@java_stub)" version="-1" />
  <import index="yj1e" modelUID="f:java_stub#~IDEA IC#com.intellij.psi(com.intellij.psi@java_stub)" version="-1" />
  <import index="kt3r" modelUID="f:java_stub#~MPS-core#org.jetbrains.mps.openapi.language(org.jetbrains.mps.openapi.language@java_stub)" version="-1" />
  <import index="2vhp" modelUID="f:java_stub#~MPS-core#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="ybzw" modelUID="f:java_stub#~IDEA IC#org.jetbrains.annotations(org.jetbrains.annotations@java_stub)" version="-1" />
  <import index="z8de" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.util(org.jetbrains.mps.openapi.util@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" implicit="yes" />
  <import index="e2lc" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(1.6/java.lang@java_stub)" version="-1" implicit="yes" />
  <import index="wlh2" modelUID="f:java_stub#c1969cf6-0de2-4f84-9a6b-4019c52c438c#jetbrains.mps.idea.core.refactoring(jetbrains.mps.idea.core.refactoring@java_stub)" version="-1" implicit="yes" />
  <import index="k7g4" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" implicit="yes" />
  <import index="ec5m" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" version="-1" implicit="yes" />
  <import index="qx6o" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/org.jetbrains.mps.openapi.persistence@java_stub)" version="-1" implicit="yes" />
  <import index="t3eh" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.language(MPS.OpenAPI/org.jetbrains.mps.openapi.language@java_stub)" version="-1" implicit="yes" />
  <import index="s08x" modelUID="f:java_stub#~MPS-core#org.jetbrains.mps.openapi.persistence(MPS-core/org.jetbrains.mps.openapi.persistence@java_stub)" version="-1" implicit="yes" />
  <import index="81p5" modelUID="f:java_stub#~IDEA IC#com.intellij.openapi.components(IDEA IC/com.intellij.openapi.components@java_stub)" version="-1" implicit="yes" />
  <import index="s13f" modelUID="f:java_stub#~MPS-core#org.jetbrains.mps.openapi.model(MPS-core/org.jetbrains.mps.openapi.model@java_stub)" version="-1" implicit="yes" />
  <import index="yj1f" modelUID="f:java_stub#~IDEA IC#com.intellij.psi(IDEA IC/com.intellij.psi@java_stub)" version="-1" implicit="yes" />
  <import index="kt3s" modelUID="f:java_stub#~MPS-core#org.jetbrains.mps.openapi.language(MPS-core/org.jetbrains.mps.openapi.language@java_stub)" version="-1" implicit="yes" />
  <import index="2vhq" modelUID="f:java_stub#~MPS-core#jetbrains.mps.smodel(MPS-core/jetbrains.mps.smodel@java_stub)" version="-1" implicit="yes" />
  <import index="ybzx" modelUID="f:java_stub#~IDEA IC#org.jetbrains.annotations(IDEA IC/org.jetbrains.annotations@java_stub)" version="-1" implicit="yes" />
  <import index="z8df" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.util(MPS.OpenAPI/org.jetbrains.mps.openapi.util@java_stub)" version="-1" implicit="yes" />
  <roots>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="3335509261457006477">
      <property name="name" nameId="tpck.1169194664001" value="JavaPsiStubsNavigationContributor" />
    </node>
  </roots>
  <root id="3335509261457006477">
    <node role="implementedInterface" roleId="tpee.1095933932569" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6413223424270612688">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="s08x.~NavigationParticipant" resolveInfo="NavigationParticipant" />
    </node>
    <node role="implementedInterface" roleId="tpee.1095933932569" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6413223424270619055">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="81p5.~ApplicationComponent" resolveInfo="ApplicationComponent" />
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3335509261457006478" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="3335509261457006479">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3335509261457006480" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3335509261457006481" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3335509261457006482" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="2221716848402027316">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="findTargets" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2221716848402027317" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="2221716848402027319" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2221716848402027320">
        <property name="name" nameId="tpck.1169194664001" value="kind" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6413223424270627337">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="s08x.~NavigationParticipant$TargetKind" resolveInfo="NavigationParticipant.TargetKind" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2221716848402027322">
        <property name="name" nameId="tpck.1169194664001" value="collection" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2221716848402027323">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="k7g4.~Collection" resolveInfo="Collection" />
          <node role="parameter" roleId="tpee.1109201940907" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3200697098704558101">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="s13f.~SModel" resolveInfo="SModel" />
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2221716848402027325">
        <property name="name" nameId="tpck.1169194664001" value="consumer" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2221716848402027326">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="z8df.~Consumer" resolveInfo="Consumer" />
          <node role="parameter" roleId="tpee.1109201940907" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6665967467964840621">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="s08x.~NavigationParticipant$NavigationTarget" resolveInfo="NavigationParticipant.NavigationTarget" />
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2221716848402027328">
        <property name="name" nameId="tpck.1169194664001" value="processedConsumer" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2221716848402027329">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="z8df.~Consumer" resolveInfo="Consumer" />
          <node role="parameter" roleId="tpee.1109201940907" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6413223424270655810">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="s13f.~SModel" resolveInfo="SModel" />
          </node>
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2221716848402027331">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="3200697098704606065">
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="5895509475574050525">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="5895509475574050953">
              <node role="condition" roleId="tpee.1068580123160" type="tpee.NotExpression" typeId="tpee.1081516740877" id="5895509475574050993">
                <node role="expression" roleId="tpee.1081516765348" type="tpee.InstanceOfExpression" typeId="tpee.1081256982272" id="5895509475574052443">
                  <node role="leftExpression" roleId="tpee.1081256993304" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3200697098704606603">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3200697098704606599" resolveInfo="model" />
                  </node>
                  <node role="classType" roleId="tpee.1081256993305" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="5895509475574052758">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="wvgn.3118313698925873538" resolveInfo="PsiJavaStubModelDescriptor" />
                  </node>
                </node>
              </node>
              <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="5895509475574050955">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ContinueStatement" typeId="tpee.1082113931046" id="5895509475574052967" />
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7414633741220296162" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="6665967467965583166">
              <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7414633741220662734">
                <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="7414633741220702637">
                  <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7414633741220706934">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="6665967467965583589">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6665967467965583585" resolveInfo="javaFile" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7414633741220723610">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="yj1f.~PsiClassOwner%dgetClasses()%ccom%dintellij%dpsi%dPsiClass[]" resolveInfo="getClasses" />
                    </node>
                  </node>
                  <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="7414633741220702638">
                    <property name="name" nameId="tpck.1169194664001" value="psiClass" />
                  </node>
                  <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="7414633741220702640">
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7414633741221949162" />
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7414633741223568635">
                      <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7414633741223568633">
                        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
                        <property name="name" nameId="tpck.1169194664001" value="psiClaz" />
                        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6665967467965437537">
                          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="yj1f.~PsiClass" resolveInfo="PsiClass" />
                        </node>
                        <node role="initializer" roleId="tpee.1068431790190" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="7414633741223575490">
                          <link role="variable" roleId="tp2q.1153944258490" targetNodeId="7414633741220702638" resolveInfo="psiClass" />
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="7414633741221947837">
                      <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="7414633741221947840">
                        <property name="name" nameId="tpck.1169194664001" value="name" />
                        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
                        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7414633741221947835" />
                        <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7414633741221912892">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7414633741223635035">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7414633741223568633" resolveInfo="psiClaz" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7414633741221939078">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="yj1f.~PsiNamedElement%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7414633741221905459">
                      <node role="condition" roleId="tpee.1068580123160" type="tpee.OrExpression" typeId="tpee.1080223426719" id="7414633741221956528">
                        <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7414633741221981908">
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7414633741221992534">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lc.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7414633741221994502">
                              <property name="value" nameId="tpee.1070475926801" value="" />
                            </node>
                          </node>
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7414633741221960943">
                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7414633741221970014">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lc.~String%dtrim()%cjava%dlang%dString" resolveInfo="trim" />
                            </node>
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7414633741221957289">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7414633741221947840" resolveInfo="name" />
                            </node>
                          </node>
                        </node>
                        <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="7414633741221945425">
                          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7414633741221954766">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7414633741221947840" resolveInfo="name" />
                          </node>
                          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="7414633741221945453" />
                        </node>
                      </node>
                      <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7414633741221905461">
                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ContinueStatement" typeId="tpee.1082113931046" id="7414633741221996650" />
                      </node>
                    </node>
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7414633741220762633" />
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7414633741220729953">
                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7414633741220731298">
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7414633741220736583">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="z8df.~Consumer%dconsume(java%dlang%dObject)%cvoid" resolveInfo="consume" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7414633741220737088">
                            <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="7414633741220760523">
                              <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="7414633741220760526">
                                <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lc.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                                <link role="classifier" roleId="tpee.1170346070688" targetNodeId="s08x.~NavigationParticipant$NavigationTarget" resolveInfo="NavigationParticipant.NavigationTarget" />
                                <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7414633741220760527" />
                                <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7414633741220760528">
                                  <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                                  <property name="name" nameId="tpck.1169194664001" value="getPresentation" />
                                  <property name="isFinal" nameId="tpee.1181808852946" value="false" />
                                  <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
                                  <node role="returnType" roleId="tpee.1068580123133" type="tpee.StringType" typeId="tpee.1225271177708" id="7414633741222790495" />
                                  <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7414633741220760529" />
                                  <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7414633741220760532">
                                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7414633741221997359">
                                      <node role="expression" roleId="tpee.1068580123156" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7414633741221997358">
                                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7414633741221947840" resolveInfo="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7414633741220760534">
                                  <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                                  <property name="name" nameId="tpck.1169194664001" value="getConcept" />
                                  <property name="isFinal" nameId="tpee.1181808852946" value="false" />
                                  <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
                                  <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6665967467965536535">
                                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="kt3s.~SConcept" resolveInfo="SConcept" />
                                  </node>
                                  <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7414633741220760535" />
                                  <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7414633741220760800">
                                    <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7414633741222028741">
                                      <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7414633741222040397">
                                        <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7414633741223642407">
                                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7414633741223568633" resolveInfo="psiClaz" />
                                        </node>
                                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7414633741222053152">
                                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="yj1f.~PsiClass%disAnnotationType()%cboolean" resolveInfo="isAnnotationType" />
                                        </node>
                                      </node>
                                      <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7414633741222028743">
                                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="7414633741222056036">
                                          <node role="expression" roleId="tpee.1068581517676" type="tpee.CastExpression" typeId="tpee.1070534934090" id="8876418788323259088">
                                            <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8876418788323259083">
                                              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="kt3s.~SConcept" resolveInfo="SConcept" />
                                            </node>
                                            <node role="expression" roleId="tpee.1070534934092" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8876418788323259084">
                                              <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8876418788323259085">
                                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="kt3s.~SConceptRepository%dgetInstance()%corg%djetbrains%dmps%dopenapi%dlanguage%dSConceptRepository" resolveInfo="getInstance" />
                                                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="kt3s.~SConceptRepository" resolveInfo="SConceptRepository" />
                                              </node>
                                              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8876418788323259086">
                                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="kt3s.~SConceptRepository%dgetConcept(java%dlang%dString)%corg%djetbrains%dmps%dopenapi%dlanguage%dSAbstractConcept" resolveInfo="getConcept" />
                                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8876418788323259087">
                                                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="2vhq.~BootstrapLanguages" resolveInfo="BootstrapLanguages" />
                                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2vhq.~BootstrapLanguages%dconcept_baseLanguage_Annotation" resolveInfo="concept_baseLanguage_Annotation" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node role="elsifClauses" roleId="tpee.1206060520071" type="tpee.ElsifClause" typeId="tpee.1206060495898" id="7414633741222089483">
                                        <node role="condition" roleId="tpee.1206060619838" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7414633741222098499">
                                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7414633741223646769">
                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7414633741223568633" resolveInfo="psiClaz" />
                                          </node>
                                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7414633741222123203">
                                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="yj1f.~PsiClass%disInterface()%cboolean" resolveInfo="isInterface" />
                                          </node>
                                        </node>
                                        <node role="statementList" roleId="tpee.1206060644605" type="tpee.StatementList" typeId="tpee.1068580123136" id="7414633741222089485">
                                          <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="7414633741222127277">
                                            <node role="expression" roleId="tpee.1068581517676" type="tpee.CastExpression" typeId="tpee.1070534934090" id="8876418788323259125">
                                              <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8876418788323259120">
                                                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="kt3s.~SConcept" resolveInfo="SConcept" />
                                              </node>
                                              <node role="expression" roleId="tpee.1070534934092" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8876418788323259121">
                                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8876418788323259122">
                                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="t3eh.~SConceptRepository%dgetConcept(java%dlang%dString)%corg%djetbrains%dmps%dopenapi%dlanguage%dSAbstractConcept" resolveInfo="getConcept" />
                                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8876418788323259123">
                                                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="2vhq.~BootstrapLanguages" resolveInfo="BootstrapLanguages" />
                                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2vhq.~BootstrapLanguages%dconcept_baseLanguage_Interface" resolveInfo="concept_baseLanguage_Interface" />
                                                  </node>
                                                </node>
                                                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8876418788323259124">
                                                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="t3eh.~SConceptRepository" resolveInfo="SConceptRepository" />
                                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="t3eh.~SConceptRepository%dgetInstance()%corg%djetbrains%dmps%dopenapi%dlanguage%dSConceptRepository" resolveInfo="getInstance" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node role="elsifClauses" roleId="tpee.1206060520071" type="tpee.ElsifClause" typeId="tpee.1206060495898" id="7414633741222136832">
                                        <node role="condition" roleId="tpee.1206060619838" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7414633741222144949">
                                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7414633741223650037">
                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7414633741223568633" resolveInfo="psiClaz" />
                                          </node>
                                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7414633741222169707">
                                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="yj1f.~PsiClass%disEnum()%cboolean" resolveInfo="isEnum" />
                                          </node>
                                        </node>
                                        <node role="statementList" roleId="tpee.1206060644605" type="tpee.StatementList" typeId="tpee.1068580123136" id="7414633741222136834">
                                          <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="7414633741222171550">
                                            <node role="expression" roleId="tpee.1068581517676" type="tpee.CastExpression" typeId="tpee.1070534934090" id="8876418788323259162">
                                              <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8876418788323259157">
                                                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="kt3s.~SConcept" resolveInfo="SConcept" />
                                              </node>
                                              <node role="expression" roleId="tpee.1070534934092" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8876418788323259158">
                                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8876418788323259159">
                                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="t3eh.~SConceptRepository%dgetConcept(java%dlang%dString)%corg%djetbrains%dmps%dopenapi%dlanguage%dSAbstractConcept" resolveInfo="getConcept" />
                                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8876418788323259160">
                                                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="2vhq.~BootstrapLanguages" resolveInfo="BootstrapLanguages" />
                                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2vhq.~BootstrapLanguages%dconcept_baseLanguage_EnumClass" resolveInfo="concept_baseLanguage_EnumClass" />
                                                  </node>
                                                </node>
                                                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8876418788323259161">
                                                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="t3eh.~SConceptRepository" resolveInfo="SConceptRepository" />
                                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="t3eh.~SConceptRepository%dgetInstance()%corg%djetbrains%dmps%dopenapi%dlanguage%dSConceptRepository" resolveInfo="getInstance" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="7414633741222180996">
                                        <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="7414633741222180997">
                                          <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="7414633741222183837">
                                            <node role="expression" roleId="tpee.1068581517676" type="tpee.CastExpression" typeId="tpee.1070534934090" id="8876418788323259199">
                                              <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8876418788323259194">
                                                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="kt3s.~SConcept" resolveInfo="SConcept" />
                                              </node>
                                              <node role="expression" roleId="tpee.1070534934092" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8876418788323259195">
                                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8876418788323259196">
                                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="t3eh.~SConceptRepository%dgetConcept(java%dlang%dString)%corg%djetbrains%dmps%dopenapi%dlanguage%dSAbstractConcept" resolveInfo="getConcept" />
                                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8876418788323259197">
                                                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="2vhq.~BootstrapLanguages" resolveInfo="BootstrapLanguages" />
                                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2vhq.~BootstrapLanguages%dconcept_baseLanguage_ClassConcept" resolveInfo="concept_baseLanguage_ClassConcept" />
                                                  </node>
                                                </node>
                                                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8876418788323259198">
                                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="t3eh.~SConceptRepository%dgetInstance()%corg%djetbrains%dmps%dopenapi%dlanguage%dSConceptRepository" resolveInfo="getInstance" />
                                                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="t3eh.~SConceptRepository" resolveInfo="SConceptRepository" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="7414633741220760802">
                                  <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                                  <property name="name" nameId="tpck.1169194664001" value="getNodeReference" />
                                  <property name="isFinal" nameId="tpee.1181808852946" value="false" />
                                  <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
                                  <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7414633741220760803" />
                                  <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7414633741220760805">
                                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ec5m.~SNodeReference" resolveInfo="SNodeReference" />
                                  </node>
                                  <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7414633741220760806">
                                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7414633741222194509">
                                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7414633741222414888">
                                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7414633741222419720">
                                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="wlh2.~NodePtr%dtoSNodeReference()" resolveInfo="toSNodeReference" />
                                        </node>
                                        <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7414633741222195499">
                                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="wvgn.5108147576656209351" resolveInfo="computeNodePtr" />
                                          <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="wvgn.6481525656078378666" resolveInfo="JavaForeignIdBuilder" />
                                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7414633741223656502">
                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7414633741223568633" resolveInfo="psiClaz" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="7414633741220729952">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2221716848402027325" resolveInfo="consumer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7414633741220689964">
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7414633741220695218">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="wvgn.3118313698926251400" resolveInfo="getJavaFiles" />
                </node>
                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7414633741220671985">
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="7414633741220688107">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="wvgn.1221012164057476018" resolveInfo="getSource" />
                  </node>
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ParenthesizedExpression" typeId="tpee.1079359253375" id="7414633741220663030">
                    <node role="expression" roleId="tpee.1079359253376" type="tpee.CastExpression" typeId="tpee.1070534934090" id="7414633741220663027">
                      <node role="expression" roleId="tpee.1070534934092" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3200697098704606605">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3200697098704606599" resolveInfo="model" />
                      </node>
                      <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7414633741220663273">
                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="wvgn.3118313698925873538" resolveInfo="PsiJavaStubModelDescriptor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="6665967467965583585">
                <property name="name" nameId="tpck.1169194664001" value="javaFile" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3200697098704508745">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="yj1f.~PsiJavaFile" resolveInfo="PsiJavaFile" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7414633741220305033" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="9057399934941782158">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9057399934941783400">
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9057399934941787132">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="z8df.~Consumer%dconsume(java%dlang%dObject)%cvoid" resolveInfo="consume" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3200697098704606607">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3200697098704606599" resolveInfo="model" />
                  </node>
                </node>
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="9057399934941782157">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2221716848402027328" resolveInfo="processedConsumer" />
                </node>
              </node>
            </node>
          </node>
          <node role="iterable" roleId="tpee.1144226360166" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5895509475574050574">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2221716848402027322" resolveInfo="collection" />
          </node>
          <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3200697098704606599">
            <property name="name" nameId="tpck.1169194664001" value="model" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3200697098704647305">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="s13f.~SModel" resolveInfo="SModel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5895509475574774246">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="initComponent" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5895509475574774247" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5895509475574774249" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5895509475574774251">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3335509261455861031">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3335509261455861032">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="9057399934941793833">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qx6o.~PersistenceFacade%dgetInstance()%corg%djetbrains%dmps%dopenapi%dpersistence%dPersistenceFacade" resolveInfo="getInstance" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qx6o.~PersistenceFacade" resolveInfo="PersistenceFacade" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3335509261455861034">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qx6o.~PersistenceFacade%daddNavigationParticipant(org%djetbrains%dmps%dopenapi%dpersistence%dNavigationParticipant)%cvoid" resolveInfo="addNavigationParticipant" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="3335509261455861036" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5895509475574774252">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="disposeComponent" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5895509475574774253" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5895509475574774255" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5895509475574774257">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="9057399934941796046">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9057399934941796047">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="9057399934941796048">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="qx6o.~PersistenceFacade" resolveInfo="PersistenceFacade" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qx6o.~PersistenceFacade%dgetInstance()%corg%djetbrains%dmps%dopenapi%dpersistence%dPersistenceFacade" resolveInfo="getInstance" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9057399934941796049">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="qx6o.~PersistenceFacade%dremoveNavigationParticipant(org%djetbrains%dmps%dopenapi%dpersistence%dNavigationParticipant)%cvoid" resolveInfo="removeNavigationParticipant" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ThisExpression" typeId="tpee.1070475354124" id="9057399934941796050" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="5895509475574774258">
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="getComponentName" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5895509475574774259" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="5895509475574774261">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~String" resolveInfo="String" />
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5895509475574774262">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="ybzx.~NonNls" resolveInfo="NonNls" />
      </node>
      <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="5895509475574774263">
        <link role="annotation" roleId="tpee.1188208074048" targetNodeId="ybzx.~NotNull" resolveInfo="NotNull" />
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5895509475574774266">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5895509475574774268">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="5895509475574774758">
            <property name="value" nameId="tpee.1070475926801" value="Java PSI stubs navigation participant" />
          </node>
        </node>
      </node>
    </node>
  </root>
</model>


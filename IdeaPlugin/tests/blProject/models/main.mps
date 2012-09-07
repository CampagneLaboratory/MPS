<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:cdf0e280-e3c2-44a8-9746-0304f21e463c(main)">
  <persistence version="7" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="-1" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <roots>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7015818220060178316">
      <property name="name" nameId="tpck.1169194664001" value="MainClass" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7015818220060279054">
      <property name="name" nameId="tpck.1169194664001" value="ConcoleUtil" />
    </node>
    <node type="tpee.EnumClass" typeId="tpee.1083245097125" id="7015818220060279072">
      <property name="name" nameId="tpck.1169194664001" value="ProjectKind" />
    </node>
    <node type="tpee.Interface" typeId="tpee.1107796713796" id="7015818220060279086">
      <property name="name" nameId="tpck.1169194664001" value="SimpleMarker" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="2504587702126708206">
      <property name="name" nameId="tpck.1169194664001" value="ComparableTest" />
    </node>
  </roots>
  <root id="7015818220060178316">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7015818220060178317" />
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7015818220060178318">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7015818220060178319" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7015818220060178320" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7015818220060178321">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="8639875392258181209" />
      </node>
    </node>
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="7015818220060178411">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7015818220060178412">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="7015818220060178413">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="7015818220060178414" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7015818220060178415" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7015818220060178416" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7015818220060178417">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7015818220060279068">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="7015818220060279070">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7015818220060279060" resolveInfo="echo" />
            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="7015818220060279054" resolveInfo="ConcoleUtil" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7015818220060279071">
              <property name="value" nameId="tpee.1070475926801" value="hello" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="implementedInterface" roleId="tpee.1095933932569" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="7015818220060279088">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="7015818220060279086" resolveInfo="SimpleMarker" />
    </node>
  </root>
  <root id="7015818220060279054">
    <node role="staticMethod" roleId="tpee.1070462273904" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="7015818220060279060">
      <property name="name" nameId="tpck.1169194664001" value="echo" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7015818220060279061" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7015818220060279062" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7015818220060279063">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="7015818220060279066">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="7015818220060279067">
            <property name="text" nameId="tpee.6329021646629104958" value="TODO System.out.println(), as soon as we support JDK dependency in MPS-plugin" />
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="7015818220060279064">
        <property name="name" nameId="tpck.1169194664001" value="s" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="7015818220060279065" />
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7015818220060279055" />
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7015818220060279056">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7015818220060279057" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7015818220060279058" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7015818220060279059" />
    </node>
  </root>
  <root id="7015818220060279072">
    <node role="enumConstant" roleId="tpee.1083245396908" type="tpee.EnumConstantDeclaration" typeId="tpee.1083245299891" id="7015818220060279081">
      <property name="name" nameId="tpck.1169194664001" value="A" />
      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7015818220060279074" resolveInfo="ProjectKind" />
    </node>
    <node role="enumConstant" roleId="tpee.1083245396908" type="tpee.EnumConstantDeclaration" typeId="tpee.1083245299891" id="7015818220060279084">
      <property name="name" nameId="tpck.1169194664001" value="B" />
      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7015818220060279074" resolveInfo="ProjectKind" />
    </node>
    <node role="enumConstant" roleId="tpee.1083245396908" type="tpee.EnumConstantDeclaration" typeId="tpee.1083245299891" id="7015818220060279085">
      <property name="name" nameId="tpck.1169194664001" value="C" />
      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7015818220060279074" resolveInfo="ProjectKind" />
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7015818220060279073" />
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7015818220060279074">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7015818220060279075" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7015818220060279076" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7015818220060279077" />
    </node>
  </root>
  <root id="7015818220060279086">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7015818220060279087" />
  </root>
  <root id="2504587702126708206">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2504587702126708207" />
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="2504587702126708208">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="2504587702126708209" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2504587702126708210" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2504587702126708211" />
    </node>
    <node role="implementedInterface" roleId="tpee.1095933932569" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2504587702126708214">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Comparable" resolveInfo="Comparable" />
      <node role="parameter" roleId="tpee.1109201940907" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2504587702126708216">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="2504587702126708206" resolveInfo="ComparableTest" />
      </node>
    </node>
    <node role="method" roleId="tpee.1107880067339" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="2504587702126708217">
      <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="compareTo" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2504587702126708218" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.IntegerType" typeId="tpee.1070534370425" id="2504587702126708219" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2504587702126708220">
        <property name="name" nameId="tpck.1169194664001" value="test" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2504587702126708221">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="2504587702126708206" resolveInfo="ComparableTest" />
        </node>
      </node>
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2504587702126708222">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2504587702126708223">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="2504587702126708224">
            <property name="value" nameId="tpee.1068580320021" value="0" />
          </node>
        </node>
      </node>
    </node>
  </root>
</model>


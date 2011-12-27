<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:984811b0-078d-45d7-bf58-fa501204c2fc(jetbrains.mps.testbench.junit.suites)">
  <persistence version="7" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <import index="oh7r" modelUID="r:eea68efb-2953-43f4-848f-9829ac5c7101(jetbrains.mps.testbench.junit.runners)" version="-1" />
  <import index="u67u" modelUID="f:java_stub#83f155ff-422c-4b5a-a2f2-b459302dd215#org.junit.runner(jetbrains.mps.baseLanguage.unitTest.libs/org.junit.runner@java_stub)" version="-1" />
  <import index="aj7d" modelUID="f:java_stub#83f155ff-422c-4b5a-a2f2-b459302dd215#org.junit.runners(jetbrains.mps.baseLanguage.unitTest.libs/org.junit.runners@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" implicit="yes" />
  <roots>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="263837413765000620">
      <property name="name" nameId="tpck.1169194664001" value="DefaultTestSuite" />
    </node>
    <node type="tpee.ClassConcept" typeId="tpee.1068390468198" id="7906452883299946797">
      <property name="name" nameId="tpck.1169194664001" value="ExecuteProjectTests" />
    </node>
  </roots>
  <root id="263837413765000620">
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="263837413765000621" />
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="263837413765000622">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="263837413765000623" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="263837413765000624" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="263837413765000625" />
    </node>
    <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7906452883299946347">
      <link role="annotation" roleId="tpee.1188208074048" targetNodeId="aj7d.~Suite$SuiteClasses" resolveInfo="Suite.SuiteClasses" />
      <node role="value" roleId="tpee.1188214630783" type="tpee.AnnotationInstanceValue" typeId="tpee.1188214545140" id="7906452883299946783">
        <link role="key" roleId="tpee.1188214555875" targetNodeId="aj7d.~Suite$SuiteClasses%dvalue()" resolveInfo="value" />
        <node role="value" roleId="tpee.1188214607812" type="tpee.ArrayLiteral" typeId="tpee.1188220165133" id="7906452883299946796">
          <node role="item" roleId="tpee.1188220173759" type="tpee.ClassifierClassExpression" typeId="tpee.1116615150612" id="7906452883299946804">
            <link role="classifier" roleId="tpee.1116615189566" targetNodeId="7906452883299946797" resolveInfo="ExecuteProjectTests" />
          </node>
        </node>
      </node>
    </node>
    <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="263837413765000626">
      <link role="annotation" roleId="tpee.1188208074048" targetNodeId="u67u.~RunWith" resolveInfo="RunWith" />
      <node role="value" roleId="tpee.1188214630783" type="tpee.ImplicitAnnotationInstanceValue" typeId="tpee.2580416627845338977" id="263837413765000629">
        <link role="key" roleId="tpee.1188214555875" targetNodeId="u67u.~RunWith%dvalue()" resolveInfo="value" />
        <node role="value" roleId="tpee.1188214607812" type="tpee.ClassifierClassExpression" typeId="tpee.1116615150612" id="7906452883299946345">
          <link role="classifier" roleId="tpee.1116615189566" targetNodeId="oh7r.7906452883299897332" resolveInfo="MPSOpenProjectSuite" />
        </node>
      </node>
    </node>
  </root>
  <root id="7906452883299946797">
    <node role="constructor" roleId="tpee.1068390468201" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="7906452883299947298">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="7906452883299947299" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7906452883299947300" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7906452883299947301" />
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="7906452883299946798" />
    <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="7906452883299946809">
      <link role="annotation" roleId="tpee.1188208074048" targetNodeId="u67u.~RunWith" resolveInfo="RunWith" />
      <node role="value" roleId="tpee.1188214630783" type="tpee.ImplicitAnnotationInstanceValue" typeId="tpee.2580416627845338977" id="7906452883299946812">
        <link role="key" roleId="tpee.1188214555875" targetNodeId="u67u.~RunWith%dvalue()" resolveInfo="value" />
        <node role="value" roleId="tpee.1188214607812" type="tpee.ClassifierClassExpression" typeId="tpee.1116615150612" id="8349516052137005768">
          <link role="classifier" roleId="tpee.1116615189566" targetNodeId="oh7r.5503298173333910467" resolveInfo="MPSProjectITestsSuite" />
        </node>
      </node>
    </node>
  </root>
</model>


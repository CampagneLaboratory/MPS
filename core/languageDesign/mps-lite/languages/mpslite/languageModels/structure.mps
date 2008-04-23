<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mpslite.structure">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.structureLanguage" />
  <language namespace="jetbrains.mps.core" />
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <maxImportIndex value="5" />
  <import index="1" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="2" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1" />
  <import index="3" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="5" modelUID="java.lang@java_stub" version="-1" />
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182510906722">
    <property name="name" value="ConceptDeclaration" />
    <property name="rootable" value="false" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1182956098221">
      <property name="name" value="root" />
      <link role="dataType" targetNodeId="1.1082983657063" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1183115106535">
      <property name="name" value="role" />
      <link role="dataType" targetNodeId="1.1082983657063" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1183028098253">
      <property name="name" value="abstract" />
      <link role="dataType" targetNodeId="1.1082983657063" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1197296563912">
      <property name="name" value="overrideTypes" />
      <link role="dataType" targetNodeId="1.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1197458578086">
      <property name="name" value="type" />
      <link role="dataType" targetNodeId="1.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182511234181">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="line" />
      <link role="target" targetNodeId="1182511208797" resolveInfo="Line" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197283589665">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="types" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1197283519038" resolveInfo="TypesBlock" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197459802001">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="supertypes" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1197459516108" resolveInfo="SubtypesBlock" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197370934607">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="behavior" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1197370853948" resolveInfo="Behavior" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197558523529">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="isApplicable" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1197558470599" resolveInfo="IsApplicable_ConceptFunction" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182510947692">
      <property name="role" value="extends" />
      <link role="target" targetNodeId="1182510906722" resolveInfo="NodeTypeDeclaration" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1182510937722">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182511208797">
    <property name="name" value="Line" />
    <property name="package" value="Parts" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182511263160">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="linePart" />
      <link role="target" targetNodeId="1182511214735" resolveInfo="LinePart" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182511214735">
    <property name="name" value="LinePart" />
    <property name="package" value="Parts" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1182845007143">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182511276754">
    <property name="name" value="ConstantLinePart" />
    <property name="package" value="Parts" />
    <link role="extends" targetNodeId="1182511214735" resolveInfo="LinePart" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1182511281427">
      <property name="name" value="text" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182845257603">
      <property name="value" value="constant text" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182511424766">
    <property name="name" value="ChildDeclarationPart" />
    <property name="package" value="Parts" />
    <link role="extends" targetNodeId="1183015764815" resolveInfo="RightTransformablePart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182843917675">
      <property name="value" value="[" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182845867418">
      <property name="value" value="child declaration" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1182512224903">
      <property name="name" value="many" />
      <link role="dataType" targetNodeId="1.1082983657063" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1182859708874">
      <property name="name" value="vertical" />
      <link role="dataType" targetNodeId="1.1082983657063" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182511574977">
      <property name="sourceCardinality" value="0..1" />
      <property name="role" value="type" />
      <link role="target" targetNodeId="1182510906722" resolveInfo="NodeTypeDeclaration" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1182511442830">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182511699557">
    <property name="name" value="PropertyTypeDeclaration" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182847886745">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="mapTo" />
      <link role="target" targetNodeId="2.1082978164218" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1182511748498">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182511753827">
    <property name="name" value="PropertyTypes" />
    <property name="rootable" value="false" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182511762813">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="propertyType" />
      <link role="target" targetNodeId="1182511699557" resolveInfo="PropertyType" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1182511761203">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182511940438">
    <property name="name" value="PropertyDeclarationPart" />
    <property name="package" value="Parts" />
    <link role="extends" targetNodeId="1197546210852" resolveInfo="PropertyPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182844248058">
      <property name="value" value="{" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182845912424">
      <property name="value" value="property declaration" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182511996125">
      <property name="sourceCardinality" value="0..1" />
      <property name="role" value="type" />
      <link role="target" targetNodeId="1182511699557" resolveInfo="PropertyType" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1182511987183">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182512705570">
    <property name="name" value="IndentLinePart" />
    <property name="package" value="Parts" />
    <link role="extends" targetNodeId="1182511214735" resolveInfo="LinePart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182844232508">
      <property name="value" value="indent" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182513065381">
    <property name="name" value="ChildReferencePart" />
    <property name="package" value="Parts" />
    <link role="extends" targetNodeId="1183015764815" resolveInfo="RightTransformablePart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182845879639">
      <property name="value" value="[&lt;{declaration}&gt;]" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182845882656">
      <property name="value" value="child refeference" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182513081632">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="declaration" />
      <link role="target" targetNodeId="1182511424766" resolveInfo="ChildDeclarationPart" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182513114802">
    <property name="name" value="PropertyReferencePart" />
    <property name="package" value="Parts" />
    <link role="extends" targetNodeId="1197546210852" resolveInfo="PropertyPart" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182513125929">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="declaration" />
      <link role="target" targetNodeId="1182511940438" resolveInfo="PropertyDeclarationPart" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182845930320">
      <property name="value" value="{&lt;{declaration}&gt;}" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182845932791">
      <property name="value" value="property reference" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182840239135">
    <property name="name" value="ConceptDeclarations" />
    <property name="rootable" value="true" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1197065569270">
      <property name="name" value="showStructure" />
      <link role="dataType" targetNodeId="1.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1197065585287">
      <property name="name" value="showTypes" />
      <link role="dataType" targetNodeId="1.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1197370504902">
      <property name="name" value="showBehavior" />
      <link role="dataType" targetNodeId="1.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1182840278091">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182840264652">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="conceptDeclaration" />
      <link role="target" targetNodeId="1182510906722" resolveInfo="NodeTypeDeclaration" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182845659293">
    <property name="name" value="ReferenceDeclarationPart" />
    <property name="package" value="Parts" />
    <link role="extends" targetNodeId="1182511214735" resolveInfo="LinePart" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1196694896254">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="scope" />
      <link role="target" targetNodeId="1196693306571" resolveInfo="Scope_ConceptFunction" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1182849973412">
      <property name="name" value="optional" />
      <link role="dataType" targetNodeId="1.1082983657063" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182845809628">
      <property name="role" value="type" />
      <link role="target" targetNodeId="1182510906722" resolveInfo="NodeTypeDeclaration" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182845701266">
      <property name="value" value="&lt;" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182845941777">
      <property name="value" value="reference declaration" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1182845679857">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182846198025">
    <property name="name" value="ReferenceReferencePart" />
    <property name="package" value="Parts" />
    <link role="extends" targetNodeId="1182511214735" resolveInfo="LinePart" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182846238634">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="declaration" />
      <link role="target" targetNodeId="1182845659293" resolveInfo="ReferenceDeclarationPart" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182846208277">
      <property name="value" value="&lt;&lt;{declaration}&gt;&gt;" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182846211419">
      <property name="value" value="reference reference" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1183015764815">
    <property name="name" value="ChildPart" />
    <property name="package" value="Parts" />
    <link role="extends" targetNodeId="1182511214735" resolveInfo="LinePart" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1183118217589">
      <property name="name" value="separator" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1183015797303">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1196683107273">
    <property name="name" value="NodeType" />
    <link role="extends" targetNodeId="3.1068431790189" resolveInfo="Type" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1196683118212">
      <property name="role" value="concept" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1182510906722" resolveInfo="ConceptDeclaration" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1196683316587">
      <property name="value" value="node&lt;...&gt;" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1196683322527">
      <property name="value" value="mpslite's node type" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" resolveInfo="short_description" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1196693306571">
    <property name="name" value="Scope_ConceptFunction" />
    <property name="package" value="ConceptFunctions" />
    <link role="extends" targetNodeId="3.1137021947720" resolveInfo="ConceptFunction" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1196693558022">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1196693342280" resolveInfo="Node_ConceptFunctionParameter" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1197300639049">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1197300615433" resolveInfo="ReferenceNode_ConceptFunctionParameter" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1196693342280">
    <property name="package" value="ConceptFunctions" />
    <property name="name" value="EnclosingNode_ConceptFunctionParameter" />
    <link role="extends" targetNodeId="3.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1196693406478">
      <property name="value" value="enclosingNode" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1196695127754">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1196942255498">
    <property name="name" value="IsInstanceOfOperation" />
    <property name="package" value="QL" />
    <link role="extends" targetNodeId="1196943099028" resolveInfo="MPSLiteOperation" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1196943520786">
      <property name="value" value="is" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1196942262186">
      <property name="role" value="concept" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1182510906722" resolveInfo="ConceptDeclaration" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1196943067963">
    <property name="name" value="MPSLiteOperationExpression" />
    <property name="package" value="QL" />
    <link role="extends" targetNodeId="3.1068431790191" resolveInfo="Expression" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1196943076792">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="expression" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="3.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1196943109625">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="operation" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1196943099028" resolveInfo="MPSLiteOperation" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1196943099028">
    <property name="name" value="MPSLiteOperation" />
    <property name="package" value="QL" />
    <link role="extends" targetNodeId="1.1133920641626" resolveInfo="BaseConcept" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1196943105842">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" resolveInfo="abstract" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1196944316864">
    <property name="package" value="QL" />
    <property name="name" value="PrevSiblingOperation" />
    <link role="extends" targetNodeId="1196943099028" resolveInfo="MPSLiteOperation" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1196944324834">
      <property name="value" value="prevSibling" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1196944351142">
    <property name="package" value="QL" />
    <property name="name" value="NextSiblingOperation" />
    <link role="extends" targetNodeId="1196943099028" resolveInfo="MPSLiteOperation" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1196944361175">
      <property name="value" value="nextSibling" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1196945610125">
    <property name="package" value="QL" />
    <property name="name" value="CastOperation" />
    <link role="extends" targetNodeId="1196943099028" resolveInfo="MPSLiteOperation" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1196945674563">
      <property name="value" value="as(" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1196945678565">
      <property name="value" value="cast to node" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" resolveInfo="short_description" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1196945618157">
      <property name="role" value="castTo" />
      <link role="target" targetNodeId="1182510906722" resolveInfo="ConceptDeclaration" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1196960323808">
    <property name="package" value="QL" />
    <property name="name" value="PropertyAccessOperation" />
    <link role="extends" targetNodeId="1196943099028" resolveInfo="MPSLiteOperation" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1196960343278">
      <property name="role" value="propertyDeclaration" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1182511940438" resolveInfo="PropertyDeclarationPart" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197019840396">
    <property name="package" value="QL" />
    <property name="name" value="ReferenceAccessOperation" />
    <link role="extends" targetNodeId="1196943099028" resolveInfo="MPSLiteOperation" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197033580235">
      <property name="role" value="referenceDeclaration" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1182845659293" resolveInfo="ReferenceDeclarationPart" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197033195235">
    <property name="name" value="NodesType" />
    <link role="extends" targetNodeId="3.1068431790189" resolveInfo="Type" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197033209703">
      <property name="value" value="nodes&lt;...&gt;" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197033209704">
      <property name="value" value="mpslite's nodes type" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" resolveInfo="short_description" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197033204849">
      <property name="role" value="concept" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1182510906722" resolveInfo="ConceptDeclaration" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197034864798">
    <property name="package" value="QL" />
    <property name="name" value="ChildAccessOperation" />
    <link role="extends" targetNodeId="1196943099028" resolveInfo="MPSLiteOperation" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197034873665">
      <property name="role" value="childDeclaration" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1182511424766" resolveInfo="ChildDeclarationPart" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197037750547">
    <property name="package" value="QL" />
    <property name="name" value="ParentOperation" />
    <link role="extends" targetNodeId="1196943099028" resolveInfo="MPSLiteOperation" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197037762456">
      <property name="value" value="parent" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197038476611">
    <property name="package" value="QL" />
    <property name="name" value="AncestorOperation" />
    <link role="extends" targetNodeId="1196943099028" resolveInfo="MPSLiteOperation" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1197044098891">
      <property name="name" value="includeSelf" />
      <link role="dataType" targetNodeId="1.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197038595167">
      <property name="value" value="ancestor" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197038528147">
      <property name="role" value="type" />
      <link role="target" targetNodeId="1182510906722" resolveInfo="ConceptDeclaration" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197282473931">
    <property name="package" value="QL" />
    <property name="name" value="NodeCreator" />
    <link role="extends" targetNodeId="3.1145552809883" resolveInfo="AbstractCreator" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197282555747">
      <property name="role" value="concept" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1182510906722" resolveInfo="ConceptDeclaration" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197282607842">
      <property name="value" value="node&lt;...&gt;" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197283519038">
    <property name="name" value="TypesBlock" />
    <property name="package" value="Types" />
    <link role="extends" targetNodeId="1.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197283534961">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="body" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="3.1068580123136" resolveInfo="StatementList" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197283906949">
    <property name="name" value="ThisNodeExpression" />
    <link role="extends" targetNodeId="3.1068431790191" resolveInfo="Expression" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1197284014491">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197284000532">
      <property name="value" value="this" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197284004316">
      <property name="value" value="this node" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" resolveInfo="short_description" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197284787975">
    <property name="package" value="QL" />
    <property name="name" value="TypeOperation" />
    <link role="extends" targetNodeId="1196943099028" resolveInfo="MPSLiteOperation" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197284807133">
      <property name="value" value="type" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197288238065">
    <property name="package" value="Types" />
    <property name="name" value="AddConstraintStatement" />
    <link role="extends" targetNodeId="3.1068580123157" resolveInfo="Statement" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197297909347">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="left" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="3.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197297912910">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="right" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="3.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1197288262600">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" resolveInfo="abstract" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197288271304">
    <property name="package" value="Types" />
    <property name="name" value="AddEquationStatement" />
    <link role="extends" targetNodeId="1197288238065" resolveInfo="AddConstraintStatement" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1197289986015">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197288299711">
      <property name="value" value="add equation" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197295381879">
    <property name="package" value="Types" />
    <property name="name" value="AddInequationStatement" />
    <link role="extends" targetNodeId="1197288238065" resolveInfo="AddConstraintStatement" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1197295403686">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197295399449">
      <property name="value" value="add inequation" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197297607065">
    <property name="package" value="Types" />
    <property name="name" value="AddComparableConstraintStatement" />
    <link role="extends" targetNodeId="1197288238065" resolveInfo="AddConstraintStatement" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1197298243404">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197297623927">
      <property name="value" value="add comparable constraint" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197300615433">
    <property name="package" value="ConceptFunctions" />
    <property name="name" value="ReferenceNode_ConceptFunctionParameter" />
    <link role="extends" targetNodeId="3.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197300631404">
      <property name="value" value="referenceNode" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1197300635297">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197301549590">
    <property name="package" value="Types" />
    <property name="name" value="ReportErrorStatement" />
    <link role="extends" targetNodeId="3.1068580123157" resolveInfo="Statement" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197301727511">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="errorMessage" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="3.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197301734293">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="nodeWithError" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="3.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197301627187">
      <property name="value" value="report error" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1197301625982">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197370801712">
    <property name="name" value="ConstructorBlock" />
    <property name="package" value="Behavior" />
    <link role="extends" targetNodeId="1.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197370819697">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="body" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="3.1068580123136" resolveInfo="StatementList" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197370853948">
    <property name="name" value="Behavior" />
    <property name="package" value="Behavior" />
    <link role="extends" targetNodeId="1.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197370861199">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="constructor" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1197370801712" resolveInfo="ConstructorBlock" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197379421676">
    <property name="package" value="Parts" />
    <property name="name" value="OptionalPart" />
    <link role="extends" targetNodeId="1182511214735" resolveInfo="LinePart" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197379442834">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="part" />
      <property name="sourceCardinality" value="0..n" />
      <link role="target" targetNodeId="1182511214735" resolveInfo="LinePart" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197379437724">
      <property name="value" value="optional" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197382479649">
    <property name="name" value="IdentifierPropertyTypeDeclaration" />
    <link role="extends" targetNodeId="1182511699557" resolveInfo="PropertyTypeDeclaration" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197382553122">
      <property name="value" value="id" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197459516108">
    <property name="package" value="Types" />
    <property name="name" value="SupertypesBlock" />
    <link role="extends" targetNodeId="1.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197459541609">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="body" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="3.1068580123136" resolveInfo="StatementList" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197469545212">
    <property name="package" value="Parts" />
    <property name="name" value="AccessorPart" />
    <link role="extends" targetNodeId="1182511214735" resolveInfo="LinePart" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197469877946">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="accessorFunction" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1197469763825" resolveInfo="AccessorText_ConceptFunction" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197469627304">
      <property name="value" value="accessor" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197469763825">
    <property name="package" value="ConceptFunctions" />
    <property name="name" value="AccessorText_ConceptFunction" />
    <link role="extends" targetNodeId="3.1137021947720" resolveInfo="ConceptFunction" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1197469815394">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" resolveInfo="conceptFunctionReturnType" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197469834829">
        <link role="classifier" targetNodeId="5.~String" resolveInfo="String" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197546047018">
    <property name="package" value="ConceptFunctions" />
    <property name="name" value="Getter_ConceptFunction" />
    <link role="extends" targetNodeId="3.1137021947720" resolveInfo="ConceptFunction" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1197546075362">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" resolveInfo="conceptFunctionReturnType" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1197546078332">
        <link role="classifier" targetNodeId="5.~String" resolveInfo="String" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197546210852">
    <property name="package" value="Parts" />
    <property name="name" value="PropertyPart" />
    <link role="extends" targetNodeId="1182511214735" resolveInfo="LinePart" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197546238121">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="getterFunction" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1197546047018" resolveInfo="Getter_ConceptFunction" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1197546220791">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" resolveInfo="abstract" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197550112159">
    <property name="name" value="DotConceptDeclaration" />
    <link role="extends" targetNodeId="1182510906722" resolveInfo="ConceptDeclaration" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197550386754">
      <property name="role" value="dotFor" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1182510906722" resolveInfo="ConceptDeclaration" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197550515623">
      <property name="value" value="dot concept" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197553987381">
    <property name="name" value="LeftPartExpression" />
    <link role="extends" targetNodeId="3.1068431790191" resolveInfo="Expression" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1197554001320">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197553996834">
      <property name="value" value="leftPart" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197558470599">
    <property name="package" value="ConceptFunctions" />
    <property name="name" value="IsApplicable_ConceptFunction" />
    <link role="extends" targetNodeId="3.1137021947720" resolveInfo="ConceptFunction" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1197558490586">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1196693342280" resolveInfo="EnclosingNode_ConceptFunctionParameter" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1197558497338">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" resolveInfo="conceptFunctionReturnType" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1197558498278" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197622292463">
    <property name="name" value="BinaryOperationConceptDeclaration" />
    <link role="extends" targetNodeId="1182510906722" resolveInfo="ConceptDeclaration" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197622472776">
      <property name="role" value="operationFor" />
      <link role="target" targetNodeId="1182510906722" resolveInfo="ConceptDeclaration" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1197622561333">
      <property name="name" value="priority" />
      <link role="dataType" targetNodeId="1.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1197622348031">
      <property name="name" value="sign" />
      <link role="dataType" targetNodeId="1.1082983041843" resolveInfo="string" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197622382035">
      <property name="value" value="binary operation" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197631055746">
    <property name="name" value="RightPartExpression" />
    <link role="extends" targetNodeId="3.1068431790191" resolveInfo="Expression" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1197631067278">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197631068702">
      <property name="value" value="rightPart" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
  </node>
</model>


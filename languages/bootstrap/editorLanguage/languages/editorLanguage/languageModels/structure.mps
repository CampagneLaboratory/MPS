<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.bootstrap.editorLanguage.structure">
  <language namespace="jetbrains.mps.bootstrap.structureLanguage" />
  <language namespace="jetbrains.mps.baseLanguage" />
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage" />
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang" />
  <maxImportIndex value="39" />
  <import index="1" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" />
  <import index="3" modelUID="jetbrains.mps.core.structure" />
  <import index="4" modelUID="jetbrains.mps.baseLanguage.structure" />
  <import index="27" modelUID="jetbrains.mps.bootstrap.editorLanguage.structure" />
  <import index="28" modelUID="java.awt.event@java_stub" />
  <import index="29" modelUID="jetbrains.mps.nodeEditor@java_stub" />
  <import index="33" modelUID="jetbrains.mps.smodel@java_stub" />
  <import index="34" modelUID="jetbrains.mps.annotations.structure" />
  <import index="35" modelUID="java.util@java_stub" />
  <import index="36" modelUID="java.lang@java_stub" />
  <import index="37" modelUID="jetbrains.mps.bootstrap.sharedConcepts.structure" />
  <import index="38" modelUID="javax.swing@java_stub" />
  <import index="39" modelUID="java.awt@java_stub" />
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1071666914219">
    <property name="name" value="ConceptEditorDeclaration" />
    <property name="iconPath" value="${language_descriptor}\icons\editor.png" />
    <property name="rootable" value="true" />
    <link role="extends" targetNodeId="1080736578640" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1078153129734">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="0..1" />
      <property name="role" value="inspectedCellModel" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1073389214265" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1158938128496">
      <property name="value" value="concept editor" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1073389214265">
    <property name="name" value="EditorCellModel" />
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.InterfaceConceptReference" id="1173470701199">
      <link role="intfc" targetNodeId="3.1169194658468" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1119645550923">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473854053" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1162839219692">
      <property name="value" value="substituteActionsFactoryId - deprecated" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1162838948922" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1142887637401">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="0..1" />
      <property name="role" value="renderingCondition" />
      <link role="target" targetNodeId="1142886221719" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1139959269582">
      <property name="role" value="actionMap" />
      <link role="target" targetNodeId="1139535219966" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1081339532145">
      <property name="targetCardinality" value="0..n" />
      <property name="sourceCardinality" value="0..1" />
      <property name="role" value="keyMap" />
      <link role="target" targetNodeId="1081293058843" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1164826688380">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="menuDescriptor" />
      <link role="target" targetNodeId="1164824717996" resolveInfo="CellMenu_Composite" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1176810465151">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="cellBackgroundFunction" />
      <link role="target" targetNodeId="1176809959526" resolveInfo="QueryFunction_Color" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1073389214266">
      <property name="name" value="selectable" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="1083928804390" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1101478251453">
      <property name="name" value="drawBrackets" />
      <link role="dataType" targetNodeId="1083928804390" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1075115294281">
      <property name="name" value="conditionId" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1129573164669">
      <property name="name" value="layoutConstraint" />
      <link role="dataType" targetNodeId="1138197387103" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1078832671094">
      <property name="name" value="drawBorder" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="1083928804390" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1102623213256">
      <property name="name" value="bracketsColor" />
      <link role="dataType" targetNodeId="1083952545109" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1139312911783">
      <property name="name" value="cellBackground" />
      <link role="dataType" targetNodeId="1083952545109" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1139312929738">
      <property name="name" value="cellBackgroundQueryId" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1130426512758">
      <property name="name" value="fontStyle" />
      <link role="dataType" targetNodeId="1101211480448" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1130426512759">
      <property name="name" value="fontSize" />
      <link role="dataType" targetNodeId="3.1082983657062" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1130836394969">
      <property name="name" value="underlined" />
      <link role="dataType" targetNodeId="1130847686886" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1130859485024">
      <property name="name" value="attractsFocus" />
      <link role="dataType" targetNodeId="1130926557197" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1140813989553">
      <property name="name" value="rightTransformAnchorTag" />
      <link role="dataType" targetNodeId="1140813780565" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1141849502928">
      <property name="name" value="substituteActionsFactoryId" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1073389446423">
    <property name="name" value="CellModel_Collection" />
    <link role="extends" targetNodeId="1073389214265" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1073389446424">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="childCellModel" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1073389214265" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1106270802874">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="0..1" />
      <property name="role" value="cellLayout" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1106270491082" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1073389446425">
      <property name="name" value="vertical" />
      <property name="propertyType" value="boolean" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1073389446426">
      <property name="name" value="gridLayout" />
      <property name="propertyType" value="boolean" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1139416841293">
      <property name="name" value="usesBraces" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1160590353935">
      <property name="name" value="usesFolding" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377702">
      <property name="value" value="collection" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377703">
      <property name="value" value="collection of cells" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1073389577006">
    <property name="name" value="CellModel_Constant" />
    <link role="extends" targetNodeId="1079353555532" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1073389577007">
      <property name="name" value="text" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1082639509531">
      <property name="name" value="nullText" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377704">
      <property name="value" value="constant" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377705">
      <property name="value" value="text label" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1073389658414">
    <property name="name" value="CellModel_Property" />
    <link role="extends" targetNodeId="1139848536355" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1073389964684">
      <property name="targetCardinality" value="0..n" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="propertyDeclaration" />
      <link role="target" targetNodeId="1.1071489288299" />
      <link role="specializedLink" targetNodeId="1140103550593" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377706">
      <property name="value" value="property" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1073389882823">
    <property name="name" value="CellModel_RefNode" />
    <link role="extends" targetNodeId="1139848536355" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1073389882824">
      <property name="targetCardinality" value="0..n" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="linkDeclaration" />
      <link role="target" targetNodeId="1.1071489288298" />
      <link role="specializedLink" targetNodeId="1140103550593" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377708">
      <property name="value" value="ref.node" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1073390211982">
    <property name="name" value="CellModel_RefNodeList" />
    <link role="extends" targetNodeId="1140524381322" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1145360728033">
      <property name="name" value="reverse" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1073390211987">
      <property name="targetCardinality" value="0..n" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="linkDeclaration" />
      <link role="target" targetNodeId="1.1071489288298" />
      <link role="specializedLink" targetNodeId="1140103550593" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1165347032372">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="elementMenuDescriptor" />
      <link role="target" targetNodeId="1164824717996" resolveInfo="CellMenuDescriptor" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1173177718857">
      <property name="role" value="elementActionMap" />
      <link role="target" targetNodeId="1139535219966" resolveInfo="CellActionMapDeclaration" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377710">
      <property name="value" value="list" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1074767920765">
    <property name="name" value="CellModel_ModelAccess" />
    <link role="extends" targetNodeId="1079353555532" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1176718152741">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="modelAcessor" />
      <link role="target" targetNodeId="1176717996748" resolveInfo="ModelAccessor" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1082638248796">
      <property name="name" value="nullText" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377711">
      <property name="value" value="model access" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377712">
      <property name="value" value="reference to accessor" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1075375595203">
    <property name="name" value="CellModel_Error" />
    <link role="extends" targetNodeId="1079353555532" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1075375595204">
      <property name="name" value="text" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377713">
      <property name="value" value="error" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377714">
      <property name="value" value="red text label" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1078308402140">
    <property name="name" value="CellModel_Custom" />
    <link role="extends" targetNodeId="1073389214265" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1176795024817">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="cellProvider" />
      <link role="target" targetNodeId="1176749715029" resolveInfo="QueryFunction_CellProvider" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377720">
      <property name="value" value="custom" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377721">
      <property name="value" value="reference to cell provider" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1078938745671">
    <property name="name" value="EditorComponentDeclaration" />
    <property name="iconPath" value="${language_descriptor}\icons\editorComponent.png" />
    <property name="rootable" value="true" />
    <link role="extends" targetNodeId="1080736578640" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1158938178950">
      <property name="value" value="editor component" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1078939183254">
    <property name="name" value="CellModel_Component" />
    <link role="extends" targetNodeId="1073389214265" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1078939183255">
      <property name="targetCardinality" value="0..n" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="editorComponent" />
      <link role="target" targetNodeId="1078938745671" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377722">
      <property name="value" value="component" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377723">
      <property name="value" value="reference to editor component" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1079353555532">
    <property name="name" value="CellModel_AbstractLabel" />
    <link role="extends" targetNodeId="1073389214265" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1176889772388">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="cellForegroundFunction" />
      <link role="target" targetNodeId="1176809959526" resolveInfo="QueryFunction_Color" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1119646130993">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473854053" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1079353555534">
      <property name="name" value="editable" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="1083928804390" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1101205477408">
      <property name="name" value="textFgColor" />
      <link role="dataType" targetNodeId="1083952545109" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1079354087578">
      <property name="name" value="textBgColor" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="1083952545109" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1079354108907">
      <property name="name" value="textBgColorSelected" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="1083952545109" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1139247678516">
      <property name="name" value="textFgColorQueryId" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1139247690190">
      <property name="name" value="textBgColorQueryId" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1139247699146">
      <property name="name" value="textBgColorSelectedQueryId" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1080736578640">
    <property name="name" value="BaseEditorComponent" />
    <link role="extends" targetNodeId="1166049232041" resolveInfo="AbstractComponent" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1080736633877">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="cellModel" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1073389214265" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1081293058843">
    <property name="name" value="CellKeyMapDeclaration" />
    <property name="iconPath" value="${language_descriptor}\icons\keyMap.png" />
    <property name="rootable" value="true" />
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.InterfaceConceptReference" id="1173470710781">
      <link role="intfc" targetNodeId="3.1169194658468" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1149937560128">
      <property name="name" value="everyModel" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1139445935125">
      <property name="targetCardinality" value="0..n" />
      <property name="role" value="applicableConcept" />
      <link role="target" targetNodeId="1.1071489090640" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1136930944870">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="item" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1136916919141" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1158938229201">
      <property name="value" value="cell keymap" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.EnumerationDataTypeDeclaration" id="1083928804390">
    <property name="name" value="_YesNoDefault_Enum" />
    <link role="defaultMember" targetNodeId="1083928804393" />
    <link role="memberDataType" targetNodeId="3.1082983041843" />
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1083928804391">
      <property name="name" value="yes" />
      <property name="externalValue" value="yes" />
      <property name="internalValue" value="true" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1083928804392">
      <property name="name" value="no" />
      <property name="externalValue" value="no" />
      <property name="internalValue" value="false" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1083928804393">
      <property name="name" value="none" />
      <property name="externalValue" value="&lt;default&gt;" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.EnumerationDataTypeDeclaration" id="1083952545109">
    <property name="name" value="_Colors_Enum" />
    <link role="defaultMember" targetNodeId="1083952545110" />
    <link role="memberDataType" targetNodeId="3.1082983041843" />
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1083952545110">
      <property name="name" value="none" />
      <property name="externalValue" value="&lt;default&gt;" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1083952545111">
      <property name="name" value="red" />
      <property name="externalValue" value="red" />
      <property name="internalValue" value="red" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1083952545112">
      <property name="name" value="pink" />
      <property name="externalValue" value="pink" />
      <property name="internalValue" value="pink" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1083952545113">
      <property name="name" value="orange" />
      <property name="externalValue" value="orange" />
      <property name="internalValue" value="orange" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1083952545114">
      <property name="name" value="yellow" />
      <property name="externalValue" value="yellow" />
      <property name="internalValue" value="yellow" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1083952545115">
      <property name="name" value="green" />
      <property name="externalValue" value="green" />
      <property name="internalValue" value="green" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1101213169706">
      <property name="name" value="darkGreen" />
      <property name="externalValue" value="dark green" />
      <property name="internalValue" value="DARK_GREEN" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1083952545116">
      <property name="name" value="magenta" />
      <property name="externalValue" value="magenta" />
      <property name="internalValue" value="magenta" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1101213185757">
      <property name="name" value="darkMagenta" />
      <property name="externalValue" value="dark magenta" />
      <property name="internalValue" value="DARK_MAGENTA" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1083952545117">
      <property name="name" value="cyan" />
      <property name="externalValue" value="cyan" />
      <property name="internalValue" value="cyan" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1083952545118">
      <property name="name" value="blue" />
      <property name="externalValue" value="blue" />
      <property name="internalValue" value="blue" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1101209985304">
      <property name="name" value="darkBlue" />
      <property name="externalValue" value="dark blue" />
      <property name="internalValue" value="DARK_BLUE" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1084208529765">
      <property name="name" value="gray" />
      <property name="externalValue" value="gray" />
      <property name="internalValue" value="gray" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1084208529766">
      <property name="name" value="lightGray" />
      <property name="externalValue" value="light gray" />
      <property name="internalValue" value="lightGray" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1084208529767">
      <property name="name" value="darkGray" />
      <property name="externalValue" value="dark gray" />
      <property name="internalValue" value="darkGray" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1139246571096">
      <property name="name" value="query" />
      <property name="externalValue" value="query" />
      <property name="internalValue" value="query" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1088013125922">
    <property name="name" value="CellModel_RefCell" />
    <link role="extends" targetNodeId="1139848536355" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1088013239202">
      <property name="targetCardinality" value="0..n" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="linkDeclaration" />
      <link role="target" targetNodeId="1.1071489288298" />
      <link role="specializedLink" targetNodeId="1140103550593" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1088186146602">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="editorComponent" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1088185857835" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377724">
      <property name="value" value="ref.cell" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1088185857835">
    <property name="name" value="InlineEditorComponent" />
    <link role="extends" targetNodeId="1080736578640" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377726">
      <property name="value" value="in-line editor component" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1088612959204">
    <property name="name" value="CellModel_Alternation" />
    <link role="extends" targetNodeId="1073389214265" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1088765956434">
      <property name="name" value="alternationConditionAspectMethodId" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1088613081987">
      <property name="name" value="vertical" />
      <property name="propertyType" value="boolean" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1145918517974">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="alternationCondition" />
      <link role="target" targetNodeId="1142886221719" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1088612958265">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="ifTrueCellModel" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1073389214265" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1088612973955">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="0..1" />
      <property name="role" value="ifFalseCellModel" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1073389214265" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377727">
      <property name="value" value="alternation" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1107223377728">
      <property name="value" value="cell alternation" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.EnumerationDataTypeDeclaration" id="1101211480448">
    <property name="name" value="_FontStyle_Enum" />
    <link role="memberDataType" targetNodeId="3.1082983041843" />
    <link role="defaultMember" targetNodeId="1101211506174" />
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1101211506174">
      <property name="name" value="none" />
      <property name="externalValue" value="&lt;default&gt;" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1101211523070">
      <property name="name" value="bold" />
      <property name="externalValue" value="bold" />
      <property name="internalValue" value="BOLD" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1101211542532">
      <property name="name" value="italic" />
      <property name="externalValue" value="italic" />
      <property name="internalValue" value="ITALIC" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1101213960346">
      <property name="name" value="boldItalic" />
      <property name="externalValue" value="bold italic" />
      <property name="internalValue" value="BOLD_ITALIC" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1134577855137">
      <property name="name" value="plain" />
      <property name="externalValue" value="plain" />
      <property name="internalValue" value="PLAIN" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1103016434866">
    <property name="name" value="CellModel_JComponent" />
    <link role="extends" targetNodeId="1073389214265" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1176475119347">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="componentProvider" />
      <link role="target" targetNodeId="1176474535556" resolveInfo="QueryFunction_JComponent" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1137941825015">
      <property name="value" value="swing component" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1106270491082">
    <property name="name" value="CellLayout" />
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1106270549637">
    <property name="name" value="CellLayout_Horizontal" />
    <link role="extends" targetNodeId="1106270491082" />
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1106270571710">
    <property name="name" value="CellLayout_Vertical" />
    <link role="extends" targetNodeId="1106270491082" />
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1106270637846">
    <property name="name" value="CellLayout_Flow" />
    <link role="extends" targetNodeId="1106270491082" />
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.EnumerationDataTypeDeclaration" id="1130847686886">
    <property name="name" value="UnderlineStyle" />
    <link role="memberDataType" targetNodeId="3.1082983657062" />
    <link role="defaultMember" targetNodeId="1130847686918" />
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1130847686918">
      <property name="name" value="as_is" />
      <property name="externalValue" value="as is" />
      <property name="internalValue" value="0" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1130847816499">
      <property name="name" value="not_underlined" />
      <property name="externalValue" value="not underlined" />
      <property name="internalValue" value="1" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1130847833453">
      <property name="name" value="underlined" />
      <property name="externalValue" value="underlined" />
      <property name="internalValue" value="2" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.EnumerationDataTypeDeclaration" id="1130926557197">
    <property name="name" value="FocusPolicy" />
    <link role="memberDataType" targetNodeId="3.1082983657062" />
    <link role="defaultMember" targetNodeId="1130926557292" />
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1130926557292">
      <property name="name" value="noAttraction" />
      <property name="externalValue" value="no attraction" />
      <property name="internalValue" value="0" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1130926591919">
      <property name="name" value="attractsFocus" />
      <property name="externalValue" value="attracts focus" />
      <property name="internalValue" value="1" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1130926603060">
      <property name="name" value="firstEditableCell" />
      <property name="externalValue" value="first editable cell" />
      <property name="internalValue" value="2" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1134379236839">
    <property name="name" value="CellModel_AttributedPropertyCell" />
    <link role="extends" targetNodeId="1073389214265" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1134380148394">
      <property name="value" value="attributed property" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1134380159646">
      <property name="value" value="cell for attributed property" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1136564507907">
    <property name="name" value="CellModel_AttributedLinkCell" />
    <link role="extends" targetNodeId="1073389214265" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1136564532725">
      <property name="value" value="attributed link" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1136564532726">
      <property name="value" value="cell for attributed link" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1136916919141">
    <property name="name" value="CellKeyMapItem" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1136916998332">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="1..n" />
      <property name="role" value="keystroke" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1136916976737" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1136917325338">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="0..1" />
      <property name="role" value="isApplicableFunction" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1136917249679" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1136920925604">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="executeFunction" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1136917288805" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1136916941877">
      <property name="name" value="description" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1141091278922">
      <property name="name" value="caretPolicy" />
      <link role="dataType" targetNodeId="1141091053936" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1163507208434">
      <property name="name" value="showInPopup" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1136916976737">
    <property name="name" value="CellKeyMapKeystroke" />
    <link role="extends" targetNodeId="3.1133920641626" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1136923970223">
      <property name="name" value="modifiers" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1136923970224">
      <property name="name" value="keycode" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1136917155755">
    <property name="name" value="CellKeyMap_AbstractFunction" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1161630184985">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1161622981231" resolveInfo="ConceptFunctionParameter_editorContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1137189922872">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137546998352" />
      <node role="target" type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1137189922873">
        <property name="name" value="CellKeyMap_FunctionParm_selectedNode" />
        <link role="extends" targetNodeId="4.1107135704075" />
        <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1137189922876">
          <property name="value" value="node" />
          <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
        </node>
        <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1137189922877">
          <property name="value" value="keymap function parameter" />
          <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
        </node>
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1143487952335">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137546998352" />
      <node role="target" type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1143487955383">
        <property name="name" value="CellKeyMap_FunctionParm_keyEvent" />
        <link role="extends" targetNodeId="4.1107135704075" />
        <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1143490306697">
          <link role="conceptLinkDeclaration" targetNodeId="4.1137545963098" />
          <node role="target" type="jetbrains.mps.baseLanguage.ClassifierType" id="1143490313729">
            <link role="classifier" extResolveInfo="28.[Classifier]KeyEvent" />
          </node>
        </node>
        <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1143488564542">
          <property name="value" value="keyEvent" />
          <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
        </node>
        <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1143488601967">
          <property name="value" value="keymap function parameter" />
          <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
        </node>
      </node>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1136917182663">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1136917249679">
    <property name="name" value="CellKeyMap_IsApplicableFunction" />
    <link role="extends" targetNodeId="1136917155755" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1137545690489">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.BooleanType" id="1141871296431" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1158958783311">
      <property name="value" value="is applicable block" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1136917288805">
    <property name="name" value="CellKeyMap_ExecuteFunction" />
    <link role="extends" targetNodeId="1136917155755" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1158958837093">
      <property name="value" value="execute block" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1137553248617">
    <property name="name" value="CellModel_ConceptProperty" />
    <link role="extends" targetNodeId="1139848536355" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1137553248621">
      <property name="targetCardinality" value="0..n" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="propertyDeclaration" />
      <link role="target" targetNodeId="1.1105725006687" />
      <link role="specializedLink" targetNodeId="1140103550593" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1137553248622">
      <property name="value" value="concept property" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.EnumerationDataTypeDeclaration" id="1138197387103">
    <property name="name" value="_Layout_Constraints_Enum" />
    <link role="memberDataType" targetNodeId="3.1082983041843" />
    <link role="defaultMember" targetNodeId="1138197631095" />
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1138197387339">
      <property name="name" value="punctuation" />
      <property name="externalValue" value="punctuation" />
      <property name="internalValue" value="punctuation" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1138197619454">
      <property name="name" value="noflow" />
      <property name="externalValue" value="noflow" />
      <property name="internalValue" value="noflow" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1138197631095">
      <property name="name" value="none" />
      <property name="externalValue" value="&lt;none&gt;" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1139535219966">
    <property name="name" value="CellActionMapDeclaration" />
    <property name="iconPath" value="${language_descriptor}\icons\actionMap.png" />
    <property name="rootable" value="true" />
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.InterfaceConceptReference" id="1173470751204">
      <link role="intfc" targetNodeId="3.1169194658468" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1139535219968">
      <property name="targetCardinality" value="0..n" />
      <property name="role" value="applicableConcept" />
      <link role="target" targetNodeId="1.1071489090640" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1139535219969">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="item" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1139535280617" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1158938242046">
      <property name="value" value="cell action map" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1139535280617">
    <property name="name" value="CellActionMapItem" />
    <link role="extends" targetNodeId="3.1133920641626" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1139537298254">
      <property name="name" value="description" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1139535298778">
      <property name="name" value="actionId" />
      <link role="dataType" targetNodeId="1139535328871" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1139535280620">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="executeFunction" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1139535439104" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.EnumerationDataTypeDeclaration" id="1139535328871">
    <property name="name" value="CellActionId" />
    <link role="memberDataType" targetNodeId="3.1082983041843" />
    <link role="defaultMember" targetNodeId="1139535329028" />
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1139535329028">
      <property name="name" value="right_transform" />
      <property name="externalValue" value="RIGHT_TRANSFORM" />
      <property name="internalValue" value="right_transform_action_id" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1139535387060">
      <property name="name" value="delete" />
      <property name="externalValue" value="DELETE" />
      <property name="internalValue" value="delete_action_id" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1139535439104">
    <property name="name" value="CellActionMap_ExecuteFunction" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1161630496596">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1161622981231" resolveInfo="ConceptFunctionParameter_editorContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1139535439111">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137546998352" />
      <node role="target" type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1139535439112">
        <property name="name" value="CellActionMap_FunctionParm_selectedNode" />
        <link role="extends" targetNodeId="4.1107135704075" />
        <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1139535439113">
          <property name="value" value="node" />
          <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
        </node>
        <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1139535439114">
          <property name="value" value="selected node (action map function parameter)" />
          <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
        </node>
      </node>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1158959403408">
      <property name="value" value="execute block" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.EnumerationDataTypeDeclaration" id="1139744471051">
    <property name="name" value="_ImageAlignment_Enum" />
    <link role="memberDataType" targetNodeId="3.1082983041843" />
    <link role="defaultMember" targetNodeId="1139744471411" />
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1139744471411">
      <property name="name" value="alignmentJustify" />
      <property name="externalValue" value="justify" />
      <property name="internalValue" value="justify" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1139744531598">
      <property name="name" value="alignmentCenter" />
      <property name="externalValue" value="center" />
      <property name="internalValue" value="center" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1139744545740">
      <property name="name" value="alignmentTile" />
      <property name="externalValue" value="tile" />
      <property name="internalValue" value="tile" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1139744628335">
    <property name="name" value="CellModel_Image" />
    <link role="extends" targetNodeId="1073389214265" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1139746504291">
      <property name="name" value="imageFile" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1139746517526">
      <property name="name" value="imageQueryId" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1139858284555">
      <property name="name" value="descent" />
      <link role="dataType" targetNodeId="3.1082983657062" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1139746404569">
      <property name="value" value="image" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1139746422633">
      <property name="value" value="cell for an image" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1139848536355">
    <property name="name" value="CellModel_WithRole" />
    <link role="extends" targetNodeId="1079353555532" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1139849308084">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473854053" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1139852716018">
      <property name="name" value="noTargetText" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1140017977771">
      <property name="name" value="readOnly" />
      <property name="propertyType" value="boolean" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1140114345053">
      <property name="name" value="allowEmptyText" />
      <property name="propertyType" value="boolean" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1140103550593">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="relationDeclaration" />
      <link role="target" targetNodeId="3.1133920641626" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1140524381322">
    <property name="name" value="CellModel_ListWithRole" />
    <link role="extends" targetNodeId="1139848536355" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1140524467909">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473854053" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1140524464359">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="0..1" />
      <property name="role" value="emptyCellModel" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1073389214265" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1140524464360">
      <property name="targetCardinality" value="1" />
      <property name="sourceCardinality" value="0..1" />
      <property name="role" value="cellLayout" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1106270491082" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1140524450554">
      <property name="name" value="vertical" />
      <property name="propertyType" value="boolean" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1140524450555">
      <property name="name" value="gridLayout" />
      <property name="propertyType" value="boolean" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1140524450556">
      <property name="name" value="usesBraces" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1160590307797">
      <property name="name" value="usesFolding" />
      <link role="dataType" targetNodeId="3.1082983657063" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1140524450557">
      <property name="name" value="separatorText" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1140524450558">
      <property name="name" value="nodeFactoryId" />
      <property name="propertyType" value="string" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1156252885376">
      <property name="name" value="separatorLayoutConstraint" />
      <link role="dataType" targetNodeId="1138197387103" resolveInfo="_Layout_Constraints_Enum" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.EnumerationDataTypeDeclaration" id="1140813780565">
    <property name="name" value="RightTransformAnchorTag" />
    <link role="memberDataType" targetNodeId="3.1082983041843" />
    <link role="defaultMember" targetNodeId="1140813780644" />
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1140813780644">
      <property name="name" value="none" />
      <property name="externalValue" value="&lt;none&gt;" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1140813835051">
      <property name="name" value="default_" />
      <property name="externalValue" value="DEFAULT" />
      <property name="internalValue" value="default_RTransform" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1140813898505">
      <property name="name" value="ext_1" />
      <property name="externalValue" value="EXT 1" />
      <property name="internalValue" value="ext_1_RTransform" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1140813939727">
      <property name="name" value="ext_2" />
      <property name="externalValue" value="EXT 2" />
      <property name="internalValue" value="ext_2_RTransform" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1140813947731">
      <property name="name" value="ext_3" />
      <property name="externalValue" value="EXT 3" />
      <property name="internalValue" value="ext_3_RTransform" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1140813957048">
      <property name="name" value="ext_4" />
      <property name="externalValue" value="EXT 4" />
      <property name="internalValue" value="ext_4_RTransform" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1140813967505">
      <property name="name" value="ext_5" />
      <property name="externalValue" value="EXT 5" />
      <property name="internalValue" value="ext_5_RTransform" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.EnumerationDataTypeDeclaration" id="1141091053936">
    <property name="name" value="CellKeyMapCaretPolicy" />
    <link role="memberDataType" targetNodeId="3.1082983041843" />
    <link role="defaultMember" targetNodeId="1141091054266" />
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1141091054266">
      <property name="name" value="ANY_POSITION" />
      <property name="externalValue" value="ANY_POSITION" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1141091172402">
      <property name="name" value="FIRST_POSITION" />
      <property name="externalValue" value="FIRST_POSITION" />
      <property name="internalValue" value="caret_at_first_position" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1141091209420">
      <property name="name" value="LAST_POSITION" />
      <property name="externalValue" value="LAST_POSITION" />
      <property name="internalValue" value="caret_at_last_position" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1143573566373">
      <property name="name" value="INTERMEDIATE_POSITION" />
      <property name="externalValue" value="INTERMEDIATE_POSITION" />
      <property name="internalValue" value="caret_at_intermediate_position" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1142886221719">
    <property name="name" value="QueryFunction_NodeCondition" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1145652669910">
      <property name="value" value="condition" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1145665848571">
      <property name="value" value="embedded block of code" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1142886758850">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.BooleanType" id="1142886762757" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1161627665731">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622878565" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176473889746">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1142886811589" resolveInfo="ConceptFunctionParameter_node" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1142886811589">
    <property name="name" value="ConceptFunctionParameter_node" />
    <link role="extends" targetNodeId="4.1107135704075" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1142886811590">
      <property name="value" value="node" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1142886811591">
      <property name="value" value="function parameter" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1176492724289">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.EnumerationDataTypeDeclaration" id="1143891911797">
    <property name="name" value="_LeftRight_Enum" />
    <link role="memberDataType" targetNodeId="3.1082983657063" />
    <link role="defaultMember" targetNodeId="1143891911798" />
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1143891911798">
      <property name="name" value="left" />
      <property name="externalValue" value="left" />
      <property name="internalValue" value="true" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.EnumerationMemberDeclaration" id="1143891954220">
      <property name="name" value="right" />
      <property name="externalValue" value="right" />
      <property name="internalValue" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1149850725784">
    <property name="name" value="CellModel_AttributedNodeCell" />
    <link role="extends" targetNodeId="1073389214265" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1149850757778">
      <property name="value" value="attributed node" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1149850757779">
      <property name="value" value="cell for attributed node" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1160493135005">
    <property name="name" value="CellMenuPart_PropertyValues_GetValues" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1160500373903">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.ext.collections.lang.ListType" id="1160674633356">
        <node role="elementType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1160674637514">
          <link role="classifier" extResolveInfo="36.[Classifier]String" />
        </node>
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1161629196402">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622878565" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1161629292561">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622753914" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1164848564365">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613822479" resolveInfo="CellMenuPart_Abstract_editedNode" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1160493189132">
      <property name="value" value="property values" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1161622981231">
    <property name="name" value="ConceptFunctionParameter_editorContext" />
    <link role="extends" targetNodeId="4.1107135704075" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1161622981232">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545963098" />
      <node role="target" type="jetbrains.mps.baseLanguage.ClassifierType" id="1161622981233">
        <link role="classifier" extResolveInfo="29.[Classifier]EditorContext" />
      </node>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1161622981234">
      <property name="value" value="editorContext" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1161622981235">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1162497113192">
    <property name="name" value="CellMenuPart_ReplaceChild_currentChild" />
    <link role="extends" targetNodeId="4.1107135704075" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1162497113193">
      <property name="value" value="currentChild" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1162497113194">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1162498275506">
    <property name="name" value="CellMenuPart_ReplaceChild_defaultConceptOfChild" />
    <link role="extends" targetNodeId="4.1107135704075" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1162498325651">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545963098" />
      <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1162498330044">
        <link role="concept" targetNodeId="1.1071489090640" />
      </node>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1162498275507">
      <property name="value" value="defaultConceptOfChild" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1162498275508">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1163613035599">
    <property name="name" value="CellMenuPart_AbstractGroup_Query" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1163613035600">
      <property name="value" value="get objects" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1163613035601">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613822479" resolveInfo="CellMenu_RefCell_FromObjects_currentReferenceNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1163613035604">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622878565" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1163613035605">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622753914" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1163613131943">
    <property name="name" value="CellMenuPart_ReplaceNode_Group_Create" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1163711457917">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545148427" />
      <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1163711460075" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1163613131944">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613549566" resolveInfo="CellMenu_RefCell_FromObjects_ParameterObject" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1163613915977">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613822479" resolveInfo="CellMenu_RefCell_FromObjects_currentReferenceNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1163613131948">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622665029" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1163613131949">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622878565" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1163613131950">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622753914" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1163613131951">
      <property name="value" value="create replacement node" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1163613549566">
    <property name="name" value="CellMenuPart_AbstractGroup_parameterObject" />
    <link role="extends" targetNodeId="4.1107135704075" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1163613549567">
      <property name="value" value="parameterObject" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1163613549568">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1163613822479">
    <property name="name" value="CellMenuPart_Abstract_editedNode" />
    <link role="extends" targetNodeId="4.1107135704075" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1163613822480">
      <property name="value" value="node" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1163613822481">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1164052439493">
    <property name="name" value="CellMenuPart_AbstractGroup_MatchingText" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1164052439494">
      <property name="value" value="matching text" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1164052439495">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.ClassifierType" id="1164052439496">
        <link role="classifier" extResolveInfo="36.[Classifier]String" />
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1164052439497">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613549566" resolveInfo="CellMenu_RefCell_ConvertReference_parameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1164052588708">
    <property name="name" value="CellMenuPart_AbstractGroup_DescriptionText" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1164052588709">
      <property name="value" value="description text" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1164052588710">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.ClassifierType" id="1164052588711">
        <link role="classifier" extResolveInfo="36.[Classifier]String" />
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1164052588712">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613549566" resolveInfo="CellMenu_RefCell_ConvertReference_parameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1164824717996">
    <property name="name" value="CellMenuDescriptor" />
    <link role="extends" targetNodeId="3.1133920641626" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1164824815888">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="cellMenuPart" />
      <link role="target" targetNodeId="1164824854750" resolveInfo="CellMenu_AbstractPart" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1164826227425">
      <property name="value" value="cell menu" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1164824854750">
    <property name="name" value="CellMenuPart_Abstract" />
    <link role="extends" targetNodeId="3.1133920641626" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1164824871502">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1164833692343">
    <property name="name" value="CellMenuPart_PropertyValues" />
    <link role="extends" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1164833692344">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="valuesFunction" />
      <link role="target" targetNodeId="1160493135005" resolveInfo="CellMenu_SetProperty_GetValues" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1164833692345">
      <property name="value" value="property values" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1164914519156">
    <property name="name" value="CellMenuPart_ReplaceNode_CustomNodeConcept" />
    <link role="extends" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1164914727930">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="replacementConcept" />
      <link role="target" targetNodeId="1.1071489090640" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1164914519158">
      <property name="value" value="replace node (custom node concept)" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1164996492011">
    <property name="name" value="CellMenuPart_ReferentPrimary" />
    <link role="extends" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1164996492013">
      <property name="value" value="primary choose referent menu" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1165004207520">
    <property name="name" value="CellMenuPart_ReplaceNode_Group" />
    <link role="extends" targetNodeId="1165253627126" resolveInfo="CellMenuPart_AbstractGroup" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1165004529292">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="parametersFunction" />
      <link role="target" targetNodeId="1163613035599" resolveInfo="CellMenu_RefCell_ConvertReference_Query" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1165004529293">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="createFunction" />
      <link role="target" targetNodeId="1163613131943" resolveInfo="CellMenu_RefCell_ConvertReference_Convert" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1165004207522">
      <property name="value" value="replace node (group of custom actions)" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1165253627126">
    <property name="name" value="CellMenuPart_AbstractGroup" />
    <link role="extends" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1165253627127">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473854053" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1165253890469">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="parameterObjectType" />
      <link role="target" targetNodeId="4.1068431790189" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1165254125954">
      <property name="name" value="presentation" />
      <link role="dataType" targetNodeId="37.1165007009656" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1165254159533">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="matchingTextFunction" />
      <link role="target" targetNodeId="1164052439493" resolveInfo="CellMenu_RefCell_ConvertReference_MatchingText" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1165254180581">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="descriptionTextFunction" />
      <link role="target" targetNodeId="1164052588708" resolveInfo="CellMenu_RefCell_ConvertReference_DescriptionText" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1165270418989">
    <property name="name" value="CellMenuPart_ReplaceChild_Group" />
    <link role="extends" targetNodeId="1165253627126" resolveInfo="CellMenuPart_AbstractGroup" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1165270418991">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="parametersFunction" />
      <link role="target" targetNodeId="1165270662927" resolveInfo="CellMenuPart_ReplaceChild_Group_Query" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1165270418992">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="createFunction" />
      <link role="target" targetNodeId="1165270999881" resolveInfo="CellMenuPart_ReplaceChild_Group_Create" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1165270418995">
      <property name="value" value="replace child (group of custom actions)" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1165270662927">
    <property name="name" value="CellMenuPart_ReplaceChild_Group_Query" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1165270662928">
      <property name="value" value="get objects" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165270662929">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613822479" resolveInfo="CellMenuPart_Abstract_editedNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165270662930">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1162497113192" resolveInfo="CellMenu_ReplaceChild_Macro_CurrentChild" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165270662931">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1162498275506" resolveInfo="CellMenu_ReplaceChild_Macro_DefaultConceptOfChild" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165270662932">
      <link role="target" targetNodeId="37.1161622878565" />
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165270662933">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622753914" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1165270999881">
    <property name="name" value="CellMenuPart_ReplaceChild_Group_Create" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165270999882">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613549566" resolveInfo="CellMenuPart_AbstractGroup_parameterObject" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165270999883">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613822479" resolveInfo="CellMenuPart_Abstract_editedNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165270999884">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1162497113192" resolveInfo="CellMenu_ReplaceChild_Macro_CurrentChild" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165270999885">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1162498275506" resolveInfo="CellMenu_ReplaceChild_Macro_DefaultConceptOfChild" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165270999886">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622665029" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165270999887">
      <link role="target" targetNodeId="37.1161622878565" />
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165270999888">
      <link role="target" targetNodeId="37.1161622753914" />
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1165270999889">
      <property name="value" value="create new child" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1165280503630">
    <property name="name" value="CellMenuPart_ReplaceChild_CustomChildConcept" />
    <link role="extends" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1165280503631">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="childConceptFunction" />
      <link role="target" targetNodeId="1165280856333" resolveInfo="CellMenuPart_ReplaceChild_CustomChildConcept_Query" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1165280503632">
      <property name="value" value="replace child (custom child's concept)" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1165280856333">
    <property name="name" value="CellMenuPart_ReplaceChild_CustomChildConcept_Query" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1165280856334">
      <property name="value" value="get child concept" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1165280856335">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545148427" />
      <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1165280856336">
        <link role="concept" targetNodeId="1.1071489090640" />
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165280856337">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613822479" resolveInfo="CellMenuPart_Abstract_editedNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165280856338">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1162497113192" resolveInfo="CellMenu_ReplaceChild_Macro_CurrentChild" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165280856339">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1162498275506" resolveInfo="CellMenu_ReplaceChild_Macro_DefaultConceptOfChild" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165280856340">
      <link role="target" targetNodeId="37.1161622878565" />
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165280856341">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622753914" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1165339175678">
    <property name="name" value="CellMenuPart_ReplaceChild_Item" />
    <link role="extends" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1165339639991">
      <property name="name" value="matchingText" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1175117579502">
      <property name="name" value="descriptionText" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1165339175680">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="createFunction" />
      <link role="target" targetNodeId="1165339307433" resolveInfo="CellMenuPart_ReplaceChild_Item_Create" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1165339175681">
      <property name="value" value="replace child (custom action)" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1165339307433">
    <property name="name" value="CellMenuPart_ReplaceChild_Item_Create" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165339307434">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613822479" resolveInfo="CellMenuPart_Abstract_editedNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165339437299">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1162497113192" resolveInfo="CellMenu_ReplaceChild_Macro_CurrentChild" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165339437300">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1162498275506" resolveInfo="CellMenu_ReplaceChild_Macro_DefaultConceptOfChild" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165339307435">
      <link role="target" targetNodeId="37.1161622665029" />
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165339307436">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622878565" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165339307437">
      <link role="target" targetNodeId="37.1161622753914" />
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1165420413719">
    <property name="name" value="CellMenuPart_Generic_Group" />
    <link role="extends" targetNodeId="1165253627126" resolveInfo="CellMenuPart_AbstractGroup" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1165420413720">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="parametersFunction" />
      <link role="target" targetNodeId="1163613035599" resolveInfo="CellMenuPart_AbstractGroup_Query" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1165420413721">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="handlerFunction" />
      <link role="target" targetNodeId="1165420626554" resolveInfo="CellMenuPart_Generic_Group_Handle" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1165420413722">
      <property name="value" value="generic group" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1165420626554">
    <property name="name" value="CellMenuPart_Generic_Group_Handler" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165420626557">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613549566" resolveInfo="CellMenuPart_AbstractGroup_parameterObject" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165420626558">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613822479" resolveInfo="CellMenuPart_Abstract_editedNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165420626559">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622665029" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165420626560">
      <link role="target" targetNodeId="37.1161622878565" />
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165420626561">
      <link role="target" targetNodeId="37.1161622753914" />
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1165420626562">
      <property name="value" value="generic handler" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1165424453110">
    <property name="name" value="CellMenuPart_Generic_Item" />
    <link role="extends" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1165424453111">
      <property name="name" value="matchingText" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1165424453112">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="handlerFunction" />
      <link role="target" targetNodeId="1165424657443" resolveInfo="CellMenuPart_Generic_Item_Handler" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1165424453113">
      <property name="value" value="generic item" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1165424657443">
    <property name="name" value="CellMenuPart_Generic_Item_Handler" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165424657444">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1163613822479" resolveInfo="CellMenuPart_Abstract_editedNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165424657447">
      <link role="target" targetNodeId="37.1161622665029" />
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165424657448">
      <link role="target" targetNodeId="37.1161622878565" />
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1165424657449">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="37.1161622753914" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1166040637528">
    <property name="name" value="CellMenuComponent" />
    <property name="iconPath" value="${language_descriptor}\icons\menuComponent.png" />
    <property name="rootable" value="true" />
    <link role="extends" targetNodeId="1166049232041" resolveInfo="AbstractComponent" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1166040865497">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="applicableFeature" />
      <link role="target" targetNodeId="1166041033436" resolveInfo="CellMenuApplicableFeature" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1166041505377">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="menuDescriptor" />
      <link role="target" targetNodeId="1164824717996" resolveInfo="CellMenuDescriptor" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1166047295586">
      <property name="value" value="cell menu component" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1166041033436">
    <property name="name" value="CellMenuComponentFeature" />
    <link role="extends" targetNodeId="3.1133920641626" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1166054297096">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="relationDeclaration" />
      <link role="target" targetNodeId="3.1133920641626" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1166041079437">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1166041748520">
    <property name="name" value="CellMenuComponentFeature_Property" />
    <link role="extends" targetNodeId="1166041033436" resolveInfo="CellMenuComponentFeature" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1166041884271">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="propertyDeclaration" />
      <link role="target" targetNodeId="1.1071489288299" />
      <link role="specializedLink" targetNodeId="1166054297096" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1166042131867">
    <property name="name" value="CellMenuComponentFeature_Link" />
    <link role="extends" targetNodeId="1166041033436" resolveInfo="CellMenuComponentFeature" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1166042131869">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="linkDeclaration" />
      <link role="target" targetNodeId="1.1071489288298" />
      <link role="specializedLink" targetNodeId="1166054297096" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1166049232041">
    <property name="name" value="AbstractComponent" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1166049251808">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473854053" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1166049300910">
      <property name="targetCardinality" value="0..1" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="conceptDeclaration" />
      <link role="target" targetNodeId="1.1071489090640" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.InterfaceConceptReference" id="1173470691635">
      <link role="intfc" targetNodeId="3.1169194658468" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1166059625718">
    <property name="name" value="CellMenuPart_CellMenuComponent" />
    <link role="extends" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1166059677893">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="cellMenuComponent" />
      <link role="target" targetNodeId="1166040637528" resolveInfo="CellMenuComponent" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1166059625736">
      <property name="value" value="menu component" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1174088067129">
    <property name="name" value="CellMenuPart_ReplaceChildPrimary" />
    <link role="extends" targetNodeId="1164824854750" resolveInfo="CellMenuPart_Abstract" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1174088067130">
      <property name="value" value="primary replace child menu" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1176474535556">
    <property name="name" value="QueryFunction_JComponent" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176474588488">
      <property name="value" value="component" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176474596599">
      <property name="value" value="embedded block of code" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1176474617542">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.ClassifierType" id="1176474640436">
        <link role="classifier" extResolveInfo="38.[Classifier]JComponent" />
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176474644923">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1161622981231" resolveInfo="ConceptFunctionParameter_editorContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176474658345">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1142886811589" resolveInfo="ConceptFunctionParameter_node" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1176717779940">
    <property name="name" value="ConceptFunctionParameter_text" />
    <link role="extends" targetNodeId="4.1107135704075" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1176717792086">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545963098" />
      <node role="target" type="jetbrains.mps.baseLanguage.ClassifierType" id="1176717823441">
        <link role="classifier" extResolveInfo="36.[Classifier]String" />
      </node>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176717779941">
      <property name="value" value="text" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176717779942">
      <property name="value" value="function parameter" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1176717779943">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1176717841777">
    <property name="name" value="QueryFunction_ModelAccess_Getter" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176717841778">
      <property name="value" value="condition" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176717841779">
      <property name="value" value="embedded block of code" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1176717841780">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.ClassifierType" id="1176717853426">
        <link role="classifier" extResolveInfo="36.[Classifier]String" />
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176717841782">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1161622981231" resolveInfo="ConceptFunctionParameter_editorContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176717841783">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1142886811589" resolveInfo="ConceptFunctionParameter_node" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1176717871254">
    <property name="name" value="QueryFunction_ModelAccess_Setter" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176717871255">
      <property name="value" value="condition" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176717871256">
      <property name="value" value="embedded block of code" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1176717871257">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.VoidType" id="1176717878779" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176717871259">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1161622981231" resolveInfo="ConceptFunctionParameter_editorContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176717871260">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1142886811589" resolveInfo="ConceptFunctionParameter_node" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176725584265">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1176717779940" resolveInfo="ConceptFunctionParameter_text" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1176717888428">
    <property name="name" value="QueryFunction_ModelAccess_Validator" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176717888429">
      <property name="value" value="condition" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176717888430">
      <property name="value" value="embedded block of code" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1176717888431">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.BooleanType" id="1176717902389" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176717888433">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1161622981231" resolveInfo="ConceptFunctionParameter_editorContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176717888434">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1142886811589" resolveInfo="ConceptFunctionParameter_node" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176725860484">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1176717779940" resolveInfo="ConceptFunctionParameter_text" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176732129892">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1176731909317" resolveInfo="ConceptFunctionParameter_oldText" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1176717996748">
    <property name="name" value="ModelAccessor" />
    <link role="extends" targetNodeId="3.1133920641626" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1176718001874">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="getter" />
      <link role="target" targetNodeId="1176717841777" resolveInfo="QueryFunction_ModelAccess_Getter" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1176718007938">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="setter" />
      <link role="target" targetNodeId="1176717871254" resolveInfo="QueryFunction_ModelAccess_Setter" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1176718014393">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="validator" />
      <link role="target" targetNodeId="1176717888428" resolveInfo="QueryFunction_ModelAccess_Validater" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1176731909317">
    <property name="name" value="ConceptFunctionParameter_oldText" />
    <link role="extends" targetNodeId="4.1107135704075" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1176731909318">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545963098" />
      <node role="target" type="jetbrains.mps.baseLanguage.ClassifierType" id="1176731909319">
        <link role="classifier" extResolveInfo="36.[Classifier]String" />
      </node>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176731909320">
      <property name="value" value="oldText" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176731909321">
      <property name="value" value="function parameter" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.BooleanConceptProperty" id="1176731909322">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1176749715029">
    <property name="name" value="QueryFunction_CellProvider" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176749779885">
      <property name="value" value="cell provider" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176749779886">
      <property name="value" value="embedded block of code" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1176749854668">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.ClassifierType" id="1176794890268">
        <link role="classifier" extResolveInfo="29.[Classifier]AbstractCellProvider" />
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176749862944">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1142886811589" resolveInfo="ConceptFunctionParameter_node" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176749872102">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1161622981231" resolveInfo="ConceptFunctionParameter_editorContext" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1176750487975">
    <property name="name" value="QueryMethodIdEditorProviderExpression" />
    <link role="extends" targetNodeId="4.1068431790191" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176795885088">
      <property name="value" value="query method cell provider" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1176750736379">
      <property name="name" value="notSetString" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.PropertyDeclaration" id="1176750922515">
      <property name="name" value="prefix" />
      <link role="dataType" targetNodeId="3.1082983041843" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1176750512039">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="queryIdProperty" />
      <link role="target" targetNodeId="1.1071489288299" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1176750789991">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="1" />
      <property name="role" value="returnType" />
      <link role="target" targetNodeId="4.1068431790189" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1176750796710">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="parameter" />
      <link role="target" targetNodeId="4.1068498886292" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration" id="1176750816680">
      <property name="metaClass" value="aggregation" />
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="additionalImport" />
      <link role="target" targetNodeId="4.1068431790189" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration" id="1176809959526">
    <property name="name" value="QueryFunction_Color" />
    <link role="extends" targetNodeId="4.1137021947720" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176809959527">
      <property name="value" value="color function" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.StringConceptProperty" id="1176809959528">
      <property name="value" value="embedded block of code" />
      <link role="conceptPropertyDeclaration" targetNodeId="3.1137473914776" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.AggregationConceptLink" id="1176809959529">
      <link role="conceptLinkDeclaration" targetNodeId="4.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.ClassifierType" id="1176810139102">
        <link role="classifier" extResolveInfo="39.[Classifier]Color" />
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176809959531">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1142886811589" resolveInfo="ConceptFunctionParameter_node" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.ReferenceConceptLink" id="1176809959532">
      <link role="conceptLinkDeclaration" targetNodeId="4.1161119487665" />
      <link role="target" targetNodeId="1161622981231" resolveInfo="ConceptFunctionParameter_editorContext" />
    </node>
  </node>
</model>


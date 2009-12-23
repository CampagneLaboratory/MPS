<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:cb1a36c8-1ffb-415a-aba8-afb9dc042d1b(jetbrains.mps.baseLanguage.math.structure)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <language namespace="a247e09e-2435-45ba-b8d2-07e93feba96a(jetbrains.mps.baseLanguage.tuples)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590340(jetbrains.mps.lang.pattern.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959033d(jetbrains.mps.lang.annotations.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ae(jetbrains.mps.lang.typesystem.constraints)" version="17" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:cb1a36c8-1ffb-415a-aba8-afb9dc042d1b(jetbrains.mps.baseLanguage.math.structure)" version="14" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" version="0" />
  <languageAspect modelUID="r:309aeee7-bee8-445c-b31d-35928d1da75f(jetbrains.mps.baseLanguage.tuples.structure)" version="2" />
  <devkit namespace="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  <maxImportIndex value="2" />
  <import index="2" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <visible index="2" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
  <visible index="3" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1235747354980">
    <property name="name:0" value="InIntervalExpression" />
    <property name="package:0" value="interval" />
    <link role="extends:0" targetNodeId="2v.1081773326031:3" resolveInfo="BinaryOperation" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1235747354981">
      <property name="value:0" value=":in:" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1235747354982">
      <property name="value:0" value="is in interval" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.IntegerConceptProperty:0" id="1235747354983">
      <property name="value:0" value="1" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="2v.1166617629900:3" resolveInfo="priority" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1235747354984">
    <property name="name:0" value="IntervalContainsExpression" />
    <property name="package:0" value="interval" />
    <link role="extends:0" targetNodeId="2v.1081773326031:3" resolveInfo="BinaryOperation" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1235747354985">
      <property name="value:0" value=":contains:" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1235747354986">
      <property name="value:0" value="(?) interval contains" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.IntegerConceptProperty:0" id="1235747354987">
      <property name="value:0" value="1" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="2v.1166617629900:3" resolveInfo="priority" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1235747354988">
    <property name="name:0" value="IntervalLiteral" />
    <property name="package:0" value="interval" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1235747354989">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="start" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1235747354990">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="end" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="propertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration:0" id="1235747354991">
      <property name="name:0" value="startIncluded" />
      <link role="dataType:0" targetNodeId="3v.1082983657063:0" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration:0" id="1235747354992">
      <property name="name:0" value="endIncluded" />
      <link role="dataType:0" targetNodeId="3v.1082983657063:0" resolveInfo="boolean" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1235747354993">
      <property name="value:0" value="interval" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238337664393">
      <property name="value:0" value="Interval literal" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1235747354994">
    <property name="name:0" value="IntervalType" />
    <property name="package:0" value="interval" />
    <link role="extends:0" targetNodeId="2v.1068431790189:3" resolveInfo="Type" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1235747354995">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="elementType" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790189:3" resolveInfo="Type" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1235747354996">
      <property name="value:0" value="interval" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1235747354997">
      <property name="value:0" value="Interval type" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238338031059">
    <property name="package:0" value="methods" />
    <property name="name:0" value="PowExpression" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1238338314123">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="base" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1238338314983">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="exponent" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238338590427">
      <property name="value:0" value="^" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="963844843316001185">
      <property name="value:0" value="Power expression" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="4815887568697232005">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="MatrixConstructor" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="4815887568697232013">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="components" />
      <property name="sourceCardinality:0" value="1..n" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="4815887568697232006">
      <property name="value:0" value="[" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="4815887568697232008">
      <property name="value:0" value="Matrix row constructor" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
    <node role="propertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration:0" id="3498370411873418560">
      <property name="name:0" value="column" />
      <link role="dataType:0" targetNodeId="3v.1082983657063:0" resolveInfo="boolean" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="4815887568697030517">
    <property name="name:0" value="VectorType" />
    <property name="package:0" value="matrix" />
    <link role="extends:0" targetNodeId="1237218038292:14" resolveInfo="MathPrimitiveType" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="4815887568697050735">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="elementType" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790189:3" resolveInfo="Type" />
    </node>
    <node role="propertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration:0" id="4815887568697050734">
      <property name="name:0" value="height" />
      <link role="dataType:0" targetNodeId="3v.1082983657062:0" resolveInfo="integer" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="4815887568697030519">
      <property name="value:0" value="vector" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="implements:0" type="jetbrains.mps.lang.structure.structure.InterfaceConceptReference:0" id="5853558151363197546">
      <link role="intfc:0" targetNodeId="5853558151363197539:14" resolveInfo="MatrixOrVectorType" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="920952925470358962">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="MatrixNorm" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="propertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration:0" id="758819215871550447">
      <property name="name:0" value="deg" />
      <link role="dataType:0" targetNodeId="758819215871666038:14" resolveInfo="MatrixNormKind" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="758819215871053777">
      <property name="metaClass:0" value="aggregation" />
      <property name="sourceCardinality:0" value="1" />
      <property name="role:0" value="mat" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="920952925470358963">
      <property name="value:0" value="norm" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="4815887568697030518">
    <property name="name:0" value="MatrixType" />
    <property name="package:0" value="matrix" />
    <link role="extends:0" targetNodeId="1237218038292:14" resolveInfo="MathPrimitiveType" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="4815887568697050707">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="elementType" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790189:3" resolveInfo="Type" />
    </node>
    <node role="implements:0" type="jetbrains.mps.lang.structure.structure.InterfaceConceptReference:0" id="5853558151363197540">
      <link role="intfc:0" targetNodeId="5853558151363197539:14" resolveInfo="MatrixOrVectorType" />
    </node>
    <node role="propertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration:0" id="4815887568697048492">
      <property name="name:0" value="rows" />
      <link role="dataType:0" targetNodeId="3v.1082983657062:0" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration:0" id="4815887568697048493">
      <property name="name:0" value="columns" />
      <link role="dataType:0" targetNodeId="3v.1082983657062:0" resolveInfo="integer" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="4815887568697030520">
      <property name="value:0" value="matrix" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration:0" id="5853558151363197539">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="MatrixOrVectorType" />
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1904947163751448715">
    <property name="package:0" value="highPrecisionArithmetic" />
    <property name="name:0" value="MathContext" />
    <link role="extends:0" targetNodeId="3v.1133920641626:0" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration:0" id="1904947163751462195">
      <property name="name:0" value="roundingMode" />
      <link role="dataType:0" targetNodeId="1238402737615:14" resolveInfo="RoundingMode" />
    </node>
    <node role="propertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration:0" id="1904947163751462196">
      <property name="name:0" value="precision" />
      <link role="dataType:0" targetNodeId="3v.1082983657062:0" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration:0" id="1904947163751462197">
      <property name="name:0" value="precisionSetting" />
      <link role="dataType:0" targetNodeId="1238404910647:14" resolveInfo="PrecisionSetting" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="3922637823318870907">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="MatrixZero" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="propertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration:0" id="3922637823319028534">
      <property name="name:0" value="square" />
      <link role="dataType:0" targetNodeId="3v.1082983657063:0" resolveInfo="boolean" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="3922637823319028532">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="rows" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="3922637823319028533">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="columns" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="3922637823318870908">
      <property name="value:0" value="zero" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="3922637823318870910">
      <property name="value:0" value="Zero matrix" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238326494701">
    <property name="package:0" value="complex" />
    <property name="name:0" value="LiteralI" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238326536692">
      <property name="value:0" value="I" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238337756259">
      <property name="value:0" value="Imaginary unit" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238940287286">
    <property name="package:0" value="highPrecisionArithmetic" />
    <property name="name:0" value="DecimalMinusExpression" />
    <link role="extends:0" targetNodeId="1238402702427:14" resolveInfo="DecimalBinaryOperation" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238940497889">
      <property name="value:0" value=":-d" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238940497890">
      <property name="value:0" value="minus operation for big decimal types" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.IntegerConceptProperty:0" id="1238940497891">
      <property name="value:0" value="2" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="2v.1166617629900:3" resolveInfo="priority" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1236426976680">
    <property name="name:0" value="MathSymbolIndex" />
    <property name="package:0" value="bigSymbols" />
    <link role="extends:0" targetNodeId="1236589266912:14" resolveInfo="AbstractIndex" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236597797211">
      <property name="value:0" value="iterate over arbitrary iterable class" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1236427140288">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="iterable" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238402702427">
    <property name="name:0" value="DecimalBinaryOperation" />
    <property name="package:0" value="highPrecisionArithmetic" />
    <link role="extends:0" targetNodeId="2v.1081773326031:3" resolveInfo="BinaryOperation" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1904947163751462528">
      <property name="metaClass:0" value="aggregation" />
      <property name="sourceCardinality:0" value="1" />
      <property name="role:0" value="context" />
      <link role="target:0" targetNodeId="1904947163751448715:14" resolveInfo="MathContext" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty:0" id="1238945218561">
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473854053:0" resolveInfo="abstract" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238343594087">
    <property name="package:0" value="methods" />
    <property name="name:0" value="MathFuncExpression" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1238343896784">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="param" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty:0" id="1238343625042">
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473854053:0" resolveInfo="abstract" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration:0" id="1238402737615">
    <property name="name:0" value="RoundingMode" />
    <property name="package:0" value="highPrecisionArithmetic" />
    <link role="memberDataType:0" targetNodeId="3v.1082983657062:0" resolveInfo="integer" />
    <link role="defaultMember:0" targetNodeId="1238402767339:14" />
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238402737616">
      <property name="internalValue:0" value="0" />
      <property name="externalValue:0" value="CEILING" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238402766914">
      <property name="internalValue:0" value="1" />
      <property name="externalValue:0" value="DOWN" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238402767056">
      <property name="internalValue:0" value="2" />
      <property name="externalValue:0" value="FLOOR" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238402767229">
      <property name="internalValue:0" value="3" />
      <property name="externalValue:0" value="HALF_DOWN" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238402767339">
      <property name="internalValue:0" value="4" />
      <property name="externalValue:0" value="HALF_EVEN" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238402799184">
      <property name="externalValue:0" value="HALF_UP" />
      <property name="internalValue:0" value="5" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238402803795">
      <property name="externalValue:0" value="UNNECCESARY" />
      <property name="internalValue:0" value="6" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238402809265">
      <property name="externalValue:0" value="UP" />
      <property name="internalValue:0" value="7" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238344212558">
    <property name="package:0" value="methods" />
    <property name="name:0" value="SineExpression" />
    <link role="extends:0" targetNodeId="1238343594087:14" resolveInfo="MathFuncExpression" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238344461804">
      <property name="value:0" value="sin" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238344689592">
      <property name="value:0" value="Trigonometric sine of a value" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238940210376">
    <property name="package:0" value="highPrecisionArithmetic" />
    <property name="name:0" value="DecimalMulExpression" />
    <link role="extends:0" targetNodeId="1238402702427:14" resolveInfo="DecimalBinaryOperation" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238940551974">
      <property name="value:0" value=":*d" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238940551975">
      <property name="value:0" value="multiplication operation for big decimal types" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.IntegerConceptProperty:0" id="1238940551976">
      <property name="value:0" value="3" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="2v.1166617629900:3" resolveInfo="priority" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="8365454432008500948">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="TransposeOperation" />
    <link role="extends:0" targetNodeId="7255837154369580413:14" resolveInfo="MatrixExponentialOperation" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="7255837154369797717">
      <property name="value:0" value="T" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="7255837154369354276:14" resolveInfo="operationSymbol" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="7388416617631668700">
      <property name="value:0" value="Transpose operation" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="6219660258344738888">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="MatrixInitializer" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="6219660258344759899">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="rowIndex" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="6219660258344759893:14" resolveInfo="MatrixInitializerIndex" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="6219660258344759900">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="colIndex" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="6219660258344759893:14" resolveInfo="MatrixInitializerIndex" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="6219660258345039001">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="rowsCount" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="6219660258345039002">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="colsCount" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="6219660258344753239">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="expression" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="6219660258344774086">
      <property name="value:0" value="matrix" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="6219660258344774088">
      <property name="value:0" value="Matrix initializer" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
    <node role="implements:0" type="jetbrains.mps.lang.structure.structure.InterfaceConceptReference:0" id="3361677252835112455">
      <link role="intfc:0" targetNodeId="6219660258345570625:14" resolveInfo="MatrixOrVectorInitializer" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1418611629042457277">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="LinearSolveOperation" />
    <link role="extends:0" targetNodeId="2v.1068581242863:3" resolveInfo="LocalVariableDeclaration" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1418611629042608218">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="type_M" />
      <link role="specializedLink:0" targetNodeId="2v.5680397130376446158:3" />
      <link role="target:0" targetNodeId="2v.1068431790189:3" resolveInfo="Type" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1418611629042470806">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="matrix" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1418611629042470807">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="vector" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1904947163751468044">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="context" />
      <link role="target:0" targetNodeId="1904947163751448715:14" resolveInfo="MathContext" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1418611629042470822">
      <property name="value:0" value="lsolve" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1237214346477">
    <property name="package:0" value="internals" />
    <property name="name:0" value="MathTypeCast" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1237546614691">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="castedExpr" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="propertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration:0" id="1237214516967">
      <property name="name:0" value="target" />
      <link role="dataType:0" targetNodeId="1237214452656:14" resolveInfo="CastTargetDescriptor" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty:0" id="1237215975153">
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473994950:0" resolveInfo="dontSubstituteByDefault" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238344256342">
    <property name="package:0" value="methods" />
    <property name="name:0" value="TangentExpression" />
    <link role="extends:0" targetNodeId="1238343594087:14" resolveInfo="MathFuncExpression" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238344470962">
      <property name="value:0" value="tan" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238344702157">
      <property name="value:0" value="Trigonometric tangent of a value" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1237100849157">
    <property name="package:0" value="bigSymbols" />
    <property name="name:0" value="DivExpressionFraction" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1237102925695">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="numerator" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1237102926618">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="denominator" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1237100964364">
      <property name="value:0" value="frac" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238325050905">
    <property name="package:0" value="methods" />
    <property name="name:0" value="AbsExpression" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1238325188444">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="expr" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238325179222">
      <property name="value:0" value="abs" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238337742913">
      <property name="value:0" value="Absolute value of a number" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1236589239536">
    <property name="package:0" value="bigSymbols" />
    <property name="name:0" value="MathSymbolFromToIndex" />
    <link role="extends:0" targetNodeId="1236589266912:14" resolveInfo="AbstractIndex" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1236589606450">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="from" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236597974027">
      <property name="value:0" value="iterate over interval of integers" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238344268031">
    <property name="package:0" value="methods" />
    <property name="name:0" value="LogExpression" />
    <link role="extends:0" targetNodeId="1238343594087:14" resolveInfo="MathFuncExpression" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238344457303">
      <property name="value:0" value="ln" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238344663464">
      <property name="value:0" value="Natural logarithm of a value" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238940192891">
    <property name="package:0" value="highPrecisionArithmetic" />
    <property name="name:0" value="DecimalDivExpression" />
    <link role="extends:0" targetNodeId="1238402702427:14" resolveInfo="DecimalBinaryOperation" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238940459792">
      <property name="value:0" value=":/d" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238940459793">
      <property name="value:0" value="divide operation for big decimal types" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.IntegerConceptProperty:0" id="1238940459794">
      <property name="value:0" value="3" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="2v.1166617629900:3" resolveInfo="priority" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1236428507726">
    <property name="package:0" value="bigSymbols" />
    <property name="name:0" value="ExtrSymbol" />
    <link role="extends:0" targetNodeId="1236426954905:14" resolveInfo="MathSymbol" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty:0" id="1236428532962">
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473854053:0" resolveInfo="abstract" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration:0" id="1237214452656">
    <property name="package:0" value="internals" />
    <property name="name:0" value="CastTargetDescriptor" />
    <link role="memberDataType:0" targetNodeId="3v.1082983657062:0" resolveInfo="integer" />
    <link role="defaultMember:0" targetNodeId="1237214452657:14" />
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1237537073390">
      <property name="internalValue:0" value="0" />
      <property name="externalValue:0" value="unknown" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1237214452657">
      <property name="internalValue:0" value="1" />
      <property name="externalValue:0" value="primitive-&gt;biginteger" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1237214465095">
      <property name="internalValue:0" value="2" />
      <property name="externalValue:0" value="primitive-&gt;complex" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238313482654">
      <property name="externalValue:0" value="double-&gt;bigdecimal" />
      <property name="internalValue:0" value="3" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238400736819">
      <property name="internalValue:0" value="4" />
      <property name="externalValue:0" value="biginteger-&gt;bigdecimal" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238419058703">
      <property name="externalValue:0" value="double-&gt;bigcomplex" />
      <property name="internalValue:0" value="5" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238419065079">
      <property name="externalValue:0" value="biginteger-&gt;bigcomplex" />
      <property name="internalValue:0" value="6" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238419087110">
      <property name="externalValue:0" value="bigdecimal-&gt;bigcomplex" />
      <property name="internalValue:0" value="7" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238419103532">
      <property name="externalValue:0" value="complex-&gt;bigcomplex" />
      <property name="internalValue:0" value="8" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="5217243589490813621">
      <property name="internalValue:0" value="9" />
      <property name="externalValue:0" value="...-&gt;matrix&lt;integer&gt;" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="5217243589490813622">
      <property name="internalValue:0" value="10" />
      <property name="externalValue:0" value="...-&gt;matrix&lt;long&gt;" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="5217243589490813623">
      <property name="internalValue:0" value="11" />
      <property name="externalValue:0" value="...-&gt;matrix&lt;float&gt;" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="5217243589490813624">
      <property name="internalValue:0" value="12" />
      <property name="externalValue:0" value="...-&gt;matrix&lt;double&gt;" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="5217243589490813625">
      <property name="internalValue:0" value="13" />
      <property name="externalValue:0" value="...-&gt;matrix&lt;biginteger&gt;" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="5217243589490813626">
      <property name="internalValue:0" value="14" />
      <property name="externalValue:0" value="...-&gt;matrix&lt;bigdecimal&gt;" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="5217243589490813627">
      <property name="internalValue:0" value="15" />
      <property name="externalValue:0" value="...-&gt;matrix&lt;complex&gt;" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="5217243589490813628">
      <property name="internalValue:0" value="16" />
      <property name="externalValue:0" value="...-&gt;matrix&lt;bigcomplex&gt;" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1236427936913">
    <property name="package:0" value="bigSymbols" />
    <property name="name:0" value="MathSymbolIndexReference" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1236427955167">
      <property name="metaClass:0" value="reference" />
      <property name="role:0" value="indexRef" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="1236589266912:14" resolveInfo="AbstractIndex" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1418611629041138655">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="MatrixUnit" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1418611629041138656">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="size" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1418611629041152154">
      <property name="value:0" value="identity" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1418611629041152156">
      <property name="value:0" value="Identity matrix" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="263012178968580053">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="Determinant" />
    <link role="extends:0" targetNodeId="1238343594087:14" resolveInfo="MathFuncExpression" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="263012178968580054">
      <property name="value:0" value="det" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="263012178968580056">
      <property name="value:0" value="Matrix determinant" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1236428466848">
    <property name="package:0" value="bigSymbols" />
    <property name="name:0" value="BigProdExpression" />
    <link role="extends:0" targetNodeId="1236428893250:14" resolveInfo="ArithmSymbol" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236428583262">
      <property name="value:0" value="∏" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="1236427043810:14" resolveInfo="opName" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236428657617">
      <property name="value:0" value="prod" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236434855498">
      <property name="value:0" value="Product of expressions" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1236439460603">
    <property name="package:0" value="bigSymbols" />
    <property name="name:0" value="BigSumExpression" />
    <link role="extends:0" targetNodeId="1236428893250:14" resolveInfo="ArithmSymbol" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236439472244">
      <property name="value:0" value="sum" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236439487934">
      <property name="value:0" value="∑" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="1236427043810:14" resolveInfo="opName" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236439490295">
      <property name="value:0" value="Sum of expressions" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1418611629042457276">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="MatrixInverseOperation" />
    <link role="extends:0" targetNodeId="7255837154369580413:14" resolveInfo="MatrixExponentialOperation" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1904947163751464663">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="context" />
      <link role="target:0" targetNodeId="1904947163751448715:14" resolveInfo="MathContext" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="7388416617631668677">
      <property name="value:0" value="-1" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="7255837154369354276:14" resolveInfo="operationSymbol" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="7388416617631668697">
      <property name="value:0" value="Matrix inverse operation" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238344223606">
    <property name="package:0" value="methods" />
    <property name="name:0" value="CosineExpression" />
    <link role="extends:0" targetNodeId="1238343594087:14" resolveInfo="MathFuncExpression" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238344465586">
      <property name="value:0" value="cos" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238344712612">
      <property name="value:0" value="Trigonometric cosine of a value" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1237106070629">
    <property name="name:0" value="BigDecimalType" />
    <property name="package:0" value="highPrecisionArithmetic" />
    <link role="extends:0" targetNodeId="1237218038292:14" resolveInfo="MathPrimitiveType" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1237108987143">
      <property name="value:0" value="bigdecimal" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238411949320">
      <property name="value:0" value="Arbitrary precision signed decimal number" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1237108887116">
    <property name="package:0" value="complex" />
    <property name="name:0" value="BigComplexType" />
    <link role="extends:0" targetNodeId="1237218038292:14" resolveInfo="MathPrimitiveType" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1237108982049">
      <property name="value:0" value="bigcomplex" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238412079449">
      <property name="value:0" value="Arbitrary precision complex number" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1236428482381">
    <property name="package:0" value="bigSymbols" />
    <property name="name:0" value="BigMinExpression" />
    <link role="extends:0" targetNodeId="1236428507726:14" resolveInfo="ExtrSymbol" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236428561167">
      <property name="value:0" value="MIN" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="1236427043810:14" resolveInfo="opName" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236428639986">
      <property name="value:0" value="min" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236435061088">
      <property name="value:0" value="Minimum of expressions" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1236428893250">
    <property name="package:0" value="bigSymbols" />
    <property name="name:0" value="ArithmSymbol" />
    <link role="extends:0" targetNodeId="1236426954905:14" resolveInfo="MathSymbol" />
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1236426954905">
    <property name="name:0" value="MathSymbol" />
    <property name="package:0" value="bigSymbols" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="conceptPropertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.StringConceptPropertyDeclaration:0" id="1236427043810">
      <property name="name:0" value="opName" />
      <property name="inheritable:0" value="true" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty:0" id="1236427039680">
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473854053:0" resolveInfo="abstract" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1236427007990">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="var" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="1236589266912:14" resolveInfo="AbstractIndex" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1236427008116">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="expression" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1236427162021">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="precondition" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1236594888470">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="upperBound" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238328560395">
    <property name="package:0" value="internals" />
    <property name="name:0" value="ComplexLiteral" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1238328589271">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="real" />
      <property name="sourceCardinality:0" value="0..1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="1238328589757">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="imag" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty:0" id="1238421482433">
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473994950:0" resolveInfo="dontSubstituteByDefault" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration:0" id="1238404910647">
    <property name="name:0" value="PrecisionSetting" />
    <property name="package:0" value="highPrecisionArithmetic" />
    <link role="memberDataType:0" targetNodeId="3v.1082983657062:0" resolveInfo="integer" />
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238404910648">
      <property name="externalValue:0" value="CUSTOM" />
      <property name="internalValue:0" value="0" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238404936480">
      <property name="externalValue:0" value="DECIMAL32" />
      <property name="internalValue:0" value="1" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238404929837">
      <property name="externalValue:0" value="DECIMAL64" />
      <property name="internalValue:0" value="2" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238404929994">
      <property name="externalValue:0" value="DECIMAL128" />
      <property name="internalValue:0" value="3" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="1238404930917">
      <property name="externalValue:0" value="UNLIMITED" />
      <property name="internalValue:0" value="4" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1237107700024">
    <property name="package:0" value="complex" />
    <property name="name:0" value="ComplexType" />
    <link role="extends:0" targetNodeId="1237218038292:14" resolveInfo="MathPrimitiveType" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1237109014833">
      <property name="value:0" value="complex" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238412091155">
      <property name="value:0" value="Double precision complex number" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="6389121991274611513">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="MatrixIndexWildcard" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="964810815943451306">
      <property name="value:0" value="*" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="964810815943451311">
      <property name="value:0" value="Wildcard index" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="6219660258345553845">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="VectorInitializer" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="6219660258345553847">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="rowIndex" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="6219660258344759893:14" resolveInfo="MatrixInitializerIndex" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="6219660258345553848">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="expression" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="6219660258345553849">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="rowsCount" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="6219660258345567356">
      <property name="value:0" value="vector" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="6219660258345567358">
      <property name="value:0" value="Vector initializer" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
    <node role="implements:0" type="jetbrains.mps.lang.structure.structure.InterfaceConceptReference:0" id="6219660258345570628">
      <link role="intfc:0" targetNodeId="6219660258345570625:14" resolveInfo="MatrixOrVectorInitializer" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1237106079927">
    <property name="name:0" value="BigIntegerType" />
    <property name="package:0" value="highPrecisionArithmetic" />
    <link role="extends:0" targetNodeId="1237218038292:14" resolveInfo="MathPrimitiveType" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1237108993363">
      <property name="value:0" value="biginteger" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238411990900">
      <property name="value:0" value="Arbitrary precision integer" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238345083695">
    <property name="package:0" value="methods" />
    <property name="name:0" value="ExponentExpression" />
    <link role="extends:0" targetNodeId="1238343594087:14" resolveInfo="MathFuncExpression" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238345097368">
      <property name="value:0" value="exp" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238345100370">
      <property name="value:0" value="Exponent of a value" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration:0" id="758819215871666038">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="MatrixNormKind" />
    <property name="memberIdentifierPolicy:0" value="custom" />
    <link role="memberDataType:0" targetNodeId="3v.1082983657062:0" resolveInfo="integer" />
    <link role="defaultMember:0" targetNodeId="758819215871666040:14" />
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="758819215871666039">
      <property name="internalValue:0" value="0" />
      <property name="externalValue:0" value="1" />
      <property name="javaIdentifier:0" value="norm1" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="758819215871666040">
      <property name="internalValue:0" value="1" />
      <property name="externalValue:0" value="∞" />
      <property name="javaIdentifier:0" value="normInfty" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="758819215871666041">
      <property name="externalValue:0" value="F" />
      <property name="internalValue:0" value="2" />
      <property name="javaIdentifier:0" value="norm2F" />
    </node>
    <node role="member:0" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration:0" id="758819215871666042">
      <property name="internalValue:0" value="3" />
      <property name="externalValue:0" value="max" />
      <property name="javaIdentifier:0" value="normMax" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1236428480583">
    <property name="package:0" value="bigSymbols" />
    <property name="name:0" value="BigMaxExpression" />
    <link role="extends:0" targetNodeId="1236428507726:14" resolveInfo="ExtrSymbol" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236428553619">
      <property name="value:0" value="MAX" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="1236427043810:14" resolveInfo="opName" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236428629297">
      <property name="value:0" value="max" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1236435048828">
      <property name="value:0" value="Maximum of expressions" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1236589266912">
    <property name="package:0" value="bigSymbols" />
    <property name="name:0" value="AbstractIndex" />
    <link role="extends:0" targetNodeId="3v.1133920641626:0" resolveInfo="BaseConcept" />
    <node role="implements:0" type="jetbrains.mps.lang.structure.structure.InterfaceConceptReference:0" id="1236589341082">
      <link role="intfc:0" targetNodeId="2v.1212170275853:3" resolveInfo="IValidIdentifier" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty:0" id="1236590328130">
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473854053:0" resolveInfo="abstract" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1238940230440">
    <property name="package:0" value="highPrecisionArithmetic" />
    <property name="name:0" value="DecimalPlusExpression" />
    <link role="extends:0" targetNodeId="1238402702427:14" resolveInfo="DecimalBinaryOperation" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238940514345">
      <property name="value:0" value=":+d" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473891462:0" resolveInfo="alias" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="1238940514346">
      <property name="value:0" value="plus operation for bigdecimal types" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.IntegerConceptProperty:0" id="1238940514347">
      <property name="value:0" value="2" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="2v.1166617629900:3" resolveInfo="priority" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration:0" id="6219660258345570625">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="MatrixOrVectorInitializer" />
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="6219660258344759893">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="MatrixInitializerIndex" />
    <link role="extends:0" targetNodeId="3v.1133920641626:0" resolveInfo="BaseConcept" />
    <node role="implements:0" type="jetbrains.mps.lang.structure.structure.InterfaceConceptReference:0" id="6219660258344759894">
      <link role="intfc:0" targetNodeId="3v.1169194658468:0" resolveInfo="INamedConcept" />
    </node>
    <node role="implements:0" type="jetbrains.mps.lang.structure.structure.InterfaceConceptReference:0" id="6219660258345570627">
      <link role="intfc:0" targetNodeId="6219660258345570625:14" resolveInfo="MatrixOrVectorInitializer" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="6389121991274611498">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="MatrixElementAccessExpression" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="6389121991274611516">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="expression" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="6389121991274611517">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="rowIndex" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="6389121991274611518">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="colIndex" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty:0" id="6389121991274611515">
      <link role="conceptPropertyDeclaration:0" targetNodeId="2v.1146528679895:3" resolveInfo="lvalue" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty:0" id="6389121991274611520">
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473994950:0" resolveInfo="dontSubstituteByDefault" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="6219660258344759890">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="MatrixInitializerIndexReference" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="6219660258344759925">
      <property name="metaClass:0" value="reference" />
      <property name="role:0" value="index" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="6219660258344759893:14" resolveInfo="MatrixInitializerIndex" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="1237218038292">
    <property name="name:0" value="MathPrimitiveType" />
    <link role="extends:0" targetNodeId="2v.1068431790189:3" resolveInfo="Type" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty:0" id="1237218060184">
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473854053:0" resolveInfo="abstract" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="7255837154369354272">
    <property name="name:0" value="ExponentialOperation" />
    <link role="extends:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    <node role="conceptPropertyDeclaration:0" type="jetbrains.mps.lang.structure.structure.StringConceptPropertyDeclaration:0" id="7255837154369354276">
      <property name="name:0" value="operationSymbol" />
    </node>
    <node role="linkDeclaration:0" type="jetbrains.mps.lang.structure.structure.LinkDeclaration:0" id="7255837154369354274">
      <property name="metaClass:0" value="aggregation" />
      <property name="role:0" value="expr" />
      <property name="sourceCardinality:0" value="1" />
      <link role="target:0" targetNodeId="2v.1068431790191:3" resolveInfo="Expression" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="7255837154369354836">
      <property name="value:0" value="?" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="7255837154369354276:14" resolveInfo="operationSymbol" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty:0" id="7388416617632033578">
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473994950:0" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty:0" id="7255837154369628615">
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473854053:0" resolveInfo="abstract" />
    </node>
    <node role="conceptLinkDeclaration:0" type="jetbrains.mps.lang.structure.structure.ReferenceConceptLinkDeclaration:0" id="7255837154369627529">
      <property name="name:0" value="allowedSubstituends" />
      <link role="targetType:0" targetNodeId="2.1071489090640:0" resolveInfo="ConceptDeclaration" />
    </node>
    <node role="conceptLink:0" type="jetbrains.mps.lang.structure.structure.ReferenceConceptLink:0" id="7255837154369627533">
      <link role="conceptLinkDeclaration:0" targetNodeId="7255837154369627529:14" resolveInfo="substituendConcepts" />
      <link role="target:0" targetNodeId="7255837154369354272:14" resolveInfo="ExponentialOperation" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="7255837154369580413">
    <property name="name:0" value="MatrixExponentialOperation" />
    <property name="package:0" value="matrix" />
    <link role="extends:0" targetNodeId="7255837154369354272:14" resolveInfo="ExponentialOperation" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty:0" id="7255837154369628620">
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473854053:0" resolveInfo="abstract" />
    </node>
    <node role="conceptLink:0" type="jetbrains.mps.lang.structure.structure.ReferenceConceptLink:0" id="7255837154369627531">
      <link role="conceptLinkDeclaration:0" targetNodeId="7255837154369627529:14" resolveInfo="aaaa" />
      <link role="target:0" targetNodeId="7255837154369580413:14" resolveInfo="MatrixExponentialOperation" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration:0" id="7255837154369797715">
    <property name="package:0" value="matrix" />
    <property name="name:0" value="ConjugateOperation" />
    <link role="extends:0" targetNodeId="7255837154369580413:14" resolveInfo="MatrixExponentialOperation" />
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="7255837154369797716">
      <property name="value:0" value="*" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="7255837154369354276:14" resolveInfo="operationSymbol" />
    </node>
    <node role="conceptProperty:0" type="jetbrains.mps.lang.structure.structure.StringConceptProperty:0" id="7388416617631668702">
      <property name="value:0" value="Matrix conjugate" />
      <link role="conceptPropertyDeclaration:0" targetNodeId="3v.1137473914776:0" resolveInfo="shortDescription" />
    </node>
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:ac7793bc-e58c-4954-a5e8-1100255584f9(jetbrains.mps.build.plugin)" version="0">
  <persistence version="8" />
  <language namespace="c0080a47-7e37-4558-bee9-9ae18e690549(jetbrains.mps.lang.extension)" />
  <language namespace="696c1165-4a59-463b-bc5d-902caab85dd0(jetbrains.mps.make.facet)" />
  <language namespace="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b(jetbrains.mps.make.script)" />
  <language namespace="63650c59-16c8-498a-99c8-005c7ee9515d(jetbrains.mps.lang.access)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="cu2c" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="59et" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.vfs(MPS.Core/jetbrains.mps.vfs@java_stub)" version="-1" />
  <import index="fn29" modelUID="r:6ba2667b-185e-45cd-ac65-e4b9d66da28e(jetbrains.mps.smodel.resources)" version="-1" />
  <import index="rk9m" modelUID="r:f8580193-afc4-4673-a635-d4757ca591cf(jetbrains.mps.internal.make.runtime.util)" version="-1" />
  <import index="o3n2" modelUID="r:26eadcf0-f275-4e90-be37-e4432772a74d(jetbrains.mps.build.util)" version="0" />
  <import index="wmh4" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.generator.generationTypes(MPS.Core/jetbrains.mps.generator.generationTypes@java_stub)" version="-1" />
  <import index="y5px" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.generator(MPS.Core/jetbrains.mps.generator@java_stub)" version="-1" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" />
  <import index="ff4b" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.progress(MPS.Core/jetbrains.mps.progress@java_stub)" version="-1" />
  <import index="ec5l" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" version="-1" />
  <import index="fy8e" modelUID="r:89c0fb70-0977-7777-a076-5906f9d8630f(jetbrains.mps.make.facets)" version="0" />
  <import index="tpcq" modelUID="r:00000000-0000-4000-0000-011c89590286(jetbrains.mps.lang.core.plugin)" version="0" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="vvvw" modelUID="r:b16ff46d-fa06-479d-9f5c-5b6e17e7f1b2(jetbrains.mps.make.facet.structure)" version="1" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="q9ra" modelUID="r:308041c6-80bc-4e26-b4b1-473fd45c9339(jetbrains.mps.make.script.structure)" version="-1" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="cx9y" modelUID="r:309aeee7-bee8-445c-b31d-35928d1da75f(jetbrains.mps.baseLanguage.tuples.structure)" version="2" implicit="yes" />
  <import index="qff7" modelUID="r:2ba2e307-a81d-4a21-9e0b-de3624e2fb83(jetbrains.mps.lang.access.structure)" version="0" implicit="yes" />
  <import index="z8de" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.util(MPS.OpenAPI/org.jetbrains.mps.openapi.util@java_stub)" version="-1" implicit="yes" />
  <root type="vvvw.FacetDeclaration" typeId="vvvw.6418371274763029523" id="4243675727097083061" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="CopyGeneratedScripts" />
    <node role="targetDeclaration" roleId="vvvw.6418371274763146558" type="vvvw.TargetDeclaration" typeId="vvvw.6418371274763029565" id="4243675727097117252" nodeInfo="ng">
      <property name="weight" nameId="vvvw.184542595914096177" value="100" />
      <property name="name" nameId="tpck.1169194664001" value="copyFiles" />
      <node role="dependency" roleId="vvvw.6418371274763146553" type="vvvw.TargetDependency" typeId="vvvw.6418371274763029600" id="809559803149869977" nodeInfo="ng">
        <property name="qualifier" nameId="vvvw.8351679702044326377" value="AFTER" />
        <link role="dependsOn" roleId="vvvw.6418371274763029603" targetNodeId="tpcq.6648795410103966566" resolveInfo="textGen" />
      </node>
      <node role="dependency" roleId="vvvw.6418371274763146553" type="vvvw.TargetDependency" typeId="vvvw.6418371274763029600" id="6516983340551934244" nodeInfo="ng">
        <property name="qualifier" nameId="vvvw.8351679702044326377" value="AFTER" />
        <link role="dependsOn" roleId="vvvw.6418371274763029603" targetNodeId="4243675727097117245" resolveInfo="collectScriptDirectories" />
      </node>
      <node role="dependency" roleId="vvvw.6418371274763146553" type="vvvw.TargetDependency" typeId="vvvw.6418371274763029600" id="809559803149869975" nodeInfo="ng">
        <link role="dependsOn" roleId="vvvw.6418371274763029603" targetNodeId="fy8e.525295658369136956" resolveInfo="reconcile" />
      </node>
      <node role="job" roleId="vvvw.2360002718792633290" type="q9ra.JobDeclaration" typeId="q9ra.505095865854384109" id="4243675727097117253" nodeInfo="ng">
        <node role="job" roleId="q9ra.505095865854384110" type="q9ra.JobDefinition" typeId="q9ra.2360002718792625579" id="4243675727097117254" nodeInfo="nn">
          <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="4243675727097117255" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3776947097491409446" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3776947097491409468" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="q9ra.ConceptFunctionParameter_progressMonitor" typeId="q9ra.4671800353872995469" id="3776947097491409447" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3776947097491409474" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="z8de.~ProgressMonitor%dstart(java%dlang%dString,int)%cvoid" resolveInfo="start" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3776947097491409475" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="Copying resources" />
                  </node>
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3776947097491409488" nodeInfo="nn">
                    <property name="value" nameId="tpee.1068580320021" value="2" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3776947097491409528" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3776947097491409550" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="q9ra.ConceptFunctionParameter_progressMonitor" typeId="q9ra.4671800353872995469" id="3776947097491409529" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3776947097491409555" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="z8de.~ProgressMonitor%dstep(java%dlang%dString)%cvoid" resolveInfo="step" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3776947097491409556" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="Build language ANT files" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.TryStatement" typeId="tpee.1153952380246" id="3776947097491473484" nodeInfo="nn">
              <node role="body" roleId="tpee.1153952416686" type="tpee.StatementList" typeId="tpee.1068580123136" id="3776947097491473485" nodeInfo="sn">
                <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="4902420589297092385" nodeInfo="nn">
                  <node role="inputSequence" roleId="tp2q.1153944424730" type="q9ra.InputResourcesParameter" typeId="q9ra.2360002718792625580" id="4902420589297092550" nodeInfo="nn" />
                  <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="4902420589297092387" nodeInfo="nr">
                    <property name="name" nameId="tpck.1169194664001" value="tres" />
                  </node>
                  <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="4902420589297092391" nodeInfo="sn">
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4796668409958471069" nodeInfo="nn">
                      <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4796668409958471070" nodeInfo="nr">
                        <property name="name" nameId="tpck.1169194664001" value="toCopy" />
                        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
                        <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="4796668409958471108" nodeInfo="nn">
                          <node role="creator" roleId="tpee.1145553007750" type="tp2q.ListCreatorWithInit" typeId="tp2q.1160600644654" id="809559803149789134" nodeInfo="nn">
                            <node role="elementType" roleId="tp2q.1237721435807" type="cx9y.IndexedTupleType" typeId="cx9y.1238852151516" id="809559803149789136" nodeInfo="in">
                              <node role="componentType" roleId="cx9y.1238852204892" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="809559803149789138" nodeInfo="in">
                                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="59et.~IFile" resolveInfo="IFile" />
                              </node>
                              <node role="componentType" roleId="cx9y.1238852204892" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="809559803149789140" nodeInfo="in">
                                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="59et.~IFile" resolveInfo="IFile" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="type" roleId="tpee.5680397130376446158" type="tp2q.ListType" typeId="tp2q.1151688443754" id="809559803149789127" nodeInfo="in">
                          <node role="elementType" roleId="tp2q.1151688676805" type="cx9y.IndexedTupleType" typeId="cx9y.1238852151516" id="809559803149789129" nodeInfo="in">
                            <node role="componentType" roleId="cx9y.1238852204892" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="809559803149789131" nodeInfo="in">
                              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="59et.~IFile" resolveInfo="IFile" />
                            </node>
                            <node role="componentType" roleId="cx9y.1238852204892" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="809559803149789133" nodeInfo="in">
                              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="59et.~IFile" resolveInfo="IFile" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="6108411337680467545" nodeInfo="nn" />
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4902420589297434843" nodeInfo="nn">
                      <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4902420589297434844" nodeInfo="nr">
                        <property name="name" nameId="tpck.1169194664001" value="ftres" />
                        <property name="isFinal" nameId="tpee.1176718929932" value="true" />
                        <node role="type" roleId="tpee.5680397130376446158" type="q9ra.ResourceType" typeId="q9ra.2360002718792446594" id="4902420589297434737" nodeInfo="in">
                          <node role="classifierType" roleId="q9ra.3308693286243004242" type="cx9y.NamedTupleType" typeId="cx9y.1239531918181" id="4902420589297434740" nodeInfo="in">
                            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="fn29.2257725414731981663" resolveInfo="TResource" />
                          </node>
                        </node>
                        <node role="initializer" roleId="tpee.1068431790190" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="4902420589297434845" nodeInfo="nn">
                          <link role="variable" roleId="tp2q.1153944258490" targetNodeId="4902420589297092387" resolveInfo="tres" />
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1670948443106472922" nodeInfo="nn">
                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1670948443106473716" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1670948443106472923" nodeInfo="nn">
                          <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="1670948443106473703" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="rk9m.505174985642741923" resolveInfo="DeltaReconciler" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1670948443106473705" nodeInfo="nn">
                              <node role="operation" roleId="tpee.1197027833540" type="cx9y.NamedTupleComponentAccessOperation" typeId="cx9y.1239576519914" id="2974980382108445516" nodeInfo="nn">
                                <link role="component" roleId="cx9y.1239576542472" targetNodeId="fn29.1290126658903852193" resolveInfo="delta" />
                              </node>
                              <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="4902420589297186114" nodeInfo="nn">
                                <link role="variable" roleId="tp2q.1153944258490" targetNodeId="4902420589297092387" resolveInfo="tres" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="1670948443106473720" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="rk9m.7471912399447708265" resolveInfo="visitAll" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1670948443106473721" nodeInfo="nn">
                            <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="1670948443106485491" nodeInfo="nn">
                              <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="1670948443106485492" nodeInfo="ig">
                                <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="rk9m.7471912399447707917" resolveInfo="FilesDelta.Visitor" />
                                <link role="classifier" roleId="tpee.1170346070688" targetNodeId="rk9m.7471912399447707915" resolveInfo="FilesDelta.Visitor" />
                                <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1670948443106485493" nodeInfo="nn" />
                                <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="1670948443106485494" nodeInfo="igu">
                                  <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                                  <property name="name" nameId="tpck.1169194664001" value="acceptWritten" />
                                  <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="1670948443106485495" nodeInfo="in" />
                                  <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="1670948443106485496" nodeInfo="nn" />
                                  <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1670948443106485497" nodeInfo="ir">
                                    <property name="name" nameId="tpck.1169194664001" value="file" />
                                    <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1670948443106485498" nodeInfo="in">
                                      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="59et.~IFile" resolveInfo="IFile" />
                                    </node>
                                  </node>
                                  <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="1670948443106485499" nodeInfo="sn">
                                    <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="994937056134597787" nodeInfo="nn">
                                      <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="994937056134597788" nodeInfo="sn">
                                        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="8686556823662870392" nodeInfo="nn">
                                          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="8686556823662870393" nodeInfo="nr">
                                            <property name="name" nameId="tpck.1169194664001" value="destPath" />
                                            <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="8686556823662870394" nodeInfo="in" />
                                            <node role="initializer" roleId="tpee.1068431790190" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="8686556823662870395" nodeInfo="nn">
                                              <node role="key" roleId="tp2q.1197932525128" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8686556823662870396" nodeInfo="nn">
                                                <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="8686556823662870397" nodeInfo="nn">
                                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1670948443106485497" resolveInfo="file" />
                                                </node>
                                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8686556823662870398" nodeInfo="nn">
                                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="59et.~IFile%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
                                                </node>
                                              </node>
                                              <node role="map" roleId="tp2q.1197932505799" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="8686556823662870399" nodeInfo="nn">
                                                <node role="key" roleId="tp2q.1197932525128" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8232981609242713252" nodeInfo="nn">
                                                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8232981609242713253" nodeInfo="nn">
                                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ec5l.~SModel%dgetReference()%corg%djetbrains%dmps%dopenapi%dmodel%dSModelReference" resolveInfo="getReference" />
                                                  </node>
                                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8232981609242713254" nodeInfo="nn">
                                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8232981609242713255" nodeInfo="nn">
                                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4902420589297434844" resolveInfo="ftres" />
                                                    </node>
                                                    <node role="operation" roleId="tpee.1197027833540" type="cx9y.NamedTupleComponentAccessOperation" typeId="cx9y.1239576519914" id="8232981609242713256" nodeInfo="nn">
                                                      <link role="component" roleId="cx9y.1239576542472" targetNodeId="fn29.4693363489975029716" resolveInfo="modelDescriptor" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node role="map" roleId="tp2q.1197932505799" type="vvvw.ForeignParametersComponentExpression" typeId="vvvw.3344436107830227889" id="8686556823662870400" nodeInfo="nn">
                                                  <node role="operand" roleId="tpee.1197027771414" type="vvvw.ForeignParametersExpression" typeId="vvvw.3344436107830227888" id="8686556823662870401" nodeInfo="nn">
                                                    <link role="target" roleId="vvvw.3344436107830227902" targetNodeId="4243675727097117245" resolveInfo="collectScriptDirectories" />
                                                  </node>
                                                  <node role="operation" roleId="tpee.1197027833540" type="cx9y.NamedTupleComponentAccessOperation" typeId="cx9y.1239576519914" id="8686556823662870402" nodeInfo="nn">
                                                    <link role="component" roleId="cx9y.1239576542472" targetNodeId="8686556823662821294" resolveInfo="fileNameToDestination" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="543355706921827627" nodeInfo="nn">
                                          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="543355706921827628" nodeInfo="sn">
                                            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="543355706921827647" nodeInfo="nn">
                                              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="543355706921827648" nodeInfo="nr">
                                                <property name="name" nameId="tpck.1169194664001" value="destFile" />
                                                <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="543355706921827649" nodeInfo="in">
                                                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="59et.~IFile" resolveInfo="IFile" />
                                                </node>
                                                <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="543355706921827655" nodeInfo="nn">
                                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="543355706921827652" nodeInfo="nn">
                                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="59et.~FileSystem%dgetInstance()%cjetbrains%dmps%dvfs%dFileSystem" resolveInfo="getInstance" />
                                                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="59et.~FileSystem" resolveInfo="FileSystem" />
                                                  </node>
                                                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="543355706921827661" nodeInfo="nn">
                                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="59et.~FileSystem%dgetFileByPath(java%dlang%dString)%cjetbrains%dmps%dvfs%dIFile" resolveInfo="getFileByPath" />
                                                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="543355706921827663" nodeInfo="nn">
                                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8686556823662870393" resolveInfo="destPath" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="834312300517945666" nodeInfo="nn">
                                              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="834312300517945668" nodeInfo="nn">
                                                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="834312300517945667" nodeInfo="nn">
                                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4796668409958471070" resolveInfo="toCopy" />
                                                </node>
                                                <node role="operation" roleId="tpee.1197027833540" type="tp2q.AddElementOperation" typeId="tp2q.1160612413312" id="809559803149789141" nodeInfo="nn">
                                                  <node role="argument" roleId="tp2q.1160612519549" type="cx9y.IndexedTupleLiteral" typeId="cx9y.1238853782547" id="809559803149789142" nodeInfo="nn">
                                                    <node role="component" roleId="cx9y.1238853845806" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="809559803149789143" nodeInfo="nn">
                                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1670948443106485497" resolveInfo="file" />
                                                    </node>
                                                    <node role="component" roleId="cx9y.1238853845806" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="4915877860351551486" nodeInfo="nn">
                                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="543355706921827648" resolveInfo="destFile" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node role="statement" roleId="tpee.1068581517665" type="q9ra.ReportFeedbackStatement" typeId="q9ra.3668957831723333672" id="834312300517945683" nodeInfo="nn">
                                              <property name="feedback" nameId="q9ra.3668957831723333678" value="INFO" />
                                              <node role="message" roleId="q9ra.3668957831723336680" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="834312300517945686" nodeInfo="nn">
                                                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="834312300517945690" nodeInfo="nn">
                                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="834312300517945689" nodeInfo="nn">
                                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4796668409958471070" resolveInfo="toCopy" />
                                                  </node>
                                                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetLastOperation" typeId="tp2q.1165595910856" id="834312300517945694" nodeInfo="nn" />
                                                </node>
                                                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="834312300517945685" nodeInfo="nn">
                                                  <property name="value" nameId="tpee.1070475926801" value="Copying " />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="543355706921827636" nodeInfo="nn">
                                            <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="543355706921827633" nodeInfo="nn">
                                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8686556823662870393" resolveInfo="destPath" />
                                            </node>
                                            <node role="operation" roleId="tpee.1197027833540" type="tpee.IsNotEmptyOperation" typeId="tpee.1225271408483" id="543355706921827642" nodeInfo="nn" />
                                          </node>
                                        </node>
                                      </node>
                                      <node role="condition" roleId="tpee.1068580123160" type="tpee.NotExpression" typeId="tpee.1081516740877" id="994937056134597791" nodeInfo="nn">
                                        <node role="expression" roleId="tpee.1081516765348" type="tpee.DotExpression" typeId="tpee.1197027756228" id="994937056134677482" nodeInfo="nn">
                                          <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="994937056134677477" nodeInfo="nn">
                                            <node role="operand" roleId="tpee.1197027771414" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="994937056134597793" nodeInfo="nn">
                                              <node role="creator" roleId="tpee.1145553007750" type="tpee.ArrayCreatorWithInitializer" typeId="tpee.1154542696413" id="994937056134677470" nodeInfo="nn">
                                                <node role="componentType" roleId="tpee.1154542793668" type="tpee.StringType" typeId="tpee.1225271177708" id="994937056134675625" nodeInfo="in" />
                                                <node role="initValue" roleId="tpee.1154542803372" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="994937056134677472" nodeInfo="nn">
                                                  <property name="value" nameId="tpee.1070475926801" value="dependencies" />
                                                </node>
                                                <node role="initValue" roleId="tpee.1154542803372" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="994937056134677474" nodeInfo="nn">
                                                  <property name="value" nameId="tpee.1070475926801" value="generated" />
                                                </node>
                                                <node role="initValue" roleId="tpee.1154542803372" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="994937056134677476" nodeInfo="nn">
                                                  <property name="value" nameId="tpee.1070475926801" value="trace.info" />
                                                </node>
                                              </node>
                                            </node>
                                            <node role="operation" roleId="tpee.1197027833540" type="tp2q.AsSequenceOperation" typeId="tp2q.1240325842691" id="994937056134677481" nodeInfo="nn" />
                                          </node>
                                          <node role="operation" roleId="tpee.1197027833540" type="tp2q.ContainsOperation" typeId="tp2q.1172254888721" id="994937056134677486" nodeInfo="nn">
                                            <node role="argument" roleId="tp2q.1172256416782" type="tpee.DotExpression" typeId="tpee.1197027756228" id="994937056134677489" nodeInfo="nn">
                                              <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="994937056134677488" nodeInfo="nn">
                                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1670948443106485497" resolveInfo="file" />
                                              </node>
                                              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="994937056134677493" nodeInfo="nn">
                                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="59et.~IFile%dgetName()%cjava%dlang%dString" resolveInfo="getName" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="8686556823662871159" nodeInfo="nn" />
                                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="834312300517945732" nodeInfo="nn">
                                      <node role="expression" roleId="tpee.1068580123156" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="834312300517945733" nodeInfo="nn">
                                        <property name="value" nameId="tpee.1068580123138" value="true" />
                                      </node>
                                    </node>
                                  </node>
                                  <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="1670948443106485500" nodeInfo="nn">
                                    <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5780287594867997506" nodeInfo="nn">
                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780287594867997527" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="255996322456862781" nodeInfo="nn">
                          <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="59et.~FileSystem" resolveInfo="FileSystem" />
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="59et.~FileSystem%dgetInstance()%cjetbrains%dmps%dvfs%dFileSystem" resolveInfo="getInstance" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5780287594867997532" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="59et.~FileSystem%drunWriteTransaction(java%dlang%dRunnable)%cboolean" resolveInfo="runWriteTransaction" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="5780287594867997539" nodeInfo="nn">
                            <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="5780287594867997540" nodeInfo="sn">
                              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6648795410103988203" nodeInfo="nn">
                                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6648795410103988204" nodeInfo="nn">
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6648795410103988205" nodeInfo="nn">
                                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="cu2c.~ModelAccess" resolveInfo="ModelAccess" />
                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~ModelAccess%dinstance()%cjetbrains%dmps%dsmodel%dModelAccess" resolveInfo="instance" />
                                  </node>
                                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6648795410103988206" nodeInfo="nn">
                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~ModelCommandExecutor%drequireWrite(java%dlang%dRunnable)%cvoid" resolveInfo="requireWrite" />
                                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="3736430118459669522" nodeInfo="nn">
                                      <node role="creator" roleId="tpee.1145553007750" type="tpee.AnonymousClassCreator" typeId="tpee.1182160077978" id="3736430118459669524" nodeInfo="nn">
                                        <node role="cls" roleId="tpee.1182160096073" type="tpee.AnonymousClass" typeId="tpee.1170345865475" id="3736430118459669525" nodeInfo="ig">
                                          <property name="nonStatic" nameId="tpee.521412098689998745" value="true" />
                                          <link role="classifier" roleId="tpee.1170346070688" targetNodeId="e2lb.~Runnable" resolveInfo="Runnable" />
                                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%d&lt;init&gt;()" resolveInfo="Object" />
                                          <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3736430118459669526" nodeInfo="nn" />
                                          <node role="member" roleId="tpee.5375687026011219971" type="tpee.InstanceMethodDeclaration" typeId="tpee.1068580123165" id="3736430118459669527" nodeInfo="igu">
                                            <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
                                            <property name="isAbstract" nameId="tpee.1178608670077" value="false" />
                                            <property name="name" nameId="tpck.1169194664001" value="run" />
                                            <property name="isFinal" nameId="tpee.1181808852946" value="false" />
                                            <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3736430118459669528" nodeInfo="nn" />
                                            <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3736430118459669529" nodeInfo="in" />
                                            <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3736430118459669530" nodeInfo="sn">
                                              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6648795410103988209" nodeInfo="nn">
                                                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6648795410103988210" nodeInfo="nn">
                                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="834312300517945681" nodeInfo="nn">
                                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4796668409958471070" resolveInfo="toCopy" />
                                                  </node>
                                                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.VisitAllOperation" typeId="tp2q.1204980550705" id="6648795410103988214" nodeInfo="nn">
                                                    <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="6648795410103988215" nodeInfo="nn">
                                                      <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="6648795410103988216" nodeInfo="sn">
                                                        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6648795410103988217" nodeInfo="nn">
                                                          <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6648795410103988218" nodeInfo="nn">
                                                            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="59et.~IFileUtils" resolveInfo="IFileUtils" />
                                                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="59et.~IFileUtils%dcopyFileContent(jetbrains%dmps%dvfs%dIFile,jetbrains%dmps%dvfs%dIFile)%cboolean" resolveInfo="copyFileContent" />
                                                            <node role="actualArgument" roleId="tpee.1068499141038" type="cx9y.IndexedTupleMemberAccessExpression" typeId="cx9y.1238857743184" id="6648795410103988219" nodeInfo="nn">
                                                              <node role="index" roleId="cx9y.1238857834412" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="6648795410103988220" nodeInfo="nn">
                                                                <property name="value" nameId="tpee.1068580320021" value="0" />
                                                              </node>
                                                              <node role="tuple" roleId="cx9y.1238857764950" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="6648795410103988221" nodeInfo="nn">
                                                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6648795410103988225" resolveInfo="ftc" />
                                                              </node>
                                                            </node>
                                                            <node role="actualArgument" roleId="tpee.1068499141038" type="cx9y.IndexedTupleMemberAccessExpression" typeId="cx9y.1238857743184" id="6648795410103988222" nodeInfo="nn">
                                                              <node role="index" roleId="cx9y.1238857834412" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="6648795410103988223" nodeInfo="nn">
                                                                <property name="value" nameId="tpee.1068580320021" value="1" />
                                                              </node>
                                                              <node role="tuple" roleId="cx9y.1238857764950" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="6648795410103988224" nodeInfo="nn">
                                                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6648795410103988225" resolveInfo="ftc" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="6648795410103988225" nodeInfo="ig">
                                                        <property name="name" nameId="tpck.1169194664001" value="ftc" />
                                                        <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="6648795410103988226" nodeInfo="in" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node role="annotation" roleId="tpee.1188208488637" type="tpee.AnnotationInstance" typeId="tpee.1188207840427" id="3998760702358616801" nodeInfo="nn">
                                              <link role="annotation" roleId="tpee.1188208074048" targetNodeId="e2lb.~Override" resolveInfo="Override" />
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
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="tpee.1068581517665" type="q9ra.OutputResources" typeId="q9ra.2360002718792622184" id="1670948443106485514" nodeInfo="nn">
                      <node role="resource" roleId="q9ra.2360002718792622193" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="4902420589297280546" nodeInfo="nn">
                        <link role="variable" roleId="tp2q.1153944258490" targetNodeId="4902420589297092387" resolveInfo="tres" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="finallyBody" roleId="tpee.1153952429843" type="tpee.StatementList" typeId="tpee.1068580123136" id="3776947097491473487" nodeInfo="sn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3776947097491473492" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3776947097491473514" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="q9ra.ConceptFunctionParameter_progressMonitor" typeId="q9ra.4671800353872995469" id="3776947097491473493" nodeInfo="nn" />
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3776947097491473519" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="z8de.~ProgressMonitor%ddone()%cvoid" resolveInfo="done" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="input" roleId="vvvw.119022571401949664" type="vvvw.ResourceTypeDeclaration" typeId="vvvw.119022571401949652" id="4243675727097117259" nodeInfo="ng">
        <node role="resourceType" roleId="vvvw.119022571401949655" type="vvvw.ResourceClassifierType" typeId="vvvw.119022571402207412" id="4902420589296896374" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="fn29.2257725414731981663" resolveInfo="TResource" />
        </node>
      </node>
    </node>
    <node role="targetDeclaration" roleId="vvvw.6418371274763146558" type="vvvw.TargetDeclaration" typeId="vvvw.6418371274763029565" id="4243675727097117245" nodeInfo="ng">
      <property name="weight" nameId="vvvw.184542595914096177" value="100" />
      <property name="name" nameId="tpck.1169194664001" value="collectScriptDirectories" />
      <node role="dependency" roleId="vvvw.6418371274763146553" type="vvvw.TargetDependency" typeId="vvvw.6418371274763029600" id="809559803149892467" nodeInfo="ng">
        <link role="dependsOn" roleId="vvvw.6418371274763029603" targetNodeId="tpcq.6648795410103966566" resolveInfo="textGen" />
      </node>
      <node role="dependency" roleId="vvvw.6418371274763146553" type="vvvw.TargetDependency" typeId="vvvw.6418371274763029600" id="809559803149895933" nodeInfo="ng">
        <property name="qualifier" nameId="vvvw.8351679702044326377" value="AFTER" />
        <link role="dependsOn" roleId="vvvw.6418371274763029603" targetNodeId="tpcq.6648795410103939855" resolveInfo="generate" />
      </node>
      <node role="job" roleId="vvvw.2360002718792633290" type="q9ra.JobDeclaration" typeId="q9ra.505095865854384109" id="4243675727097117246" nodeInfo="ng">
        <node role="job" roleId="q9ra.505095865854384110" type="q9ra.JobDefinition" typeId="q9ra.2360002718792625579" id="4243675727097117247" nodeInfo="nn">
          <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="4243675727097117248" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8686556823662822575" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="8686556823662822582" nodeInfo="nn">
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="8686556823662822585" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp2q.HashMapCreator" typeId="tp2q.1197686869805" id="8686556823662822586" nodeInfo="nn">
                    <node role="keyType" roleId="tp2q.1197687026896" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8686556823662822587" nodeInfo="in">
                      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ec5l.~SModelReference" resolveInfo="SModelReference" />
                    </node>
                    <node role="valueType" roleId="tp2q.1197687035757" type="tp2q.MapType" typeId="tp2q.1197683403723" id="8686556823662822588" nodeInfo="in">
                      <node role="valueType" roleId="tp2q.1197683475734" type="tpee.StringType" typeId="tpee.1225271177708" id="8686556823662822589" nodeInfo="in" />
                      <node role="keyType" roleId="tp2q.1197683466920" type="tpee.StringType" typeId="tpee.1225271177708" id="8686556823662822590" nodeInfo="in" />
                    </node>
                  </node>
                </node>
                <node role="lValue" roleId="tpee.1068498886295" type="vvvw.LocalParametersComponentExpression" typeId="vvvw.7320828025189375155" id="8686556823662822576" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="vvvw.LocalParametersExpression" typeId="vvvw.7320828025189375154" id="8686556823662822577" nodeInfo="nn" />
                  <node role="operation" roleId="tpee.1197027833540" type="cx9y.NamedTupleComponentAccessOperation" typeId="cx9y.1239576519914" id="8686556823662822578" nodeInfo="nn">
                    <link role="component" roleId="cx9y.1239576542472" targetNodeId="8686556823662821294" resolveInfo="fileNameToDestination" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="809559803149895943" nodeInfo="nn">
              <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="809559803149895944" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="gres" />
              </node>
              <node role="inputSequence" roleId="tp2q.1153944424730" type="q9ra.InputResourcesParameter" typeId="q9ra.2360002718792625580" id="809559803149895947" nodeInfo="nn" />
              <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="809559803149895946" nodeInfo="sn">
                <node role="statement" roleId="tpee.1068581517665" type="qff7.ExecuteLightweightCommandStatement" typeId="qff7.8974276187400348181" id="809559803149985730" nodeInfo="nn">
                  <node role="commandClosureLiteral" roleId="qff7.8974276187400348171" type="qff7.CommandClosureLiteral" typeId="qff7.8974276187400348173" id="809559803149985731" nodeInfo="nn">
                    <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="809559803149985732" nodeInfo="sn">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8686556823662821330" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="8686556823662822569" nodeInfo="nn">
                          <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="8686556823662822572" nodeInfo="nn">
                            <node role="creator" roleId="tpee.1145553007750" type="tp2q.HashMapCreator" typeId="tp2q.1197686869805" id="8686556823662870307" nodeInfo="nn">
                              <node role="keyType" roleId="tp2q.1197687026896" type="tpee.StringType" typeId="tpee.1225271177708" id="8686556823662870311" nodeInfo="in" />
                              <node role="valueType" roleId="tp2q.1197687035757" type="tpee.StringType" typeId="tpee.1225271177708" id="8686556823662870312" nodeInfo="in" />
                            </node>
                          </node>
                          <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="8686556823662822558" nodeInfo="nn">
                            <node role="key" roleId="tp2q.1197932525128" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8232981609242713247" nodeInfo="nn">
                              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8232981609242713248" nodeInfo="nn">
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ec5l.~SModel%dgetReference()%corg%djetbrains%dmps%dopenapi%dmodel%dSModelReference" resolveInfo="getReference" />
                              </node>
                              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8232981609242713249" nodeInfo="nn">
                                <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="8232981609242713250" nodeInfo="nn">
                                  <link role="variable" roleId="tp2q.1153944258490" targetNodeId="809559803149895944" resolveInfo="gres" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="cx9y.NamedTupleComponentAccessOperation" typeId="cx9y.1239576519914" id="8232981609242713251" nodeInfo="nn">
                                  <link role="component" roleId="cx9y.1239576542472" targetNodeId="fn29.2257725414731981671" resolveInfo="model" />
                                </node>
                              </node>
                            </node>
                            <node role="map" roleId="tp2q.1197932505799" type="vvvw.LocalParametersComponentExpression" typeId="vvvw.7320828025189375155" id="8686556823662821331" nodeInfo="nn">
                              <node role="operand" roleId="tpee.1197027771414" type="vvvw.LocalParametersExpression" typeId="vvvw.7320828025189375154" id="8686556823662821332" nodeInfo="nn" />
                              <node role="operation" roleId="tpee.1197027833540" type="cx9y.NamedTupleComponentAccessOperation" typeId="cx9y.1239576519914" id="8686556823662821333" nodeInfo="nn">
                                <link role="component" roleId="cx9y.1239576542472" targetNodeId="8686556823662821294" resolveInfo="fileNameToDestination" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="6108411337680467476" nodeInfo="nn" />
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="6108411337680467482" nodeInfo="nn">
                        <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="6108411337680467484" nodeInfo="nn">
                          <property name="text" nameId="tpee.6329021646629104958" value="all descendants with scripts_dir_property" />
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3186742424691094739" nodeInfo="nn">
                        <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3186742424691094740" nodeInfo="nr">
                          <property name="name" nameId="tpck.1169194664001" value="buildScriptDescendants" />
                          <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3186742424691094796" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3186742424691094770" nodeInfo="nn">
                              <node role="operand" roleId="tpee.1197027771414" type="tpee.ParenthesizedExpression" typeId="tpee.1079359253375" id="6967233722066130043" nodeInfo="nn">
                                <node role="expression" roleId="tpee.1079359253376" type="tpee.CastExpression" typeId="tpee.1070534934090" id="6967233722066130055" nodeInfo="nn">
                                  <node role="type" roleId="tpee.1070534934091" type="tp25.SModelType" typeId="tp25.1143226024141" id="6967233722066130058" nodeInfo="in" />
                                  <node role="expression" roleId="tpee.1070534934092" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6967233722066130044" nodeInfo="nn">
                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6967233722066130045" nodeInfo="nn">
                                      <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="4902420589296604659" nodeInfo="nn">
                                        <link role="variable" roleId="tp2q.1153944258490" targetNodeId="809559803149895944" resolveInfo="gres" />
                                      </node>
                                      <node role="operation" roleId="tpee.1197027833540" type="cx9y.NamedTupleComponentAccessOperation" typeId="cx9y.1239576519914" id="6967233722066130047" nodeInfo="nn">
                                        <link role="component" roleId="cx9y.1239576542472" targetNodeId="fn29.2257725414731981676" resolveInfo="status" />
                                      </node>
                                    </node>
                                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6967233722066130048" nodeInfo="nn">
                                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="y5px.~GenerationStatus%dgetOutputModel()%corg%djetbrains%dmps%dopenapi%dmodel%dSModel" resolveInfo="getOutputModel" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="operation" roleId="tpee.1197027833540" type="tp25.Model_RootsOperation" typeId="tp25.1171315804604" id="3186742424691094772" nodeInfo="nn" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tp2q.WhereOperation" typeId="tp2q.1202120902084" id="3186742424691095094" nodeInfo="nn">
                              <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="3186742424691095095" nodeInfo="nn">
                                <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="3186742424691095096" nodeInfo="sn">
                                  <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3186742424691105265" nodeInfo="nn">
                                    <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3186742424691105266" nodeInfo="nr">
                                      <property name="name" nameId="tpck.1169194664001" value="userObject" />
                                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3186742424691105267" nodeInfo="in">
                                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
                                      </node>
                                      <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3186742424691105268" nodeInfo="nn">
                                        <node role="operand" roleId="tpee.1197027771414" type="tp25.SemanticDowncastExpression" typeId="tp25.1145404486709" id="3186742424691105269" nodeInfo="nn">
                                          <node role="leftExpression" roleId="tp25.1145404616321" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3186742424691105270" nodeInfo="nn">
                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3186742424691095097" resolveInfo="it" />
                                          </node>
                                        </node>
                                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3186742424691105271" nodeInfo="nn">
                                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ec5l.~SNode%dgetUserObject(java%dlang%dObject)%cjava%dlang%dObject" resolveInfo="getUserObject" />
                                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3186742424691105272" nodeInfo="nn">
                                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="o3n2.809559803149870635" resolveInfo="SCRIPTS_TARGET_PROPERTY" />
                                            <link role="classifier" roleId="tpee.1144433057691" targetNodeId="o3n2.809559803149870629" resolveInfo="GenerationUtil" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3186742424691105273" nodeInfo="nn">
                                    <node role="expression" roleId="tpee.1068580123156" type="tpee.AndExpression" typeId="tpee.1080120340718" id="3186742424691105274" nodeInfo="nn">
                                      <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.InstanceOfExpression" typeId="tpee.1081256982272" id="3186742424691105275" nodeInfo="nn">
                                        <node role="classType" roleId="tpee.1081256993305" type="tpee.StringType" typeId="tpee.1225271177708" id="3186742424691105276" nodeInfo="in" />
                                        <node role="leftExpression" roleId="tpee.1081256993304" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3186742424691105277" nodeInfo="nn">
                                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3186742424691105266" resolveInfo="userObject" />
                                        </node>
                                      </node>
                                      <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="3186742424691105278" nodeInfo="nn">
                                        <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3186742424691105279" nodeInfo="nn">
                                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3186742424691105266" resolveInfo="userObject" />
                                        </node>
                                        <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="3186742424691105280" nodeInfo="nn" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="3186742424691095097" nodeInfo="ig">
                                  <property name="name" nameId="tpck.1169194664001" value="it" />
                                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="3186742424691095098" nodeInfo="in" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="type" roleId="tpee.5680397130376446158" type="tp2q.SequenceType" typeId="tp2q.1151689724996" id="3186742424691105291" nodeInfo="in">
                            <node role="elementType" roleId="tp2q.1151689745422" type="tp25.SNodeType" typeId="tp25.1138055754698" id="3186742424691105293" nodeInfo="in" />
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="6108411337680467474" nodeInfo="nn" />
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="6108411337680467488" nodeInfo="nn">
                        <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="6108411337680467490" nodeInfo="nn">
                          <property name="text" nameId="tpee.6329021646629104958" value="calculate output file name and map it to scripts dir" />
                        </node>
                      </node>
                      <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="3186742424691105325" nodeInfo="nn">
                        <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="3186742424691105326" nodeInfo="nr">
                          <property name="name" nameId="tpck.1169194664001" value="descendant" />
                        </node>
                        <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3186742424691105329" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3186742424691094740" resolveInfo="buildScriptDescendants" />
                        </node>
                        <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="3186742424691105328" nodeInfo="sn">
                          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="8686556823662821285" nodeInfo="nn">
                            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="8686556823662821286" nodeInfo="nr">
                              <property name="name" nameId="tpck.1169194664001" value="fileName" />
                              <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="8686556823662821292" nodeInfo="in" />
                              <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8686556823662821288" nodeInfo="nn">
                                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="wmh4.~TextGenerator" resolveInfo="TextGenerator" />
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="wmh4.~TextGenerator%dgetFileName(org%djetbrains%dmps%dopenapi%dmodel%dSNode)%cjava%dlang%dString" resolveInfo="getFileName" />
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="8686556823662821289" nodeInfo="nn">
                                  <link role="variable" roleId="tp2q.1153944258490" targetNodeId="3186742424691105326" resolveInfo="descendant" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3493897664597075806" nodeInfo="nn">
                            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3493897664597075807" nodeInfo="nr">
                              <property name="name" nameId="tpck.1169194664001" value="targetXml" />
                              <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="3493897664597075808" nodeInfo="in" />
                              <node role="initializer" roleId="tpee.1068431790190" type="tpee.ParenthesizedExpression" typeId="tpee.1079359253375" id="3493897664597075809" nodeInfo="nn">
                                <node role="expression" roleId="tpee.1079359253376" type="tpee.CastExpression" typeId="tpee.1070534934090" id="3493897664597075810" nodeInfo="nn">
                                  <node role="type" roleId="tpee.1070534934091" type="tpee.StringType" typeId="tpee.1225271177708" id="3493897664597075811" nodeInfo="in" />
                                  <node role="expression" roleId="tpee.1070534934092" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3493897664597075812" nodeInfo="nn">
                                    <node role="operand" roleId="tpee.1197027771414" type="tp25.SemanticDowncastExpression" typeId="tp25.1145404486709" id="3493897664597075813" nodeInfo="nn">
                                      <node role="leftExpression" roleId="tp25.1145404616321" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="3493897664597075814" nodeInfo="nn">
                                        <link role="variable" roleId="tp2q.1153944258490" targetNodeId="3186742424691105326" resolveInfo="descendant" />
                                      </node>
                                    </node>
                                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3493897664597075815" nodeInfo="nn">
                                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ec5l.~SNode%dgetUserObject(java%dlang%dObject)%cjava%dlang%dObject" resolveInfo="getUserObject" />
                                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="3493897664597075816" nodeInfo="nn">
                                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="o3n2.809559803149870635" resolveInfo="SCRIPTS_TARGET_PROPERTY" />
                                        <link role="classifier" roleId="tpee.1144433057691" targetNodeId="o3n2.809559803149870629" resolveInfo="GenerationUtil" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="3493897664597074109" nodeInfo="nn">
                            <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="3493897664597074110" nodeInfo="sn">
                              <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3038073278400310265" nodeInfo="nn">
                                <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3038073278400310266" nodeInfo="nr">
                                  <property name="name" nameId="tpck.1169194664001" value="ext" />
                                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3038073278400310267" nodeInfo="in">
                                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~String" resolveInfo="String" />
                                  </node>
                                  <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3038073278400310270" nodeInfo="nn">
                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3038073278400308441" resolveInfo="getExtensionWithDot" />
                                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="3038073278400308430" resolveInfo="Utils" />
                                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400310271" nodeInfo="nn">
                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8686556823662821286" resolveInfo="fileName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="3493897664597077882" nodeInfo="nn">
                                <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="3493897664597077883" nodeInfo="sn">
                                  <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="3493897664597078014" nodeInfo="nn">
                                    <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="3493897664597078018" nodeInfo="nn">
                                      <property name="text" nameId="tpee.6329021646629104958" value="do not copy" />
                                    </node>
                                  </node>
                                  <node role="statement" roleId="tpee.1068581517665" type="q9ra.ReportFeedbackStatement" typeId="q9ra.3668957831723333672" id="3038073278400327784" nodeInfo="nn">
                                    <property name="feedback" nameId="q9ra.3668957831723333678" value="WARNING" />
                                    <node role="message" roleId="q9ra.3668957831723336680" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="3038073278400327797" nodeInfo="nn">
                                      <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3038073278400327786" nodeInfo="nn">
                                        <property name="value" nameId="tpee.1070475926801" value="Ignored " />
                                      </node>
                                      <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400327800" nodeInfo="nn">
                                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8686556823662821286" resolveInfo="fileName" />
                                      </node>
                                    </node>
                                  </node>
                                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ContinueStatement" typeId="tpee.1082113931046" id="3493897664597078006" nodeInfo="nn" />
                                </node>
                                <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3038073278400310294" nodeInfo="nn">
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400310273" nodeInfo="nn">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400310266" resolveInfo="ext" />
                                  </node>
                                  <node role="operation" roleId="tpee.1197027833540" type="tpee.IsEmptyOperation" typeId="tpee.1225271369338" id="3038073278400310300" nodeInfo="nn" />
                                </node>
                              </node>
                              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3493897664597078158" nodeInfo="nn">
                                <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="3493897664597078160" nodeInfo="nn">
                                  <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400335151" nodeInfo="nn">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3493897664597075807" resolveInfo="targetXml" />
                                  </node>
                                  <node role="rValue" roleId="tpee.1068498886297" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="3493897664597078193" nodeInfo="nn">
                                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3038073278400310302" nodeInfo="nn">
                                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3038073278400310191" resolveInfo="withoutExtension" />
                                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="3038073278400308430" resolveInfo="Utils" />
                                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400335152" nodeInfo="nn">
                                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3493897664597075807" resolveInfo="targetXml" />
                                      </node>
                                    </node>
                                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3493897664597078238" nodeInfo="nn">
                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400310266" resolveInfo="ext" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="condition" roleId="tpee.1068580123160" type="tpee.NotExpression" typeId="tpee.1081516740877" id="3493897664597074114" nodeInfo="nn">
                              <node role="expression" roleId="tpee.1081516765348" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3493897664597074136" nodeInfo="nn">
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3493897664597074115" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8686556823662821286" resolveInfo="fileName" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3493897664597075818" nodeInfo="nn">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dendsWith(java%dlang%dString)%cboolean" resolveInfo="endsWith" />
                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3493897664597075819" nodeInfo="nn">
                                    <property name="value" nameId="tpee.1070475926801" value=".xml" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8686556823662870314" nodeInfo="nn">
                            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="8686556823662870351" nodeInfo="nn">
                              <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="8686556823662870345" nodeInfo="nn">
                                <node role="key" roleId="tp2q.1197932525128" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="8686556823662870348" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8686556823662821286" resolveInfo="fileName" />
                                </node>
                                <node role="map" roleId="tp2q.1197932505799" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="8686556823662870321" nodeInfo="nn">
                                  <node role="key" roleId="tp2q.1197932525128" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8232981609242713279" nodeInfo="nn">
                                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="8232981609242713280" nodeInfo="nn">
                                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ec5l.~SModel%dgetReference()%corg%djetbrains%dmps%dopenapi%dmodel%dSModelReference" resolveInfo="getReference" />
                                    </node>
                                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8232981609242713281" nodeInfo="nn">
                                      <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="8232981609242713282" nodeInfo="nn">
                                        <link role="variable" roleId="tp2q.1153944258490" targetNodeId="809559803149895944" resolveInfo="gres" />
                                      </node>
                                      <node role="operation" roleId="tpee.1197027833540" type="cx9y.NamedTupleComponentAccessOperation" typeId="cx9y.1239576519914" id="8232981609242713283" nodeInfo="nn">
                                        <link role="component" roleId="cx9y.1239576542472" targetNodeId="fn29.2257725414731981671" resolveInfo="model" />
                                      </node>
                                    </node>
                                  </node>
                                  <node role="map" roleId="tp2q.1197932505799" type="vvvw.LocalParametersComponentExpression" typeId="vvvw.7320828025189375155" id="8686556823662870315" nodeInfo="nn">
                                    <node role="operand" roleId="tpee.1197027771414" type="vvvw.LocalParametersExpression" typeId="vvvw.7320828025189375154" id="8686556823662870316" nodeInfo="nn" />
                                    <node role="operation" roleId="tpee.1197027833540" type="cx9y.NamedTupleComponentAccessOperation" typeId="cx9y.1239576519914" id="8686556823662870317" nodeInfo="nn">
                                      <link role="component" roleId="cx9y.1239576542472" targetNodeId="8686556823662821294" resolveInfo="fileNameToDestination" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="rValue" roleId="tpee.1068498886297" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3493897664597075817" nodeInfo="nn">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3493897664597075807" resolveInfo="targetXml" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="809559803149914579" nodeInfo="nn" />
                <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="809559803149914581" nodeInfo="nn">
                  <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="809559803149914582" nodeInfo="nn">
                    <property name="text" nameId="tpee.6329021646629104958" value="todo" />
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="809559803149914608" nodeInfo="nn">
                  <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="809559803149914610" nodeInfo="nn">
                    <property name="text" nameId="tpee.6329021646629104958" value="some other roots that exist in the model" />
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="809559803149914612" nodeInfo="nn">
                  <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="809559803149914613" nodeInfo="nn">
                    <property name="text" nameId="tpee.6329021646629104958" value="do we need to copy them?" />
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="809559803149914615" nodeInfo="nn">
                  <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="809559803149914616" nodeInfo="nn">
                    <property name="text" nameId="tpee.6329021646629104958" value="what if some of them are build scripts (or generate build scripts %) )?" />
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="809559803149914618" nodeInfo="nn">
                  <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="809559803149914619" nodeInfo="nn">
                    <property name="text" nameId="tpee.6329021646629104958" value="what if some of them are required to be copied?" />
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="809559803149914621" nodeInfo="nn">
                  <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="809559803149914622" nodeInfo="nn">
                    <property name="text" nameId="tpee.6329021646629104958" value="some kind of annotation, like @ResourceFile(buildScript=buildscript) ????" />
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="809559803149914624" nodeInfo="nn">
                  <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.TextCommentPart" typeId="tpee.6329021646629104957" id="809559803149914625" nodeInfo="nn">
                    <property name="text" nameId="tpee.6329021646629104958" value="yep" />
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="809559803149914681" nodeInfo="nn" />
                <node role="statement" roleId="tpee.1068581517665" type="q9ra.OutputResources" typeId="q9ra.2360002718792622184" id="809559803149914683" nodeInfo="nn">
                  <node role="resource" roleId="q9ra.2360002718792622193" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="809559803149914685" nodeInfo="nn">
                    <link role="variable" roleId="tp2q.1153944258490" targetNodeId="809559803149895944" resolveInfo="gres" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameters" roleId="vvvw.7320828025189219295" type="vvvw.ParametersDeclaration" typeId="vvvw.7320828025189345662" id="4243675727097117262" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="Parameters" />
        <node role="component" roleId="cx9y.1239529553065" type="cx9y.NamedTupleComponentDeclaration" typeId="cx9y.1239462176079" id="8686556823662821294" nodeInfo="ng">
          <property name="final" nameId="cx9y.1240400839614" value="false" />
          <property name="name" nameId="tpck.1169194664001" value="fileNameToDestination" />
          <node role="type" roleId="cx9y.1239462974287" type="tp2q.MapType" typeId="tp2q.1197683403723" id="8686556823662821299" nodeInfo="in">
            <node role="keyType" roleId="tp2q.1197683466920" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="8686556823662821305" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ec5l.~SModelReference" resolveInfo="SModelReference" />
            </node>
            <node role="valueType" roleId="tp2q.1197683475734" type="tp2q.MapType" typeId="tp2q.1197683403723" id="8686556823662821309" nodeInfo="in">
              <node role="valueType" roleId="tp2q.1197683475734" type="tpee.StringType" typeId="tpee.1225271177708" id="8686556823662821322" nodeInfo="in" />
              <node role="keyType" roleId="tp2q.1197683466920" type="tpee.StringType" typeId="tpee.1225271177708" id="8686556823662821318" nodeInfo="in" />
            </node>
          </node>
        </node>
        <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4243675727097117263" nodeInfo="nn" />
      </node>
      <node role="input" roleId="vvvw.119022571401949664" type="vvvw.ResourceTypeDeclaration" typeId="vvvw.119022571401949652" id="809559803149895937" nodeInfo="ng">
        <node role="resourceType" roleId="vvvw.119022571401949655" type="vvvw.ResourceClassifierType" typeId="vvvw.119022571402207412" id="4902420589296480156" nodeInfo="in">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="fn29.2257725414731981668" resolveInfo="GResource" />
        </node>
      </node>
    </node>
    <node role="required" roleId="vvvw.6447445394688422656" type="vvvw.RelatedFacetReference" typeId="vvvw.8351679702044320297" id="4243675727097117239" nodeInfo="ng">
      <link role="facet" roleId="vvvw.6447445394688422643" targetNodeId="tpcq.6648795410103939538" resolveInfo="Generate" />
    </node>
    <node role="required" roleId="vvvw.6447445394688422656" type="vvvw.RelatedFacetReference" typeId="vvvw.8351679702044320297" id="4243675727097117241" nodeInfo="ng">
      <link role="facet" roleId="vvvw.6447445394688422643" targetNodeId="tpcq.6648795410103966565" resolveInfo="TextGen" />
    </node>
  </root>
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="3038073278400308430" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Utils" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="3038073278400308431" nodeInfo="igu">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="3038073278400308432" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3038073278400308433" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3038073278400308434" nodeInfo="sn" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="3038073278400308441" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="getExtensionWithDot" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.StringType" typeId="tpee.1225271177708" id="3038073278400308444" nodeInfo="in" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3038073278400308443" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3038073278400308447" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3038073278400308448" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="index" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="3038073278400308449" nodeInfo="in" />
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3038073278400308450" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3038073278400308474" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400308445" resolveInfo="fileName" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3038073278400308452" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dlastIndexOf(int)%cint" resolveInfo="lastIndexOf" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.CharConstant" typeId="tpee.1200397529627" id="3038073278400308453" nodeInfo="nn">
                  <property name="charConstant" nameId="tpee.1200397540847" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="3038073278400308454" nodeInfo="nn">
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="3038073278400308455" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="3038073278400308456" nodeInfo="nn">
              <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="3038073278400308457" nodeInfo="sn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3038073278400308458" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="3038073278400308459" nodeInfo="nn">
                    <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400308481" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400308448" resolveInfo="index" />
                    </node>
                    <node role="rValue" roleId="tpee.1068498886297" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3038073278400308461" nodeInfo="nn">
                      <property name="value" nameId="tpee.1068580320021" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="tpee.1068580123160" type="tpee.GreaterThanOrEqualsExpression" typeId="tpee.1153417849900" id="3038073278400308462" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3038073278400308463" nodeInfo="nn">
                  <property name="value" nameId="tpee.1068580320021" value="0" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3038073278400308464" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3038073278400308478" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400308445" resolveInfo="fileName" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3038073278400308466" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dindexOf(int,int)%cint" resolveInfo="indexOf" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.CharConstant" typeId="tpee.1200397529627" id="3038073278400308467" nodeInfo="nn">
                      <property name="charConstant" nameId="tpee.1200397540847" value="/" />
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400308468" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400308448" resolveInfo="index" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="tpee.1068580123160" type="tpee.GreaterThanOrEqualsExpression" typeId="tpee.1153417849900" id="3038073278400308469" nodeInfo="nn">
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400308470" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400308448" resolveInfo="index" />
            </node>
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3038073278400308471" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580320021" value="0" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="3038073278400308483" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.TernaryOperatorExpression" typeId="tpee.1163668896201" id="3038073278400308491" nodeInfo="nn">
            <node role="ifTrue" roleId="tpee.1163668922816" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3038073278400308495" nodeInfo="nn">
              <property name="value" nameId="tpee.1070475926801" value="" />
            </node>
            <node role="ifFalse" roleId="tpee.1163668934364" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3038073278400308517" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3038073278400308496" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400308445" resolveInfo="fileName" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3038073278400310189" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dsubstring(int)%cjava%dlang%dString" resolveInfo="substring" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400310190" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400308448" resolveInfo="index" />
                </node>
              </node>
            </node>
            <node role="condition" roleId="tpee.1163668914799" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="3038073278400308487" nodeInfo="nn">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3038073278400308490" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="-1" />
              </node>
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400308486" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400308448" resolveInfo="index" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3038073278400308445" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="fileName" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="3038073278400308446" nodeInfo="in" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="3038073278400310191" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="withoutExtension" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.StringType" typeId="tpee.1225271177708" id="3038073278400310194" nodeInfo="in" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3038073278400310193" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3038073278400310197" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3038073278400310198" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="index" />
            <node role="type" roleId="tpee.5680397130376446158" type="tpee.IntegerType" typeId="tpee.1070534370425" id="3038073278400310199" nodeInfo="in" />
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3038073278400310200" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3038073278400310201" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400310195" resolveInfo="fileName" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3038073278400310202" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dlastIndexOf(int)%cint" resolveInfo="lastIndexOf" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.CharConstant" typeId="tpee.1200397529627" id="3038073278400310203" nodeInfo="nn">
                  <property name="charConstant" nameId="tpee.1200397540847" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="3038073278400310204" nodeInfo="nn">
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="3038073278400310205" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="3038073278400310206" nodeInfo="nn">
              <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="3038073278400310207" nodeInfo="sn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3038073278400310208" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="3038073278400310209" nodeInfo="nn">
                    <node role="lValue" roleId="tpee.1068498886295" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400310210" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400310198" resolveInfo="index" />
                    </node>
                    <node role="rValue" roleId="tpee.1068498886297" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3038073278400310211" nodeInfo="nn">
                      <property name="value" nameId="tpee.1068580320021" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="tpee.1068580123160" type="tpee.GreaterThanOrEqualsExpression" typeId="tpee.1153417849900" id="3038073278400310212" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3038073278400310213" nodeInfo="nn">
                  <property name="value" nameId="tpee.1068580320021" value="0" />
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3038073278400310214" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3038073278400310215" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400310195" resolveInfo="fileName" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3038073278400310216" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dindexOf(int,int)%cint" resolveInfo="indexOf" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.CharConstant" typeId="tpee.1200397529627" id="3038073278400310217" nodeInfo="nn">
                      <property name="charConstant" nameId="tpee.1200397540847" value="/" />
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400310218" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400310198" resolveInfo="index" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="tpee.1068580123160" type="tpee.GreaterThanOrEqualsExpression" typeId="tpee.1153417849900" id="3038073278400310219" nodeInfo="nn">
            <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400310220" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400310198" resolveInfo="index" />
            </node>
            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3038073278400310221" nodeInfo="nn">
              <property name="value" nameId="tpee.1068580320021" value="0" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="3038073278400310222" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.TernaryOperatorExpression" typeId="tpee.1163668896201" id="3038073278400310223" nodeInfo="nn">
            <node role="ifTrue" roleId="tpee.1163668922816" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3038073278400310235" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400310195" resolveInfo="fileName" />
            </node>
            <node role="ifFalse" roleId="tpee.1163668934364" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3038073278400310225" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="3038073278400310226" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400310195" resolveInfo="fileName" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3038073278400310227" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~String%dsubstring(int,int)%cjava%dlang%dString" resolveInfo="substring" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3038073278400310237" nodeInfo="nn">
                  <property name="value" nameId="tpee.1068580320021" value="0" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400310238" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400310198" resolveInfo="index" />
                </node>
              </node>
            </node>
            <node role="condition" roleId="tpee.1163668914799" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="3038073278400310229" nodeInfo="nn">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="3038073278400310230" nodeInfo="nn">
                <property name="value" nameId="tpee.1068580320021" value="-1" />
              </node>
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="3038073278400310231" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3038073278400310198" resolveInfo="index" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3038073278400310195" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="fileName" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="3038073278400310196" nodeInfo="in" />
      </node>
    </node>
  </root>
</model>


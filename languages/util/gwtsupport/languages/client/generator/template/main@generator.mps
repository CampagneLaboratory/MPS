<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:1662aa20-edf5-46c3-8002-c6d4c875fd31(jetbrains.mps.gwt.client.generator.template.main@generator)">
  <persistence version="8" />
  <language namespace="b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)" />
  <language namespace="d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)" />
  <language namespace="2c55c7ac-60c3-4eea-b9db-0d627bd2dcb9(jetbrains.mps.xml)" />
  <language namespace="64f62b28-36e3-4052-9f72-f616211ae615(jetbrains.mps.xmlInternal)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <language namespace="13744753-c81f-424a-9c1b-cf8943bf4e86(jetbrains.mps.lang.sharedConcepts)" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <language namespace="954c4d77-e24b-4e49-a5a5-5476c966c092(jetbrains.mps.gwt.client)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="k1iy" modelUID="r:940623f0-75cf-4f64-98fc-aef3fadfaedd(jetbrains.mps.gwt.client.structure)" version="0" />
  <import index="tpcu" modelUID="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" version="-1" />
  <import index="izan" modelUID="r:e05dc49b-f130-4a79-a52f-8bddeacd3610(jetbrains.mps.gwt.client.behavior)" version="-1" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" />
  <import index="cu2c" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="kqhl" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project.structure.modules(MPS.Core/jetbrains.mps.project.structure.modules@java_stub)" version="-1" />
  <import index="vsqj" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" version="-1" />
  <import index="ec5l" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" version="-1" />
  <import index="88zw" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tpf8" modelUID="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" version="2" implicit="yes" />
  <import index="tpf3" modelUID="r:00000000-0000-4000-0000-011c895902f3(jetbrains.mps.lang.generator.generationContext.structure)" version="0" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" implicit="yes" />
  <import index="tpjo" modelUID="r:00000000-0000-4000-0000-011c89590588(jetbrains.mps.xml.structure)" version="0" implicit="yes" />
  <import index="tpjh" modelUID="r:00000000-0000-4000-0000-011c89590591(jetbrains.mps.xmlInternal.structure)" version="2" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <root type="tpf8.MappingConfiguration" typeId="tpf8.1095416546421" id="1572321421814275035" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="main" />
    <node role="reductionMappingRule" roleId="tpf8.1167328349397" type="tpf8.Reduction_MappingRule" typeId="tpf8.1167327847730" id="3852159904898379894" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="k1iy.1572321421811292807" resolveInfo="EntryPoint" />
      <node role="ruleConsequence" roleId="tpf8.1169672767469" type="tpf8.TemplateDeclarationReference" typeId="tpf8.1168559333462" id="3852159904898379896" nodeInfo="nn">
        <link role="template" roleId="tpf8.1722980698497626483" targetNodeId="3852159904898379892" resolveInfo="reduce_EntryPoint" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="tpf8.1167328349397" type="tpf8.Reduction_MappingRule" typeId="tpf8.1167327847730" id="3852159904898379930" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="k1iy.1572321421811299552" resolveInfo="Inherits" />
      <node role="ruleConsequence" roleId="tpf8.1169672767469" type="tpf8.TemplateDeclarationReference" typeId="tpf8.1168559333462" id="3852159904898379932" nodeInfo="nn">
        <link role="template" roleId="tpf8.1722980698497626483" targetNodeId="3852159904898379928" resolveInfo="reduce_Inherits" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="tpf8.1167328349397" type="tpf8.Reduction_MappingRule" typeId="tpf8.1167327847730" id="3852159904898379962" nodeInfo="ng">
      <property name="applyToConceptInheritors" nameId="tpf8.1167272244852" value="true" />
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="k1iy.1572321421811299559" resolveInfo="PatternFilter" />
      <node role="ruleConsequence" roleId="tpf8.1169672767469" type="tpf8.TemplateDeclarationReference" typeId="tpf8.1168559333462" id="3852159904898379964" nodeInfo="nn">
        <link role="template" roleId="tpf8.1722980698497626483" targetNodeId="3852159904898379960" resolveInfo="reduce_PatternFilter" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="tpf8.1167328349397" type="tpf8.Reduction_MappingRule" typeId="tpf8.1167327847730" id="3852159904898386623" nodeInfo="ng">
      <property name="applyToConceptInheritors" nameId="tpf8.1167272244852" value="true" />
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="k1iy.1572321421811299555" resolveInfo="PatternHolder" />
      <node role="ruleConsequence" roleId="tpf8.1169672767469" type="tpf8.TemplateDeclarationReference" typeId="tpf8.1168559333462" id="3852159904898386625" nodeInfo="nn">
        <link role="template" roleId="tpf8.1722980698497626483" targetNodeId="3852159904898386621" resolveInfo="reduce_PatternHolder" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="tpf8.1167328349397" type="tpf8.Reduction_MappingRule" typeId="tpf8.1167327847730" id="3852159904898556372" nodeInfo="ng">
      <property name="applyToConceptInheritors" nameId="tpf8.1167272244852" value="true" />
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="k1iy.1572321421811299617" resolveInfo="Attr" />
      <node role="ruleConsequence" roleId="tpf8.1169672767469" type="tpf8.TemplateDeclarationReference" typeId="tpf8.1168559333462" id="3852159904898556374" nodeInfo="nn">
        <link role="template" roleId="tpf8.1722980698497626483" targetNodeId="3852159904898556370" resolveInfo="reduce_Attr" />
      </node>
    </node>
    <node role="rootMappingRule" roleId="tpf8.1167514678247" type="tpf8.Root_MappingRule" typeId="tpf8.1167514355419" id="3852159904898930962" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="k1iy.1572321421811286040" resolveInfo="GWTModule" />
      <link role="template" roleId="tpf8.1167514355421" targetNodeId="3852159904898253927" resolveInfo="Module.gwt.xml" />
    </node>
  </root>
  <root type="tpjh.XmlFile" typeId="tpjh.1166472279594" id="3852159904898253927" nodeInfo="ng">
    <property name="extension" nameId="tpjh.1188753321461" value="gwt.xml" />
    <property name="fileName" nameId="tpjh.1167755304238" value="Module" />
    <node role="document" roleId="tpjh.1174833330733" type="tpjh.Document" typeId="tpjh.1174840096626" id="3852159904898253928" nodeInfo="ng">
      <node role="rootElement" roleId="tpjh.1174840096627" type="tpjh.SimpleElement" typeId="tpjh.1179105519357" id="3852159904898379839" nodeInfo="ng">
        <node role="elementName" roleId="tpjh.1179271242032" type="tpjo.Text" typeId="tpjo.1161373262136" id="3852159904898379840" nodeInfo="ng">
          <property name="text" nameId="tpjo.1161373273669" value="module" />
        </node>
        <node role="attribute" roleId="tpjo.1188768803246" type="tpjh.SimpleAttribute" typeId="tpjh.1188772500757" id="3852159904898801199" nodeInfo="ng">
          <property name="attributeName" nameId="tpjh.1188772810752" value="attr" />
          <node role="value" roleId="tpjh.1188772833817" type="tpjo.Text" typeId="tpjo.1161373262136" id="3852159904898801200" nodeInfo="ng" />
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.CopySrcNodeMacro" typeId="tpf8.1114706874351" id="3852159904898824952" nodeInfo="nn">
            <node role="sourceNodeQuery" roleId="tpf8.1168024447342" type="tpf8.SourceSubstituteMacro_SourceNodeQuery" typeId="tpf8.1168024337012" id="3852159904898824953" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3852159904898824954" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3852159904898824955" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3852159904898824957" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="3852159904898824956" nodeInfo="nn" />
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="3852159904898824961" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056516764" targetNodeId="k1iy.1572321421813882749" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="contentList" roleId="tpjo.1179114219774" type="tpjo.ContentList" typeId="tpjo.1163629230879" id="2968360207536632814" nodeInfo="ng">
          <node role="content" roleId="tpjo.1163629255661" type="tpjh.SimpleElement" typeId="tpjh.1179105519357" id="2968360207536632815" nodeInfo="ng">
            <node role="elementName" roleId="tpjh.1179271242032" type="tpjo.Text" typeId="tpjo.1161373262136" id="2968360207536632816" nodeInfo="ng" />
            <node role="contentList" roleId="tpjo.1179114219774" type="tpjo.ContentList" typeId="tpjo.1163629230879" id="2968360207536632817" nodeInfo="ng" />
            <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.CopySrcListMacro" typeId="tpf8.1114729360583" id="2968360207536985233" nodeInfo="nn">
              <node role="sourceNodesQuery" roleId="tpf8.1168278589236" type="tpf8.SourceSubstituteMacro_SourceNodesQuery" typeId="tpf8.1167951910403" id="2968360207536985234" nodeInfo="nn">
                <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="2968360207536985235" nodeInfo="nn">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2968360207536987615" nodeInfo="nn">
                    <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536987617" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2968360207536987616" nodeInfo="nn" />
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="2968360207537008981" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056546658" targetNodeId="k1iy.1572321421811416508" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="prolog" roleId="tpjh.1174858761932" type="tpjh.Prolog" typeId="tpjh.1174858745369" id="3852159904898379834" nodeInfo="ng">
        <node role="documentTypeDeclaration" roleId="tpjh.1174859166338" type="tpjh.DocumentTypeDeclaration" typeId="tpjh.1174859135071" id="3852159904898379835" nodeInfo="ng">
          <property name="docTypeName" nameId="tpjh.1174860910721" value="module" />
          <node role="externalId" roleId="tpjh.1174861256953" type="tpjh.PublicExternalId" typeId="tpjh.1174861653404" id="3852159904898379836" nodeInfo="ng">
            <node role="pubidLiteral" roleId="tpjh.1174862790436" type="tpjh.Literal" typeId="tpjh.1174862616672" id="3852159904898379837" nodeInfo="ng">
              <property name="value" nameId="tpjh.1174862633361" value="-//Google Inc.//DTD Google Web Toolkit 2.0//EN" />
            </node>
            <node role="systemLiteral" roleId="tpjh.1174862801156" type="tpjh.Literal" typeId="tpjh.1174862616672" id="3852159904898379838" nodeInfo="ng">
              <property name="value" nameId="tpjh.1174862633361" value="http://google-web-toolkit.googlecode.com/svn/releases/2.0/distro-source/core/src/gwt-module.dtd" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.RootTemplateAnnotation" typeId="tpf8.1168619357332" id="3852159904898253931" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpf8.1168619429071" targetNodeId="k1iy.1572321421811286040" resolveInfo="GWTModule" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="3852159904898263054" nodeInfo="nn">
      <property name="propertyName" nameId="tpck.1757699476691236117" value="fileName" />
      <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="3852159904898263055" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3852159904898263056" nodeInfo="nn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3852159904898358466" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3852159904898358468" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="3852159904898358467" nodeInfo="nn" />
              <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="3852159904898379833" nodeInfo="nn">
                <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root type="tpf8.TemplateDeclaration" typeId="tpf8.1092059087312" id="3852159904898379892" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="reduce_EntryPoint" />
    <link role="applicableConcept" roleId="tpf8.1168285871518" targetNodeId="k1iy.1572321421811292807" resolveInfo="EntryPoint" />
    <node role="contentNode" roleId="tpf8.1092060348987" type="tpjh.SimpleElement" typeId="tpjh.1179105519357" id="2968360207536881424" nodeInfo="ng">
      <node role="elementName" roleId="tpjh.1179271242032" type="tpjo.Text" typeId="tpjo.1161373262136" id="2968360207536881425" nodeInfo="ng">
        <property name="text" nameId="tpjo.1161373273669" value="entry-point" />
      </node>
      <node role="contentList" roleId="tpjo.1179114219774" type="tpjo.ContentList" typeId="tpjo.1163629230879" id="2968360207536881426" nodeInfo="ng" />
      <node role="attribute" roleId="tpjo.1188768803246" type="tpjh.SimpleAttribute" typeId="tpjh.1188772500757" id="2968360207536881427" nodeInfo="ng">
        <property name="attributeName" nameId="tpjh.1188772810752" value="class" />
        <node role="value" roleId="tpjh.1188772833817" type="tpjo.Text" typeId="tpjo.1161373262136" id="2968360207536881428" nodeInfo="ng">
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="2968360207536881429" nodeInfo="nn">
            <property name="propertyName" nameId="tpck.1757699476691236117" value="text" />
            <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="2968360207536881430" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="2968360207536881431" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2968360207536881432" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536881433" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536881434" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2968360207536881435" nodeInfo="nn" />
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="2968360207536881436" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="k1iy.1572321421811292808" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="2968360207536881437" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.1213877404258" resolveInfo="getFqName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.TemplateFragment" typeId="tpf8.1095672379244" id="2968360207536881438" nodeInfo="ng" />
    </node>
  </root>
  <root type="tpf8.TemplateDeclaration" typeId="tpf8.1092059087312" id="3852159904898379928" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="reduce_Inherits" />
    <link role="applicableConcept" roleId="tpf8.1168285871518" targetNodeId="k1iy.1572321421811299552" resolveInfo="Inherits" />
    <node role="contentNode" roleId="tpf8.1092060348987" type="tpjh.SimpleElement" typeId="tpjh.1179105519357" id="2968360207536881439" nodeInfo="ng">
      <node role="elementName" roleId="tpjh.1179271242032" type="tpjo.Text" typeId="tpjo.1161373262136" id="2968360207536881440" nodeInfo="ng">
        <property name="text" nameId="tpjo.1161373273669" value="inherits" />
      </node>
      <node role="contentList" roleId="tpjo.1179114219774" type="tpjo.ContentList" typeId="tpjo.1163629230879" id="2968360207536881441" nodeInfo="ng" />
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.TemplateFragment" typeId="tpf8.1095672379244" id="2968360207536881442" nodeInfo="ng" />
      <node role="attribute" roleId="tpjo.1188768803246" type="tpjh.SimpleAttribute" typeId="tpjh.1188772500757" id="2968360207536881443" nodeInfo="ng">
        <property name="attributeName" nameId="tpjh.1188772810752" value="name" />
        <node role="value" roleId="tpjh.1188772833817" type="tpjo.Text" typeId="tpjo.1161373262136" id="2968360207536881444" nodeInfo="ng">
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="2968360207536881445" nodeInfo="nn">
            <property name="propertyName" nameId="tpck.1757699476691236117" value="text" />
            <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="2968360207536881446" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="2968360207536881447" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2968360207536881448" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536881449" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536881450" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2968360207536881451" nodeInfo="nn" />
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="2968360207536881452" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="k1iy.1572321421811299553" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="2968360207536881453" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.1213877404258" resolveInfo="getFqName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root type="tpf8.TemplateDeclaration" typeId="tpf8.1092059087312" id="3852159904898379960" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="reduce_PatternFilter" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="elements" />
    <link role="applicableConcept" roleId="tpf8.1168285871518" targetNodeId="k1iy.1572321421811299559" resolveInfo="PatternFilter" />
    <node role="contentNode" roleId="tpf8.1092060348987" type="tpjh.SimpleElement" typeId="tpjh.1179105519357" id="2968360207536878964" nodeInfo="ng">
      <node role="elementName" roleId="tpjh.1179271242032" type="tpjo.Text" typeId="tpjo.1161373262136" id="2968360207536878965" nodeInfo="ng">
        <property name="text" nameId="tpjo.1161373273669" value="element" />
        <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="2968360207536878966" nodeInfo="nn">
          <property name="propertyName" nameId="tpck.1757699476691236117" value="text" />
          <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="2968360207536878967" nodeInfo="nn">
            <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="2968360207536878968" nodeInfo="nn">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2968360207536878969" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536878970" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2968360207536878971" nodeInfo="nn" />
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="2968360207536878972" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="izan.3852159904898386595" resolveInfo="getXmlElement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.TemplateFragment" typeId="tpf8.1095672379244" id="2968360207536878973" nodeInfo="ng" />
      <node role="attribute" roleId="tpjo.1188768803246" type="tpjh.SimpleAttribute" typeId="tpjh.1188772500757" id="2968360207536878974" nodeInfo="ng">
        <property name="attributeName" nameId="tpjh.1188772810752" value="path" />
        <node role="value" roleId="tpjh.1188772833817" type="tpjo.Text" typeId="tpjo.1161373262136" id="2968360207536878975" nodeInfo="ng">
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="2968360207536878976" nodeInfo="nn">
            <property name="propertyName" nameId="tpck.1757699476691236117" value="text" />
            <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="2968360207536878977" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="2968360207536878978" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2968360207536878979" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.TernaryOperatorExpression" typeId="tpee.1163668896201" id="2968360207536878980" nodeInfo="nn">
                    <node role="condition" roleId="tpee.1163668914799" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536878981" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536878982" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2968360207536878983" nodeInfo="nn" />
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="2968360207536878984" nodeInfo="nn">
                          <link role="link" roleId="tp25.1138056516764" targetNodeId="k1iy.1572321421811299609" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsNotNullOperation" typeId="tp25.1172008320231" id="2968360207536878985" nodeInfo="nn" />
                    </node>
                    <node role="ifTrue" roleId="tpee.1163668922816" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536878986" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536878987" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2968360207536878988" nodeInfo="nn" />
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="2968360207536878989" nodeInfo="nn">
                          <link role="link" roleId="tp25.1138056516764" targetNodeId="k1iy.1572321421811299609" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="2968360207536878990" nodeInfo="nn">
                        <link role="property" roleId="tp25.1138056395725" targetNodeId="k1iy.1572321421811299589" resolveInfo="value" />
                      </node>
                    </node>
                    <node role="ifFalse" roleId="tpee.1163668934364" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2968360207536878991" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="attribute" roleId="tpjo.1188768803246" type="tpjh.SimpleAttribute" typeId="tpjh.1188772500757" id="2968360207536878992" nodeInfo="ng">
        <property name="attributeName" nameId="tpjh.1188772810752" value="attr" />
        <node role="value" roleId="tpjh.1188772833817" type="tpjo.Text" typeId="tpjo.1161373262136" id="2968360207536878993" nodeInfo="ng" />
        <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.CopySrcListMacro" typeId="tpf8.1114729360583" id="2968360207536878994" nodeInfo="nn">
          <node role="sourceNodesQuery" roleId="tpf8.1168278589236" type="tpf8.SourceSubstituteMacro_SourceNodesQuery" typeId="tpf8.1167951910403" id="2968360207536878995" nodeInfo="nn">
            <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="2968360207536878996" nodeInfo="nn">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2968360207536878997" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536878998" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2968360207536878999" nodeInfo="nn" />
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="2968360207536879000" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056546658" targetNodeId="k1iy.1572321421811299621" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="contentList" roleId="tpjo.1179114219774" type="tpjo.ContentList" typeId="tpjo.1163629230879" id="2968360207537112728" nodeInfo="ng">
        <node role="content" roleId="tpjo.1163629255661" type="tpjh.SimpleElement" typeId="tpjh.1179105519357" id="2968360207537115108" nodeInfo="ng">
          <node role="elementName" roleId="tpjh.1179271242032" type="tpjo.Text" typeId="tpjo.1161373262136" id="2968360207537115109" nodeInfo="ng" />
          <node role="contentList" roleId="tpjo.1179114219774" type="tpjo.ContentList" typeId="tpjo.1163629230879" id="2968360207537115110" nodeInfo="ng" />
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.CopySrcListMacro" typeId="tpf8.1114729360583" id="2968360207537115112" nodeInfo="nn">
            <node role="sourceNodesQuery" roleId="tpf8.1168278589236" type="tpf8.SourceSubstituteMacro_SourceNodesQuery" typeId="tpf8.1167951910403" id="2968360207537115113" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="2968360207537115114" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2968360207537115115" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207537115117" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2968360207537115116" nodeInfo="nn" />
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="2968360207537136481" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056546658" targetNodeId="k1iy.1572321421811299560" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root type="tpf8.TemplateDeclaration" typeId="tpf8.1092059087312" id="3852159904898386621" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="reduce_PatternHolder" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="elements" />
    <link role="applicableConcept" roleId="tpf8.1168285871518" targetNodeId="k1iy.1572321421811299555" resolveInfo="PatternHolder" />
    <node role="contentNode" roleId="tpf8.1092060348987" type="tpjh.SimpleElement" typeId="tpjh.1179105519357" id="2968360207536881402" nodeInfo="ng">
      <node role="elementName" roleId="tpjh.1179271242032" type="tpjo.Text" typeId="tpjo.1161373262136" id="2968360207536881403" nodeInfo="ng">
        <property name="text" nameId="tpjo.1161373273669" value="element" />
        <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="2968360207536881404" nodeInfo="nn">
          <property name="propertyName" nameId="tpck.1757699476691236117" value="text" />
          <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="2968360207536881405" nodeInfo="nn">
            <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="2968360207536881406" nodeInfo="nn">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2968360207536881407" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536881408" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2968360207536881409" nodeInfo="nn" />
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="2968360207536881410" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="izan.3852159904898386595" resolveInfo="getXmlElement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.TemplateFragment" typeId="tpf8.1095672379244" id="2968360207536881411" nodeInfo="ng" />
      <node role="attribute" roleId="tpjo.1188768803246" type="tpjh.SimpleAttribute" typeId="tpjh.1188772500757" id="2968360207536881412" nodeInfo="ng">
        <property name="attributeName" nameId="tpjh.1188772810752" value="name" />
        <node role="value" roleId="tpjh.1188772833817" type="tpjo.Text" typeId="tpjo.1161373262136" id="2968360207536881413" nodeInfo="ng">
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="2968360207536881414" nodeInfo="nn">
            <property name="propertyName" nameId="tpck.1757699476691236117" value="text" />
            <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="2968360207536881415" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="2968360207536881416" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2968360207536881417" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536881418" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536881419" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2968360207536881420" nodeInfo="nn" />
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="2968360207536881421" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="k1iy.1572321421811299571" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="2968360207536881422" nodeInfo="nn">
                      <link role="property" roleId="tp25.1138056395725" targetNodeId="k1iy.1572321421811299564" resolveInfo="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="contentList" roleId="tpjo.1179114219774" type="tpjo.ContentList" typeId="tpjo.1163629230879" id="2968360207536881423" nodeInfo="ng" />
    </node>
  </root>
  <root type="tpf8.TemplateSwitch" typeId="tpf8.1112730859144" id="3852159904898547408" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="switch_Attr_value" />
    <node role="reductionMappingRule" roleId="tpf8.1167340453568" type="tpf8.Reduction_MappingRule" typeId="tpf8.1167327847730" id="3852159904898547409" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="k1iy.1572321421811299625" resolveInfo="CaseSensitive" />
      <node role="ruleConsequence" roleId="tpf8.1169672767469" type="tpf8.InlineTemplate_RuleConsequence" typeId="tpf8.1177093525992" id="3852159904898549801" nodeInfo="ng">
        <node role="templateNode" roleId="tpf8.1177093586806" type="tpjo.Text" typeId="tpjo.1161373262136" id="3852159904898549804" nodeInfo="ng">
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="3852159904898549805" nodeInfo="nn">
            <property name="propertyName" nameId="tpck.1757699476691236117" value="text" />
            <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="3852159904898549806" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3852159904898549807" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3852159904898556314" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.TernaryOperatorExpression" typeId="tpee.1163668896201" id="3852159904898556315" nodeInfo="nn">
                    <node role="condition" roleId="tpee.1163668914799" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3852159904898556320" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="3852159904898556319" nodeInfo="nn" />
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="3852159904898556324" nodeInfo="nn">
                        <link role="property" roleId="tp25.1138056395725" targetNodeId="k1iy.1572321421811299627" resolveInfo="value" />
                      </node>
                    </node>
                    <node role="ifTrue" roleId="tpee.1163668922816" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3852159904898556325" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="true" />
                    </node>
                    <node role="ifFalse" roleId="tpee.1163668934364" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3852159904898556326" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="false" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="tpf8.1167340453568" type="tpf8.Reduction_MappingRule" typeId="tpf8.1167327847730" id="3852159904898549792" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="k1iy.1572321421811299622" resolveInfo="DefaultExcludes" />
      <node role="ruleConsequence" roleId="tpf8.1169672767469" type="tpf8.InlineTemplate_RuleConsequence" typeId="tpf8.1177093525992" id="3852159904898556327" nodeInfo="ng">
        <node role="templateNode" roleId="tpf8.1177093586806" type="tpjo.Text" typeId="tpjo.1161373262136" id="3852159904898556328" nodeInfo="ng">
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="3852159904898556329" nodeInfo="nn">
            <property name="propertyName" nameId="tpck.1757699476691236117" value="text" />
            <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="3852159904898556330" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3852159904898556331" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3852159904898556332" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.TernaryOperatorExpression" typeId="tpee.1163668896201" id="3852159904898556333" nodeInfo="nn">
                    <node role="condition" roleId="tpee.1163668914799" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3852159904898556334" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="3852159904898556335" nodeInfo="nn" />
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="3852159904898556339" nodeInfo="nn">
                        <link role="property" roleId="tp25.1138056395725" targetNodeId="k1iy.1572321421811299638" resolveInfo="value" />
                      </node>
                    </node>
                    <node role="ifTrue" roleId="tpee.1163668922816" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3852159904898556337" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="yes" />
                    </node>
                    <node role="ifFalse" roleId="tpee.1163668934364" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="3852159904898556338" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="no" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="tpf8.1167340453568" type="tpf8.Reduction_MappingRule" typeId="tpf8.1167327847730" id="3852159904898549794" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="k1iy.1572321421811416484" resolveInfo="Excludes" />
      <node role="ruleConsequence" roleId="tpf8.1169672767469" type="tpf8.InlineTemplate_RuleConsequence" typeId="tpf8.1177093525992" id="3852159904898556340" nodeInfo="ng">
        <node role="templateNode" roleId="tpf8.1177093586806" type="tpjo.Text" typeId="tpjo.1161373262136" id="3852159904898556342" nodeInfo="ng">
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="3852159904898556343" nodeInfo="nn">
            <property name="propertyName" nameId="tpck.1757699476691236117" value="text" />
            <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="3852159904898556344" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3852159904898556345" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3852159904898556346" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3852159904898556353" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3852159904898556348" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="3852159904898556347" nodeInfo="nn" />
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="3852159904898556352" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="k1iy.1572321421811416485" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="3852159904898556357" nodeInfo="nn">
                      <link role="property" roleId="tp25.1138056395725" targetNodeId="k1iy.1572321421811299564" resolveInfo="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="tpf8.1167340453568" type="tpf8.Reduction_MappingRule" typeId="tpf8.1167327847730" id="3852159904898549797" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="k1iy.1572321421811416463" resolveInfo="Includes" />
      <node role="ruleConsequence" roleId="tpf8.1169672767469" type="tpf8.InlineTemplate_RuleConsequence" typeId="tpf8.1177093525992" id="3852159904898556358" nodeInfo="ng">
        <node role="templateNode" roleId="tpf8.1177093586806" type="tpjo.Text" typeId="tpjo.1161373262136" id="3852159904898556359" nodeInfo="ng">
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="3852159904898556360" nodeInfo="nn">
            <property name="propertyName" nameId="tpck.1757699476691236117" value="text" />
            <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="3852159904898556361" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3852159904898556362" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3852159904898556363" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3852159904898556364" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3852159904898556365" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="3852159904898556366" nodeInfo="nn" />
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="3852159904898556369" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="k1iy.1572321421811416464" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="3852159904898556368" nodeInfo="nn">
                      <link role="property" roleId="tp25.1138056395725" targetNodeId="k1iy.1572321421811299564" resolveInfo="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="tpf8.1167340453568" type="tpf8.Reduction_MappingRule" typeId="tpf8.1167327847730" id="3852159904898824973" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="k1iy.1572321421813875986" resolveInfo="RenameTo" />
      <node role="ruleConsequence" roleId="tpf8.1169672767469" type="tpf8.InlineTemplate_RuleConsequence" typeId="tpf8.1177093525992" id="3852159904898824975" nodeInfo="ng">
        <node role="templateNode" roleId="tpf8.1177093586806" type="tpjo.Text" typeId="tpjo.1161373262136" id="3852159904898824976" nodeInfo="ng">
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="3852159904898824977" nodeInfo="nn">
            <property name="propertyName" nameId="tpck.1757699476691236117" value="text" />
            <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="3852159904898824978" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="3852159904898824979" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3852159904898824980" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3852159904898824986" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="3852159904898824983" nodeInfo="nn" />
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="3852159904898824990" nodeInfo="nn">
                      <link role="property" roleId="tp25.1138056395725" targetNodeId="k1iy.1572321421813882746" resolveInfo="value" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="defaultConsequence" roleId="tpf8.1168558750579" type="tpf8.DismissTopMappingRule" typeId="tpf8.1168559512253" id="3852159904898549799" nodeInfo="ng">
      <node role="generatorMessage" roleId="tpf8.1169669152123" type="tpf8.GeneratorMessage" typeId="tpf8.1169670156577" id="3852159904898549800" nodeInfo="ng">
        <property name="messageText" nameId="tpf8.1169670173015" value="Not supported attribute" />
        <property name="messageType" nameId="tpf8.1169670356567" value="error" />
      </node>
    </node>
  </root>
  <root type="tpf8.TemplateDeclaration" typeId="tpf8.1092059087312" id="3852159904898556370" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="reduce_Attr" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="attrs" />
    <link role="applicableConcept" roleId="tpf8.1168285871518" targetNodeId="k1iy.1572321421811299617" resolveInfo="Attr" />
    <node role="contentNode" roleId="tpf8.1092060348987" type="tpjh.SimpleAttribute" typeId="tpjh.1188772500757" id="2968360207536879012" nodeInfo="ng">
      <property name="attributeName" nameId="tpjh.1188772810752" value="attr" />
      <node role="value" roleId="tpjh.1188772833817" type="tpjo.Text" typeId="tpjo.1161373262136" id="2968360207536879013" nodeInfo="ng">
        <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.SwitchMacro" typeId="tpf8.1112731569622" id="2968360207536879014" nodeInfo="nn">
          <link role="templateSwitch" roleId="tpf8.1112731629154" targetNodeId="3852159904898547408" resolveInfo="switch_Attr_value" />
        </node>
      </node>
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.TemplateFragment" typeId="tpf8.1095672379244" id="2968360207536879015" nodeInfo="ng" />
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="2968360207536879016" nodeInfo="nn">
        <property name="propertyName" nameId="tpck.1757699476691236117" value="attributeName" />
        <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="2968360207536879017" nodeInfo="nn">
          <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="2968360207536879018" nodeInfo="nn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2968360207536879019" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2968360207536879020" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2968360207536879021" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="2968360207536879022" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="izan.3852159904898525999" resolveInfo="getXmlAttr" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root type="tpf8.TemplateDeclaration" typeId="tpf8.1092059087312" id="1220369573364037345" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="weave_inherits_runtimeModules" />
    <link role="applicableConcept" roleId="tpf8.1168285871518" targetNodeId="k1iy.1572321421811286040" resolveInfo="GWTModule" />
    <node role="contentNode" roleId="tpf8.1092060348987" type="k1iy.GWTModule" typeId="k1iy.1572321421811286040" id="1220369573364040165" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="context" />
      <node role="element" roleId="k1iy.1572321421811416508" type="k1iy.Inherits" typeId="k1iy.1572321421811299552" id="1220369573364040166" nodeInfo="ng">
        <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.TemplateFragment" typeId="tpf8.1095672379244" id="1220369573364040167" nodeInfo="ng" />
        <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.LoopMacro" typeId="tpf8.1118786554307" id="1220369573364040169" nodeInfo="nn">
          <node role="sourceNodesQuery" roleId="tpf8.1167952069335" type="tpf8.SourceSubstituteMacro_SourceNodesQuery" typeId="tpf8.1167951910403" id="1220369573364040170" nodeInfo="nn">
            <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="1220369573364040171" nodeInfo="nn">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1220369573364040172" nodeInfo="nn">
                <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1220369573364040173" nodeInfo="nr">
                  <property name="name" nameId="tpck.1169194664001" value="result" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="1220369573364040174" nodeInfo="in">
                    <link role="elementConcept" roleId="tp25.1145383142433" targetNodeId="k1iy.1572321421811286040" resolveInfo="GWTModule" />
                  </node>
                  <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1220369573364040176" nodeInfo="nn">
                    <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeListCreator" typeId="tp25.1145567426890" id="1220369573364040177" nodeInfo="nn">
                      <node role="createdType" roleId="tp25.1145567471833" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="1220369573364040178" nodeInfo="in">
                        <link role="elementConcept" roleId="tp25.1145383142433" targetNodeId="k1iy.1572321421811286040" resolveInfo="GWTModule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="6148642440041937707" nodeInfo="nn">
                <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="6148642440041937708" nodeInfo="nr">
                  <property name="name" nameId="tpck.1169194664001" value="langs" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6148642440041937709" nodeInfo="in">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="k7g3.~List" resolveInfo="List" />
                    <node role="parameter" roleId="tpee.1109201940907" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6148642440041937710" nodeInfo="in">
                      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="cu2c.~Language" resolveInfo="Language" />
                    </node>
                  </node>
                  <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6148642440041937711" nodeInfo="nn">
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="cu2c.~SModelOperations" resolveInfo="SModelOperations" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~SModelOperations%dgetLanguages(org%djetbrains%dmps%dopenapi%dmodel%dSModel,jetbrains%dmps%dsmodel%dIScope)%cjava%dutil%dList" resolveInfo="getLanguages" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.SemanticDowncastExpression" typeId="tp25.1145404486709" id="6148642440041937712" nodeInfo="nn">
                      <node role="leftExpression" roleId="tp25.1145404616321" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6148642440041937713" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="6148642440041937714" nodeInfo="nn" />
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetModelOperation" typeId="tp25.1143234257716" id="6148642440041937715" nodeInfo="nn" />
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6148642440041937716" nodeInfo="nn">
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="vsqj.~GlobalScope" resolveInfo="GlobalScope" />
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vsqj.~GlobalScope%dgetInstance()%cjetbrains%dmps%dproject%dGlobalScope" resolveInfo="getInstance" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="1220369573364065741" nodeInfo="nn">
                <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="1220369573364065742" nodeInfo="nn">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="1220369573364065762" nodeInfo="nn">
                    <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="1220369573364065763" nodeInfo="nn">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="1220369573364065779" nodeInfo="nn">
                        <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="1220369573364065780" nodeInfo="nn">
                          <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1220369573364066180" nodeInfo="nn">
                            <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1220369573364066181" nodeInfo="nr">
                              <property name="name" nameId="tpck.1169194664001" value="rtModel" />
                              <node role="initializer" roleId="tpee.1068431790190" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1220369573364066184" nodeInfo="nn">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1220369573364065781" resolveInfo="smd" />
                              </node>
                              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SModelType" typeId="tp25.1143226024141" id="1220369573364066186" nodeInfo="in" />
                            </node>
                          </node>
                          <node role="statement" roleId="tpee.1068581517665" type="tpee.ForeachStatement" typeId="tpee.1144226303539" id="1220369573364066197" nodeInfo="nn">
                            <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="1220369573364066198" nodeInfo="nn">
                              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1220369573364066207" nodeInfo="nn">
                                <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1220369573364066209" nodeInfo="nn">
                                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1220369573364066208" nodeInfo="nn">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1220369573364040173" resolveInfo="result" />
                                  </node>
                                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.AddElementOperation" typeId="tp2q.1160612413312" id="1220369573364066213" nodeInfo="nn">
                                    <node role="argument" roleId="tp2q.1160612519549" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1220369573364066217" nodeInfo="nn">
                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1220369573364066199" resolveInfo="gwtmod" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1220369573364066199" nodeInfo="nr">
                              <property name="name" nameId="tpck.1169194664001" value="gwtmod" />
                              <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="1220369573364066200" nodeInfo="in">
                                <link role="concept" roleId="tp25.1138405853777" targetNodeId="k1iy.1572321421811286040" resolveInfo="GWTModule" />
                              </node>
                            </node>
                            <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1220369573364066201" nodeInfo="nn">
                              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1220369573364066202" nodeInfo="nn">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1220369573364066181" resolveInfo="rtModel" />
                              </node>
                              <node role="operation" roleId="tpee.1197027833540" type="tp25.Model_RootsOperation" typeId="tp25.1171315804604" id="1220369573364066203" nodeInfo="nn">
                                <link role="concept" roleId="tp25.1171315804605" targetNodeId="k1iy.1572321421811286040" resolveInfo="GWTModule" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1220369573364065781" nodeInfo="nr">
                          <property name="name" nameId="tpck.1169194664001" value="smd" />
                          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1220369573364065782" nodeInfo="in">
                            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ec5l.~SModel" resolveInfo="SModel" />
                          </node>
                        </node>
                        <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="964220167941858347" nodeInfo="nn">
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="964220167941858348" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="88zw.~SModule%dgetModels()%cjava%dlang%dIterable" resolveInfo="getModels" />
                          </node>
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="964220167941858349" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="964220167941858350" nodeInfo="nn">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~MPSModuleRepository%dgetInstance()%cjetbrains%dmps%dsmodel%dMPSModuleRepository" resolveInfo="getInstance" />
                              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="cu2c.~MPSModuleRepository" resolveInfo="MPSModuleRepository" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="964220167941858351" nodeInfo="nn">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~MPSModuleRepository%dgetModule(org%djetbrains%dmps%dopenapi%dmodule%dSModuleReference)%corg%djetbrains%dmps%dopenapi%dmodule%dSModule" resolveInfo="getModule" />
                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="964220167941858352" nodeInfo="nn">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1220369573364065764" resolveInfo="mr" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1220369573364065764" nodeInfo="nr">
                      <property name="name" nameId="tpck.1169194664001" value="mr" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="9164503229271368027" nodeInfo="in">
                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="88zw.~SModuleReference" resolveInfo="SModuleReference" />
                      </node>
                    </node>
                    <node role="iterable" roleId="tpee.1144226360166" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9164503229271367973" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="9164503229271367972" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1220369573364065743" resolveInfo="lang" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9164503229271367978" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~Language%dgetRuntimeModulesReferences()%cjava%dutil%dCollection" resolveInfo="getRuntimeModulesReferences" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="variable" roleId="tpee.1144230900587" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1220369573364065743" nodeInfo="nr">
                  <property name="name" nameId="tpck.1169194664001" value="lang" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1220369573364065744" nodeInfo="in">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="cu2c.~Language" resolveInfo="Language" />
                  </node>
                </node>
                <node role="iterable" roleId="tpee.1144226360166" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="6148642440041937720" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6148642440041937708" resolveInfo="langs" />
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1220369573364066221" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1220369573364066222" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1220369573364040173" resolveInfo="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.ReferenceMacro" typeId="tpf8.1088761943574" id="1220369573364066223" nodeInfo="nn">
          <property name="linkRole" nameId="tpck.1757699476691236116" value="module" />
          <node role="referentFunction" roleId="tpf8.1167770376702" type="tpf8.ReferenceMacro_GetReferent" typeId="tpf8.1167770111131" id="1220369573364066224" nodeInfo="nn">
            <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="1220369573364066225" nodeInfo="nn">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1220369573364066226" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068580123156" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="1220369573364066227" nodeInfo="nn" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root type="tpf8.MappingConfiguration" typeId="tpf8.1095416546421" id="1220369573364066229" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="runtime" />
    <node role="weavingMappingRule" roleId="tpf8.1167172143858" type="tpf8.Weaving_MappingRule" typeId="tpf8.1167171569011" id="1220369573364066230" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="k1iy.1572321421811286040" resolveInfo="GWTModule" />
      <node role="ruleConsequence" roleId="tpf8.1169570368028" type="tpf8.TemplateDeclarationReference" typeId="tpf8.1168559333462" id="1220369573364066234" nodeInfo="nn">
        <link role="template" roleId="tpf8.1722980698497626483" targetNodeId="1220369573364037345" resolveInfo="weave_inherits_runtimeModules" />
      </node>
      <node role="contextNodeQuery" roleId="tpf8.1184616230853" type="tpf8.Weaving_MappingRule_ContextNodeQuery" typeId="tpf8.1184616041890" id="1220369573364066232" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="1220369573364066233" nodeInfo="nn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1220369573364380959" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="1220369573364380966" nodeInfo="nn">
              <node role="rValue" roleId="tpee.1068498886297" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="1220369573364380970" nodeInfo="nn">
                <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~Boolean" resolveInfo="Boolean" />
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~Boolean%dTRUE" resolveInfo="TRUE" />
              </node>
              <node role="lValue" roleId="tpee.1068498886295" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1220369573364875848" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpf3.TemplateFunctionParameter_generationContext" typeId="tpf3.1216860049635" id="1220369573364380963" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tpf3.GenerationContextOp_SessionObjectAccess" typeId="tpf3.1217889725928" id="1220369573364875852" nodeInfo="nn">
                  <node role="userKey" roleId="tpf3.1217890689512" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1220369573364875854" nodeInfo="nn">
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1220369573364875855" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="jetbrains.mps.gwt.client.generator.runtime-weaving.done" />
                    </node>
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2144206851851949080" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2144206851851949081" nodeInfo="nn">
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2381446136262075811" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ec5l.~SNode%dgetNodeId()%corg%djetbrains%dmps%dopenapi%dmodel%dSNodeId" resolveInfo="getNodeId" />
                        </node>
                        <node role="operand" roleId="tpee.1197027771414" type="tp25.SemanticDowncastExpression" typeId="tp25.1145404486709" id="2144206851851949082" nodeInfo="nn">
                          <node role="leftExpression" roleId="tp25.1145404616321" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2144206851851949083" nodeInfo="nn" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2144206851851949085" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%dtoString()%cjava%dlang%dString" resolveInfo="toString" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1220369573364256700" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1220369573364256702" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpf3.TemplateFunctionParameter_generationContext" typeId="tpf3.1216860049635" id="1220369573364256701" nodeInfo="nn" />
              <node role="operation" roleId="tpee.1197027833540" type="tpf3.GenerationContextOp_GetCopiedOutputByInput" typeId="tpf3.1217884725453" id="1220369573364256706" nodeInfo="nn">
                <node role="inputNode" roleId="tpf3.1217884725459" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="1220369573364256708" nodeInfo="nn" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="conditionFunction" roleId="tpf8.1167169362365" type="tpf8.BaseMappingRule_Condition" typeId="tpf8.1167168920554" id="1220369573364358067" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="1220369573364358068" nodeInfo="nn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1220369573364380938" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.EqualsExpression" typeId="tpee.1068580123152" id="1220369573364380947" nodeInfo="nn">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="1220369573364380950" nodeInfo="nn" />
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1220369573364875836" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpf3.TemplateFunctionParameter_generationContext" typeId="tpf3.1216860049635" id="1220369573364380939" nodeInfo="nn" />
                <node role="operation" roleId="tpee.1197027833540" type="tpf3.GenerationContextOp_SessionObjectAccess" typeId="tpf3.1217889725928" id="1220369573364875840" nodeInfo="nn">
                  <node role="userKey" roleId="tpf3.1217890689512" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="1220369573364875842" nodeInfo="nn">
                    <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2144206851851948833" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2144206851851948834" nodeInfo="nn">
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2381446136262075791" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="ec5l.~SNode%dgetNodeId()%corg%djetbrains%dmps%dopenapi%dmodel%dSNodeId" resolveInfo="getNodeId" />
                        </node>
                        <node role="operand" roleId="tpee.1197027771414" type="tp25.SemanticDowncastExpression" typeId="tp25.1145404486709" id="2144206851851948835" nodeInfo="nn">
                          <node role="leftExpression" roleId="tp25.1145404616321" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2144206851851948836" nodeInfo="nn" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2144206851851948838" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%dtoString()%cjava%dlang%dString" resolveInfo="toString" />
                      </node>
                    </node>
                    <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1220369573364875847" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="jetbrains.mps.gwt.client.generator.runtime-weaving.done" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
</model>


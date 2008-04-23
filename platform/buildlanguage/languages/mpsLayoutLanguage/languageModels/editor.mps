<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.mpsLayoutLanguage.editor">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.editorLanguage" />
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.actionsLanguage" />
  <language namespace="jetbrains.mps.bootstrap.constraintsLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  </language>
  <languageAspect modelUID="jetbrains.mps.buildlanguage.constraints" version="6" />
  <languageAspect modelUID="jetbrains.mps.buildlanguage.structure" version="16" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <maxImportIndex value="8" />
  <import index="1" modelUID="jetbrains.mps.mpsLayoutLanguage.structure" version="-1" />
  <import index="2" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="3" modelUID="jetbrains.mps.nodeEditor@java_stub" version="-1" />
  <import index="4" modelUID="java.awt.color@java_stub" version="-1" />
  <import index="5" modelUID="java.awt@java_stub" version="-1" />
  <import index="6" modelUID="java.lang@java_stub" version="-1" />
  <import index="7" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="8" modelUID="jetbrains.mps.project@java_stub" version="-1" />
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1202917336768">
    <link role="conceptDeclaration" targetNodeId="1.1202916958754" resolveInfo="MPS" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1202917360631">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1203614630183">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1203614743774">
          <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1203614651921">
          <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1203430907103">
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204114261650">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204114265324">
          <property name="text" value="basedir" />
          <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1204114274013">
          <link role="relationDeclaration" targetNodeId="1.1204114229489" resolveInfo="basedir" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204116139217">
          <property name="text" value="set" />
          <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1204116144985">
          <link role="relationDeclaration" targetNodeId="1.1204116114324" resolveInfo="setBasedir" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204707271675">
        <property name="selectable" value="false" />
        <property name="vertical" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204707272710">
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204707272711">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204707272712">
            <property name="text" value="project home" />
            <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1204707272713">
            <link role="relationDeclaration" targetNodeId="1.1204706457824" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1204707272714">
              <link role="conceptDeclaration" targetNodeId="1.1203617883391" resolveInfo="ICompositeComponent" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1204707272715">
                <property name="readOnly" value="true" />
                <property name="allowEmptyText" value="true" />
                <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1204707330618">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204707330619">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204707331762">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204707331763">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204707331764">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1204707331765" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204707331766">
                    <link role="link" targetNodeId="1.1204706457824" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1204707331767" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204706540746">
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204115922983">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204115928548">
          <property name="text" value="configurations" />
          <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1204115937925">
          <property name="separatorText" value="," />
          <link role="relationDeclaration" targetNodeId="1.1204115898932" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204115917809">
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1205335615100">
        <property name="selectable" value="false" />
        <property name="vertical" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1205335619805">
          <property name="text" value="variables" />
          <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1205335627073">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1205335629356" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1205335637672">
            <property name="vertical" value="true" />
            <property name="selectable" value="false" />
            <link role="relationDeclaration" targetNodeId="1.1205335538326" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1205335577437">
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1203599373311">
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1203599325709" />
        <node role="emptyCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1203599381407">
          <property name="text" value="&lt;components&gt;" />
          <link role="styleClass" targetNodeId="1203012208595" resolveInfo="hint" />
        </node>
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204707060234">
      <property name="selectable" value="false" />
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204707060235">
        <property name="text" value="project home" />
        <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1204707060236">
        <link role="relationDeclaration" targetNodeId="1.1204706457824" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1204707060237">
          <link role="conceptDeclaration" targetNodeId="1.1203617883391" resolveInfo="ICompositeComponent" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1204707060238">
            <property name="readOnly" value="true" />
            <property name="allowEmptyText" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheet" id="1203012198750">
    <property name="name" value="MPSLayoutStyles" />
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1203012208595">
      <property name="name" value="hint" />
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleSheetItem" id="1203012217846">
        <property name="color" value="lightGray" />
      </node>
    </node>
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1203598923024">
      <property name="name" value="keyword" />
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleSheetItem" id="1203598935275">
        <property name="color" value="darkGray" />
      </node>
    </node>
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1203598953979">
      <property name="name" value="projectComponent" />
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleSheetItem" id="1203598969200">
        <property name="color" value="DARK_BLUE" />
      </node>
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleSheetItem" id="1204130052524">
        <property name="style" value="BOLD" />
      </node>
    </node>
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1204115710587">
      <property name="name" value="configuration" />
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleSheetItem" id="1204115722526">
        <property name="color" value="query" />
        <node role="query" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_Color" id="1204705974203">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204705974204">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204706136934">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1204706136935">
                <link role="classifier" targetNodeId="5.~Color" resolveInfo="Color" />
                <link role="variableDeclaration" targetNodeId="5.~Color.WHITE" resolveInfo="WHITE" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.BackgroundColorStyleSheetItem" id="1204129851721">
        <property name="color" value="gray" />
      </node>
    </node>
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1205337004073">
      <property name="name" value="variable" />
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleSheetItem" id="1205337015262">
        <property name="color" value="DARK_MAGENTA" />
      </node>
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleSheetItem" id="1205343735025">
        <property name="style" value="BOLD" />
      </node>
    </node>
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1205343740058">
      <property name="name" value="string" />
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleSheetItem" id="1205343758186">
        <property name="style" value="BOLD" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1203598531022">
    <property name="package" value="projectComponents" />
    <link role="conceptDeclaration" targetNodeId="1.1203598417283" resolveInfo="Jar" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1203598537540">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1203599089957">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1203599093069">
          <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
          <link role="styleClass" targetNodeId="1203598953979" resolveInfo="projectComponent" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1205344621976">
          <link role="relationDeclaration" targetNodeId="1.1205340441197" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1204128139480">
          <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="configurationReferences_editorComponent" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1203598578375">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1203598580877" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1203598588660">
          <property name="vertical" value="true" />
          <property name="selectable" value="false" />
          <property name="usesFolding" value="true" />
          <link role="relationDeclaration" targetNodeId="1.1203617897549" />
          <node role="emptyCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1203599011357">
            <property name="text" value="&lt;entries&gt;" />
            <link role="styleClass" targetNodeId="1203012208595" resolveInfo="hint" />
          </node>
        </node>
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204116827310">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206440342373">
        <link role="editorComponent" targetNodeId="1206440283018" resolveInfo="ICompositeComponentEditorComponenmt" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1204116832456">
        <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="configurationReferences_editorComponent" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1203598612021">
    <property name="package" value="projectComponents" />
    <link role="conceptDeclaration" targetNodeId="1.1203598322527" resolveInfo="File" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1203598619601">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1203599074970">
        <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
        <link role="styleClass" targetNodeId="1203598953979" resolveInfo="projectComponent" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1205344590206">
        <link role="relationDeclaration" targetNodeId="1.1205340441197" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1203598633261">
        <property name="text" value="from" />
        <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1203602068954">
        <property name="attractsFocus" value="2" />
        <link role="relationDeclaration" targetNodeId="1.1203601963019" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1204128152423">
        <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="configurationReferences_editorComponent" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1204116787222">
      <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="configurationReferences_editorComponent" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1203598704377">
    <property name="package" value="projectComponents" />
    <link role="conceptDeclaration" targetNodeId="1.1203598512427" resolveInfo="Folder" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1203598726332">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1203598730256">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1203599137432">
          <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
          <link role="styleClass" targetNodeId="1203598953979" resolveInfo="projectComponent" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1205344608911">
          <link role="relationDeclaration" targetNodeId="1.1205340441197" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1203598738479">
          <property name="text" value="from" />
          <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1203602196974">
          <property name="attractsFocus" value="2" />
          <link role="relationDeclaration" targetNodeId="1.1203602106051" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1204128147077">
          <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="configurationReferences_editorComponent" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1203598754734">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1203598757236" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1203598761160">
          <property name="vertical" value="true" />
          <property name="selectable" value="false" />
          <property name="usesFolding" value="true" />
          <link role="relationDeclaration" targetNodeId="1.1203617897549" />
          <node role="emptyCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1203599044452">
            <property name="text" value="&lt;entries&gt;" />
            <link role="styleClass" targetNodeId="1203012208595" resolveInfo="hint" />
          </node>
        </node>
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204116805241">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206440350344">
        <link role="editorComponent" targetNodeId="1206440283018" resolveInfo="ICompositeComponentEditorComponenmt" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1204116811825">
        <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="configurationReferences_editorComponent" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1203599720833">
    <property name="package" value="projectComponents" />
    <link role="conceptDeclaration" targetNodeId="1.1203599702327" resolveInfo="Module" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1203599725664">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1203599729042">
        <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
        <link role="styleClass" targetNodeId="1203598953979" resolveInfo="projectComponent" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1203607522476">
        <link role="relationDeclaration" targetNodeId="1.1203607480207" resolveInfo="modulelUID" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1206449527592">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_PropertyValues" id="1206449531999">
            <node role="valuesFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_PropertyValues_GetValues" id="1206449532000">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206449532001">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206449570694">
                  <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206449570695">
                    <property name="name" value="result" />
                    <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1206449570696">
                      <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206449576698">
                        <link role="classifier" targetNodeId="6.~String" resolveInfo="String" />
                      </node>
                    </node>
                    <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1206449580622">
                      <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListCreatorWithInit" id="1206449580623">
                        <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206449580624">
                          <link role="classifier" targetNodeId="6.~String" resolveInfo="String" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1206449585630">
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206449585631">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206449609601">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206449610228">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206449609602">
                          <link role="variableDeclaration" targetNodeId="1206449570695" resolveInfo="result" />
                        </node>
                        <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddElementOperation" id="1206449611136">
                          <node role="argument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206449611812">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206449611747">
                              <link role="variableDeclaration" targetNodeId="1206449585634" resolveInfo="m" />
                            </node>
                            <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206449616203">
                              <link role="baseMethodDeclaration" targetNodeId="8.~IModule.getModuleUID():java.lang.String" resolveInfo="getModuleUID" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206449603986">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1206449603187">
                      <link role="baseMethodDeclaration" targetNodeId="8.~GlobalScope.getInstance():jetbrains.mps.project.GlobalScope" resolveInfo="getInstance" />
                      <link role="classConcept" targetNodeId="8.~GlobalScope" resolveInfo="GlobalScope" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1206449608318">
                      <link role="baseMethodDeclaration" targetNodeId="8.~GlobalScope.getVisibleModules():java.util.Set" resolveInfo="getVisibleModules" />
                    </node>
                  </node>
                  <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206449585634">
                    <property name="name" value="m" />
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206449599450">
                      <link role="classifier" targetNodeId="8.~IModule" resolveInfo="IModule" />
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1206449581986">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206449582769">
                    <link role="variableDeclaration" targetNodeId="1206449570695" resolveInfo="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1204128133822">
        <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="configurationReferences_editorComponent" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1204116838270">
      <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="configurationReferences_editorComponent" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1203602073283">
    <property name="package" value="sources" />
    <link role="conceptDeclaration" targetNodeId="1.1203601915645" resolveInfo="Source" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1203602078144">
      <link role="relationDeclaration" targetNodeId="1.1203601923911" resolveInfo="path" />
      <link role="actionMap" targetNodeId="1204017018614" resolveInfo="CompositeSource_RT" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1203603529883">
    <property name="package" value="sources" />
    <link role="conceptDeclaration" targetNodeId="1.1203603490707" resolveInfo="CompositSource" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1203605104985">
      <property name="vertical" value="false" />
      <link role="actionMap" targetNodeId="1204017018614" resolveInfo="CompositeSource_RT" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1203605107017">
        <link role="relationDeclaration" targetNodeId="1.1203605077185" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1203605112878">
        <property name="text" value="/" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1203605120208">
        <property name="attractsFocus" value="2" />
        <link role="relationDeclaration" targetNodeId="1.1203605085483" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1204015167480">
    <property name="package" value="projectComponents" />
    <link role="conceptDeclaration" targetNodeId="1.1204015075559" resolveInfo="Copy" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204015197022">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1204015203776">
        <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
        <link role="styleClass" targetNodeId="1203598953979" resolveInfo="projectComponent" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204015210358">
        <property name="text" value="from" />
        <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1204015218159">
        <property name="attractsFocus" value="2" />
        <link role="relationDeclaration" targetNodeId="1.1204015133936" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1204128157362">
        <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="configurationReferences_editorComponent" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204116771683">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204116772622">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204116772623">
          <property name="text" value="excludes" />
          <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1204116772624">
          <property name="allowEmptyText" value="true" />
          <link role="relationDeclaration" targetNodeId="1.1204107538752" resolveInfo="excludes" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1206440197854">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206440197855">
          <property name="text" value="includes" />
          <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1206440197856">
          <property name="allowEmptyText" value="true" />
          <link role="relationDeclaration" targetNodeId="1.1206439809898" resolveInfo="includes" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1204116777955">
        <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="configurationReferences_editorComponent" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapDeclaration" id="1204017018614">
    <property name="name" value="CompositeSource_RT" />
    <property name="package" value="sources" />
    <link role="applicableConcept" targetNodeId="1.1203601915645" resolveInfo="Source" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapItem" id="1204017029553">
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_ExecuteFunction" id="1204017029554">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204017029555">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1204017141668">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1204017141669">
              <property name="name" value="newCompositSource" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204017141670">
                <link role="concept" targetNodeId="1.1203603490707" resolveInfo="CompositSource" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1204017141671">
                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1204017141672">
                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1204017141673">
                    <link role="concept" targetNodeId="1.1203603490707" resolveInfo="CompositSource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204017141674">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204017141675">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1204017157454" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1204017141677">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204017141678">
                  <link role="variableDeclaration" targetNodeId="1204017141669" resolveInfo="newCompositSource" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204017141679">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204017141680">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204017141681">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204017141682">
                  <link role="variableDeclaration" targetNodeId="1204017141669" resolveInfo="newCompositSource" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204017141683">
                  <link role="link" targetNodeId="1.1203605077185" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1204017141684">
                <node role="parameter" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1204017162314" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204708672262">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204708673530">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1204708672263" />
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204708705196">
                <link role="baseMethodDeclaration" targetNodeId="3.~EditorContext.selectLater(jetbrains.mps.smodel.SNode):void" resolveInfo="selectLater" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204708716088">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1204708714509">
                    <link role="variableDeclaration" targetNodeId="1204017141669" resolveInfo="newCompositSource" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204708718934">
                    <link role="link" targetNodeId="1.1203605085483" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1204115676160">
    <link role="conceptDeclaration" targetNodeId="1.1204115658627" resolveInfo="Configuration" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204115682334">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1204115701868">
        <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
        <link role="styleClass" targetNodeId="1204115710587" resolveInfo="configuration" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1204115863411">
    <link role="conceptDeclaration" targetNodeId="1.1204115822363" resolveInfo="ConfigurationReference" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1204115867975">
      <link role="relationDeclaration" targetNodeId="1.1204115847973" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1204115867976">
        <link role="conceptDeclaration" targetNodeId="1.1204115658627" resolveInfo="Configuration" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1204115874150">
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
          <link role="styleClass" targetNodeId="1204115710587" resolveInfo="configuration" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.EditorComponentDeclaration" id="1204116610828">
    <property name="name" value="ConfigurationReferencesEditorComponent" />
    <link role="conceptDeclaration" targetNodeId="1.1203598300291" resolveInfo="AbstractProjectComponent" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204299963611">
      <property name="vertical" value="false" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204299963612">
        <property name="text" value="include in" />
        <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1204299963613">
        <property name="separatorText" value="," />
        <link role="relationDeclaration" targetNodeId="1.1204116468206" />
        <node role="emptyCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204299963614">
          <property name="text" value="&lt;any configuration&gt;" />
          <link role="styleClass" targetNodeId="1203012208595" resolveInfo="hint" />
        </node>
      </node>
      <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1204299963615">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204299963616">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204299963617">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1204299963618">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1204299963619">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205408662893">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299963622">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1204299963623" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1204299963624">
                      <link role="link" targetNodeId="1.1204116468206" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.IsNotEmptyOperation" id="1204299963625" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204299963626">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1204299963627" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204299963628">
                  <link role="baseMethodDeclaration" targetNodeId="3.~EditorContext.isInspector():boolean" resolveInfo="isInspector" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapDeclaration" id="1204705662485">
    <property name="name" value="CompositeSource_DeleteAction" />
    <property name="package" value="sources" />
    <link role="applicableConcept" targetNodeId="1.1203603490707" resolveInfo="CompositeSource" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapItem" id="1204705713589">
      <property name="actionId" value="delete_action_id" />
      <property name="description" value="remove last folder" />
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_ExecuteFunction" id="1204705713590">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1204705713591">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1204705754193">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204705755211">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1204705754194" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1204705757635">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204705760404">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1204705759606" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1204705778003">
                    <link role="link" targetNodeId="1.1203605077185" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1204815116211">
    <property name="package" value="projectComponents" />
    <link role="conceptDeclaration" targetNodeId="1.1204815005202" resolveInfo="ModuleFromFile" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204815118338">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1204815118339">
        <link role="styleClass" targetNodeId="1203598953979" resolveInfo="projectComponent" />
        <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204815241449">
        <property name="text" value="from" />
        <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1204815285088">
        <property name="attractsFocus" value="2" />
        <link role="relationDeclaration" targetNodeId="1.1204815042908" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1204815393862">
        <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="ConfigurationReferencesEditorComponent" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1204815401317">
      <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="ConfigurationReferencesEditorComponent" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1205331458763">
    <property name="package" value="projectComponents" />
    <link role="conceptDeclaration" targetNodeId="1.1205331422635" resolveInfo="Echo" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1205331467671">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1205332796526">
        <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
        <link role="styleClass" targetNodeId="1203598953979" resolveInfo="projectComponent" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1205341761449">
        <link role="relationDeclaration" targetNodeId="1.1205340508811" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1205331546803">
        <property name="text" value="&gt;" />
        <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1205344861008">
        <link role="relationDeclaration" targetNodeId="1.1205340441197" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1205331920317">
        <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="ConfigurationReferencesEditorComponent" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1205331923100">
      <link role="editorComponent" targetNodeId="1204116610828" resolveInfo="ConfigurationReferencesEditorComponent" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1205335339235">
    <property name="package" value="variables" />
    <link role="conceptDeclaration" targetNodeId="1.1205335290326" resolveInfo="Variable" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1205335367191">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1205335370989">
        <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
        <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1205335424256">
        <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
        <link role="styleClass" targetNodeId="1205337004073" resolveInfo="variable" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1205335430243">
        <property name="text" value="=" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1205335452918">
        <property name="text" value="${" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1205335438948">
        <property name="attractsFocus" value="2" />
        <link role="relationDeclaration" targetNodeId="1.1205335307578" resolveInfo="antName" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1205335461264">
        <property name="text" value="}" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1205339390796">
    <property name="package" value="variables" />
    <link role="conceptDeclaration" targetNodeId="1.1205339044029" resolveInfo="SimpleString" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1205339395970">
      <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
      <link role="actionMap" targetNodeId="1205343437256" resolveInfo="CompositeString_RT" />
      <link role="styleClass" targetNodeId="1205343740058" resolveInfo="string" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1205339498504">
    <property name="package" value="variables" />
    <link role="conceptDeclaration" targetNodeId="1.1205339464939" resolveInfo="VariableReference" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1205339501475">
      <link role="relationDeclaration" targetNodeId="1.1205339484191" />
      <link role="actionMap" targetNodeId="1205343437256" resolveInfo="CompositeString_RT" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1205339501476">
        <link role="conceptDeclaration" targetNodeId="1.1205335290326" resolveInfo="Variable" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1205339512744">
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
          <link role="styleClass" targetNodeId="1205337004073" resolveInfo="variable" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1205342899522">
    <property name="package" value="variables" />
    <link role="conceptDeclaration" targetNodeId="1.1205342812422" resolveInfo="CompositeString" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1205342905821">
      <property name="vertical" value="false" />
      <link role="actionMap" targetNodeId="1205343437256" resolveInfo="CompositeString_RT" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1205342909808">
        <link role="relationDeclaration" targetNodeId="1.1205342829799" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1205342912279">
        <link role="relationDeclaration" targetNodeId="1.1205342834160" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapDeclaration" id="1205343437256">
    <property name="package" value="variables" />
    <property name="name" value="CompositeString_RT" />
    <link role="applicableConcept" targetNodeId="1.1205339194346" resolveInfo="IStringExpression" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapItem" id="1205343467085">
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_ExecuteFunction" id="1205343467086">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205343467087">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205343481651">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205343481652">
              <property name="name" value="newNode" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205343481653">
                <link role="concept" targetNodeId="1.1205342812422" resolveInfo="CompositeString" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1205343495092">
                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1205343495093">
                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205343495094">
                    <link role="concept" targetNodeId="1.1205342812422" resolveInfo="CompositeString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205343524685">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205343525094">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1205343524686" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1205343527455">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205343530645">
                  <link role="variableDeclaration" targetNodeId="1205343481652" resolveInfo="newNode" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205343500049">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205343508242">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205343501020">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205343500050">
                  <link role="variableDeclaration" targetNodeId="1205343481652" resolveInfo="newNode" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1205343507194">
                  <link role="link" targetNodeId="1.1205342829799" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1205343510588">
                <node role="parameter" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1205343513840" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapDeclaration" id="1205343939194">
    <property name="package" value="variables" />
    <property name="name" value="CompositeString_Delete" />
    <link role="applicableConcept" targetNodeId="1.1205342812422" resolveInfo="CompositeString" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapItem" id="1205343960726">
      <property name="actionId" value="delete_action_id" />
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_ExecuteFunction" id="1205343960727">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205343960728">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205343967776">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205343968856">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1205343967777" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1205343982346">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205343985161">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1205343984270" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1205343986898">
                    <link role="link" targetNodeId="1.1205342829799" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.EditorComponentDeclaration" id="1206440283018">
    <property name="package" value="projectComponents" />
    <property name="name" value="ICompositeComponentEditorComponenmt" />
    <link role="conceptDeclaration" targetNodeId="1.1203617883391" resolveInfo="ICompositeComponent" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1206440330708">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1206440331788">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206440331789">
          <property name="text" value="excludes" />
          <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1206440331790">
          <property name="allowEmptyText" value="true" />
          <link role="relationDeclaration" targetNodeId="1.1204107522064" resolveInfo="excludes" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1206440331791">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206440331792">
          <property name="text" value="includes" />
          <link role="styleClass" targetNodeId="1203598923024" resolveInfo="keyword" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1206440331793">
          <property name="allowEmptyText" value="true" />
          <link role="relationDeclaration" targetNodeId="1.1206439615350" resolveInfo="includes" />
        </node>
      </node>
    </node>
  </node>
</model>


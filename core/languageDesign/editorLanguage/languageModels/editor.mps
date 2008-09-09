<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.bootstrap.editorLanguage.editor">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.editorLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.editorLanguage.constraints" version="21" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.editorLanguage.structure" version="26" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.constraints" version="83" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.constraints" version="21" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.constraints" version="6" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.constraints" version="11" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.sharedConcepts.constraints" version="0" />
  <languageAspect modelUID="jetbrains.mps.closures.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.core.constraints" version="2" />
  <languageAspect modelUID="jetbrains.mps.internal.collections.constraints" version="2" />
  <maxImportIndex value="28" />
  <import index="2" modelUID="jetbrains.mps.bootstrap.editorLanguage.structure" version="26" />
  <import index="3" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="8" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1" />
  <import index="13" modelUID="jetbrains.mps.bootstrap.editorLanguage.editor@java_stub" version="-1" />
  <import index="14" modelUID="java.lang@java_stub" version="-1" />
  <import index="16" modelUID="jetbrains.mps.nodeEditor@java_stub" version="-1" />
  <import index="17" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="19" modelUID="jetbrains.mps.bootstrap.sharedConcepts.structure" version="-1" />
  <import index="20" modelUID="java.awt@java_stub" version="-1" />
  <import index="22" modelUID="jetbrains.mps.bootstrap.editorLanguage.structure@java_stub" version="-1" />
  <import index="25" modelUID="javax.swing@java_stub" version="-1" />
  <import index="26" modelUID="jetbrains.mps.baseLanguage.editor" version="-1" />
  <import index="28" modelUID="java.io@java_stub" version="-1" />
  <visible index="2" modelUID="jetbrains.mps.bootstrap.sharedConcepts.editor" />
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1078153915535">
    <property name="name" value="ConceptEditorDeclaration_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1071666914219" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078154255343">
      <property name="attractsFocus" value="0" />
      <property name="name" value="nodeBox" />
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078154255344">
        <property name="attractsFocus" value="0" />
        <property name="name" value="headerRow" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1078154255345">
          <property name="text" value="editor for concept" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994775">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1106262846792">
          <property name="noTargetText" value="&lt;no concept&gt;" />
          <link role="relationDeclaration" targetNodeId="2.1166049300910" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1106262827948">
            <link role="conceptDeclaration" targetNodeId="8.1169125787135" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1106262846793">
              <property name="noTargetText" value="&lt;no name&gt;" />
              <property name="readOnly" value="true" />
              <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              <link role="styleClass" targetNodeId="2v.1203541385314" resolveInfo="ReferenceOnConcept" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940080">
                <property name="flag" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997800">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078168236281">
        <property name="name" value="nodeCellArea" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1216382626087" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078168412377">
          <property name="name" value="nodeCellPanel" />
          <property name="vertical" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1078168651395">
            <property name="text" value="node cell layout:" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996115">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078168791802">
            <property name="name" value="cellsLayoutPanel" />
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1216382628245" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1128364838801">
              <property name="noTargetText" value="&lt;choose cell model&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1080736633877" />
              <link role="keyMap" targetNodeId="1130860818891" resolveInfo="EditorCellModel_KeyMap" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998056">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994124">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998048">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078232807734">
        <property name="name" value="inspectedCellArea" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1216382631480" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078232807736">
          <property name="name" value="inspectedCellPanel" />
          <property name="vertical" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1078232807737">
            <property name="name" value="headerIndentCell" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995033">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1078232807738">
            <property name="text" value="inspected cell layout:" />
            <property name="attractsFocus" value="0" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994326">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078232807739">
            <property name="name" value="cellsLayoutPanel" />
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1216382634153" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1078232807741">
              <property name="noTargetText" value="&lt;choose cell model&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1078153129734" />
              <link role="keyMap" targetNodeId="1130860818891" resolveInfo="EditorCellModel_KeyMap" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997501">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995210">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997080">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1078250851485">
    <property name="name" value="CellModel_Error_Editor" />
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1075375595203" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078250851486">
      <property name="name" value="nodeBox" />
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176716975194">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1078250851487">
        <property name="writable" value="true" />
        <property name="defaultValue" value="" />
        <link role="relationDeclaration" targetNodeId="2.1075375595204" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941231">
          <property name="flag" value="true" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.BackgroundColorStyleClassItem" id="1214396913641">
          <property name="color" value="query" />
          <node role="query" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_Color" id="1214396913642">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214396913643">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1214396913644">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1214396913645">
                  <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                  <link role="classConcept" targetNodeId="1176888877514" resolveInfo="_EditorUtil" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214396913646" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407441969">
          <property name="color" value="pink" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214407442148">
          <property name="color" value="magenta" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176716980679">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940871">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940651">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078251446492">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214480421923">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214480392873">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214480395577" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1078251446493">
        <property name="text" value="Error cell:" />
        <property name="name" value="headerCell" />
        <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078251768573">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078251768574">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1078251768575">
            <property name="text" value="text" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1078251768577">
            <property name="writable" value="true" />
            <property name="defaultValue" value="&lt;null&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1075375595204" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940289">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407442042">
              <property name="color" value="pink" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214407442179">
              <property name="color" value="magenta" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994695">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940335">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994733">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941306">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997356">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1078830687765">
    <property name="name" value="CellModel_Collection_Editor" />
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1073389446423" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078830838187">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078831285968">
        <property name="name" value="nodeBoxV" />
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080900860468">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176716991133">
            <property name="name" value="open_tag_1" />
            <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
            <link role="actionMap" targetNodeId="1183710576873" resolveInfo="CellModel_Collection_Actions" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994890">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941471">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078831864673">
          <property name="name" value="center" />
          <property name="vertical" value="false" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1078831864674">
            <property name="name" value="indent" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997149">
              <property name="flag" value="false" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941208">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1078834032968">
            <property name="name" value="ver" />
            <property name="vertical" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389446424" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940484">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940151">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080900876423">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176716999119">
            <property name="name" value="close_tag_1" />
            <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
            <link role="actionMap" targetNodeId="1183710576873" resolveInfo="CellModel_Collection_Actions" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994251">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939936">
            <property name="flag" value="true" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.BackgroundColorStyleClassItem" id="1214396913653">
            <property name="color" value="query" />
            <node role="query" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_Color" id="1214396913654">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214396913655">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1214396913656">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1214396913657">
                    <link role="classConcept" targetNodeId="1176888877514" resolveInfo="_EditorUtil" />
                    <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                    <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214396913658" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1146616612562">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1146616612563">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1146616614799">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227912118">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1146616618363" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1146616627178">
                  <link role="property" targetNodeId="2.1073389446425" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996464">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941523">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078915007345">
        <property name="name" value="nodeBoxH" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717005698">
          <property name="name" value="open_tag_1" />
          <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
          <link role="actionMap" targetNodeId="1183710576873" resolveInfo="CellModel_Collection_Actions" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1078915007347">
          <property name="name" value="hor" />
          <property name="vertical" value="false" />
          <link role="relationDeclaration" targetNodeId="2.1073389446424" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941741">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717011043">
          <property name="name" value="close_tag_2" />
          <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
          <link role="actionMap" targetNodeId="1183710576873" resolveInfo="CellModel_Collection_Actions" />
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1146618696916">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1146618696917">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1146618699996">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1146618702326">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227893612">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1146618705984" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1146618714127">
                    <link role="property" targetNodeId="2.1073389446425" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995256">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941765">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941285">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078931723968">
      <property name="vertical" value="true" />
      <property name="gridLayout" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214478849829">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478854924">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214478858488">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1078935965937">
        <property name="text" value="Cell collection:" />
        <property name="name" value="headerCell" />
        <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078936199314">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078936199327">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1078936199328">
            <property name="text" value="vertical" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1078936199330">
            <link role="relationDeclaration" targetNodeId="2.1073389446425" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941095">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997575">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941327">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078936199331">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1078936199332">
            <property name="text" value="grid layout" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1078936199334">
            <link role="relationDeclaration" targetNodeId="2.1073389446426" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939400">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995738">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941961">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1106271317031">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1106271317032">
            <property name="text" value="cell layout" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1106271317033">
            <property name="noTargetText" value="&lt;no layout&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1106270802874" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941913">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996234">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940510">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139416996716">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139417050969">
            <property name="text" value="uses braces" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1139417057972">
            <link role="relationDeclaration" targetNodeId="2.1139416841293" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314942030">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997944">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940056">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1160590439793">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1160590455842">
            <property name="text" value="uses folding" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1160590466391">
            <link role="relationDeclaration" targetNodeId="2.1160590353935" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993979">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996653">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941119">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993752">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1078939560959">
    <property name="name" value="CellModel_Component_Editor" />
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1078939183254" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078939636327">
      <property name="vertical" value="false" />
      <link role="keyMap" targetNodeId="1198590715451" resolveInfo="CellModel_Component_KeyMap" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717023528">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1140222839466">
        <property name="noTargetText" value="&lt;no component&gt;" />
        <link role="relationDeclaration" targetNodeId="2.1078939183255" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1140222839465">
          <link role="conceptDeclaration" targetNodeId="2.1078938745671" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1140222845140">
            <property name="noTargetText" value="&lt;no name&gt;" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940170">
              <property name="flag" value="true" />
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941666">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717029764">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939820">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940779">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1078941097162">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214478501206">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994795">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1079007237531">
    <property name="name" value="EditorComponentDeclaration_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1078938745671" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1079007237544">
      <property name="name" value="nodeBox" />
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1079007237545">
        <property name="name" value="headerRow" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1079007237546">
          <property name="text" value="editor component" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1136931226248">
          <property name="noTargetText" value="&lt;no name&gt;" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993933">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1079007237550">
        <property name="name" value="semanticTypeAreaIndented" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1079007237551">
          <property name="text" value="    " />
          <property name="name" value="indentCell" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995761">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1079007237552">
          <property name="name" value="semanticTypeArea" />
          <property name="vertical" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1079007237553">
            <property name="text" value="applicable concept:" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1079007237554">
            <property name="name" value="cellsLayoutPanel" />
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139445751111">
              <property name="text" value="    " />
              <property name="name" value="indentCell" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997934">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1106261028889">
              <property name="noTargetText" value="&lt;choose concept&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1166049300910" />
              <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1106261017482">
                <link role="conceptDeclaration" targetNodeId="8.1169125787135" />
                <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1106261028890">
                  <property name="readOnly" value="true" />
                  <link role="relationDeclaration" targetNodeId="3.1169194664001" />
                  <link role="styleClass" targetNodeId="2v.1203541385314" resolveInfo="ReferenceOnConcept" />
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995957">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994080">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995146">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1079007237557">
        <property name="name" value="nodeCellArea" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1079007237558">
          <property name="text" value="    " />
          <property name="name" value="indentCell" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996289">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1079007237559">
          <property name="name" value="nodeCellPanel" />
          <property name="vertical" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1079007237560">
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996941">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1079007237561">
            <property name="text" value="component cell layout:" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1079007237562">
            <property name="name" value="cellsLayoutPanel" />
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139445756021">
              <property name="text" value="    " />
              <property name="name" value="indentCell" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998172">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1140213026969">
              <link role="relationDeclaration" targetNodeId="2.1080736633877" />
              <link role="keyMap" targetNodeId="1130860818891" resolveInfo="EditorCellModel_KeyMap" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995677">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998006">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995071">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <visible index="3" modelUID="jetbrains.mps.bootstrap.editorLanguage.behavior" />
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1080742754453">
    <property name="name" value="CellModel_Constant_Editor" />
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1073389577006" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080742754454">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717068047">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1176717081541">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176717081542">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176717082035">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" id="1220340514832">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1220340514976">
                  <property name="value" value="0" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220340512690">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220340510123">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1220340509747" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1220340512330">
                      <link role="conceptMethodDeclaration" targetNodeId="3v.1220340471382" resolveInfo="getOpeningTag" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1220340513691">
                    <link role="baseMethodDeclaration" targetNodeId="14.~String.length():int" resolveInfo="length" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1080742871174">
        <property name="allowEmptyText" value="true" />
        <property name="writable" value="true" />
        <property name="defaultValue" value="" />
        <link role="relationDeclaration" targetNodeId="2.1073389577007" />
        <link role="keyMap" targetNodeId="1178883358278" resolveInfo="_SplitConctantCellIntoWordsKeyMap" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939614">
          <property name="flag" value="true" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.BackgroundColorStyleClassItem" id="1214396926659">
          <property name="color" value="query" />
          <node role="query" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_Color" id="1214396926660">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214396926661">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1214396926662">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1214396926663">
                  <link role="classConcept" targetNodeId="1176888877514" resolveInfo="_EditorUtil" />
                  <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214396926664" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1220968480804">
          <property name="color" value="query" />
          <node role="query" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_Color" id="1220968480805">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1220968480806">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1220968480807">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220968480808">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1220968480809" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1220968480810">
                    <link role="conceptMethodDeclaration" targetNodeId="3v.1220960215403" resolveInfo="getColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.BackgroundColorStyleClassItem" id="1220971705268">
          <property name="color" value="query" />
          <node role="query" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_Color" id="1220971712628">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1220971712629">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1220971717177">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220971722727">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1220971721179" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1220971727199">
                    <link role="conceptMethodDeclaration" targetNodeId="3v.1220969182195" resolveInfo="getBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1220972042359">
          <property name="color" value="query" />
          <node role="query" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_Color" id="1220972053532">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1220972053533">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1220972086320">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220972090510">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1220972089322" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1220972093295">
                    <link role="conceptMethodDeclaration" targetNodeId="3v.1220972190901" resolveInfo="getTextBackgroundColor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717088137">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1176717095123">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176717095124">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176717095680">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" id="1220340534768">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1220340534896">
                  <property name="value" value="0" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220340529827">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220340526682">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1220340526353" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1220340529123">
                      <link role="conceptMethodDeclaration" targetNodeId="3v.1220340471382" resolveInfo="getOpeningTag" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1220340533861">
                    <link role="baseMethodDeclaration" targetNodeId="14.~String.length():int" resolveInfo="length" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941638">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080742936930">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214479415172">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214479415173" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1080742964963">
        <property name="text" value="Constant cell:" />
        <property name="name" value="headerCell" />
        <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080742964964">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080742964965">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1080742964966">
            <property name="text" value="text" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1080742964968">
            <property name="writable" value="true" />
            <property name="defaultValue" value="&lt;null&gt;" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="allowEmptyText" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389577007" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941786">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407442009">
              <property name="color" value="yellow" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214407442171">
              <property name="color" value="cyan" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997959">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940269">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1082639645063">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1082639645064">
            <property name="text" value="text*" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1082639645065">
            <property name="allowEmptyText" value="true" />
            <property name="writable" value="true" />
            <property name="defaultValue" value="&lt;null&gt;" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1082639509531" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940477">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407441965">
              <property name="color" value="yellow" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214407442147">
              <property name="color" value="cyan" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995039">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940875">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996069">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941540">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994545">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1080749245406">
    <property name="name" value="CellModel_Custom_Editor" />
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1078308402140" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080749245407">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717110252">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176799313696">
        <property name="text" value="custom cell" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717118113">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939589">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080749634962">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214306512753">
        <link role="editorComponent" targetNodeId="1214305761663" resolveInfo="Style_Component" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478684731">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214478691028">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1080749749107">
        <property name="text" value="Custom cell:" />
        <property name="name" value="headerCell" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214478658132">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176795050331">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176795051116">
            <property name="text" value="cell provider" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1176795052500">
            <link role="relationDeclaration" targetNodeId="2.1176795024817" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997540">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214478675104">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997162">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1080754563251">
    <property name="name" value="CellModel_ModelAccess_Editor" />
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1074767920765" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080754563256">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717130661">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176724690194">
        <property name="text" value="model access" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941139">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717135427">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314942180">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940030">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080754563259">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214480510586">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214480510587">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214480515634" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1080754563260">
        <property name="text" value="Model access cell:" />
        <property name="name" value="headerCell" />
        <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477447254">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176725282512">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176725282513">
            <property name="text" value="model acessor:" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996055">
            <property name="flag" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1176725282515">
            <link role="relationDeclaration" targetNodeId="2.1176718152741" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1145902779366">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1145902779367">
            <property name="text" value="text*" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1145902779368">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1082638248796" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940378">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407441942">
              <property name="color" value="yellow" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214407442127">
              <property name="color" value="cyan" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996812">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939890">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214480828471">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995692">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1080757525329">
    <property name="name" value="CellModel_Property_Editor" />
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1073389658414" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080757525334">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717146663">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941255">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1140223082035">
        <property name="noTargetText" value="&lt;no property&gt;" />
        <link role="relationDeclaration" targetNodeId="2.1073389964684" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1140223082034">
          <link role="conceptDeclaration" targetNodeId="8.1071489288299" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1140223090803">
            <property name="noTargetText" value="&lt;no name&gt;" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941663">
              <property name="flag" value="true" />
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940121">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717151805">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941433">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939823">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080757525338">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214480562374">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214480534074">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214480540278" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1080757525339">
        <property name="text" value="Property cell:" />
        <property name="name" value="headerCell" />
        <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477494841">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080757525341">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1080757525342">
            <property name="text" value="property" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1140223255594">
            <property name="noTargetText" value="&lt;no property&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1073389964684" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1140223255595">
              <link role="conceptDeclaration" targetNodeId="8.1071489288299" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1140223255596">
                <property name="noTargetText" value="&lt;no name&gt;" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
                <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939882">
                  <property name="flag" value="true" />
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941907">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996930">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941310">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1082641826609">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1082641826610">
            <property name="text" value="text*" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1082641826611">
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1139852716018" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941328">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407442048">
              <property name="color" value="yellow" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214407442181">
              <property name="color" value="cyan" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996471">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939681">
            <property name="flag" value="true" />
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1214930378301">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214930378302">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1214930403386">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1214930403387">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214930404922">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214930404092" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1214930407003">
                      <link role="property" targetNodeId="2.1214560368769" resolveInfo="emptyNoTargetText" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214560560907">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214560560908">
            <property name="text" value="empty text*" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214560560909">
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1214560368769" resolveInfo="emptyNoTargetText" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214560560910">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214560560911">
              <property name="color" value="yellow" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214560560912">
              <property name="color" value="cyan" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214560560913">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214560560914">
            <property name="flag" value="true" />
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1214560560915">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214560560916">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1214560560917">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1214560560918">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1214560560919" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214560560920">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214560560921" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1214560560922">
                      <link role="property" targetNodeId="2.1139852716018" resolveInfo="noTargetText" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477517063">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477517064">
            <property name="text" value="read only" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214477517067">
            <link role="relationDeclaration" targetNodeId="2.1140017977771" resolveInfo="readOnly" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477517068">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477517069">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477517070">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477517071">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477517072">
            <property name="text" value="allow empty" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214477517075">
            <link role="relationDeclaration" targetNodeId="2.1140114345053" resolveInfo="allowEmptyText" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477517076">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477517077">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477517078">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214480839753">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995552">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1080832307609">
    <property name="name" value="CellModel_RefNode_Editor" />
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1073389882823" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080832307620">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717163182">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1140223719665">
        <property name="noTargetText" value="&lt;no link&gt;" />
        <link role="relationDeclaration" targetNodeId="2.1073389882824" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1140223719664">
          <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1140223741229">
            <property name="noTargetText" value="&lt;no role&gt;" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="8.1071599776563" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941432">
              <property name="flag" value="true" />
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940386">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717169105">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939423">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080832307624">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214477839006">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478529990" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1080832307625">
        <property name="text" value="Ref.node cell:" />
        <property name="name" value="headerCell" />
        <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477690868">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477807872">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477807873">
            <property name="text" value="link" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1214477807876">
            <property name="noTargetText" value="&lt;no link&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1073389882824" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1214477807877">
              <link role="conceptDeclaration" targetNodeId="8.1071489288298" resolveInfo="LinkDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214477807878">
                <property name="noTargetText" value="&lt;no role&gt;" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="8.1071599776563" resolveInfo="role" />
                <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477807879">
                  <property name="flag" value="true" />
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477807880">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477807881">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477807882">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477807883">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477807884">
            <property name="text" value="text*" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214477807887">
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1139852716018" resolveInfo="noTargetText" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477807888">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214477807889">
              <property name="color" value="yellow" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214477807890">
              <property name="color" value="cyan" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477807891">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477807892">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214560571660">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214560571661">
            <property name="text" value="empty text*" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214560571662">
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1214560368769" resolveInfo="emptyNoTargetText" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214560571663">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214560571664">
              <property name="color" value="yellow" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214560571665">
              <property name="color" value="cyan" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214560571666">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214560571667">
            <property name="flag" value="true" />
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1214560571668">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214560571669">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1214560571670">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1214560571671">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1214560571672" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214560571673">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214560571674" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1214560571675">
                      <link role="property" targetNodeId="2.1139852716018" resolveInfo="noTargetText" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214478573803">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996795">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1080925357593">
    <property name="name" value="EditorCellModel_Editor" />
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1073389214265" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1080925357596">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1080925357597">
        <property name="text" value="&lt; abstract cell &gt;" />
        <property name="name" value="headerCell" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998166">
          <property name="flag" value="true" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940097">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995516">
        <property name="flag" value="false" />
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Error" id="1080925357598">
      <property name="text" value="&lt;choose cell model&gt;" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940007">
        <property name="flag" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1081293221911">
    <property name="name" value="CellKeyMapDeclaration_Editor" />
    <property name="package" value="CellKeyMap" />
    <link role="conceptDeclaration" targetNodeId="2.1081293058843" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1081293243883">
      <property name="name" value="nodeBox" />
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1081293635369">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1081293831246">
          <property name="text" value="keymap" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1136931207356">
          <property name="noTargetText" value="&lt;no name&gt;" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1200682485540">
            <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_PropertyPostfixHints" id="1200683680836">
              <node role="postfixesFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_PropertyPostfixHints_GetPostfixes" id="1200683680837">
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200683680838">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1200683745842">
                    <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1200683745843">
                      <property name="name" value="prefixes" />
                      <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1200683745844">
                        <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1200683748553">
                          <link role="classifier" targetNodeId="14.~String" resolveInfo="String" />
                        </node>
                      </node>
                      <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1200683774887">
                        <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListCreatorWithInit" id="1200683774888">
                          <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1200683774889">
                            <link role="classifier" targetNodeId="14.~String" resolveInfo="String" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200683831259">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207872476892">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200683831260">
                        <link role="variableDeclaration" targetNodeId="1200683745843" resolveInfo="prefixes" />
                      </node>
                      <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddElementOperation" id="1200683834414">
                        <node role="argument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1200683838616">
                          <property name="value" value="_KeyMap" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1200683740839">
                    <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1200683785414">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1200683787095" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227911207">
                        <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_Abstract_editedNode" id="1200683779101" />
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200683781831">
                          <link role="link" targetNodeId="2.1139445935125" />
                        </node>
                      </node>
                    </node>
                    <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200683740841">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200683791319">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207872476840">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200683791320">
                            <link role="variableDeclaration" targetNodeId="1200683745843" resolveInfo="prefixes" />
                          </node>
                          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddElementOperation" id="1200683796416">
                            <node role="argument" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1200683804316">
                              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1200683809900">
                                <property name="value" value="_KeyMap" />
                              </node>
                              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227926126">
                                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227896370">
                                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_Abstract_editedNode" id="1200683798996" />
                                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200683801048">
                                    <link role="link" targetNodeId="2.1139445935125" />
                                  </node>
                                </node>
                                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1200683802881">
                                  <link role="property" targetNodeId="3.1169194664001" resolveInfo="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200683827002">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1200683827003">
                      <link role="variableDeclaration" targetNodeId="1200683745843" resolveInfo="prefixes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994455">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149937620812">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996306">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149937650460">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149937653212">
          <property name="text" value="everyModel" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1149937681641">
          <link role="relationDeclaration" targetNodeId="2.1149937560128" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997500">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136930845410">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997537">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139446249848">
        <property name="name" value="cellsLayoutPanel" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139446249849">
          <property name="text" value="applicable concept:" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997374">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1139446249850">
          <property name="noTargetText" value="&lt;any&gt;" />
          <link role="relationDeclaration" targetNodeId="2.1139445935125" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1139446249851">
            <link role="conceptDeclaration" targetNodeId="8.1071489090640" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1139446249852">
              <property name="readOnly" value="true" />
              <property name="noTargetText" value="&lt;no name&gt;" />
              <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940077">
                <property name="flag" value="true" />
              </node>
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678487">
                <property name="color" value="DARK_MAGENTA" />
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997382">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139446274558">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995951">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136930869381">
        <property name="text" value="keymap items:" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993757">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136930914727">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996462">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1136930934885">
        <property name="vertical" value="true" />
        <link role="relationDeclaration" targetNodeId="2.1136930944870" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.EditorComponentDeclaration" id="1081339484984">
    <property name="name" value="_CellKeyMapLnk_Component" />
    <link role="conceptDeclaration" targetNodeId="2.1073389214265" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1140223991344">
      <property name="noTargetText" value="&lt;default&gt;" />
      <link role="relationDeclaration" targetNodeId="2.1081339532145" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1140223991345">
        <link role="conceptDeclaration" targetNodeId="2.1081293058843" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1140223996488">
          <property name="noTargetText" value="&lt;no name&gt;" />
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940379">
            <property name="flag" value="true" />
          </node>
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941740">
        <property name="flag" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1088013642258">
    <property name="name" value="CellModel_RefCell_Editor" />
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1088013125922" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088068732167">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717200032">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1088499484891">
        <property name="text" value="%" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940757">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1140223272145">
        <property name="noTargetText" value="&lt;no link&gt;" />
        <link role="relationDeclaration" targetNodeId="2.1088013239202" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1140223272144">
          <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1140223279132">
            <property name="noTargetText" value="&lt;no role&gt;" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="8.1071599776563" />
            <link role="styleClass" targetNodeId="2v.1203541368202" resolveInfo="ReferenceDecorated" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940027">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214513831358">
              <property name="flag" value="true" />
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941470">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1088499484893">
        <property name="text" value="%" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314942135">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1088499484894">
        <property name="noTargetText" value="&lt;press ctrl-space&gt;" />
        <property name="cellNodeFilter_Id" value="CellModel_RefCell_EffectiveConceptDeclaration" />
        <link role="relationDeclaration" targetNodeId="2.1088186146602" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1146619345990">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1146619345991">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1214512981884">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1146619356512">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1146619360421" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227883271">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1146619349025" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1146619354589">
                    <link role="link" targetNodeId="2.1088013239202" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941815">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717206314">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939770">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088069661254">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214511121193">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214480586001">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214480588642" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1088069661255">
        <property name="text" value="Ref.cell cell:" />
        <property name="name" value="headerCell" />
        <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477577274">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088069661257">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1088069661258">
            <property name="text" value="link" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1140223422095">
            <property name="noTargetText" value="&lt;no link&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1088013239202" />
            <link role="styleClass" targetNodeId="2v.1203541368202" resolveInfo="ReferenceDecorated" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1140223422096">
              <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1140223422097">
                <property name="noTargetText" value="&lt;no role&gt;" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="8.1071599776563" />
                <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314942161">
                  <property name="flag" value="true" />
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941162">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995162">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940220">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088446348285">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1088446348286">
            <property name="text" value="effective type" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1147110301563">
            <property name="noTargetText" value="error! no editor component" />
            <link role="relationDeclaration" targetNodeId="2.1088186146602" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1147110301564">
              <link role="conceptDeclaration" targetNodeId="2.1088185857835" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1147110319487">
                <property name="noTargetText" value="error! no associated concept" />
                <link role="relationDeclaration" targetNodeId="2.1166049300910" />
                <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1147110319488">
                  <link role="conceptDeclaration" targetNodeId="8.1169125787135" />
                  <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1147110325022">
                    <property name="noTargetText" value="&lt;no name&gt;" />
                    <link role="relationDeclaration" targetNodeId="3.1169194664001" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998057">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940316">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1138332625583">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1138332625584">
            <property name="text" value="text*" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1138332625585">
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1139852716018" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940224">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407442050">
              <property name="color" value="yellow" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214407442185">
              <property name="color" value="cyan" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995881">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941620">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214560567393">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214560567394">
            <property name="text" value="empty text*" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214560567395">
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1214560368769" resolveInfo="emptyNoTargetText" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214560567396">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214560567397">
              <property name="color" value="yellow" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214560567398">
              <property name="color" value="cyan" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214560567399">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214560567400">
            <property name="flag" value="true" />
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1214560567401">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214560567402">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1214560567403">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1214560567404">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1214560567405" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214560567406">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214560567407" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1214560567408">
                      <link role="property" targetNodeId="2.1139852716018" resolveInfo="noTargetText" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214481432643">
        <property name="flag" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1088186441776">
    <property name="name" value="InlineEditorComponent_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1088185857835" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088186441777">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1088420259174">
        <property name="text" value="-&gt;" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994446">
          <property name="flag" value="true" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940729">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1140213009716">
        <link role="relationDeclaration" targetNodeId="2.1080736633877" />
        <link role="keyMap" targetNodeId="1130860818891" resolveInfo="EditorCellModel_KeyMap" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939662">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314942105">
        <property name="flag" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1088613173863">
    <property name="name" value="CellModel_Alternation_Editor" />
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1088612959204" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088613173864">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717215565">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940053">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088613626183">
        <property name="name" value="nodeBoxV" />
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088613537508">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1088613537509">
            <property name="text" value="true:" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941356">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1088613537510">
            <property name="noTargetText" value="&lt;no cell model&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1088612958265" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941782">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941089">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088613626184">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1088613626185">
            <property name="text" value="false:" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939889">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1088613626186">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1088612973955" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941938">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941143">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1146616693936">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1146616693937">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1146616695172">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227907539">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1146616698815" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1146616701739">
                  <link role="property" targetNodeId="2.1088613081987" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996393">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939728">
          <property name="flag" value="true" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.BackgroundColorStyleClassItem" id="1214396893964">
          <property name="color" value="query" />
          <node role="query" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_Color" id="1214396893965">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214396893966">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1214396893967">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1214396893968">
                  <link role="classConcept" targetNodeId="1176888877514" resolveInfo="_EditorUtil" />
                  <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214396893969" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088613626187">
        <property name="name" value="nodeBoxH" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088613754581">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1088613754582">
            <property name="text" value="true:" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940026">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1088613754583">
            <property name="noTargetText" value="&lt;no cell model&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1088612958265" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941064">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940099">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088613754584">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1088613754585">
            <property name="text" value="false:" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941090">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1088613754586">
            <property name="noTargetText" value="&lt;no cell model&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1088612973955" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939731">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941567">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1146618773637">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1146618773638">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1146618775045">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1146618781813">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227926045">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1146618788955" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1146618791910">
                    <link role="property" targetNodeId="2.1088613081987" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996102">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939931">
          <property name="flag" value="true" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.BackgroundColorStyleClassItem" id="1214396913659">
          <property name="color" value="query" />
          <node role="query" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_Color" id="1214396913660">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214396913661">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1214396913662">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1214396913663">
                  <link role="classConcept" targetNodeId="1176888877514" resolveInfo="_EditorUtil" />
                  <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214396913664" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717222675">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939887">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939961">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088613801150">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214476961659">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214476951827" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1088613895666">
        <property name="text" value="Cell alternation:" />
        <property name="name" value="headerCell" />
        <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214478624469">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088613895671">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1088613895672">
            <property name="text" value="vertical" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1088613895673">
            <link role="relationDeclaration" targetNodeId="2.1088613081987" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940339">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995899">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940174">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214667992615">
          <property name="vertical" value="false" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214667992616">
            <property name="flag" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214667997635">
            <property name="text" value="alt. condition" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1214668014340">
            <link role="relationDeclaration" targetNodeId="2.1145918517974" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214668028435">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214667992618">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214478651629">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995981">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1103016650847">
    <property name="name" value="CellModel_JComponent_Editor" />
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1103016434866" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1103016939596">
      <property name="text" value="$swing component$" />
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1103016682285">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477400704">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176475173506">
          <property name="text" value="component provider:" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1176475181606">
          <link role="relationDeclaration" targetNodeId="2.1176475119347" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1106271535824">
    <property name="package" value="CellLayout" />
    <link role="conceptDeclaration" targetNodeId="2.1106270637846" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1106271586309">
      <property name="text" value="Flow" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941229">
        <property name="flag" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1106271583784">
    <property name="package" value="CellLayout" />
    <link role="conceptDeclaration" targetNodeId="2.1106270549637" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1106271613640">
      <property name="text" value="Horizontal" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941664">
        <property name="flag" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1106271611316">
    <property name="package" value="CellLayout" />
    <link role="conceptDeclaration" targetNodeId="2.1106270571710" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1106271634762">
      <property name="text" value="Vertical" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939424">
        <property name="flag" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapDeclaration" id="1130860818891">
    <property name="name" value="EditorCellModel_KeyMap" />
    <link role="applicableConcept" targetNodeId="2.1073389214265" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1146852828959">
      <property name="description" value="toggle cell focus policy [attracts focus]/[no attraction]" />
      <property name="showInPopup" value="true" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1146852828960">
        <property name="keycode" value="VK_F" />
        <property name="modifiers" value="ctrl+shift" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1146852828963">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1146852828964">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1146853153327">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1146853545217">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227936064">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227922832">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1159392389133" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1146853546443">
                    <link role="property" targetNodeId="2.1130859485024" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1146853546444">
                  <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1146853546445">
                    <link role="enumMember" targetNodeId="2.1130926591919" />
                  </node>
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1146853153329">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1146853190101">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227901280">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227897534">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1159392389151" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1146853194479">
                      <link role="property" targetNodeId="2.1130859485024" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1146853200575">
                    <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1146853210561">
                      <link role="enumMember" targetNodeId="2.1130926591919" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1146853224501">
              <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1146853224502">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1146853228284">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227833102">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227912940">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1159392389131" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1146853241396">
                        <link role="property" targetNodeId="2.1130859485024" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1146853246680">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1146853254885">
                        <link role="enumMember" targetNodeId="2.1130926557292" />
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
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1146853272056">
      <property name="description" value="toggle cell focus policy [first editable]/[no attraction]" />
      <property name="showInPopup" value="true" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1146853272057">
        <property name="keycode" value="VK_F" />
        <property name="modifiers" value="ctrl+alt+shift" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1146853272069">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1146853272070">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1146853272078">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1146853272085">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1146853272086">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227833000">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227923441">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1159392411533" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1146853272090">
                      <link role="property" targetNodeId="2.1130859485024" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1146853272091">
                    <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1146853272092">
                      <link role="enumMember" targetNodeId="2.1130926603060" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1146853272093">
              <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1146853272094">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1146853272095">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227867105">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227841976">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1159392411531" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1146853272099">
                        <link role="property" targetNodeId="2.1130859485024" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1146853272100">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1146853272101">
                        <link role="enumMember" targetNodeId="2.1130926557292" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1146853567561">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227892406">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227883778">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1159392411529" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1146853567565">
                    <link role="property" targetNodeId="2.1130859485024" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1146853567566">
                  <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1146853567567">
                    <link role="enumMember" targetNodeId="2.1130926603060" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1134380257602">
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1134379236839" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1134380265448">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1134380307654">
        <property name="text" value="/&gt;" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998001">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939546">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1134380270871">
        <property name="text" value="attributed property" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941205">
          <property name="flag" value="true" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.EditableStyleClassItem" id="1214398031968">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407441903">
          <property name="color" value="blue" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1134380320860">
        <property name="text" value="&lt;/" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993787">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940876">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941160">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149850702900">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214478748469">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997799">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1136564570821">
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1136564507907" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1136564583726">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136564583727">
        <property name="text" value="//&gt;" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994365">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941835">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136564583728">
        <property name="text" value="attributed link" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940675">
          <property name="flag" value="true" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.EditableStyleClassItem" id="1214398032148">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407442036">
          <property name="color" value="green" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136564583729">
        <property name="text" value="&lt;//" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997155">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939684">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940797">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149850641679">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214478688195">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997404">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1136922903385">
    <property name="package" value="CellKeyMap" />
    <link role="conceptDeclaration" targetNodeId="2.1136916919141" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216158369199">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216158369200">
        <property name="usesBraces" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369201">
          <property name="text" value="item" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.EditableStyleClassItem" id="1216158369202">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216158369203">
          <property name="vertical" value="true" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216158369204">
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369205">
              <property name="text" value="description" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369206" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369207">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369208">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1216158369209">
              <property name="allowEmptyText" value="true" />
              <property name="noTargetText" value="&lt;no description&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1136916941877" resolveInfo="description" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleClassItem" id="1216158369210">
                <property name="style" value="BOLD" />
              </node>
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1216158369211">
                <property name="color" value="DARK_GREEN" />
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369212">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216158369213">
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369214">
              <property name="text" value="keystrokes" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369215" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369216">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369217">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1216158369218">
              <property name="vertical" value="true" />
              <property name="gridLayout" value="true" />
              <link role="relationDeclaration" targetNodeId="2.1136916998332" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369219">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369220">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216158369221">
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369222">
              <property name="text" value="caret policy" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369223" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369224">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369225">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1216158369226">
              <property name="allowEmptyText" value="true" />
              <property name="noTargetText" value="&lt;no description&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1141091278922" resolveInfo="caretPolicy" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleClassItem" id="1216158369227">
                <property name="style" value="BOLD" />
              </node>
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1216158369228">
                <property name="color" value="DARK_MAGENTA" />
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369229">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216158369230">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369231">
              <property name="text" value="show in popup" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369232" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369233">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369234">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1216158369235">
              <link role="relationDeclaration" targetNodeId="2.1163507208434" resolveInfo="showInPopup" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369236">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216158369237">
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369238">
              <property name="text" value="menu always shown" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369239" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369240">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369241" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1216158369242">
              <link role="relationDeclaration" targetNodeId="2.1184322083615" resolveInfo="menuAlwaysShown" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369243">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216158369244">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369245">
              <property name="text" value="is applicable" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369246" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369247">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369248">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1216158369249">
              <property name="noTargetText" value="&lt;always&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1136917325338" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369250">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216158369251">
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369252">
              <property name="text" value="execute" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369253" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158369254">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369255">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1216158369256">
              <link role="relationDeclaration" targetNodeId="2.1136920925604" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369257">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369258">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216158369259">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216158402620">
        <property name="text" value=";" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.EditableStyleClassItem" id="1216158410590">
          <property name="flag" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1136923501242">
    <property name="package" value="CellKeyMap" />
    <link role="conceptDeclaration" targetNodeId="2.1136916976737" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1136923542661">
      <property name="usesBraces" value="true" />
      <property name="name" value="nodeBox" />
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136923542662">
        <property name="text" value="&lt;" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995097">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1136923542663">
        <property name="allowEmptyText" value="true" />
        <property name="noTargetText" value="any" />
        <link role="relationDeclaration" targetNodeId="2.1136923970223" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1164849330211">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_PropertyValues" id="1164849343182">
            <node role="valuesFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_PropertyValues_GetValues" id="1164849353025">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1164849353026">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1164849353027">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1164849353028">
                    <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListCreatorWithInit" id="1164849353029">
                      <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1164849353030">
                        <link role="classifier" targetNodeId="14.~String" resolveInfo="String" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1164849353031">
                        <link role="variableDeclaration" targetNodeId="16.~EditorCellKeyMap.KEY_MODIFIERS_NONE" resolveInfo="KEY_MODIFIERS_NONE" />
                        <link role="classifier" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1164849353032">
                        <link role="classifier" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                        <link role="variableDeclaration" targetNodeId="16.~EditorCellKeyMap.KEY_MODIFIERS_CTRL" resolveInfo="KEY_MODIFIERS_CTRL" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1164849353033">
                        <link role="variableDeclaration" targetNodeId="16.~EditorCellKeyMap.KEY_MODIFIERS_ALT" resolveInfo="KEY_MODIFIERS_ALT" />
                        <link role="classifier" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1164849353050">
                        <link role="variableDeclaration" targetNodeId="16.~EditorCellKeyMap.KEY_MODIFIERS_SHIFT" resolveInfo="KEY_MODIFIERS_SHIFT" />
                        <link role="classifier" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1164849353051">
                        <link role="variableDeclaration" targetNodeId="16.~EditorCellKeyMap.KEY_MODIFIERS_CTRL_ALT" resolveInfo="KEY_MODIFIERS_CTRL_ALT" />
                        <link role="classifier" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1164849353052">
                        <link role="variableDeclaration" targetNodeId="16.~EditorCellKeyMap.KEY_MODIFIERS_CTRL_SHIFT" resolveInfo="KEY_MODIFIERS_CTRL_SHIFT" />
                        <link role="classifier" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1164849353053">
                        <link role="classifier" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                        <link role="variableDeclaration" targetNodeId="16.~EditorCellKeyMap.KEY_MODIFIERS_CTRL_ALT_SHIFT" resolveInfo="KEY_MODIFIERS_CTRL_ALT_SHIFT" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1164849353054">
                        <link role="variableDeclaration" targetNodeId="16.~EditorCellKeyMap.KEY_MODIFIERS_ALT_SHIFT" resolveInfo="KEY_MODIFIERS_ALT_SHIFT" />
                        <link role="classifier" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407441936">
          <property name="color" value="yellow" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214407442109">
          <property name="color" value="cyan" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136923542664">
        <property name="text" value=" &gt; + &lt;" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994107">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1136923542665">
        <property name="noTargetText" value="&lt;keycode&gt;" />
        <link role="relationDeclaration" targetNodeId="2.1136923970224" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1164849004316">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_PropertyValues" id="1164849014504">
            <node role="valuesFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_PropertyValues_GetValues" id="1164849028331">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1164849028332">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1164849028333">
                  <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1164849028334">
                    <property name="name" value="keycodes" />
                    <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1164849028335">
                      <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1164849028336">
                        <link role="classifier" targetNodeId="14.~String" resolveInfo="String" />
                      </node>
                    </node>
                    <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1164849028337">
                      <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListCreatorWithInit" id="1164849028338">
                        <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1164849028339">
                          <link role="classifier" targetNodeId="14.~String" resolveInfo="String" />
                        </node>
                        <node role="initValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1164849028340">
                          <link role="classifier" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                          <link role="variableDeclaration" targetNodeId="16.~EditorCellKeyMap.KEY_CODE_DIGIT" resolveInfo="KEY_CODE_DIGIT" />
                        </node>
                        <node role="initValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1164849028341">
                          <link role="variableDeclaration" targetNodeId="16.~EditorCellKeyMap.KEY_CODE_LETTER" resolveInfo="KEY_CODE_LETTER" />
                          <link role="classifier" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                        </node>
                        <node role="initValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1164849028342">
                          <link role="variableDeclaration" targetNodeId="16.~EditorCellKeyMap.KEY_CODE_LETTER_OR_DIGIT" resolveInfo="KEY_CODE_LETTER_OR_DIGIT" />
                          <link role="classifier" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                        </node>
                        <node role="initValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1164849028343">
                          <link role="variableDeclaration" targetNodeId="16.~EditorCellKeyMap.KEY_CODE_SPACE" resolveInfo="KEY_CODE_SPACE" />
                          <link role="classifier" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                        </node>
                        <node role="initValue" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1164849028344">
                          <link role="classifier" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                          <link role="variableDeclaration" targetNodeId="16.~EditorCellKeyMap.KEY_CODE_CHAR" resolveInfo="KEY_CODE_CHAR" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1164849028345">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207872476865">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1164849028347">
                      <link role="variableDeclaration" targetNodeId="1164849028334" resolveInfo="keycodes" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddAllElementsOperation" id="1164849028348">
                      <node role="argument" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1164849028349">
                        <link role="classConcept" targetNodeId="16.~EditorCellKeyMap" resolveInfo="EditorCellKeyMap" />
                        <link role="baseMethodDeclaration" targetNodeId="16.~EditorCellKeyMap.getVirtualKeycodes():java.util.List" resolveInfo="getVirtualKeycodes" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1164849028350">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1164849028351">
                    <link role="variableDeclaration" targetNodeId="1164849028334" resolveInfo="keycodes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407441913">
          <property name="color" value="yellow" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214407442108">
          <property name="color" value="cyan" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136923542666">
        <property name="text" value=" &gt;" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996399">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1137555282290">
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1137553248617" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1137555427555">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717232411">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1137555500983">
        <property name="noTargetText" value="&lt;choose property declaration&gt;" />
        <link role="relationDeclaration" targetNodeId="2.1137553248621" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1137555500982">
          <link role="conceptDeclaration" targetNodeId="8.1105725006687" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1137555520594">
            <property name="noTargetText" value="&lt;no name&gt;" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940313">
              <property name="flag" value="true" />
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940291">
          <property name="flag" value="true" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.BackgroundColorStyleClassItem" id="1214396913647">
          <property name="color" value="query" />
          <node role="query" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_Color" id="1214396913648">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214396913649">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1214396913650">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1214396913651">
                  <link role="classConcept" targetNodeId="1176888877514" resolveInfo="_EditorUtil" />
                  <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214396913652" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1176717240099">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939658">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940008">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1137633209013">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214478593121">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478581228">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214478583994">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1137633209014">
        <property name="text" value="Сoncept property cell:" />
        <property name="name" value="headerCell" />
        <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1137633209015">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1137633209016">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1137633209017">
            <property name="text" value="property" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1137633280382">
            <property name="noTargetText" value="&lt;choose property declaration&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1137553248621" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1137633280383">
              <link role="conceptDeclaration" targetNodeId="8.1105725006687" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1137633280384">
                <property name="noTargetText" value="&lt;no name&gt;" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
                <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939592">
                  <property name="flag" value="true" />
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314942033">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997712">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939863">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1137633209019">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1137633209020">
            <property name="text" value="text*" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1137633209021">
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1139852716018" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941065">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407441945">
              <property name="color" value="yellow" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214407442145">
              <property name="color" value="cyan" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996477">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314942077">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214560486333">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214560486334">
            <property name="text" value="empty text*" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214560486335">
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1214560368769" resolveInfo="emptyWhenNoTarget" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214560486336">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214560486337">
              <property name="color" value="yellow" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214560486338">
              <property name="color" value="cyan" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214560486339">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214560486340">
            <property name="flag" value="true" />
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1214560538685">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214560538686">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1214560542281">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1214560552121">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1214560553295" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214560542361">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214560542282" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1214560545943">
                      <link role="property" targetNodeId="2.1139852716018" resolveInfo="noTargetText" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997333">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940247">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994904">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1139532930462">
    <property name="name" value="CellActionMapDeclaration_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139532930463">
      <property name="name" value="nodeBox" />
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139532930464">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139532930465">
          <property name="text" value="action map" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1139532930466">
          <property name="noTargetText" value="&lt;no name&gt;" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1185873713277">
            <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_PropertyValues" id="1185873717405">
              <node role="valuesFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_PropertyValues_GetValues" id="1185873717406">
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1185873717407">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1185873764232">
                    <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1185873764233">
                      <property name="name" value="names" />
                      <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1185873764234">
                        <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1185873768282">
                          <link role="classifier" targetNodeId="14.~String" resolveInfo="String" />
                        </node>
                      </node>
                      <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1185873781352">
                        <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListCreatorWithInit" id="1185873782679">
                          <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1185873785073">
                            <link role="classifier" targetNodeId="14.~String" resolveInfo="String" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1185873787458">
                    <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1185873787459">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1185873798360">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207872476789">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1185873798361">
                            <link role="variableDeclaration" targetNodeId="1185873764233" resolveInfo="names" />
                          </node>
                          <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddElementOperation" id="1185873800606">
                            <node role="argument" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1185873812058">
                              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1185873813172">
                                <property name="value" value="_Actions" />
                              </node>
                              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227946239">
                                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227866504">
                                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_Abstract_editedNode" id="1185873804901" />
                                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1185873807456">
                                    <link role="link" targetNodeId="2.1139535219968" />
                                  </node>
                                </node>
                                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1185873810326">
                                  <link role="property" targetNodeId="3.1169194664001" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227938979">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227851691">
                        <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_Abstract_editedNode" id="1185873789476" />
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1185873793227">
                          <link role="link" targetNodeId="2.1139535219968" />
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1185873795389" />
                    </node>
                  </node>
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1185873825227">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1185873825228">
                      <link role="variableDeclaration" targetNodeId="1185873764233" resolveInfo="names" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996201">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139532930469">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996048">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139532930470">
        <property name="name" value="cellsLayoutPanel" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139532930471">
          <property name="text" value="applicable concept:" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996533">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1139532930472">
          <property name="noTargetText" value="&lt;any&gt;" />
          <link role="relationDeclaration" targetNodeId="2.1139535219968" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1139532930473">
            <link role="conceptDeclaration" targetNodeId="8.1071489090640" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1139532930474">
              <property name="noTargetText" value="&lt;no name&gt;" />
              <property name="readOnly" value="true" />
              <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              <link role="styleClass" targetNodeId="2v.1203541385314" resolveInfo="ReferenceOnConcept" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941669">
                <property name="flag" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994678">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139532930475">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996288">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139532930476">
        <property name="text" value="actions:" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997918">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139532930477">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994978">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1139532930478">
        <property name="vertical" value="true" />
        <link role="relationDeclaration" targetNodeId="2.1139535219969" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1139533175436">
    <link role="conceptDeclaration" targetNodeId="2.1139535280617" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139533175437">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139533175438">
        <property name="text" value="action" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.EditableStyleClassItem" id="1214398031971">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1139533204020">
        <link role="relationDeclaration" targetNodeId="2.1139535298778" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678241">
          <property name="color" value="DARK_MAGENTA" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139533175439">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139537337310">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139537337311">
            <property name="text" value="description" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139537337312">
            <property name="text" value=":" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997743">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1139537337313">
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;no description&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1139537298254" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleClassItem" id="1214314934239">
              <property name="style" value="BOLD" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678188">
              <property name="color" value="DARK_GREEN" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997154">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139533175452">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139533175453">
            <property name="text" value="execute" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139533175454">
            <property name="text" value=":" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994793">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1139533175455">
            <link role="relationDeclaration" targetNodeId="2.1139535280620" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997184">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995959">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1139746538168">
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1139744628335" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139746611466">
      <property name="text" value="$image$" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940918">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139746652472">
      <property name="vertical" value="true" />
      <property name="gridLayout" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214480472391">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214480472392">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214480479721" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1139746652473">
        <property name="text" value="Image cell:" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940583">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214480445694">
        <property name="vertical" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214480452868">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214480452869">
            <property name="text" value="image provider : " />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1214480452872">
            <property name="noTargetText" value="&lt;no image provider&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1176899909521" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214480452873">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214480452874">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214480452875">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214480452876">
            <property name="text" value="image file : " />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214480452879">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214480452880">
              <link role="relationDeclaration" targetNodeId="2.1139746504291" resolveInfo="imageFile" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214480452881">
                <property name="flag" value="true" />
              </node>
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214480452882">
                <property name="flag" value="true" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_JComponent" id="1214480452883">
              <node role="componentProvider" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_JComponent" id="1214480452884">
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214480452885">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1214480452886">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1214480452887">
                      <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1214480452888">
                        <link role="baseMethodDeclaration" targetNodeId="13.~SelectImageFileButton.&lt;init&gt;(jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Image)" resolveInfo="SelectImageFileButton" />
                        <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214480452889">
                          <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214480452890" />
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1214480452891" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214480452892">
                <property name="flag" value="true" />
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214480452893">
              <property name="flag" value="false" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214480452894">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214480452895">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214480452896">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214480452897">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214480452898">
            <property name="text" value="descent :" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214480452901">
            <link role="relationDeclaration" targetNodeId="2.1139858284555" resolveInfo="descent" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214480452902">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214480452903">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214480452904">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214480459842">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998070">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1149850795343">
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1149850725784" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149850821036">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214478723481">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995774">
        <property name="flag" value="false" />
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149850835046">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149850835047">
        <property name="text" value="|&gt;" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997914">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939376">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149850835048">
        <property name="text" value="attributed node" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941235">
          <property name="flag" value="true" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.EditableStyleClassItem" id="1214398032215">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407442005">
          <property name="color" value="pink" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149850835049">
        <property name="text" value="&lt;|" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993603">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940629">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939641">
        <property name="flag" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1164826327348">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1164824717996" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1164826331320">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1164826341494">
        <property name="text" value="menu parts:" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1164826358683">
        <property name="vertical" value="true" />
        <link role="relationDeclaration" targetNodeId="2.1164824815888" />
        <node role="emptyCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1164826376028">
          <property name="text" value="&lt;choose menu part&gt;" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleClassItem" id="1214314934340">
            <property name="style" value="ITALIC" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.EditableStyleClassItem" id="1214398032145">
            <property name="flag" value="true" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399677981">
            <property name="color" value="darkGray" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1164826552421">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1164824854750" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Error" id="1164841410765">
      <property name="text" value="&lt;choose menu part&gt;" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleClassItem" id="1214314934290">
        <property name="style" value="ITALIC" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1164834536966">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1164833692343" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165261473107">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165261482475">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165261482476">
          <property name="text" value="property values" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678242">
            <property name="color" value="DARK_BLUE" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407442008">
            <property name="color" value="lightGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998049">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165261473108">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165261553433">
          <property name="text" value="  " />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996877">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165261473109">
          <property name="text" value="values" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997021">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165261473110">
          <property name="text" value=":" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993736">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165261473111">
          <link role="relationDeclaration" targetNodeId="2.1164833692344" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996656">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1164914829369">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1164914519156" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165261271532">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165261279434">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165261279435">
          <property name="text" value="replace node (custom node concept)" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678204">
            <property name="color" value="DARK_BLUE" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407441885">
            <property name="color" value="lightGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997644">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165261271533">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165261371430">
          <property name="text" value="  " />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996501">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165261271534">
          <property name="text" value="replace with" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997119">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165261271535">
          <property name="text" value=":" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994903">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1165261271536">
          <property name="noTargetText" value="&lt;choose concept&gt;" />
          <link role="relationDeclaration" targetNodeId="2.1164914727930" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1165261271537">
            <link role="conceptDeclaration" targetNodeId="8.1071489090640" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1165261271538">
              <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678648">
                <property name="color" value="DARK_MAGENTA" />
              </node>
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995014">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1164996562499">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1164996492011" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165017449838">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165017468128">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165017468129">
          <property name="text" value="primary choose referent menu" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678758">
            <property name="color" value="DARK_BLUE" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407441995">
            <property name="color" value="lightGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994599">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165017449839">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165017598538">
          <property name="text" value="  " />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997921">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165017449842">
          <property name="text" value="no customization needed" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleClassItem" id="1214314934218">
            <property name="style" value="ITALIC" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399677858">
            <property name="color" value="darkGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996546">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1165004770474">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1165004207520" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165004955922">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165004960235">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165004964970">
          <property name="text" value="replace node (group of custom actions)" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399677827">
            <property name="color" value="DARK_BLUE" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407442041">
            <property name="color" value="lightGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994146">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165005705255">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165005715519">
          <property name="text" value="  " />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997237">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165005705256">
          <property name="usesFolding" value="true" />
          <property name="vertical" value="true" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165005705257">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165005705258">
              <property name="text" value="parameter object type" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165005705259">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994809">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165005705260">
              <property name="noTargetText" value="&lt;none&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165253890469" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995283">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165005705291">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165005705292">
              <property name="text" value="parameter objects" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165005705293">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997922">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165005705294">
              <link role="relationDeclaration" targetNodeId="2.1165004529292" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997459">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165005705261">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165005705262">
              <property name="text" value="presentation" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165005705263">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993996">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1165005705264">
              <link role="relationDeclaration" targetNodeId="2.1165254125954" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993957">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165005705265">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165005705266">
              <property name="text" value="matching text" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165005705267">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996368">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165005705268">
              <property name="noTargetText" value="&lt;default&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165254159533" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1165005705269">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1165005705270">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1165005705271">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227922149">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227818459">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1165005705274" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1165005705275">
                        <link role="property" targetNodeId="2.1165254125954" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1165005705276">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1165005705277">
                        <link role="enumMember" targetNodeId="19.1165007009658" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997011">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165005705278">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165005705279">
              <property name="text" value="description text" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165005705280">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996435">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165005705281">
              <property name="noTargetText" value="&lt;default&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165254180581" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1165005705282">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1165005705283">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1165005705284">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227894969">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227956730">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1165005705287" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1165005705288">
                        <link role="property" targetNodeId="2.1165254125954" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1165005705289">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1165005705290">
                        <link role="enumMember" targetNodeId="19.1165007009658" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996985">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165005705295">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165005705296">
              <property name="text" value="create new node" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165005705297">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996245">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165005705298">
              <property name="noTargetText" value="&lt;default&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165004529293" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995545">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997747">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995090">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1165271162703">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1165270418989" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165271211647">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165271211648">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211649">
          <property name="text" value="replace child (group of custom actions)" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399677763">
            <property name="color" value="DARK_BLUE" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407442043">
            <property name="color" value="lightGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995412">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165271211650">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211651">
          <property name="text" value="  " />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997533">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165271211652">
          <property name="usesFolding" value="true" />
          <property name="vertical" value="true" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165271211653">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211654">
              <property name="text" value="parameter object type" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211655">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996007">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165271211656">
              <property name="noTargetText" value="&lt;none&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165253890469" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993747">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165271211687">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211688">
              <property name="text" value="parameter objects" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211689">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995287">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165271211690">
              <link role="relationDeclaration" targetNodeId="2.1165270418991" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996927">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165271211657">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211658">
              <property name="text" value="presentation" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211659">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995590">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1165271211660">
              <link role="relationDeclaration" targetNodeId="2.1165254125954" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995107">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165271211661">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211662">
              <property name="text" value="matching text" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211663">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994102">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165271211664">
              <property name="noTargetText" value="&lt;default&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165254159533" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1165271211665">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1165271211666">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1165271211667">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227886397">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227945308">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1165271211670" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1165271211671">
                        <link role="property" targetNodeId="2.1165254125954" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1165271211672">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1165271211673">
                        <link role="enumMember" targetNodeId="19.1165007009658" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998081">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165271211674">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211675">
              <property name="text" value="description text" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211676">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996105">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165271211677">
              <property name="noTargetText" value="&lt;default&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165254180581" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1165271211678">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1165271211679">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1165271211680">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227935852">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227822455">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1165271211683" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1165271211684">
                        <link role="property" targetNodeId="2.1165254125954" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1165271211685">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1165271211686">
                        <link role="enumMember" targetNodeId="19.1165007009658" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995912">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165271211691">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211692">
              <property name="text" value="create new child" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165271211693">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995338">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165271211694">
              <property name="noTargetText" value="&lt;default&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165270418992" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995484">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998074">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996649">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1165281153030">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1165280503630" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165281194157">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165281194158">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165281194159">
          <property name="text" value="replace child (custom child's concept)" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399679044">
            <property name="color" value="DARK_BLUE" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407441940">
            <property name="color" value="lightGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994818">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165281194160">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165281194161">
          <property name="text" value="  " />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996310">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165281194162">
          <property name="text" value="concept of child" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996786">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165281194163">
          <property name="text" value=":" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997298">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165281194164">
          <link role="relationDeclaration" targetNodeId="2.1165280503631" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994188">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1165339485727">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1165339175678" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165339501698">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165339501699">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165339501700">
          <property name="text" value="replace child (custom action)" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399677791">
            <property name="color" value="DARK_BLUE" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407442039">
            <property name="color" value="lightGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995016">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165339501701">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165339501702">
          <property name="text" value="  " />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994394">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165339501703">
          <property name="usesFolding" value="true" />
          <property name="vertical" value="true" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165339609739">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165339609740">
              <property name="text" value="matching text" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165339619288">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998013">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1165339609741">
              <property name="noTargetText" value="&lt;none&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165339639991" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678040">
                <property name="color" value="DARK_GREEN" />
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997778">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1175117616163">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1175117616164">
              <property name="text" value="description text" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1175117616165">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998105">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1175117616166">
              <property name="allowEmptyText" value="true" />
              <property name="noTargetText" value="&lt;none&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1175117579502" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399677929">
                <property name="color" value="DARK_GREEN" />
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994433">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165339501742">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165339501743">
              <property name="text" value="create new child" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165339501744">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993660">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165339501745">
              <property name="noTargetText" value="&lt;default&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165339175680" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997183">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996892">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996880">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1165420914344">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1165420413719" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165420935992">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165420935993">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420935994">
          <property name="text" value="generic group" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678601">
            <property name="color" value="DARK_BLUE" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407441971">
            <property name="color" value="lightGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995538">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165420935995">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420935996">
          <property name="text" value="  " />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993643">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165420935997">
          <property name="usesFolding" value="true" />
          <property name="vertical" value="true" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165420935998">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420935999">
              <property name="text" value="parameter object type" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420936000">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994825">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165420936001">
              <property name="noTargetText" value="&lt;none&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165253890469" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994261">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165420936002">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420936003">
              <property name="text" value="parameter objects" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420936004">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994630">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165420936005">
              <link role="relationDeclaration" targetNodeId="2.1165420413720" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997177">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165420936006">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420936007">
              <property name="text" value="presentation" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420936008">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997937">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1165420936009">
              <link role="relationDeclaration" targetNodeId="2.1165254125954" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996236">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165420936010">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420936011">
              <property name="text" value="matching text" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420936012">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997467">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165420936013">
              <property name="noTargetText" value="&lt;default&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165254159533" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1165420936014">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1165420936015">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1165420936016">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227920358">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227898032">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1165420936019" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1165420936020">
                        <link role="property" targetNodeId="2.1165254125954" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1165420936021">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1165420936022">
                        <link role="enumMember" targetNodeId="19.1165007009658" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993754">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165420936023">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420936024">
              <property name="text" value="description text" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420936025">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997453">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165420936026">
              <property name="noTargetText" value="&lt;default&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165254180581" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1165420936027">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1165420936028">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1165420936029">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227906260">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227921791">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1165420936032" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1165420936033">
                        <link role="property" targetNodeId="2.1165254125954" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1165420936034">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1165420936035">
                        <link role="enumMember" targetNodeId="19.1165007009658" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995006">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165420936036">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420936037">
              <property name="text" value="handler" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165420936038">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995066">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165420936039">
              <property name="noTargetText" value="&lt;default&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165420413721" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993848">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996726">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997304">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1165424770434">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1165424453110" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165424779461">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165424779462">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165424779463">
          <property name="text" value="generic item" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678199">
            <property name="color" value="DARK_BLUE" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407442073">
            <property name="color" value="lightGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996794">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165424779464">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165424779465">
          <property name="text" value="  " />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996595">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165424779466">
          <property name="usesFolding" value="true" />
          <property name="vertical" value="true" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165424779467">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165424779468">
              <property name="text" value="matching text" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165424779469">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995624">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1165424779470">
              <property name="noTargetText" value="&lt;none&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165424453111" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678454">
                <property name="color" value="DARK_GREEN" />
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996782">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1165424779471">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165424779472">
              <property name="text" value="handler" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1165424779473">
              <property name="text" value=":" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997878">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1165424779474">
              <property name="noTargetText" value="&lt;default&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1165424453112" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996893">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997254">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996617">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1166041133876">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1166040637528" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1166041142254">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1166041171503">
        <property name="name" value="headerRow" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1166041171504">
          <property name="text" value="cell-menu component" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1166041171505">
          <property name="noTargetText" value="&lt;no name&gt;" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996089">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1166041234867">
        <property name="name" value="semanticTypeAreaIndented" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1166041234868">
          <property name="text" value="    " />
          <property name="name" value="indentCell" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995395">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1166041234869">
          <property name="name" value="semanticTypeArea" />
          <property name="vertical" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1166041234871">
            <property name="name" value="cellsLayoutPanel" />
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1166041252661">
              <property name="text" value="applicable to:" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1166041234873">
              <property name="noTargetText" value="&lt;choose concept&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1166049300910" />
              <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1166041234874">
                <link role="conceptDeclaration" targetNodeId="8.1169125787135" />
                <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1166041234875">
                  <property name="readOnly" value="true" />
                  <link role="relationDeclaration" targetNodeId="3.1169194664001" />
                  <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941762">
                    <property name="flag" value="true" />
                  </node>
                  <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678807">
                    <property name="color" value="DARK_MAGENTA" />
                  </node>
                </node>
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1166062944696">
              <property name="text" value=":" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1166062944697">
              <property name="noTargetText" value="&lt;any feature&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1166040865497" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998010">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1166041555819">
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994752">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1166041615159">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1166041505377" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997989">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994805">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1166041937709">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1166041748520" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1166057861191">
      <property name="noTargetText" value="&lt;choose property&gt;" />
      <link role="relationDeclaration" targetNodeId="2.1166041884271" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1166057861192">
        <link role="conceptDeclaration" targetNodeId="8.1071489288299" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1166057861193">
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678772">
            <property name="color" value="DARK_MAGENTA" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1166042186089">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1166042131867" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1166057869265">
      <property name="noTargetText" value="&lt;choose property&gt;" />
      <link role="relationDeclaration" targetNodeId="2.1166042131869" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1166057869266">
        <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1166057869267">
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="8.1071599776563" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399679016">
            <property name="color" value="DARK_MAGENTA" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1166059730561">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1166059625718" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1166059732993">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1166059732994">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1166059732995">
          <property name="text" value="menu component" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399677883">
            <property name="color" value="DARK_BLUE" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407441964">
            <property name="color" value="lightGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994693">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1166059732996">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1166059732997">
          <property name="text" value="  " />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994941">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1166059732998">
          <property name="text" value="component" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996512">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1166059732999">
          <property name="text" value=":" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995018">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1166059755673">
          <property name="noTargetText" value="&lt;choose menu component&gt;" />
          <link role="relationDeclaration" targetNodeId="2.1166059677893" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1166059755674">
            <link role="conceptDeclaration" targetNodeId="2.1166040637528" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1166059764129">
              <property name="noTargetText" value="&lt;no name&gt;" />
              <property name="readOnly" value="true" />
              <link role="relationDeclaration" targetNodeId="3.1169194664001" />
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997841">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1174088115223">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1174088067129" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1174088130953">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1174088130954">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1174088130955">
          <property name="text" value="primary replace child menu" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678872">
            <property name="color" value="DARK_BLUE" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407442075">
            <property name="color" value="lightGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995667">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1174088130956">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1174088130957">
          <property name="text" value="  " />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994590">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1174088130958">
          <property name="text" value="no customization needed" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleClassItem" id="1214314934366">
            <property name="style" value="ITALIC" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678063">
            <property name="color" value="darkGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997634">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.EditorComponentDeclaration" id="1176716781495">
    <property name="name" value="_OpenTag" />
    <link role="conceptDeclaration" targetNodeId="2.1073389214265" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ModelAccess" id="1176716878596">
      <node role="modelAcessor" type="jetbrains.mps.bootstrap.editorLanguage.structure.ModelAccessor" id="1176718832706">
        <node role="getter" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_ModelAccess_Getter" id="1176718832707">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176718832708">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176718836838">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220340552805">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1220340552491" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1220340556480">
                  <link role="conceptMethodDeclaration" targetNodeId="3v.1220340471382" resolveInfo="getOpeningTag" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="setter" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_ModelAccess_Setter" id="1176718832709">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176718832710" />
        </node>
        <node role="validator" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_ModelAccess_Validator" id="1176718832711">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176718832712">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176718853143">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1176718856802">
                <property name="value" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940483">
        <property name="flag" value="true" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.BackgroundColorStyleClassItem" id="1214396913665">
        <property name="color" value="query" />
        <node role="query" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_Color" id="1214396913666">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214396913667">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1214396913668">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1214396913669">
                <link role="classConcept" targetNodeId="13.~_EditorUtil" resolveInfo="_EditorUtil" />
                <link role="baseMethodDeclaration" targetNodeId="13.~_EditorUtil.grayIfNotSelectable(jetbrains.mps.smodel.SNode):java.awt.Color" resolveInfo="grayIfNotSelectable" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214396913670" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.EditableStyleClassItem" id="1214398031944">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.EditorComponentDeclaration" id="1176716904723">
    <property name="name" value="_CloseTag" />
    <link role="conceptDeclaration" targetNodeId="2.1073389214265" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ModelAccess" id="1176716918272">
      <node role="modelAcessor" type="jetbrains.mps.bootstrap.editorLanguage.structure.ModelAccessor" id="1176718766209">
        <node role="getter" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_ModelAccess_Getter" id="1176718766210">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176718766211">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1220340578159">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220340582243">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1220340582211" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1220340585418">
                  <link role="conceptMethodDeclaration" targetNodeId="3v.1220340488560" resolveInfo="getClosingTag" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="setter" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_ModelAccess_Setter" id="1176718766212">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176718766213" />
        </node>
        <node role="validator" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_ModelAccess_Validator" id="1176718766214">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176718766215">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176718802282">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1176718803877">
                <property name="value" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.BackgroundColorStyleClassItem" id="1214396913635">
        <property name="color" value="query" />
        <node role="query" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_Color" id="1214396913636">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214396913637">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1214396913638">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1214396913639">
                <link role="classConcept" targetNodeId="1176888877514" resolveInfo="_EditorUtil" />
                <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214396913640" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.EditableStyleClassItem" id="1214398031974">
        <property name="flag" value="false" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1215163005154">
        <property name="flag" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1176718029833">
    <link role="conceptDeclaration" targetNodeId="2.1176717996748" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176718032741">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176718042215">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718043531">
          <property name="text" value="model acessor" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678250">
            <property name="color" value="DARK_BLUE" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718046065">
          <property name="text" value="{" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995263">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176718050975">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718052399">
          <property name="text" value="  " />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993604">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176718057589">
          <property name="vertical" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176718093154">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718093155">
              <property name="text" value="get" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399677829">
                <property name="color" value="DARK_BLUE" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718093156">
              <property name="text" value="{" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995351">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176718093157">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718093158">
              <property name="text" value="  " />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997228">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1176718093159">
              <link role="relationDeclaration" targetNodeId="2.1176718001874" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997317">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718093160">
            <property name="text" value="}" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176718073253">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718073254">
              <property name="text" value="set" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678373">
                <property name="color" value="DARK_BLUE" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718077288">
              <property name="text" value="{" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993606">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176718082854">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718084075">
              <property name="text" value="  " />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994378">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1176718086281">
              <link role="relationDeclaration" targetNodeId="2.1176718007938" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996725">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718079040">
            <property name="text" value="}" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176718101933">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718101934">
              <property name="text" value="validate" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678988">
                <property name="color" value="DARK_BLUE" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718101935">
              <property name="text" value="{" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997656">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176718101936">
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718101937">
              <property name="text" value="  " />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995901">
                <property name="flag" value="false" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1176718101938">
              <link role="relationDeclaration" targetNodeId="2.1176718014393" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996948">
              <property name="flag" value="false" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718101939">
            <property name="text" value="}" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994806">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997362">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176718048051">
        <property name="text" value="}" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1176750843681">
    <link role="conceptDeclaration" targetNodeId="2.1176750487975" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176750848496">
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176750850091">
        <property name="text" value="&lt;QUERY[" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678816">
          <property name="color" value="DARK_BLUE" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176795396038">
        <property name="vertical" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176795396039">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1176795396040">
            <property name="noTargetText" value="&lt;return type&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1176750789991" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1176795396041">
            <property name="noTargetText" value="&lt;prefix&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1176750922515" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176795396042">
            <property name="text" value="(" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1176795396043">
            <property name="separatorText" value="," />
            <link role="relationDeclaration" targetNodeId="2.1176750796710" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176795396044">
            <property name="text" value=")" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994275">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176800600178">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176800601086">
            <property name="text" value="query id property :" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1176800612979">
            <link role="relationDeclaration" targetNodeId="2.1176750512039" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1176800612980">
              <link role="conceptDeclaration" targetNodeId="8.1071489288299" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1176800616560">
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996496">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176800326709">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176800327524">
            <property name="text" value="empty text:" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1176800335057">
            <link role="relationDeclaration" targetNodeId="2.1176750736379" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996454">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176795396046">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176795396047">
            <property name="text" value="import also :" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1176795396048">
            <property name="vertical" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1176750816680" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996604">
            <property name="flag" value="false" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176795403065">
        <property name="text" value="]QUERY&gt;" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678951">
          <property name="color" value="DARK_BLUE" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1176888877514">
    <property name="name" value="_EditorUtil" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1176888881562">
      <property name="name" value="grayIfNotSelectable" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176888932798">
        <property name="name" value="cellModel" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1176888934832">
          <link role="concept" targetNodeId="2.1073389214265" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176888927250">
        <link role="classifier" targetNodeId="20.~Color" resolveInfo="Color" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176888881564">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1176888947599">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1219420645055">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1219420645056">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1219420645057">
                <link role="variableDeclaration" targetNodeId="1176888932798" resolveInfo="cellModel" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1219420645058">
                <link role="conceptMethodDeclaration" targetNodeId="3v.1219420196673" resolveInfo="isSelectable" />
              </node>
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176888947601">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176889028394">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1213035983289">
                <node role="creator" type="jetbrains.mps.baseLanguage.structure.ClassCreator" id="1213035983291">
                  <link role="baseMethodDeclaration" targetNodeId="20.~Color.&lt;init&gt;(int,int,int)" resolveInfo="Color" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1176889041394">
                    <property name="value" value="230" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1176889044990">
                    <property name="value" value="230" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1176889048008">
                    <property name="value" value="230" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176889050760">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176889057794" />
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1178546097160" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1178550080887" />
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapDeclaration" id="1178883358278">
    <property name="name" value="_SplitConctantCellIntoWordsKeyMap" />
    <link role="applicableConcept" targetNodeId="2.1073389577006" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1178883422615">
      <property name="description" value="split constant cell into words" />
      <property name="showInPopup" value="true" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1178883422616">
        <property name="keycode" value="VK_W" />
        <property name="modifiers" value="ctrl+alt+shift" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1178883422617">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1178883422618">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1178883510798">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1178883510799">
              <property name="name" value="collection" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1178883510800">
                <link role="concept" targetNodeId="2.1073389446423" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227895556">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227941726">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1178883536382" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1178883542598" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1178883545122">
                  <link role="concept" targetNodeId="2.1073389446423" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1178883562401">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227926236">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227886282">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1178883562402">
                  <link role="variableDeclaration" targetNodeId="1178883510799" resolveInfo="collection" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1178883618766">
                  <link role="link" targetNodeId="2.1106270802874" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1178883628220">
                <link role="concept" targetNodeId="2.1106270637846" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1178883476995">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227852405">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1178883476996" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1178883676301">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1178883677701">
                  <link role="variableDeclaration" targetNodeId="1178883510799" resolveInfo="collection" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1178883722383">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1178883722384">
              <property name="name" value="text" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1178883722385">
                <link role="classifier" targetNodeId="14.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227910198">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1178883705448" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1178883711153">
                  <link role="property" targetNodeId="2.1073389577007" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1178883840768">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1178883840769">
              <property name="name" value="strings" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ArrayType" id="1178883840770">
                <node role="componentType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1178883840771">
                  <link role="classifier" targetNodeId="14.~String" resolveInfo="String" />
                </node>
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207872475486">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1178883759846">
                  <link role="variableDeclaration" targetNodeId="1178883722384" resolveInfo="text" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207872475487">
                  <link role="baseMethodDeclaration" targetNodeId="14.~String.split(java.lang.String):java.lang.String[]" resolveInfo="split" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1178883829975">
                    <property name="value" value=" " />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1178883849542">
            <node role="iterable" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1178883858164">
              <link role="variableDeclaration" targetNodeId="1178883840769" resolveInfo="strings" />
            </node>
            <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1178883849544">
              <property name="name" value="word" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1178883852761">
                <link role="classifier" targetNodeId="14.~String" resolveInfo="String" />
              </node>
            </node>
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1178883849546">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1178884039623">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1178884039624">
                  <property name="name" value="constantCell" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1178884039625">
                    <link role="concept" targetNodeId="2.1073389577006" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227917686">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1178885316875" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1178885326490" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1178884252460">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227922447">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227832946">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1178884252461">
                      <link role="variableDeclaration" targetNodeId="1178884039624" resolveInfo="constantCell" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1178884256794">
                      <link role="property" targetNodeId="2.1073389577007" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1178884291599">
                    <node role="value" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1178884294042">
                      <link role="variableDeclaration" targetNodeId="1178883849544" resolveInfo="word" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1178883864506">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227957106">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227851483">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1178883864507">
                      <link role="variableDeclaration" targetNodeId="1178883510799" resolveInfo="collection" />
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1178883895892">
                      <link role="link" targetNodeId="2.1073389446424" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddChildOperation" id="1178883910563">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1178884247017">
                      <link role="variableDeclaration" targetNodeId="1178884039624" resolveInfo="constantCell" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1178883489454">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1178883489455">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1178883491382">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227928986">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227958191">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1178883491383" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1178883495270" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1178883499626" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1180615908569">
    <property name="package" value="CellMenu" />
    <link role="conceptDeclaration" targetNodeId="2.1180615838666" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1180615910079">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1180615910080">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1180615910081">
          <property name="text" value="property postfix hints" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678293">
            <property name="color" value="DARK_BLUE" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214407441933">
            <property name="color" value="lightGray" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997542">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1180615910082">
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1180615910083">
          <property name="text" value="  " />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997803">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1180615910084">
          <property name="text" value="postfixes" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994077">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1180615910085">
          <property name="text" value=":" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995349">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1180615910086">
          <link role="relationDeclaration" targetNodeId="2.1180615838667" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994001">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1182191264561">
    <property name="name" value="CellModel_RefNodeList_Editor" />
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1073390211982" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1182191264562">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1182191264563">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1182948741353">
        <link role="relationDeclaration" targetNodeId="2.1140524450554" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1182948746816">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1182948746817">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1218239030901">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1218239043762">
                <link role="baseMethodDeclaration" targetNodeId="17.~SModelStereotype.isGeneratorModel(jetbrains.mps.smodel.SModel):boolean" resolveInfo="isGeneratorModel" />
                <link role="classConcept" targetNodeId="17.~SModelStereotype" resolveInfo="SModelStereotype" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1218239049108">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1218239047341" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1218239049642" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1182191264564">
        <property name="vertical" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1182191264565">
          <property name="name" value="listBoxV" />
          <property name="vertical" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1182191264566">
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1182191264567">
              <property name="text" value="%" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996334">
                <property name="flag" value="false" />
              </node>
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940802">
                <property name="flag" value="true" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1182191264568">
              <property name="noTargetText" value="&lt;no link&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1073390211987" />
              <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1182191264569">
                <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
                <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1182191264570">
                  <property name="noTargetText" value="&lt;no role&gt;" />
                  <property name="readOnly" value="true" />
                  <link role="relationDeclaration" targetNodeId="8.1071599776563" />
                  <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940894">
                    <property name="flag" value="true" />
                  </node>
                </node>
              </node>
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940965">
                <property name="flag" value="true" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1182191264571">
              <property name="text" value="%" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995020">
                <property name="flag" value="false" />
              </node>
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941617">
                <property name="flag" value="true" />
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994601">
              <property name="flag" value="false" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940148">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1182191264572">
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1182191264573">
              <property name="text" value="/empty cell:" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941211">
                <property name="flag" value="true" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1182191264574">
              <property name="noTargetText" value="&lt;default&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1140524464359" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940872">
                <property name="flag" value="true" />
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993743">
              <property name="flag" value="false" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940485">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1182191264575">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1182191264576">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1182191264577">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227921708">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1182191264579" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1182191264580">
                    <link role="property" targetNodeId="2.1140524450554" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310993898">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940942">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1182191264581">
          <property name="name" value="listBoxH" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1182191264582">
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1182191264583">
              <property name="text" value="%" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997637">
                <property name="flag" value="false" />
              </node>
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940941">
                <property name="flag" value="true" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1182191264584">
              <property name="noTargetText" value="&lt;no link&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1073390211987" />
              <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1182191264585">
                <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
                <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1182191264586">
                  <property name="noTargetText" value="&lt;no role&gt;" />
                  <property name="readOnly" value="true" />
                  <link role="relationDeclaration" targetNodeId="8.1071599776563" />
                  <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941015">
                    <property name="flag" value="true" />
                  </node>
                </node>
              </node>
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940580">
                <property name="flag" value="true" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1182191264587">
              <property name="text" value="%" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997797">
                <property name="flag" value="false" />
              </node>
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941307">
                <property name="flag" value="true" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1182191264588">
              <property name="text" value="/empty cell:" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314942157">
                <property name="flag" value="true" />
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1182191264589">
              <property name="noTargetText" value="&lt;default&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1140524464359" />
              <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940222">
                <property name="flag" value="true" />
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996470">
              <property name="flag" value="false" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941069">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1182191264590">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1182191264591">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1182191264592">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1182191264593">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227888698">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1182191264595" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1182191264596">
                      <link role="property" targetNodeId="2.1140524450554" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995739">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941616">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996333">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939685">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1182191264597">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940777">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1182191264598">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214306591383">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214480605177">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214480606912" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1182191264599">
        <property name="text" value="Ref.node list cell:" />
        <property name="name" value="headerCell" />
        <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477614474">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1182191264601">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1182191264602">
            <property name="text" value="link" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1182191264603">
            <property name="noTargetText" value="&lt;no link&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1073390211987" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1182191264604">
              <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1182191264605">
                <property name="noTargetText" value="&lt;no role&gt;" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="8.1071599776563" />
                <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314941381">
                  <property name="flag" value="true" />
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940808">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998147">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939380">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477627866">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477627867">
            <property name="text" value="filter" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1214477627868">
            <link role="relationDeclaration" targetNodeId="2.1182233390675" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477638527">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477638528">
            <property name="text" value="vertical" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214477638531">
            <link role="relationDeclaration" targetNodeId="2.1140524450554" resolveInfo="vertical" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477638532">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.EditableStyleClassItem" id="1214477638533">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477638534">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477638535">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477638536">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477638537">
            <property name="text" value="grid layout" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214477638540">
            <link role="relationDeclaration" targetNodeId="2.1140524450555" resolveInfo="gridLayout" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477638541">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.EditableStyleClassItem" id="1214477638542">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477638543">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477638544">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477638545">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477638546">
            <property name="text" value="cell layout" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1214477638549">
            <link role="relationDeclaration" targetNodeId="2.1140524464360" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477638550">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477638551">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477638552">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477638553">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477638554">
            <property name="text" value="uses braces" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214477638557">
            <link role="relationDeclaration" targetNodeId="2.1140524450556" resolveInfo="usesBraces" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477638558">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477638559">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477638560">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477638561">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477638562">
            <property name="text" value="uses folding" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214477638563">
            <link role="relationDeclaration" targetNodeId="2.1160590307797" resolveInfo="usesFolding" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477638564">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477655566">
          <property name="text" value="list element:" />
          <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477655568">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477655569">
            <property name="text" value="separator" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214477655572">
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;no separator&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1140524450557" resolveInfo="separatorText" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477655573">
              <property name="flag" value="true" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorStyleClassItem" id="1214477655574">
              <property name="color" value="yellow" />
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.TextBackgroundColorSelectedStyleClassItem" id="1214477655575">
              <property name="color" value="cyan" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477655576">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477655577">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477655578">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477655579">
            <property name="text" value="separator constraint" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214477655581">
            <link role="relationDeclaration" targetNodeId="2.1156252885376" resolveInfo="separatorLayoutConstraint" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477655582">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477655583">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477655584">
            <property name="text" value="reverse order" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214477655586">
            <link role="relationDeclaration" targetNodeId="2.1145360728033" resolveInfo="reverse" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477655587">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477655588">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477655589">
            <property name="text" value="element factory" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1214477655592">
            <property name="noTargetText" value="&lt;no factory&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1176897874615" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477655593">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477655594">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477655595">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477655596">
            <property name="text" value="element action map" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1214477655599">
            <property name="noTargetText" value="&lt;default&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1173177718857" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1214477655600">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" resolveInfo="CellActionMapDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214477655601">
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" resolveInfo="name" />
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477655602">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477655603">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214477655604">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214477655605">
            <property name="text" value="element menu" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1214477655608">
            <property name="noTargetText" value="&lt;default&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1165347032372" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214578774465">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214477655609">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214477655610">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214480629210">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995434">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapDeclaration" id="1183710576873">
    <property name="name" value="CellModel_Collection_Actions" />
    <property name="package" value="CellModel" />
    <link role="applicableConcept" targetNodeId="2.1073389446423" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapItem" id="1183710657806">
      <property name="description" value="Delete collection and copy its content to the parent collection" />
      <property name="actionId" value="delete_action_id" />
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_ExecuteFunction" id="1183710657807">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1183710657808">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1183710697356">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227933898">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227903360">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1183710702546" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1183710732553" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1183710705333">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1183710708273">
                  <link role="conceptDeclaration" targetNodeId="2.1073389446423" />
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1183710697358">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1183710739556">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1183710739557">
                  <property name="name" value="p" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1183710739558">
                    <link role="concept" targetNodeId="2.1073389446423" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1183710753192">
                    <link role="concept" targetNodeId="2.1073389446423" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227957083">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1183710750857" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1183710752236" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1183710799338">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1183710799339">
                  <property name="name" value="children" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1183710799340">
                    <link role="elementConcept" targetNodeId="2.1073389214265" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227902465">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1183710777581" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1183710792978">
                      <link role="link" targetNodeId="2.1073389446424" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1183710831061">
                <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1183710831062">
                  <property name="name" value="child" />
                </node>
                <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1183710833253">
                  <link role="variableDeclaration" targetNodeId="1183710799339" resolveInfo="children" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1183710831064">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1183710875084">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227841498">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1183710875085" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_InsertPrevSiblingOperation" id="1183710890761">
                        <node role="parameter" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1183710896156">
                          <link role="variable" targetNodeId="1183710831062" resolveInfo="child" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1183710915637">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227891586">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1183710915640" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_DeleteOperation" id="1183710915639" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1186402310794">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1186402211651" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1186402314561">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1186402316579">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1186402317378">
          <property name="text" value="stylesheet" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678725">
            <property name="color" value="DARK_BLUE" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1186402320708">
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1186402327648">
          <property name="text" value="{" />
          <link role="styleClass" targetNodeId="26.1215087929380" resolveInfo="LeftParen" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995807">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1186402342355">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1219418596502" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1186402426928">
          <property name="vertical" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1186402402630" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994235">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1186402330134">
        <property name="text" value="}" />
        <link role="styleClass" targetNodeId="26.1215088010675" resolveInfo="RightParen" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1186402397081">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1186402373407" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1186402439414">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1186402441291">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214310593191">
          <property name="text" value="style" />
          <link role="styleClass" targetNodeId="1214310532702" resolveInfo="style" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1186402447779">
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          <link role="actionMap" targetNodeId="1198252451584" resolveInfo="StyleSheetClass_RT" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1198252386649">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1198252387401">
            <property name="text" value="extends" />
            <link role="styleClass" targetNodeId="26.1186415544875" resolveInfo="KeyWord" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1198252436848">
            <link role="relationDeclaration" targetNodeId="2.1198252369256" />
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1198252496152">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198252496153">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198252497374">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1198252500817">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1198252501773" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227884803">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1198252497375" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1198252500066">
                      <link role="link" targetNodeId="2.1198252369256" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994304">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1186402449906">
          <property name="text" value="{" />
          <link role="styleClass" targetNodeId="26.1215087929380" resolveInfo="LeftParen" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996315">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1186402460176">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1219328669039" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1186402497606">
          <property name="vertical" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1219418656006" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310995111">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1186402455065">
        <property name="text" value="}" />
        <link role="styleClass" targetNodeId="26.1215088010675" resolveInfo="RightParen" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1186403823943">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1186403694788" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1186403834898">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1186403839417">
        <link role="relationDeclaration" targetNodeId="3.1137473891462" />
        <link role="styleClass" targetNodeId="1194569818117" resolveInfo="item" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1186403841966">
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1186412595080">
        <link role="relationDeclaration" targetNodeId="2.1186403713874" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1186412612771">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1186412612772">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1186412613632">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1186412617091">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1186412618188" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227925192">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1186412613633" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1186412615840">
                    <link role="link" targetNodeId="2.1186403803051" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1186412603348">
        <property name="noTargetText" value="&lt;no query&gt;" />
        <link role="relationDeclaration" targetNodeId="2.1186403803051" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1186412621877">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1186412621878">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1186412623144">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1186412894017">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1186412917882">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1186412918760" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227927758">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1186412914830" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1186412917256">
                      <link role="link" targetNodeId="2.1186403803051" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227906498">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227930872">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1186412623145" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1186412626509">
                      <link role="property" targetNodeId="2.1186403713874" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1186412629997">
                    <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1186412629998">
                      <link role="enumMember" targetNodeId="2.1139246571096" />
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
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1186403885380">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1186403751766" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1186403889179">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1186403889931">
        <property name="text" value="font-style" />
        <link role="styleClass" targetNodeId="1194569818117" resolveInfo="item" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1186403894198">
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1186403896216">
        <link role="relationDeclaration" targetNodeId="2.1186403771423" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1186414561564">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1186414536763" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1186414564066">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1186414565427">
        <link role="relationDeclaration" targetNodeId="3.1137473891462" />
        <link role="styleClass" targetNodeId="1194569818117" resolveInfo="item" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1186414568289">
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1186414570275">
        <link role="relationDeclaration" targetNodeId="2.1186414551515" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1186415744056">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1186415722038" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1186415749074">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1186415811915">
        <link role="relationDeclaration" targetNodeId="3.1137473891462" />
        <link role="styleClass" targetNodeId="1194569818117" resolveInfo="item" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1186415782550">
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1186415784052">
        <link role="relationDeclaration" targetNodeId="2.1186415735165" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheet" id="1194569476147">
    <property name="name" value="Styles" />
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1214310532702">
      <property name="name" value="style" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214310536160">
        <property name="color" value="DARK_GREEN" />
      </node>
    </node>
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1194569489648">
      <property name="name" value="reference" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1194569500305">
        <property name="color" value="DARK_BLUE" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleClassItem" id="1194569509088">
        <property name="style" value="ITALIC" />
      </node>
    </node>
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1194569818117">
      <property name="name" value="item" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleClassItem" id="1194569818118">
        <property name="style" value="ITALIC" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1194569818119">
        <property name="color" value="DARK_GREEN" />
      </node>
    </node>
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1214478266312">
      <property name="name" value="header" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleClassItem" id="1214478269657">
        <property name="style" value="BOLD" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214479322404" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.UnderlinedStyleClassItem" id="1214478891245">
        <property name="underlined" value="2" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214478278161">
        <property name="color" value="DARK_GREEN" />
      </node>
    </node>
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1214480913160">
      <property name="name" value="property" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214480915802">
        <property name="flag" value="false" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214480975659">
        <property name="flag" value="true" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleClassItem" id="1214480920272">
        <property name="style" value="PLAIN" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214480929837">
        <property name="color" value="DARK_MAGENTA" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1198252342172">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1198252130653" resolveInfo="StyleSheetClassReference" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1198252344955">
      <link role="relationDeclaration" targetNodeId="2.1198252276894" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1198252344956">
        <link role="conceptDeclaration" targetNodeId="2.1186402373407" resolveInfo="StyleSheetClass" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1198252346521">
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" resolveInfo="name" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapDeclaration" id="1198252451584">
    <property name="package" value="Stylesheet" />
    <property name="name" value="StyleSheetClass_RT" />
    <link role="applicableConcept" targetNodeId="2.1186402373407" resolveInfo="StyleSheetClass" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapItem" id="1198252456491">
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_ExecuteFunction" id="1198252456492">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198252456493">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198252478892">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227904763">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227845152">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1198252478893" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1198252481084">
                  <link role="link" targetNodeId="2.1198252369256" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1198252483119" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1198256951045">
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1198256887712" resolveInfo="CellModel_Indent" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1198256960655">
      <property name="text" value="---&gt;" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939730">
        <property name="flag" value="true" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399677824">
        <property name="color" value="lightGray" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1198257699420">
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1198257632966" resolveInfo="CellModel_BlockStart" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1198504910573">
      <property name="noTargetText" value="{" />
      <property name="allowEmptyText" value="true" />
      <link role="relationDeclaration" targetNodeId="2.1198504797640" resolveInfo="openBrace" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314942183">
        <property name="flag" value="true" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678091">
        <property name="color" value="blue" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundNullColorStyleClassItem" id="1214404652990">
        <property name="color" value="blue" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1198504953470">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214478813995">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998204">
        <property name="flag" value="false" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314939729">
        <property name="flag" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1198257760530">
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1198257747917" resolveInfo="CellModel_BlockEnd" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1198506789109">
      <property name="allowEmptyText" value="true" />
      <property name="noTargetText" value="}" />
      <link role="relationDeclaration" targetNodeId="2.1198506631483" resolveInfo="closeBrace" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940144">
        <property name="flag" value="true" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678231">
        <property name="color" value="blue" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundNullColorStyleClassItem" id="1214404652991">
        <property name="color" value="blue" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1198506653653">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214478788536">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310996445">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1198490016284">
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1198489924438" resolveInfo="CellModel_Block" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1198490019130">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1198490032195">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1198490071435">
          <property name="noTargetText" value="&lt;no header&gt;" />
          <link role="relationDeclaration" targetNodeId="2.1198489985045" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1198508746535">
          <property name="allowEmptyText" value="true" />
          <property name="noTargetText" value="{" />
          <link role="relationDeclaration" targetNodeId="2.1198508727334" resolveInfo="openBrace" />
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940752">
            <property name="flag" value="true" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678657">
            <property name="color" value="blue" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundNullColorStyleClassItem" id="1214404652992">
            <property name="color" value="blue" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998141">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940628">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1198490035838">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1198490062806" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1198490067105">
          <link role="relationDeclaration" targetNodeId="2.1198489993734" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310998231">
          <property name="flag" value="false" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940877">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1198508750539">
        <property name="noTargetText" value="}" />
        <property name="allowEmptyText" value="true" />
        <link role="relationDeclaration" targetNodeId="2.1198508733600" resolveInfo="closeBrace" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940706">
          <property name="flag" value="true" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleClassItem" id="1214399678866">
          <property name="color" value="blue" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundNullColorStyleClassItem" id="1214404652993">
          <property name="color" value="blue" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214314940407">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1198502445685">
      <property name="vertical" value="true" />
      <property name="gridLayout" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1214478832452">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapDeclaration" id="1198588525521">
    <property name="name" value="ExtractComponent_KeyMap" />
    <property name="everyModel" value="true" />
    <link role="applicableConcept" targetNodeId="2.1073389214265" resolveInfo="EditorCellModel" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1198588541429">
      <property name="description" value="extract component" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1198588541430">
        <property name="modifiers" value="ctrl+alt" />
        <property name="keycode" value="VK_C" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1198588541431">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198588541432">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198588572590">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198588572591">
              <property name="name" value="container" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1198588572592">
                <link role="concept" targetNodeId="2.1080736578640" resolveInfo="BaseEditorComponent" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227878428">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1198588620924" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1198588928051">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1198588928052">
                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207872492605">
                      <link role="conceptDeclaration" targetNodeId="2.1080736578640" resolveInfo="BaseEditorComponent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198589362754">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198589362755">
              <property name="name" value="componentName" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1198589362756">
                <link role="classifier" targetNodeId="14.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1198589400754">
                <link role="baseMethodDeclaration" targetNodeId="25.~JOptionPane.showInputDialog(java.awt.Component,java.lang.Object,java.lang.Object):java.lang.String" resolveInfo="showInputDialog" />
                <link role="classConcept" targetNodeId="25.~JOptionPane" resolveInfo="JOptionPane" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207872475555">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1198589407021" />
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1207872475556">
                    <link role="baseMethodDeclaration" targetNodeId="16.~EditorContext.getNodeEditorComponent():jetbrains.mps.nodeEditor.EditorComponent" resolveInfo="getNodeEditorComponent" />
                  </node>
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1198589416985">
                  <property name="value" value="Enter a component name:" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1198589426909">
                  <property name="value" value="" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1198589706652">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198589706653">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1198589710239" />
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1198589708188">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1198589709129" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198589707453">
                <link role="variableDeclaration" targetNodeId="1198589362755" resolveInfo="componentName" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198588985173">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198588985174">
              <property name="name" value="model" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SModelType" id="1198588985175" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227849650">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1198588985177" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1198588985178" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198588968711">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198588968712">
              <property name="name" value="component" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1198588968713">
                <link role="concept" targetNodeId="2.1078938745671" resolveInfo="EditorComponentDeclaration" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227944594">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198588985179">
                  <link role="variableDeclaration" targetNodeId="1198588985174" resolveInfo="model" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewRootNodeOperation" id="1198589003621">
                  <link role="concept" targetNodeId="2.1078938745671" resolveInfo="EditorComponentDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198590070992">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227941168">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227920650">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198590070993">
                  <link role="variableDeclaration" targetNodeId="1198588968712" resolveInfo="component" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1198590072387">
                  <link role="property" targetNodeId="3.1169194664001" resolveInfo="name" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_SetOperation" id="1198590078238">
                <node role="value" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198590080523">
                  <link role="variableDeclaration" targetNodeId="1198589362755" resolveInfo="componentName" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198590084543">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227831525">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227946327">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198590084544">
                  <link role="variableDeclaration" targetNodeId="1198588968712" resolveInfo="component" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1198590094804">
                  <link role="link" targetNodeId="2.1166049300910" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1198590096512">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227939839">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198590097499">
                    <link role="variableDeclaration" targetNodeId="1198588572591" resolveInfo="container" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1198590101349">
                    <link role="link" targetNodeId="2.1166049300910" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198589010436">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227837118">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227894825">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198589010437">
                  <link role="variableDeclaration" targetNodeId="1198588968712" resolveInfo="component" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1198589013238">
                  <link role="link" targetNodeId="2.1080736633877" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1198589015242">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227890407">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1198589016307" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1198589017873" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1198589031954">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1198589031955">
              <property name="name" value="toReplace" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1198589031956">
                <link role="concept" targetNodeId="2.1078939183254" resolveInfo="CellModel_Component" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1198589038255">
                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1198589038256">
                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1198589038257">
                    <link role="concept" targetNodeId="2.1078939183254" resolveInfo="CellModel_Component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198589043993">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227916860">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227885442">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198589043994">
                  <link role="variableDeclaration" targetNodeId="1198589031955" resolveInfo="toReplace" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1198589053358">
                  <link role="link" targetNodeId="2.1078939183255" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1198589056253">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198589057614">
                  <link role="variableDeclaration" targetNodeId="1198588968712" resolveInfo="component" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198589059194">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227841944">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1198589059195" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1198589061387">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1198589063592">
                  <link role="variableDeclaration" targetNodeId="1198589031955" resolveInfo="toReplace" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.EditorComponentDeclaration" id="1198590333967">
    <property name="name" value="_FocusPolicy_Applicable" />
    <link role="conceptDeclaration" targetNodeId="2.1073389214265" resolveInfo="EditorCellModel" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1198590333969">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1198590333970">
        <property name="text" value="focus policy applicable:" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1198590333971">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1198590333972">
          <property name="noTargetText" value="&lt;no focus policy condition&gt;" />
          <link role="relationDeclaration" targetNodeId="2.1198512004906" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997673">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1198590333973">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198590333974">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198590333975">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1198590333976">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227914332">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227916297">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1198590333979" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1198590333980">
                    <link role="property" targetNodeId="2.1130859485024" resolveInfo="attractsFocus" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1198590333981">
                  <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1198590333982">
                    <link role="enumMember" targetNodeId="2.1130926557292" resolveInfo="noAttraction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994169">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapDeclaration" id="1198590715451">
    <property name="package" value="CellModel" />
    <property name="name" value="CellModel_Component_KeyMap" />
    <link role="applicableConcept" targetNodeId="2.1078939183254" resolveInfo="CellModel_Component" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1198590726802">
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1198590726803">
        <property name="modifiers" value="ctrl+alt" />
        <property name="keycode" value="VK_N" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1198590726804">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1198590726805">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1198591003471">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227915349">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1198591003472" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1198591006040">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227846315">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227936068">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227885205">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1198591007074" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1198591021757">
                        <link role="link" targetNodeId="2.1078939183255" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1198591023418">
                      <link role="link" targetNodeId="2.1080736633877" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_CopyOperation" id="1198591025079" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1201266153812">
    <property name="package" value="SNode" />
    <link role="conceptDeclaration" targetNodeId="2.1201265905111" resolveInfo="SelectLaterOperation" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1201266156329">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1201266157003">
        <property name="text" value="select" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1201266192497">
        <property name="text" value="in" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1201266171463">
        <link role="relationDeclaration" targetNodeId="2.1201266028598" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1201266197953">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1201266198736">
          <property name="text" value="&lt;" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1201266206773">
          <property name="separatorText" value="," />
          <link role="relationDeclaration" targetNodeId="2.1201266036224" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1201266200332">
          <property name="text" value="&gt;" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994810">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1201268889758">
    <property name="package" value="SNode" />
    <link role="conceptDeclaration" targetNodeId="2.1201268783309" resolveInfo="SelectPositionParameter" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1201268892010">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1201268892699">
        <property name="text" value="position" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1201268895904">
        <property name="text" value="=" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1201268897781">
        <link role="relationDeclaration" targetNodeId="2.1201268881975" resolveInfo="posision" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1201270914703">
    <property name="package" value="SNode" />
    <link role="conceptDeclaration" targetNodeId="2.1201270864927" resolveInfo="CaretPositionParameter" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1201270917284">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1201270918661">
        <property name="text" value="caret position" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1201270927258">
        <property name="text" value="=" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1201270928979">
        <link role="relationDeclaration" targetNodeId="2.1201270907764" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.EditorComponentDeclaration" id="1214305761663">
    <property name="name" value="Style_Component" />
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1073389214265" resolveInfo="EditorCellModel" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214305831635">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214306226091">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214306226952">
          <property name="text" value="style" />
          <link role="styleClass" targetNodeId="1214310532702" resolveInfo="style" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1214306234345">
          <property name="noTargetText" value="&lt;no base style&gt;" />
          <link role="relationDeclaration" targetNodeId="2.1186406756722" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1214306234346">
            <link role="conceptDeclaration" targetNodeId="2.1186402373407" resolveInfo="StyleSheetClass" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214306235442">
              <property name="readOnly" value="true" />
              <link role="relationDeclaration" targetNodeId="3.1169194664001" resolveInfo="name" />
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214306251240">
          <property name="text" value="{" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994182">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214305837264">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1214305839047" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1214305846330">
          <property name="vertical" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1219418656006" />
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310994230">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214306254664">
        <property name="text" value="}" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214306426285">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214310997649">
          <property name="flag" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1214316262412">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1186414999511" resolveInfo="UnderlinedStyleSheetItem" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214316287175">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1214316290161">
        <link role="relationDeclaration" targetNodeId="3.1137473891462" resolveInfo="alias" />
        <link role="styleClass" targetNodeId="1194569818117" resolveInfo="item" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214316291663">
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214316297759">
        <link role="relationDeclaration" targetNodeId="2.1214316229833" resolveInfo="underlined" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1214317912573">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1214317859050" resolveInfo="LayoutConstraintStyleSheetItem" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214317920059">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1214317920060">
        <link role="styleClass" targetNodeId="1194569818117" resolveInfo="item" />
        <link role="relationDeclaration" targetNodeId="3.1137473891462" resolveInfo="alias" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214317920061">
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214317920062">
        <link role="relationDeclaration" targetNodeId="2.1214317859051" resolveInfo="layoutConstraint" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1214320151708">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1214320119173" resolveInfo="RightTransformAnchorTagStyleSheetItem" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214320157195">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1214320157196">
        <link role="styleClass" targetNodeId="1194569818117" resolveInfo="item" />
        <link role="relationDeclaration" targetNodeId="3.1137473891462" resolveInfo="alias" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214320157197">
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214320157198">
        <link role="relationDeclaration" targetNodeId="2.1214320119174" resolveInfo="tag" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1214472816506">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1214472762472" resolveInfo="DefaultCaretPositionStyleSheetItem" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214472839331">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1214472841427">
        <link role="relationDeclaration" targetNodeId="3.1137473891462" resolveInfo="alias" />
        <link role="styleClass" targetNodeId="1194569818117" resolveInfo="item" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214472842648">
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214472845446">
        <link role="relationDeclaration" targetNodeId="2.1214472762473" resolveInfo="position" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.EditorComponentDeclaration" id="1214476568032">
    <property name="name" value="_CellModel_Common" />
    <link role="conceptDeclaration" targetNodeId="2.1073389214265" resolveInfo="EditorCellModel" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214478377056">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214479891064">
        <property name="text" value="Style:" />
        <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214478379739">
        <property name="vertical" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214478379740">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1214478379742">
            <property name="noTargetText" value="&lt;no base style&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1186406756722" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1214478379743">
              <link role="conceptDeclaration" targetNodeId="2.1186402373407" resolveInfo="StyleSheetClass" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214478379744">
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478379745">
            <property name="text" value="{" />
            <link role="styleClass" targetNodeId="26.1215087929380" resolveInfo="LeftParen" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214478379746">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214478379747">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1214478379748" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1214478379749">
            <property name="vertical" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1219418656006" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214478379750">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478379751">
          <property name="text" value="}" />
          <link role="styleClass" targetNodeId="26.1215088010675" resolveInfo="RightParen" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478379752">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214478379753">
          <property name="flag" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478377058">
        <property name="text" value="Common:" />
        <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214478377057">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214478377059">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478377060">
            <property name="text" value="action map" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1214478377063">
            <property name="noTargetText" value="&lt;default&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1139959269582" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1214478377064">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" resolveInfo="CellActionMapDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214478377065">
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" resolveInfo="name" />
                <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214478377066">
                  <property name="flag" value="true" />
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214478377067">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214478377068">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214478377069">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214478377070">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478377071">
            <property name="text" value="keymap" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1214478377074">
            <property name="noTargetText" value="&lt;default&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1081339532145" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1214478377075">
              <link role="conceptDeclaration" targetNodeId="2.1081293058843" resolveInfo="CellKeyMapDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214478377076">
                <property name="noTargetText" value="&lt;no name&gt;" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" resolveInfo="name" />
                <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214478377077">
                  <property name="flag" value="true" />
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214478377078">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214478377079">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214478377080">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214478377081">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478377082">
            <property name="text" value="menu" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1214478377085">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1164826688380" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214478377086">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214478377087">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214478377088">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478377089">
            <property name="text" value="attracts focus" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1214478377092">
            <link role="relationDeclaration" targetNodeId="2.1130859485024" resolveInfo="attractsFocus" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214478377093">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214478377094">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214478377095">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214478377096">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478377097">
            <property name="text" value="focus policy condition" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1214478377098">
            <link role="relationDeclaration" targetNodeId="2.1198512004906" />
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1214478377099">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214478377100">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1214478377101">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1214478377102">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214478377103">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1214478377104">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1214478377105" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1214478377106">
                        <link role="property" targetNodeId="2.1130859485024" resolveInfo="attractsFocus" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1214478377107">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1214478377108">
                        <link role="enumMember" targetNodeId="2.1130926557292" resolveInfo="noAttraction" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1214478377109">
            <property name="flag" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1214478377110">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1214478377111">
            <property name="text" value="show if" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1214478377112">
            <property name="noTargetText" value="&lt;no condition&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1142887637401" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1214481287798">
            <property name="flag" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1215007816032">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1215007762405" resolveInfo="FloatStyleSheetItem" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1215007842118">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1215007844401">
        <link role="relationDeclaration" targetNodeId="3.1137473891462" resolveInfo="alias" />
        <link role="styleClass" targetNodeId="1194569818117" resolveInfo="item" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1215007846091">
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1215007848233">
        <link role="relationDeclaration" targetNodeId="2.1215007802031" resolveInfo="value" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1216309269724">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1216308599511" resolveInfo="LayoutNextLine" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216309284179">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1216309284180">
        <link role="styleClass" targetNodeId="1194569818117" resolveInfo="item" />
        <link role="relationDeclaration" targetNodeId="3.1137473891462" resolveInfo="alias" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216309284181">
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1216309284182">
        <link role="relationDeclaration" targetNodeId="2.1216308761668" resolveInfo="nextLine" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1216381325202">
    <property name="package" value="CellModel" />
    <link role="conceptDeclaration" targetNodeId="2.1216380990741" resolveInfo="CellModel_TransactionalProperty" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216381326735">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1216381983842">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1216381983843">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1216381326738">
        <property name="noTargetText" value="&lt;no property&gt;" />
        <link role="relationDeclaration" targetNodeId="2.1216381219207" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1216381326739">
          <link role="conceptDeclaration" targetNodeId="8.1071489288299" resolveInfo="PropertyDeclaration" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1216381326740">
            <property name="noTargetText" value="&lt;no name&gt;" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" resolveInfo="name" />
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1216381326741">
              <property name="flag" value="true" />
            </node>
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1216381326742">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1216381326743">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1216381326744">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1216381326745">
        <property name="flag" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216382040437">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1216382040438">
        <link role="editorComponent" targetNodeId="1214476568032" resolveInfo="_CellModel_Common" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216382040439">
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216382040440" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216382040441">
        <property name="text" value="Transactional property cell:" />
        <property name="name" value="headerCell" />
        <link role="styleClass" targetNodeId="1214478266312" resolveInfo="header" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216382040442">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216382092309">
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216382092310">
            <property name="text" value="property" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1216382092311">
            <property name="noTargetText" value="&lt;no property&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1216381219207" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1216382092312">
              <link role="conceptDeclaration" targetNodeId="8.1071489288299" resolveInfo="PropertyDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1216382092313">
                <property name="noTargetText" value="&lt;no name&gt;" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" resolveInfo="name" />
                <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1216382092314">
                  <property name="flag" value="true" />
                </node>
              </node>
            </node>
            <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1216382092315">
              <property name="flag" value="true" />
            </node>
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216382092316">
            <property name="flag" value="false" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1216382092317">
            <property name="flag" value="true" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216382040443">
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216382040444">
            <property name="text" value="handler:" />
            <link role="styleClass" targetNodeId="1214480913160" resolveInfo="property" />
          </node>
          <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216382040445">
            <property name="flag" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1216382040446">
            <link role="relationDeclaration" targetNodeId="2.1216381211800" />
          </node>
        </node>
        <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1216382040455">
          <property name="flag" value="true" />
        </node>
      </node>
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.SelectableStyleSheetItem" id="1216382040734">
        <property name="flag" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1216561822515">
    <property name="package" value="Stylesheet" />
    <link role="conceptDeclaration" targetNodeId="2.1216560327200" resolveInfo="NextLineChildrenStyleClassItem" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1216561900974">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1216561900975">
        <link role="styleClass" targetNodeId="1194569818117" resolveInfo="item" />
        <link role="relationDeclaration" targetNodeId="3.1156235010670" resolveInfo="alias" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216561900976">
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1216561900977">
        <link role="relationDeclaration" targetNodeId="2.1216560518566" resolveInfo="nextLine" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1216672309006">
    <property name="package" value="CellLayout" />
    <link role="conceptDeclaration" targetNodeId="2.1216672142186" resolveInfo="CellLayout_Indent" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1216672312102">
      <property name="text" value="Indent" />
      <node role="styleItem" type="jetbrains.mps.bootstrap.editorLanguage.structure.DrawBorderStyleClassItem" id="1216672312103">
        <property name="flag" value="true" />
      </node>
    </node>
  </node>
</model>


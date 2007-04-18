<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.bootstrap.editorLanguage.editor">
  <language namespace="jetbrains.mps.bootstrap.editorLanguage" />
  <language namespace="jetbrains.mps.core" />
  <language namespace="jetbrains.mps.baseLanguage" />
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage" />
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang" />
  <maxImportIndex value="22" />
  <import index="2" modelUID="jetbrains.mps.bootstrap.editorLanguage.structure" />
  <import index="3" modelUID="jetbrains.mps.core.structure" />
  <import index="8" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" />
  <import index="9" modelUID="jetbrains.mps.bootstrap.editorLanguage.editor" />
  <import index="10" modelUID="jetbrains.mps.baseLanguage.editor" />
  <import index="11" modelUID="jetbrains.mps.annotations.structure" />
  <import index="12" modelUID="jetbrains.mps.baseLanguage.structure" />
  <import index="13" modelUID="jetbrains.mps.bootstrap.editorLanguage.editor@java_stub" />
  <import index="14" modelUID="java.lang@java_stub" />
  <import index="15" modelUID="jetbrains.mps.bootstrap.editorLanguage@java_stub" />
  <import index="16" modelUID="jetbrains.mps.nodeEditor@java_stub" />
  <import index="17" modelUID="jetbrains.mps.smodel@java_stub" />
  <import index="18" modelUID="java.util@java_stub" />
  <import index="19" modelUID="jetbrains.mps.bootstrap.sharedConcepts.structure" />
  <import index="20" modelUID="java.awt@java_stub" />
  <import index="21" modelUID="jetbrains.mps.smodel.action@java_stub" />
  <import index="22" modelUID="jetbrains.mps.bootstrap.editorLanguage.structure@java_stub" />
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1078153915535">
    <property name="name" value="ConceptEditorDeclaration_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1071666914219" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078154255343">
      <property name="attractsFocus" value="0" />
      <property name="name" value="nodeBox" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078154255344">
        <property name="attractsFocus" value="0" />
        <property name="name" value="headerRow" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078154255345">
          <property name="selectable" value="true" />
          <property name="text" value="editor for concept" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1106262846792">
          <property name="noTargetText" value="&lt;no concept&gt;" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="2.1166049300910" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1106262827948">
            <link role="conceptDeclaration" targetNodeId="8.1071489090640" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1106262846793">
              <property name="noTargetText" value="&lt;no name&gt;" />
              <property name="readOnly" value="true" />
              <property name="drawBorder" value="true" />
              <link role="relationDeclaration" targetNodeId="3.1169194664001" />
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078168236281">
        <property name="name" value="nodeCellArea" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078168290391">
          <property name="text" value="    " />
          <property name="name" value="indentCell" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078168412377">
          <property name="name" value="nodeCellPanel" />
          <property name="vertical" value="true" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078168610018">
            <property name="name" value="headerIndentCell" />
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078168651395">
            <property name="selectable" value="false" />
            <property name="text" value="node cell layout:" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078168791802">
            <property name="name" value="cellsLayoutPanel" />
            <property name="vertical" value="false" />
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078168791803">
              <property name="text" value="    " />
              <property name="name" value="indentCell" />
              <property name="drawBorder" value="false" />
              <property name="selectable" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1128364838801">
              <property name="noTargetText" value="&lt;choose cell model&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1080736633877" />
              <link role="keyMap" targetNodeId="1130860818891" />
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078232807734">
        <property name="name" value="inspectedCellArea" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078232807735">
          <property name="text" value="    " />
          <property name="name" value="indentCell" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078232807736">
          <property name="name" value="inspectedCellPanel" />
          <property name="vertical" value="true" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078232807737">
            <property name="name" value="headerIndentCell" />
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078232807738">
            <property name="text" value="inspected cell layout:" />
            <property name="attractsFocus" value="0" />
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078232807739">
            <property name="name" value="cellsLayoutPanel" />
            <property name="vertical" value="false" />
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078232807740">
              <property name="text" value="    " />
              <property name="name" value="indentCell" />
              <property name="drawBorder" value="false" />
              <property name="selectable" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1078232807741">
              <property name="noTargetText" value="&lt;choose cell model&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1078153129734" />
              <link role="keyMap" targetNodeId="1130860818891" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1078250851485">
    <property name="name" value="CellModel_Error_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1075375595203" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078250851486">
      <property name="name" value="nodeBox" />
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176716975194">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1078250851487">
        <property name="cellBackground" value="query" />
        <property name="textBgColor" value="pink" />
        <property name="writable" value="true" />
        <property name="defaultValue" value="" />
        <property name="drawBorder" value="true" />
        <property name="textBgColorSelected" value="magenta" />
        <link role="relationDeclaration" targetNodeId="2.1075375595204" />
        <node role="cellBackgroundFunction" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_Color" id="1176889074951">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176889074952">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176889080393">
              <node role="expression" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1176889085619">
                <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                <link role="classConcept" targetNodeId="1176888877514" resolveInfo="EditorUtil" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1176889087950" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176716980679">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078251446492">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078251446493">
        <property name="text" value="&lt; error cell &gt;" />
        <property name="name" value="headerCell" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078251768573">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078251768574">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078251768575">
            <property name="selectable" value="false" />
            <property name="text" value="text" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1078251768577">
            <property name="textBgColor" value="pink" />
            <property name="writable" value="true" />
            <property name="defaultValue" value="&lt;null&gt;" />
            <property name="drawBorder" value="true" />
            <property name="textBgColorSelected" value="magenta" />
            <link role="relationDeclaration" targetNodeId="2.1075375595204" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078252397725">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078252397726">
            <property name="selectable" value="false" />
            <property name="text" value="name" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140213339156">
            <property name="allowEmptyText" value="true" />
            <property name="writable" value="true" />
            <property name="noTargetText" value="&lt;auto&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078412182080">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078412182081">
            <property name="selectable" value="false" />
            <property name="text" value="selectable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1083935157093">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389214266" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902584130">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902584131">
            <property name="selectable" value="false" />
            <property name="text" value="attracts focus" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902584132">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130859485024" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139313507264">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139313041650" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551058293">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140036970308">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140036970309">
            <property name="selectable" value="false" />
            <property name="text" value="action map" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140036970310">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139959269582" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140036970311">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140036970312">
                <property name="drawBorder" value="true" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1081341009440">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1081341009441">
            <property name="selectable" value="false" />
            <property name="text" value="keymap" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1081341009442">
            <property name="drawBorder" value="true" />
            <link role="editorComponent" targetNodeId="1081339484984" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140814145083">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140814145084">
            <property name="selectable" value="false" />
            <property name="text" value="r-transform anchor" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140814145085">
            <link role="relationDeclaration" targetNodeId="2.1140813989553" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164826955577">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164826955578">
            <property name="selectable" value="false" />
            <property name="text" value="menu" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1164826955579">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1164826688380" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158611484991">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902613342">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902613343">
            <property name="selectable" value="false" />
            <property name="text" value="layout constraint " />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902613344">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1129573164669" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551060844">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078252552469">
          <property name="text" value="adornments:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902640147">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902640148">
            <property name="selectable" value="false" />
            <property name="text" value="draw border" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902640149">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1078832671094" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902640150">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902640151">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902640152">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902640153">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902640154">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902640155">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902640156">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902640157">
            <property name="selectable" value="false" />
            <property name="text" value="font style" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902640158">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512758" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902640159">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902640160">
            <property name="selectable" value="false" />
            <property name="text" value="font size" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902640161">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512759" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902640162">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902640163">
            <property name="selectable" value="false" />
            <property name="text" value="underlined" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902640164">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130836394969" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139251585206">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139246918944" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551065286">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088161513203">
          <property name="text" value="query methods:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902662813">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902662814">
            <property name="selectable" value="false" />
            <property name="text" value="condition" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1145902662815">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1142887637401" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1078830687765">
    <property name="name" value="CellModel_Collection_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1073389446423" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078830838187">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078831285968">
        <property name="name" value="nodeBoxV" />
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="drawBorder" value="true" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080900860468">
          <property name="cellBackground" value="query" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176716991133">
            <property name="name" value="open_tag_1" />
            <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
          </node>
          <node role="cellBackgroundFunction" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_Color" id="1176889099376">
            <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176889099377">
              <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176889112220">
                <node role="expression" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1176889112221">
                  <link role="classConcept" targetNodeId="1176888877514" resolveInfo="EditorUtil" />
                  <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1176889112222" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078831864673">
          <property name="name" value="center" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078831864674">
            <property name="name" value="indent" />
            <property name="drawBorder" value="true" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNodeList" id="1078834032968">
            <property name="name" value="ver" />
            <property name="vertical" value="true" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389446424" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080900876423">
          <property name="cellBackground" value="query" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176716999119">
            <property name="name" value="close_tag_1" />
            <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
          </node>
          <node role="cellBackgroundFunction" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_Color" id="1176889142437">
            <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176889142438">
              <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176889143153">
                <node role="expression" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1176889143154">
                  <link role="classConcept" targetNodeId="1176888877514" resolveInfo="_EditorUtil" />
                  <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1176889143155" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1146616612562">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146616612563">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1146616614799">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146616620302">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1146616618363" />
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146616627178">
                  <link role="property" targetNodeId="2.1073389446425" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078915007345">
        <property name="name" value="nodeBoxH" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717005698">
          <property name="name" value="open_tag_1" />
          <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNodeList" id="1078915007347">
          <property name="name" value="hor" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1073389446424" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717011043">
          <property name="name" value="close_tag_2" />
          <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1146618696916">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146618696917">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1146618699996">
              <node role="expression" type="jetbrains.mps.baseLanguage.NotExpression" id="1146618702326">
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146618707391">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1146618705984" />
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146618714127">
                    <link role="property" targetNodeId="2.1073389446425" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078931723968">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="gridLayout" value="false" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078935965937">
        <property name="text" value="&lt; cell collection &gt;" />
        <property name="name" value="headerCell" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078936199314">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078936199315">
          <property name="gridLayout" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078936199316">
            <property name="selectable" value="false" />
            <property name="text" value="name" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140213356934">
            <property name="allowEmptyText" value="true" />
            <property name="writable" value="true" />
            <property name="noTargetText" value="&lt;auto&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078936199323">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078936199324">
            <property name="selectable" value="false" />
            <property name="text" value="selectable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1083935157110">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389214266" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139234639539">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139234645915">
            <property name="selectable" value="false" />
            <property name="text" value="attracts focus" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139234657011">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130859485024" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078936199327">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078936199328">
            <property name="selectable" value="false" />
            <property name="text" value="vertical" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1078936199330">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389446425" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078936199331">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078936199332">
            <property name="selectable" value="false" />
            <property name="text" value="grid layout" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1078936199334">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389446426" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1106271317031">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1106271317032">
            <property name="selectable" value="false" />
            <property name="text" value="cell layout" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1106271317033">
            <property name="noTargetText" value="&lt;no layout&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1106270802874" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139416996716">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139417050969">
            <property name="selectable" value="false" />
            <property name="text" value="uses braces" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139417057972">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139416841293" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1160590439793">
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1160590455842">
            <property name="text" value="uses folding" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1160590466391">
            <link role="relationDeclaration" targetNodeId="2.1160590353935" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139313460678">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139313041650" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1129573355791">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1129573355792">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1129573355793">
            <property name="selectable" value="false" />
            <property name="text" value="layout constraint " />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1129573355794">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1129573164669" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551150341">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078936199336">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078936199337">
            <property name="selectable" value="false" />
            <property name="text" value="action map" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1139959558153">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139959269582" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1139959558152">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139959568515">
                <property name="drawBorder" value="true" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1081340878553">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1081340878554">
            <property name="selectable" value="false" />
            <property name="text" value="keymap" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1081340878555">
            <property name="drawBorder" value="true" />
            <link role="editorComponent" targetNodeId="1081339484984" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140814124631">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140814124632">
            <property name="selectable" value="false" />
            <property name="text" value="r-transform anchor" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140814124633">
            <link role="relationDeclaration" targetNodeId="2.1140813989553" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164826819402">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164826819403">
            <property name="selectable" value="false" />
            <property name="text" value="menu" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1164826819404">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1164826688380" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158610222572">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078936199341">
          <property name="text" value="adornments:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145901809189">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145901809190">
            <property name="selectable" value="false" />
            <property name="text" value="draw border" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145901809191">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1078832671094" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145901809192">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145901809193">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145901809194">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145901809195">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145901809196">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145901809197">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1130429540622">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1130429540623">
            <property name="selectable" value="false" />
            <property name="text" value="font style" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1130429540624">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512758" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1130429540625">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1130429540626">
            <property name="selectable" value="false" />
            <property name="text" value="font size" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1130429540627">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512759" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1130836911477">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1130836911478">
            <property name="selectable" value="false" />
            <property name="text" value="underlined" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1130836911479">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130836394969" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551155021">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088160489191">
          <property name="text" value="query methods:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1142887738158">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1142887738159">
            <property name="selectable" value="false" />
            <property name="text" value="condition" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1142887751600">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1142887637401" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1078939560959">
    <property name="name" value="CellModel_Component_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1078939183254" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078939636327">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717023528">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140222839466">
        <property name="noTargetText" value="&lt;no component&gt;" />
        <property name="drawBorder" value="true" />
        <link role="relationDeclaration" targetNodeId="2.1078939183255" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140222839465">
          <link role="conceptDeclaration" targetNodeId="2.1078938745671" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140222845140">
            <property name="noTargetText" value="&lt;no name&gt;" />
            <property name="readOnly" value="true" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717029764">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1078941097162">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1078941156803">
        <property name="text" value="&lt; component cell &gt;" />
        <property name="name" value="headerCell" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1079099733406">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="gridLayout" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1079099733407">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1079099733408">
            <property name="selectable" value="false" />
            <property name="text" value="name" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140213334011">
            <property name="allowEmptyText" value="true" />
            <property name="writable" value="true" />
            <property name="noTargetText" value="&lt;auto&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1079099733415">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1079099733416">
            <property name="selectable" value="false" />
            <property name="text" value="selectable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1083935157111">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389214266" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902149075">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902149076">
            <property name="selectable" value="false" />
            <property name="text" value="attracts focus" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902149077">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130859485024" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139313469637">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139313041650" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551129017">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140037120586">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140037120587">
            <property name="selectable" value="false" />
            <property name="text" value="action map" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140037120588">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139959269582" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140037120589">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140037120590">
                <property name="drawBorder" value="true" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1081340911353">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1081340911354">
            <property name="selectable" value="false" />
            <property name="text" value="keymap" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1081340911355">
            <property name="drawBorder" value="true" />
            <link role="editorComponent" targetNodeId="1081339484984" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140814128575">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140814128576">
            <property name="selectable" value="false" />
            <property name="text" value="r-transform anchor" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140814128577">
            <link role="relationDeclaration" targetNodeId="2.1140813989553" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164826866818">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164826866819">
            <property name="selectable" value="false" />
            <property name="text" value="menu" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1164826866820">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1164826688380" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1129573362882">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902173521">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902173522">
            <property name="selectable" value="false" />
            <property name="text" value="layout constraint " />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902173523">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1129573164669" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551131193">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1079099733425">
          <property name="text" value="adornments:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902198183">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902198184">
            <property name="selectable" value="false" />
            <property name="text" value="draw border" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902198185">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1078832671094" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902198186">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902198187">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902198188">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902198189">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902198190">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902198191">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551133853">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088161109320">
          <property name="text" value="query methods:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902212465">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902212466">
            <property name="selectable" value="false" />
            <property name="text" value="condition" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1145902212467">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1142887637401" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1079007237531">
    <property name="name" value="EditorComponentDeclaration_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1078938745671" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1079007237544">
      <property name="name" value="nodeBox" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1079007237545">
        <property name="name" value="headerRow" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1079007237546">
          <property name="text" value="editor component" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1136931226248">
          <property name="noTargetText" value="&lt;no name&gt;" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1079007237550">
        <property name="name" value="semanticTypeAreaIndented" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1079007237551">
          <property name="text" value="    " />
          <property name="name" value="indentCell" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1079007237552">
          <property name="name" value="semanticTypeArea" />
          <property name="vertical" value="true" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1079007237553">
            <property name="text" value="applicable concept:" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1079007237554">
            <property name="name" value="cellsLayoutPanel" />
            <property name="vertical" value="false" />
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139445751111">
              <property name="text" value="    " />
              <property name="name" value="indentCell" />
              <property name="drawBorder" value="false" />
              <property name="selectable" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1106261028889">
              <property name="noTargetText" value="&lt;choose concept&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1166049300910" />
              <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1106261017482">
                <link role="conceptDeclaration" targetNodeId="8.1071489090640" />
                <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1106261028890">
                  <property name="drawBorder" value="true" />
                  <property name="readOnly" value="true" />
                  <link role="relationDeclaration" targetNodeId="3.1169194664001" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1079007237557">
        <property name="name" value="nodeCellArea" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1079007237558">
          <property name="text" value="    " />
          <property name="name" value="indentCell" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1079007237559">
          <property name="name" value="nodeCellPanel" />
          <property name="vertical" value="true" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1079007237560">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1079007237561">
            <property name="text" value="component cell layout:" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1079007237562">
            <property name="name" value="cellsLayoutPanel" />
            <property name="vertical" value="false" />
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139445756021">
              <property name="text" value="    " />
              <property name="name" value="indentCell" />
              <property name="drawBorder" value="false" />
              <property name="selectable" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1140213026969">
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1080736633877" />
              <link role="keyMap" targetNodeId="1130860818891" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1080742754453">
    <property name="name" value="CellModel_Constant_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1073389577006" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080742754454">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717068047">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1176717081541">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176717081542">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176717082035">
              <node role="expression" type="jetbrains.mps.baseLanguage.GreaterThanExpression" id="1176717082036">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1176717082037">
                  <property name="value" value="0" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1176717082038">
                  <link role="baseMethodDeclaration" extResolveInfo="14.method ([Classifier]String).([InstanceMethodDeclaration]length() : (jetbrains.mps.baseLanguage.types.int/jetbrains.mps.baseLanguage.types.int))" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1176717082039">
                    <link role="classConcept" extResolveInfo="13.[Classifier]EditorCellTags" />
                    <link role="baseMethodDeclaration" extResolveInfo="13.static method ([Classifier]EditorCellTags).([StaticMethodDeclaration]getOpeningText((jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [EditorCellModel])) : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                    <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1176717082040">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetAdapterOperation" id="1176717082041" />
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1176717082042" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1080742871174">
        <property name="cellBackground" value="query" />
        <property name="textBgColor" value="yellow" />
        <property name="allowEmptyText" value="true" />
        <property name="writable" value="true" />
        <property name="defaultValue" value="" />
        <property name="drawBorder" value="true" />
        <property name="textBgColorSelected" value="cyan" />
        <link role="relationDeclaration" targetNodeId="2.1073389577007" />
        <node role="cellBackgroundFunction" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_Color" id="1176889151950">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176889151951">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176889152815">
              <node role="expression" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1176889152816">
                <link role="classConcept" targetNodeId="1176888877514" resolveInfo="_EditorUtil" />
                <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1176889152817" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717088137">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1176717095123">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176717095124">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176717095680">
              <node role="expression" type="jetbrains.mps.baseLanguage.GreaterThanExpression" id="1176717095681">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1176717095682">
                  <property name="value" value="0" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1176717095683">
                  <link role="baseMethodDeclaration" extResolveInfo="14.method ([Classifier]String).([InstanceMethodDeclaration]length() : (jetbrains.mps.baseLanguage.types.int/jetbrains.mps.baseLanguage.types.int))" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1176717095684">
                    <link role="classConcept" extResolveInfo="13.[Classifier]EditorCellTags" />
                    <link role="baseMethodDeclaration" extResolveInfo="13.static method ([Classifier]EditorCellTags).([StaticMethodDeclaration]getOpeningText((jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [EditorCellModel])) : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                    <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1176717095685">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetAdapterOperation" id="1176717095686" />
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1176717095687" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080742936930">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080742964963">
        <property name="text" value="&lt; constant cell &gt;" />
        <property name="name" value="headerCell" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080742964964">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="gridLayout" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080742964965">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080742964966">
            <property name="selectable" value="false" />
            <property name="text" value="text" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1080742964968">
            <property name="textBgColor" value="yellow" />
            <property name="writable" value="true" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="defaultValue" value="&lt;null&gt;" />
            <property name="drawBorder" value="true" />
            <property name="textBgColorSelected" value="cyan" />
            <link role="relationDeclaration" targetNodeId="2.1073389577007" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1082639645063">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1082639645064">
            <property name="selectable" value="false" />
            <property name="text" value="text*" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1082639645065">
            <property name="allowEmptyText" value="true" />
            <property name="textBgColor" value="yellow" />
            <property name="writable" value="true" />
            <property name="defaultValue" value="&lt;null&gt;" />
            <property name="drawBorder" value="true" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="textBgColorSelected" value="cyan" />
            <link role="relationDeclaration" targetNodeId="2.1082639509531" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080742964969">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080742964985">
            <property name="selectable" value="false" />
            <property name="text" value="name" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140213368457">
            <property name="allowEmptyText" value="true" />
            <property name="writable" value="true" />
            <property name="noTargetText" value="&lt;auto&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080742964992">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080742964993">
            <property name="selectable" value="false" />
            <property name="text" value="selectable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1083935157112">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389214266" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080743213422">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080743213423">
            <property name="selectable" value="false" />
            <property name="text" value="editable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1083932269533">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1079353555534" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902402282">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902402283">
            <property name="selectable" value="false" />
            <property name="text" value="attracts focus" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902402284">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130859485024" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139313417557">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139313041650" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1129573370317">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902424259">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902424260">
            <property name="selectable" value="false" />
            <property name="text" value="layout constraint " />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902424261">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1129573164669" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138330454338">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140036991162">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140036991163">
            <property name="selectable" value="false" />
            <property name="text" value="action map" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140036991164">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139959269582" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140036991165">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140036991166">
                <property name="drawBorder" value="true" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1081340947028">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1081340947029">
            <property name="selectable" value="false" />
            <property name="text" value="keymap" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1081340947030">
            <property name="drawBorder" value="true" />
            <link role="editorComponent" targetNodeId="1081339484984" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140814137540">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140814137541">
            <property name="selectable" value="false" />
            <property name="text" value="r-transform anchor" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140814137542">
            <link role="relationDeclaration" targetNodeId="2.1140813989553" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164826949633">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164826949634">
            <property name="selectable" value="false" />
            <property name="text" value="menu" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1164826949635">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1164826688380" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138330460980">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080742965002">
          <property name="text" value="adornments:" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902451595">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902451596">
            <property name="selectable" value="false" />
            <property name="text" value="draw border" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902451597">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1078832671094" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902451598">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902451599">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902451600">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902451601">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902451602">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902451603">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902451604">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902451605">
            <property name="selectable" value="false" />
            <property name="text" value="font style" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902451606">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512758" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902451607">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902451608">
            <property name="selectable" value="false" />
            <property name="text" value="font size" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902451609">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="allowEmptyText" value="true" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512759" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902451610">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902451611">
            <property name="selectable" value="false" />
            <property name="text" value="underlined" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902451612">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130836394969" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139250663816">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139246918944" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138330470295">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088161173240">
          <property name="text" value="query methods:" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902471949">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902471950">
            <property name="selectable" value="false" />
            <property name="text" value="condition" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1145902471951">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1142887637401" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1080749245406">
    <property name="name" value="CellModel_Custom_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1078308402140" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080749245407">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717110252">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176799313696">
        <property name="text" value="custom cell" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717118113">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080749634962">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080749749107">
        <property name="text" value="&lt; custom cell &gt;" />
        <property name="name" value="headerCell" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176795037814">
        <property name="text" value="Cell provider:" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176795050331">
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176795051116">
          <property name="text" value="&gt;" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176795052500">
          <link role="relationDeclaration" targetNodeId="2.1176795024817" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080749749108">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="gridLayout" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080749746010">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080749746011">
            <property name="selectable" value="false" />
            <property name="text" value="name" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140213344441">
            <property name="allowEmptyText" value="true" />
            <property name="writable" value="true" />
            <property name="noTargetText" value="&lt;auto&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080749749113">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080749749114">
            <property name="selectable" value="false" />
            <property name="text" value="selectable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1083935157113">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389214266" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902506130">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902506131">
            <property name="selectable" value="false" />
            <property name="text" value="attracts focus" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902506132">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130859485024" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139313492303">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139313041650" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1129573376611">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1129573376612">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1129573376613">
            <property name="selectable" value="false" />
            <property name="text" value="layout constraint " />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1129573376614">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1129573164669" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551085790">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140037078822">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140037078823">
            <property name="selectable" value="false" />
            <property name="text" value="action map" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140037078824">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139959269582" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140037078825">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140037078826">
                <property name="drawBorder" value="true" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1081340974187">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1081340974188">
            <property name="selectable" value="false" />
            <property name="text" value="keymap" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1081340974189">
            <property name="drawBorder" value="true" />
            <link role="editorComponent" targetNodeId="1081339484984" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140814141452">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140814141453">
            <property name="selectable" value="false" />
            <property name="text" value="r-transform anchor" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140814141454">
            <link role="relationDeclaration" targetNodeId="2.1140813989553" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164826875292">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164826875293">
            <property name="selectable" value="false" />
            <property name="text" value="menu" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1164826875294">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1164826688380" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158609980350">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080749749131">
          <property name="text" value="adornments:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902530448">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902530449">
            <property name="selectable" value="false" />
            <property name="text" value="draw border" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902530450">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1078832671094" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902530451">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902530452">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902530453">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902530454">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902530455">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902530456">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551090298">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088161360815">
          <property name="text" value="query methods:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902549449">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902549450">
            <property name="selectable" value="false" />
            <property name="text" value="condition" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1145902549451">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1142887637401" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1080754563251">
    <property name="name" value="CellModel_ModelAccess_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1074767920765" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080754563256">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717130661">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176724690194">
        <property name="text" value="model access" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717135427">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080754563259">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080754563260">
        <property name="text" value="&lt; model access cell &gt;" />
        <property name="name" value="headerCell" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176725282512">
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176725282513">
          <property name="text" value="model acessor:" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176725282514">
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176725282515">
          <link role="relationDeclaration" targetNodeId="2.1176718152741" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080754563261">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080754563265">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080754563266">
            <property name="selectable" value="false" />
            <property name="text" value="name" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140213401305">
            <property name="allowEmptyText" value="true" />
            <property name="writable" value="true" />
            <property name="noTargetText" value="&lt;auto&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902779366">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902779367">
            <property name="selectable" value="false" />
            <property name="text" value="text*" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902779368">
            <property name="textBgColor" value="yellow" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <property name="textBgColorSelected" value="cyan" />
            <link role="relationDeclaration" targetNodeId="2.1082638248796" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080754563273">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080754563274">
            <property name="selectable" value="false" />
            <property name="text" value="selectable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1083935157114">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389214266" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080754563277">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080754563278">
            <property name="selectable" value="false" />
            <property name="text" value="editable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1083932224688">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1079353555534" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902761764">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902761765">
            <property name="selectable" value="false" />
            <property name="text" value="attracts focus" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902761766">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130859485024" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139313523459">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139313041650" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551019355">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140037015120">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140037015121">
            <property name="selectable" value="false" />
            <property name="text" value="action map" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140037015122">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139959269582" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140037015123">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140037015124">
                <property name="drawBorder" value="true" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1081341042318">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1081341042319">
            <property name="selectable" value="false" />
            <property name="text" value="keymap" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1081341042320">
            <property name="drawBorder" value="true" />
            <link role="editorComponent" targetNodeId="1081339484984" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140814155282">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140814155283">
            <property name="selectable" value="false" />
            <property name="text" value="r-transform anchor" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140814155284">
            <link role="relationDeclaration" targetNodeId="2.1140813989553" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164826962005">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164826962006">
            <property name="selectable" value="false" />
            <property name="text" value="menu" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1164826962007">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1164826688380" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158611584852">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080754563287">
          <property name="text" value="adornments:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902800981">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902800982">
            <property name="selectable" value="false" />
            <property name="text" value="draw border" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902800983">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1078832671094" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902800984">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902800985">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902800986">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902800987">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902800988">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902800989">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902821118">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902821119">
            <property name="selectable" value="false" />
            <property name="text" value="font style" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902821120">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512758" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902821121">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902821122">
            <property name="selectable" value="false" />
            <property name="text" value="font size" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902821123">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512759" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902821124">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902821125">
            <property name="selectable" value="false" />
            <property name="text" value="underlined" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902821126">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130836394969" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139251951376">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139246918944" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551026711">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088161738867">
          <property name="text" value="query methods:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902834962">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902834963">
            <property name="selectable" value="false" />
            <property name="text" value="condition" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1145902834964">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1142887637401" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1080757525329">
    <property name="name" value="CellModel_Property_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1073389658414" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080757525334">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717146663">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140223082035">
        <property name="noTargetText" value="&lt;no property&gt;" />
        <property name="drawBorder" value="true" />
        <link role="relationDeclaration" targetNodeId="2.1073389964684" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140223082034">
          <link role="conceptDeclaration" targetNodeId="8.1071489288299" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140223090803">
            <property name="noTargetText" value="&lt;no name&gt;" />
            <property name="readOnly" value="true" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717151805">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080757525338">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080757525339">
        <property name="text" value="&lt; property cell &gt;" />
        <property name="name" value="headerCell" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080757525340">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080757525341">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080757525342">
            <property name="selectable" value="false" />
            <property name="text" value="property" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140223255594">
            <property name="noTargetText" value="&lt;no property&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389964684" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140223255595">
              <link role="conceptDeclaration" targetNodeId="8.1071489288299" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140223255596">
                <property name="noTargetText" value="&lt;no name&gt;" />
                <property name="readOnly" value="true" />
                <property name="drawBorder" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1082641826609">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1082641826610">
            <property name="selectable" value="false" />
            <property name="text" value="text*" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1082641826611">
            <property name="allowEmptyText" value="true" />
            <property name="textBgColor" value="yellow" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <property name="textBgColorSelected" value="cyan" />
            <link role="relationDeclaration" targetNodeId="2.1139852716018" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080757525345">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080757525346">
            <property name="selectable" value="false" />
            <property name="text" value="name" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140213379918">
            <property name="allowEmptyText" value="true" />
            <property name="writable" value="true" />
            <property name="noTargetText" value="&lt;auto&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080757525353">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080757525354">
            <property name="selectable" value="false" />
            <property name="text" value="selectable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1083935157115">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389214266" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080757525357">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080757525358">
            <property name="selectable" value="false" />
            <property name="text" value="editable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1083932118890">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1079353555534" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902864425">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902864426">
            <property name="selectable" value="false" />
            <property name="text" value="attracts focus" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902864427">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130859485024" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139313534810">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139313041650" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088420198843">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088420198844">
            <property name="selectable" value="false" />
            <property name="text" value="R/O" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1088420198845">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1140017977771" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080758779744">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080758779745">
            <property name="selectable" value="false" />
            <property name="text" value="allow empty" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1083950115891">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1140114345053" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138332093292">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902887199">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902887200">
            <property name="selectable" value="false" />
            <property name="text" value="layout constraint " />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902887201">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1129573164669" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138332096030">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140037002438">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140037002439">
            <property name="selectable" value="false" />
            <property name="text" value="action map" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140037002440">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139959269582" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140037002441">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140037002442">
                <property name="drawBorder" value="true" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1081341073743">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1081341073744">
            <property name="selectable" value="false" />
            <property name="text" value="keymap" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1081341073745">
            <property name="drawBorder" value="true" />
            <link role="editorComponent" targetNodeId="1081339484984" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140814159117">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140814159118">
            <property name="selectable" value="false" />
            <property name="text" value="r-transform anchor" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140814159119">
            <link role="relationDeclaration" targetNodeId="2.1140813989553" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164827024298">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164827024299">
            <property name="selectable" value="false" />
            <property name="text" value="menu" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1164827024300">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1164826688380" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138332098048">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080757525367">
          <property name="text" value="adornments:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902907769">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902907770">
            <property name="selectable" value="false" />
            <property name="text" value="draw border" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902907771">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1078832671094" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902907772">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902907773">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902907774">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902907775">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902907776">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902907777">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902907778">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902907779">
            <property name="selectable" value="false" />
            <property name="text" value="font style" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902907780">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512758" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902907781">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902907782">
            <property name="selectable" value="false" />
            <property name="text" value="font size" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902907783">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512759" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902907784">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902907785">
            <property name="selectable" value="false" />
            <property name="text" value="underlined" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902907786">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130836394969" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139252052936">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139246918944" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138332101973">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088161828878">
          <property name="text" value="query methods:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902925686">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902925687">
            <property name="selectable" value="false" />
            <property name="text" value="condition" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1145902925688">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1142887637401" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1080832307609">
    <property name="name" value="CellModel_RefNode_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1073389882823" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080832307620">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717163182">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140223719665">
        <property name="noTargetText" value="&lt;no link&gt;" />
        <property name="drawBorder" value="true" />
        <link role="relationDeclaration" targetNodeId="2.1073389882824" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140223719664">
          <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140223741229">
            <property name="noTargetText" value="&lt;no role&gt;" />
            <property name="readOnly" value="true" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="8.1071599776563" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717169105">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080832307624">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080832307625">
        <property name="text" value="&lt; ref.node cell &gt;" />
        <property name="name" value="headerCell" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080832307626">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080832307627">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080832307628">
            <property name="selectable" value="false" />
            <property name="text" value="link" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140223814274">
            <property name="noTargetText" value="&lt;no link&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389882824" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140223814275">
              <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140223814276">
                <property name="noTargetText" value="&lt;no role&gt;" />
                <property name="readOnly" value="true" />
                <property name="drawBorder" value="true" />
                <link role="relationDeclaration" targetNodeId="8.1071599776563" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1138332171058">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138332171059">
            <property name="selectable" value="false" />
            <property name="text" value="text*" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1138332171060">
            <property name="allowEmptyText" value="true" />
            <property name="textBgColor" value="yellow" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <property name="textBgColorSelected" value="cyan" />
            <link role="relationDeclaration" targetNodeId="2.1139852716018" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080832307631">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080832307632">
            <property name="selectable" value="false" />
            <property name="text" value="name" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140213349414">
            <property name="allowEmptyText" value="true" />
            <property name="writable" value="true" />
            <property name="noTargetText" value="&lt;auto&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080832307639">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080832307640">
            <property name="selectable" value="false" />
            <property name="text" value="selectable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1083935157116">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389214266" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903112426">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903112427">
            <property name="selectable" value="false" />
            <property name="text" value="attracts focus" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903112428">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130859485024" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139313567410">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139313041650" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138332010336">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903121498">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903121499">
            <property name="selectable" value="false" />
            <property name="text" value="layout constraint " />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903121500">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1129573164669" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138332008130">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140037110920">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140037110921">
            <property name="selectable" value="false" />
            <property name="text" value="action map" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140037110922">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139959269582" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140037110923">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140037110924">
                <property name="drawBorder" value="true" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1081341154859">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1081341154860">
            <property name="selectable" value="false" />
            <property name="text" value="keymap" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1081341154861">
            <property name="drawBorder" value="true" />
            <link role="editorComponent" targetNodeId="1081339484984" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140814174760">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140814174761">
            <property name="selectable" value="false" />
            <property name="text" value="r-transform anchor" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140814174762">
            <link role="relationDeclaration" targetNodeId="2.1140813989553" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164827045451">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164827045452">
            <property name="selectable" value="false" />
            <property name="text" value="menu" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1164827045453">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1164826688380" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138332005658">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080832307661">
          <property name="text" value="adornments:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903133896">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903133897">
            <property name="selectable" value="false" />
            <property name="text" value="draw border" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903133898">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1078832671094" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903133899">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903133900">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903133901">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903133902">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903133903">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903133904">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903133905">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903133906">
            <property name="selectable" value="false" />
            <property name="text" value="font style" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903133907">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512758" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903133908">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903133909">
            <property name="selectable" value="false" />
            <property name="text" value="font size" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903133910">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512759" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903133911">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903133912">
            <property name="selectable" value="false" />
            <property name="text" value="underlined" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903133913">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130836394969" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088162265431">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088162265432">
          <property name="text" value="query methods:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903147156">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903147157">
            <property name="selectable" value="false" />
            <property name="text" value="condition" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1145903147158">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1142887637401" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1080843012500">
    <property name="name" value="CellModel_RefNodeList_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1073390211982" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080843012509">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717179747">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080843512781">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080843512782">
          <property name="name" value="listBoxV" />
          <property name="vertical" value="true" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080900510500">
            <property name="vertical" value="false" />
            <property name="drawBorder" value="true" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080904975609">
              <property name="selectable" value="false" />
              <property name="text" value="%" />
              <property name="drawBorder" value="true" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140223546426">
              <property name="noTargetText" value="&lt;no link&gt;" />
              <property name="drawBorder" value="true" />
              <link role="relationDeclaration" targetNodeId="2.1073390211987" />
              <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140223546427">
                <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
                <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140223546428">
                  <property name="noTargetText" value="&lt;no role&gt;" />
                  <property name="readOnly" value="true" />
                  <property name="drawBorder" value="true" />
                  <link role="relationDeclaration" targetNodeId="8.1071599776563" />
                </node>
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080905001517">
              <property name="selectable" value="false" />
              <property name="text" value="%" />
              <property name="drawBorder" value="true" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080906307670">
            <property name="vertical" value="false" />
            <property name="drawBorder" value="true" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080906307671">
              <property name="text" value="/empty cell:" />
              <property name="drawBorder" value="true" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1080906307672">
              <property name="noTargetText" value="&lt;default&gt;" />
              <property name="drawBorder" value="true" />
              <link role="relationDeclaration" targetNodeId="2.1140524464359" />
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1146616661898">
            <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146616661899">
              <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1146616663150">
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146616666074">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1146616664761" />
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146616667607">
                    <link role="property" targetNodeId="2.1140524450554" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080843512783">
          <property name="name" value="listBoxH" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080906159695">
            <property name="vertical" value="false" />
            <property name="drawBorder" value="true" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080906159696">
              <property name="selectable" value="false" />
              <property name="text" value="%" />
              <property name="drawBorder" value="true" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140223476067">
              <property name="noTargetText" value="&lt;no link&gt;" />
              <property name="drawBorder" value="true" />
              <link role="relationDeclaration" targetNodeId="2.1073390211987" />
              <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140223476066">
                <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
                <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140223497788">
                  <property name="noTargetText" value="&lt;no role&gt;" />
                  <property name="readOnly" value="true" />
                  <property name="drawBorder" value="true" />
                  <link role="relationDeclaration" targetNodeId="8.1071599776563" />
                </node>
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080906159698">
              <property name="selectable" value="false" />
              <property name="text" value="%" />
              <property name="drawBorder" value="true" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080906159699">
              <property name="text" value="/empty cell:" />
              <property name="drawBorder" value="true" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1080906159700">
              <property name="noTargetText" value="&lt;default&gt;" />
              <property name="drawBorder" value="true" />
              <link role="relationDeclaration" targetNodeId="2.1140524464359" />
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1146618732003">
            <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146618732004">
              <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1146618733458">
                <node role="expression" type="jetbrains.mps.baseLanguage.NotExpression" id="1146618736897">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146618743275">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1146618741946" />
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146618744839">
                      <link role="property" targetNodeId="2.1140524450554" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717190546">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080843012513">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080843012514">
        <property name="text" value="&lt; ref.node list cell &gt;" />
        <property name="name" value="headerCell" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080843012515">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080843012516">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080843012517">
            <property name="selectable" value="false" />
            <property name="text" value="link" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140223570204">
            <property name="noTargetText" value="&lt;no link&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073390211987" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140223570205">
              <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140223570206">
                <property name="noTargetText" value="&lt;no role&gt;" />
                <property name="readOnly" value="true" />
                <property name="drawBorder" value="true" />
                <link role="relationDeclaration" targetNodeId="8.1071599776563" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080843012520">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080843012521">
            <property name="selectable" value="false" />
            <property name="text" value="name" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140213373711">
            <property name="allowEmptyText" value="true" />
            <property name="writable" value="true" />
            <property name="noTargetText" value="&lt;auto&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080843012528">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080843012529">
            <property name="selectable" value="false" />
            <property name="text" value="selectable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1083935157117">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389214266" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903026562">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903026563">
            <property name="selectable" value="false" />
            <property name="text" value="attracts focus" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903026564">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130859485024" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139313556246">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139313041650" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080906453954">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080906453955">
            <property name="selectable" value="false" />
            <property name="text" value="vertical" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1080906453957">
            <property name="editable" value="true" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389446425" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080906453958">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080906453959">
            <property name="selectable" value="false" />
            <property name="text" value="grid layout" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1080906453961">
            <property name="editable" value="true" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389446426" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1106272155736">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1106272155737">
            <property name="selectable" value="false" />
            <property name="text" value="cell layout" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1106272155738">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1140524464360" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139416917944">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139416928164">
            <property name="selectable" value="false" />
            <property name="text" value="uses braces" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139416951713">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1140524450556" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1160590150777">
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1160590215482">
            <property name="text" value="uses folding" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1160590250312">
            <link role="relationDeclaration" targetNodeId="2.1160590307797" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1129573418833">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903046509">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903046510">
            <property name="selectable" value="false" />
            <property name="text" value="layout constraint " />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903046511">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1129573164669" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080906650781">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1154565916879">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1154565916880">
            <property name="selectable" value="false" />
            <property name="text" value="action map" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1154565916881">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139959269582" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1154565916882">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1154565916883">
                <property name="drawBorder" value="true" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1154565916884">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1154565916885">
            <property name="selectable" value="false" />
            <property name="text" value="keymap" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1154565916886">
            <property name="drawBorder" value="false" />
            <link role="editorComponent" targetNodeId="1081339484984" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1085052976153">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1085052976154">
          <property name="text" value="list element:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1085052976155">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1085052976156">
            <property name="selectable" value="false" />
            <property name="text" value="separator" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1085052976157">
            <property name="allowEmptyText" value="true" />
            <property name="textBgColor" value="yellow" />
            <property name="noTargetText" value="&lt;no separator&gt;" />
            <property name="drawBorder" value="true" />
            <property name="textBgColorSelected" value="cyan" />
            <link role="relationDeclaration" targetNodeId="2.1140524450557" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1156252811572">
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1156252814527">
            <property name="text" value="separator constraint" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1156252995206">
            <link role="relationDeclaration" targetNodeId="2.1156252885376" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145360809953">
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145360813767">
            <property name="text" value="reverse order" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145360824691">
            <link role="relationDeclaration" targetNodeId="2.1145360728033" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176897923832">
          <property name="vertical" value="false" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176897923833">
            <property name="text" value="element factory" />
            <property name="drawBorder" value="true" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176897931485">
            <property name="noTargetText" value="&lt;no factory&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1176897874615" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1173181621064">
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1173181621065">
            <property name="selectable" value="false" />
            <property name="text" value="element action map" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1173181621066">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1173177718857" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1173181621067">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1173181621068">
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1175099402799">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1175099402800">
            <property name="selectable" value="false" />
            <property name="text" value="element menu" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1175099402801">
            <property name="noTargetText" value="&lt;default&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1165347032372" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080843012541">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080843012542">
          <property name="text" value="adornments:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903074673">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903074674">
            <property name="selectable" value="false" />
            <property name="text" value="draw border" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903074675">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1078832671094" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903074676">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903074677">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903074678">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903074679">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903074680">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903074681">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903074682">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903074683">
            <property name="selectable" value="false" />
            <property name="text" value="font style" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903074684">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512758" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903074685">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903074686">
            <property name="selectable" value="false" />
            <property name="text" value="font size" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903074687">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="allowEmptyText" value="true" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512759" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903074688">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903074689">
            <property name="selectable" value="false" />
            <property name="text" value="underlined" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145903074690">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130836394969" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088162160293">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088162160294">
          <property name="text" value="query methods:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903088870">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903088871">
            <property name="selectable" value="false" />
            <property name="text" value="condition" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1145903088872">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1142887637401" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1080925357593">
    <property name="name" value="EditorCellModel_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1073389214265" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1080925357596">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1080925357597">
        <property name="text" value="&lt; abstract cell &gt;" />
        <property name="name" value="headerCell" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="true" />
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Error" id="1080925357598">
      <property name="text" value="&lt;choose cell model&gt;" />
      <property name="drawBorder" value="true" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1081293221911">
    <property name="name" value="CellKeyMapDeclaration_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1081293058843" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1081293243883">
      <property name="name" value="nodeBox" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1081293635369">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1081293831246">
          <property name="text" value="keymap" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1136931207356">
          <property name="noTargetText" value="&lt;no name&gt;" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149937620812">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149937650460">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149937653212">
          <property name="text" value="everyModel" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1149937681641">
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="2.1149937560128" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1136930845410">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139446249848">
        <property name="name" value="cellsLayoutPanel" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139446249849">
          <property name="selectable" value="false" />
          <property name="text" value="applicable concept:" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1139446249850">
          <property name="noTargetText" value="&lt;any&gt;" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="2.1139445935125" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1139446249851">
            <link role="conceptDeclaration" targetNodeId="8.1071489090640" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139446249852">
              <property name="textFgColor" value="DARK_MAGENTA" />
              <property name="readOnly" value="true" />
              <property name="noTargetText" value="&lt;no name&gt;" />
              <property name="drawBorder" value="true" />
              <link role="relationDeclaration" targetNodeId="3.1169194664001" />
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139446274558">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1136930869381">
        <property name="selectable" value="false" />
        <property name="text" value="keymap items:" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1136930914727">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNodeList" id="1136930934885">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="2.1136930944870" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.EditorComponentDeclaration" id="1081339484984">
    <property name="name" value="_CellKeyMapLnk_Component" />
    <link role="conceptDeclaration" targetNodeId="2.1073389214265" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140223991344">
      <property name="noTargetText" value="&lt;default&gt;" />
      <property name="drawBorder" value="true" />
      <link role="relationDeclaration" targetNodeId="2.1081339532145" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140223991345">
        <link role="conceptDeclaration" targetNodeId="2.1081293058843" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140223996488">
          <property name="noTargetText" value="&lt;no name&gt;" />
          <property name="readOnly" value="true" />
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1088013642258">
    <property name="name" value="CellModel_RefCell_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1088013125922" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088068732167">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717200032">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088499484891">
        <property name="text" value="%" />
        <property name="drawBorder" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140223272145">
        <property name="noTargetText" value="&lt;no link&gt;" />
        <property name="drawBorder" value="true" />
        <link role="relationDeclaration" targetNodeId="2.1088013239202" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140223272144">
          <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140223279132">
            <property name="noTargetText" value="&lt;no role&gt;" />
            <property name="readOnly" value="true" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="8.1071599776563" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088499484893">
        <property name="text" value="%" />
        <property name="drawBorder" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1088499484894">
        <property name="noTargetText" value="&lt;press ctrl-space&gt;" />
        <property name="cellNodeFilter_Id" value="CellModel_RefCell_EffectiveConceptDeclaration" />
        <property name="drawBorder" value="true" />
        <link role="relationDeclaration" targetNodeId="2.1088186146602" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1146619345990">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146619345991">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1146619347257">
              <node role="expression" type="jetbrains.mps.baseLanguage.NotEqualsExpression" id="1146619356512">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1146619360421" />
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146619350073">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1146619349025" />
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SLinkAccess" id="1146619354589">
                    <link role="link" targetNodeId="2.1088013239202" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717206314">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088069661254">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088069661255">
        <property name="text" value="&lt; ref.cell cell &gt;" />
        <property name="name" value="headerCell" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088069661256">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088069661257">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088069661258">
            <property name="selectable" value="false" />
            <property name="text" value="link" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140223422095">
            <property name="noTargetText" value="&lt;no link&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1088013239202" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140223422096">
              <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140223422097">
                <property name="noTargetText" value="&lt;no role&gt;" />
                <property name="readOnly" value="true" />
                <property name="drawBorder" value="true" />
                <link role="relationDeclaration" targetNodeId="8.1071599776563" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088446348285">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088446348286">
            <property name="selectable" value="false" />
            <property name="text" value="effective type" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1147110301563">
            <property name="noTargetText" value="error! no editor component" />
            <link role="relationDeclaration" targetNodeId="2.1088186146602" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1147110301564">
              <link role="conceptDeclaration" targetNodeId="2.1088185857835" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1147110319487">
                <property name="noTargetText" value="error! no associated concept" />
                <link role="relationDeclaration" targetNodeId="2.1166049300910" />
                <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1147110319488">
                  <link role="conceptDeclaration" targetNodeId="8.1071489090640" />
                  <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1147110325022">
                    <property name="noTargetText" value="&lt;no name&gt;" />
                    <link role="relationDeclaration" targetNodeId="3.1169194664001" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1138332625583">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138332625584">
            <property name="selectable" value="false" />
            <property name="text" value="text*" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1138332625585">
            <property name="allowEmptyText" value="true" />
            <property name="textBgColor" value="yellow" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <property name="textBgColorSelected" value="cyan" />
            <link role="relationDeclaration" targetNodeId="2.1139852716018" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088069661260">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088069661261">
            <property name="selectable" value="false" />
            <property name="text" value="name" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140213328039">
            <property name="allowEmptyText" value="true" />
            <property name="writable" value="true" />
            <property name="noTargetText" value="&lt;auto&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088069661269">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088069661270">
            <property name="selectable" value="false" />
            <property name="text" value="selectable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1088069661271">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389214266" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902951148">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902951149">
            <property name="selectable" value="false" />
            <property name="text" value="attracts focus" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902951150">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130859485024" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139313542348">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139313041650" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1129573410492">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902962329">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902962330">
            <property name="selectable" value="false" />
            <property name="text" value="layout constraint " />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902962331">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1129573164669" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138332645136">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140037086972">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140037086973">
            <property name="selectable" value="false" />
            <property name="text" value="action map" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140037086974">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139959269582" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140037086975">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140037086976">
                <property name="drawBorder" value="true" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088069661276">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088069661277">
            <property name="selectable" value="false" />
            <property name="text" value="keymap" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1088069661278">
            <property name="drawBorder" value="true" />
            <link role="editorComponent" targetNodeId="1081339484984" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140814163607">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140814163608">
            <property name="selectable" value="false" />
            <property name="text" value="r-transform anchor" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140814163609">
            <link role="relationDeclaration" targetNodeId="2.1140813989553" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164827035429">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164827035430">
            <property name="selectable" value="false" />
            <property name="text" value="menu" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1164827035431">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1164826688380" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138332647811">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088069661288">
          <property name="text" value="adornments:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902985699">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902985700">
            <property name="selectable" value="false" />
            <property name="text" value="draw border" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902985701">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1078832671094" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902985702">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902985703">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902985704">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902985705">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902985706">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902985707">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902985708">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902985709">
            <property name="selectable" value="false" />
            <property name="text" value="font style" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902985710">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512758" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902985711">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902985712">
            <property name="selectable" value="false" />
            <property name="text" value="font size" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902985713">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512759" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902985714">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902985715">
            <property name="selectable" value="false" />
            <property name="text" value="underlined" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902985716">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130836394969" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1138332653926">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088161886000">
          <property name="text" value="query methods:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145903006944">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145903006945">
            <property name="selectable" value="false" />
            <property name="text" value="condition" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1145903006946">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1142887637401" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1088186441776">
    <property name="name" value="InlineEditorComponent_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1088185857835" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088186441777">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088420259174">
        <property name="selectable" value="true" />
        <property name="text" value="-&gt;" />
        <property name="drawBorder" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1140213009716">
        <property name="drawBorder" value="true" />
        <link role="relationDeclaration" targetNodeId="2.1080736633877" />
        <link role="keyMap" targetNodeId="1130860818891" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1088613173863">
    <property name="name" value="CellModel_Alternation_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1088612959204" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088613173864">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717215565">
        <property name="drawBorder" value="true" />
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088613626183">
        <property name="cellBackground" value="query" />
        <property name="name" value="nodeBoxV" />
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088613537508">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088613537509">
            <property name="text" value="true:" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1088613537510">
            <property name="noTargetText" value="&lt;no cell model&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1088612958265" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088613626184">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088613626185">
            <property name="text" value="false:" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1088613626186">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1088612973955" />
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1146616693936">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146616693937">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1146616695172">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146616700300">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1146616698815" />
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146616701739">
                  <link role="property" targetNodeId="2.1088613081987" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="cellBackgroundFunction" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_Color" id="1176889163468">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176889163469">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176889164296">
              <node role="expression" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1176889164297">
                <link role="classConcept" targetNodeId="1176888877514" resolveInfo="_EditorUtil" />
                <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1176889164298" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088613626187">
        <property name="cellBackground" value="query" />
        <property name="name" value="nodeBoxH" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088613754581">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088613754582">
            <property name="text" value="true:" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1088613754583">
            <property name="noTargetText" value="&lt;no cell model&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1088612958265" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088613754584">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088613754585">
            <property name="text" value="false:" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1088613754586">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1088612973955" />
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1146618773637">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146618773638">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1146618775045">
              <node role="expression" type="jetbrains.mps.baseLanguage.NotExpression" id="1146618781813">
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146618790316">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1146618788955" />
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146618791910">
                    <link role="property" targetNodeId="2.1088613081987" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="cellBackgroundFunction" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_Color" id="1176889171834">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176889171835">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176889172533">
              <node role="expression" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1176889172534">
                <link role="classConcept" targetNodeId="1176888877514" resolveInfo="_EditorUtil" />
                <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1176889172535" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717222675">
        <property name="drawBorder" value="true" />
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088613801150">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088613895666">
        <property name="text" value="&lt; cell alternation &gt;" />
        <property name="name" value="headerCell" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088613895667">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="gridLayout" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088613895668">
          <property name="selectable" value="false" />
          <property name="drawBorder" value="true" />
          <property name="gridLayout" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088613895669">
            <property name="selectable" value="false" />
            <property name="text" value="name" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140213363203">
            <property name="allowEmptyText" value="true" />
            <property name="writable" value="true" />
            <property name="noTargetText" value="&lt;auto&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088613895671">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088613895672">
            <property name="selectable" value="false" />
            <property name="text" value="vertical" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1088613895673">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1088613081987" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139235496113">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139235496114">
            <property name="selectable" value="false" />
            <property name="text" value="attracts focus" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139235496115">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130859485024" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139313440501">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139313041650" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1129573238125">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1129573248173">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1129573252206">
            <property name="selectable" value="false" />
            <property name="text" value="layout constraint " />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1129573260489">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1129573164669" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145901525155">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140037130362">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140037130363">
            <property name="selectable" value="false" />
            <property name="text" value="action map" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140037130364">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139959269582" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140037130365">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140037130366">
                <property name="drawBorder" value="true" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1088613895678">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088613895679">
            <property name="selectable" value="false" />
            <property name="text" value="keymap" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1088613895680">
            <property name="drawBorder" value="true" />
            <link role="editorComponent" targetNodeId="1081339484984" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140814099888">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140814099889">
            <property name="selectable" value="false" />
            <property name="text" value="r-transform anchor" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140814099890">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1140813989553" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165427529446">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165427529447">
            <property name="selectable" value="false" />
            <property name="text" value="menu" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165427529448">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1164826688380" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145901527487">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1101479171696">
          <property name="text" value="adornments:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145901619026">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145901619027">
            <property name="selectable" value="false" />
            <property name="text" value="draw border" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145901619028">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1078832671094" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145901619029">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145901619030">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145901619031">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145901619032">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145901619033">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145901619034">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145901529116">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1088613895682">
          <property name="text" value="query methods:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145918665547">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145918665548">
            <property name="selectable" value="false" />
            <property name="text" value="alternation cond." />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1145918665549">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1145918517974" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145901670652">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145901670653">
            <property name="selectable" value="false" />
            <property name="text" value="condition" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1145901670654">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1142887637401" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1103016650847">
    <property name="name" value="CellModel_JComponent_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1103016434866" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1103016939596">
      <property name="text" value="$swing component$" />
      <property name="drawBorder" value="false" />
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1103016682285">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176475173506">
        <property name="text" value="component provider:" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176475178055">
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176475178947">
          <property name="text" value="  " />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176475181606">
          <link role="relationDeclaration" targetNodeId="2.1176475119347" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1106271535824">
    <link role="conceptDeclaration" targetNodeId="2.1106270637846" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1106271586309">
      <property name="text" value="Flow" />
      <property name="drawBorder" value="true" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1106271583784">
    <link role="conceptDeclaration" targetNodeId="2.1106270549637" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1106271613640">
      <property name="text" value="Horizontal" />
      <property name="drawBorder" value="true" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1106271611316">
    <link role="conceptDeclaration" targetNodeId="2.1106270571710" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1106271634762">
      <property name="text" value="Vertical" />
      <property name="drawBorder" value="true" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMapDeclaration" id="1130860818891">
    <property name="name" value="EditorCellModel_KeyMap" />
    <link role="applicableConcept" targetNodeId="2.1073389214265" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMapItem" id="1146852828959">
      <property name="description" value="toggle cell focus policy [attracts focus]/[no attraction]" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMapKeystroke" id="1146852828960">
        <property name="keycode" value="VK_F" />
        <property name="modifiers" value="ctrl+shift" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMap_ExecuteFunction" id="1146852828963">
        <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146852828964">
          <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1146853153327">
            <node role="condition" type="jetbrains.mps.baseLanguage.NotExpression" id="1146853545217">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146853546440">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146853546441">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMap_FunctionParm_selectedNode" id="1159392389133" />
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146853546443">
                    <link role="property" targetNodeId="2.1130859485024" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1146853546444">
                  <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146853546445">
                    <link role="enumMember" targetNodeId="2.1130926591919" />
                  </node>
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1146853153329">
              <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146853190101">
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146853196371">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146853192213">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMap_FunctionParm_selectedNode" id="1159392389151" />
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146853194479">
                      <link role="property" targetNodeId="2.1130859485024" />
                    </node>
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1146853200575">
                    <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146853210561">
                      <link role="enumMember" targetNodeId="2.1130926591919" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.BlockStatement" id="1146853224501">
              <node role="statements" type="jetbrains.mps.baseLanguage.StatementList" id="1146853224502">
                <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146853228284">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146853243351">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146853230317">
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMap_FunctionParm_selectedNode" id="1159392389131" />
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146853241396">
                        <link role="property" targetNodeId="2.1130859485024" />
                      </node>
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1146853246680">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146853254885">
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
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMapItem" id="1146853272056">
      <property name="description" value="toggle cell focus policy [first editable]/[no attraction]" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMapKeystroke" id="1146853272057">
        <property name="keycode" value="VK_F" />
        <property name="modifiers" value="ctrl+alt+shift" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMap_ExecuteFunction" id="1146853272069">
        <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146853272070">
          <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1146853272078">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1146853272085">
              <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146853272086">
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146853272087">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146853272088">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMap_FunctionParm_selectedNode" id="1159392411533" />
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146853272090">
                      <link role="property" targetNodeId="2.1130859485024" />
                    </node>
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1146853272091">
                    <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146853272092">
                      <link role="enumMember" targetNodeId="2.1130926603060" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.BlockStatement" id="1146853272093">
              <node role="statements" type="jetbrains.mps.baseLanguage.StatementList" id="1146853272094">
                <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1146853272095">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146853272096">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146853272097">
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMap_FunctionParm_selectedNode" id="1159392411531" />
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146853272099">
                        <link role="property" targetNodeId="2.1130859485024" />
                      </node>
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1146853272100">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146853272101">
                        <link role="enumMember" targetNodeId="2.1130926557292" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.NotExpression" id="1146853567561">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146853567562">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146853567563">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMap_FunctionParm_selectedNode" id="1159392411529" />
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146853567565">
                    <link role="property" targetNodeId="2.1130859485024" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1146853567566">
                  <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146853567567">
                    <link role="enumMember" targetNodeId="2.1130926603060" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMapItem" id="1167849503076">
      <property name="description" value="toggle [selectable]/[not selectable]" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMapKeystroke" id="1167849503077">
        <property name="keycode" value="VK_S" />
        <property name="modifiers" value="ctrl+alt" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMap_ExecuteFunction" id="1167849503078">
        <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1167849503079">
          <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1167849774627">
            <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1167849802367">
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1167849797693">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMap_FunctionParm_selectedNode" id="1167849795036" />
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1167849799366">
                  <link role="property" targetNodeId="2.1073389214266" />
                </node>
              </node>
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1167849804931">
                <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1167849804932">
                  <link role="enumMember" targetNodeId="2.1083928804392" />
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1167849774629">
              <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1167849821917">
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1167849825921">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1167849821935">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMap_FunctionParm_selectedNode" id="1167849821918" />
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1167849825889">
                      <link role="property" targetNodeId="2.1073389214266" />
                    </node>
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1167849827985">
                    <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1167849834143">
                      <link role="enumMember" targetNodeId="2.1083928804391" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.BlockStatement" id="1167849845567">
              <node role="statements" type="jetbrains.mps.baseLanguage.StatementList" id="1167849845568">
                <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1167849849584">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1167849857885">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1167849853461">
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.CellKeyMap_FunctionParm_selectedNode" id="1167849849585" />
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1167849856353">
                        <link role="property" targetNodeId="2.1073389214266" />
                      </node>
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_SetOperation" id="1167849859777">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1167849872498">
                        <link role="enumMember" targetNodeId="2.1083928804392" />
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
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1134380257602">
    <link role="conceptDeclaration" targetNodeId="2.1134379236839" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1134380265448">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1134380307654">
        <property name="selectable" value="false" />
        <property name="text" value="/&gt;" />
        <property name="drawBorder" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1134380270871">
        <property name="editable" value="false" />
        <property name="textBgColor" value="blue" />
        <property name="text" value="attributed property" />
        <property name="drawBorder" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1134380320860">
        <property name="selectable" value="false" />
        <property name="text" value="&lt;/" />
        <property name="drawBorder" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149850702900">
      <property name="vertical" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149850702901">
        <property name="text" value="&lt;attributed property cell&gt;" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149850702902">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149850702903">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149850702904">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1149850702905">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149850702906">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149850702907">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1149850702908">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1136564570821">
    <link role="conceptDeclaration" targetNodeId="2.1136564507907" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1136564583726">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1136564583727">
        <property name="selectable" value="false" />
        <property name="text" value="//&gt;" />
        <property name="drawBorder" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1136564583728">
        <property name="editable" value="false" />
        <property name="textBgColor" value="green" />
        <property name="text" value="attributed link" />
        <property name="drawBorder" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1136564583729">
        <property name="selectable" value="false" />
        <property name="text" value="&lt;//" />
        <property name="drawBorder" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149850641679">
      <property name="vertical" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149850660550">
        <property name="text" value="&lt;attributed link cell&gt;" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149850649317">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149850649320">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149850649321">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1149850649322">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149850649323">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149850649324">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1149850649325">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1136922903385">
    <link role="conceptDeclaration" targetNodeId="2.1136916919141" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1136922923309">
      <property name="usesBraces" value="false" />
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1136922951936">
        <property name="editable" value="false" />
        <property name="text" value="item" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1136923029235">
        <property name="usesBraces" value="true" />
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1141091442169">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1141091442170">
            <property name="text" value="description" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1141091442171">
            <property name="selectable" value="false" />
            <property name="text" value=":" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1141091442172">
            <property name="textFgColor" value="DARK_GREEN" />
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;no description&gt;" />
            <property name="fontStyle" value="BOLD" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="2.1136916941877" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1136923063955">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1136923068550">
            <property name="text" value="keystrokes" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1137122601801">
            <property name="selectable" value="false" />
            <property name="text" value=":" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNodeList" id="1136923090771">
            <property name="vertical" value="true" />
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="gridLayout" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1136916998332" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1141091456130">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1141091456131">
            <property name="text" value="caret policy" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1141091456132">
            <property name="selectable" value="false" />
            <property name="text" value=":" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1141091456133">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;no description&gt;" />
            <property name="fontStyle" value="BOLD" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="2.1141091278922" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1163507242019">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1163507247615">
            <property name="text" value="show in popup" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1163507257133">
            <property name="selectable" value="false" />
            <property name="text" value=":" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1163507260792">
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="2.1163507208434" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1136923130898">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1136923155712">
            <property name="text" value="is applicable" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1137122629181">
            <property name="selectable" value="false" />
            <property name="text" value=":" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1136923232095">
            <property name="noTargetText" value="&lt;always&gt;" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="2.1136917325338" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1136923426895">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1136923434927">
            <property name="text" value="execute" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1137122631855">
            <property name="selectable" value="false" />
            <property name="text" value=":" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1136923444616">
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="2.1136920925604" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1143573756406">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1136923501242">
    <link role="conceptDeclaration" targetNodeId="2.1136916976737" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1136923542661">
      <property name="usesBraces" value="true" />
      <property name="name" value="nodeBox" />
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1136923542662">
        <property name="selectable" value="false" />
        <property name="text" value="&lt;" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1136923542663">
        <property name="allowEmptyText" value="true" />
        <property name="textBgColor" value="yellow" />
        <property name="noTargetText" value="any" />
        <property name="drawBorder" value="false" />
        <property name="textBgColorSelected" value="cyan" />
        <link role="relationDeclaration" targetNodeId="2.1136923970223" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.CellMenuDescriptor" id="1164849330211">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.CellMenuPart_PropertyValues" id="1164849343182">
            <node role="valuesFunction" type="jetbrains.mps.bootstrap.editorLanguage.CellMenuPart_PropertyValues_GetValues" id="1164849353025">
              <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1164849353026">
                <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1164849353027">
                  <node role="expression" type="jetbrains.mps.baseLanguage.GenericNewExpression" id="1164849353028">
                    <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.ListCreatorWithInit" id="1164849353029">
                      <node role="elementType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1164849353030">
                        <link role="classifier" extResolveInfo="14.[Classifier]String" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164849353031">
                        <link role="variableDeclaration" extResolveInfo="16.static field ([Classifier]EditorCellKeyMap).([StaticFieldDeclaration]KEY_MODIFIERS_NONE : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                        <link role="classifier" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164849353032">
                        <link role="classifier" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                        <link role="variableDeclaration" extResolveInfo="16.static field ([Classifier]EditorCellKeyMap).([StaticFieldDeclaration]KEY_MODIFIERS_CTRL : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164849353033">
                        <link role="variableDeclaration" extResolveInfo="16.static field ([Classifier]EditorCellKeyMap).([StaticFieldDeclaration]KEY_MODIFIERS_ALT : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                        <link role="classifier" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164849353050">
                        <link role="variableDeclaration" extResolveInfo="16.static field ([Classifier]EditorCellKeyMap).([StaticFieldDeclaration]KEY_MODIFIERS_SHIFT : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                        <link role="classifier" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164849353051">
                        <link role="variableDeclaration" extResolveInfo="16.static field ([Classifier]EditorCellKeyMap).([StaticFieldDeclaration]KEY_MODIFIERS_CTRL_ALT : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                        <link role="classifier" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164849353052">
                        <link role="variableDeclaration" extResolveInfo="16.static field ([Classifier]EditorCellKeyMap).([StaticFieldDeclaration]KEY_MODIFIERS_CTRL_SHIFT : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                        <link role="classifier" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164849353053">
                        <link role="classifier" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                        <link role="variableDeclaration" extResolveInfo="16.static field ([Classifier]EditorCellKeyMap).([StaticFieldDeclaration]KEY_MODIFIERS_CTRL_ALT_SHIFT : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                      </node>
                      <node role="initValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164849353054">
                        <link role="variableDeclaration" extResolveInfo="16.static field ([Classifier]EditorCellKeyMap).([StaticFieldDeclaration]KEY_MODIFIERS_ALT_SHIFT : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                        <link role="classifier" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1136923542664">
        <property name="selectable" value="false" />
        <property name="text" value=" &gt; + &lt;" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1136923542665">
        <property name="textBgColor" value="yellow" />
        <property name="noTargetText" value="&lt;keycode&gt;" />
        <property name="drawBorder" value="false" />
        <property name="textBgColorSelected" value="cyan" />
        <link role="relationDeclaration" targetNodeId="2.1136923970224" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.CellMenuDescriptor" id="1164849004316">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.CellMenuPart_PropertyValues" id="1164849014504">
            <node role="valuesFunction" type="jetbrains.mps.bootstrap.editorLanguage.CellMenuPart_PropertyValues_GetValues" id="1164849028331">
              <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1164849028332">
                <node role="statement" type="jetbrains.mps.baseLanguage.LocalVariableDeclarationStatement" id="1164849028333">
                  <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.LocalVariableDeclaration" id="1164849028334">
                    <property name="name" value="keycodes" />
                    <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.ListType" id="1164849028335">
                      <node role="elementType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1164849028336">
                        <link role="classifier" extResolveInfo="14.[Classifier]String" />
                      </node>
                    </node>
                    <node role="initializer" type="jetbrains.mps.baseLanguage.GenericNewExpression" id="1164849028337">
                      <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.ListCreatorWithInit" id="1164849028338">
                        <node role="elementType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1164849028339">
                          <link role="classifier" extResolveInfo="14.[Classifier]String" />
                        </node>
                        <node role="initValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164849028340">
                          <link role="classifier" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                          <link role="variableDeclaration" extResolveInfo="16.static field ([Classifier]EditorCellKeyMap).([StaticFieldDeclaration]KEY_CODE_DIGIT : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                        </node>
                        <node role="initValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164849028341">
                          <link role="variableDeclaration" extResolveInfo="16.static field ([Classifier]EditorCellKeyMap).([StaticFieldDeclaration]KEY_CODE_LETTER : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                          <link role="classifier" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                        </node>
                        <node role="initValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164849028342">
                          <link role="variableDeclaration" extResolveInfo="16.static field ([Classifier]EditorCellKeyMap).([StaticFieldDeclaration]KEY_CODE_LETTER_OR_DIGIT : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                          <link role="classifier" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                        </node>
                        <node role="initValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164849028343">
                          <link role="variableDeclaration" extResolveInfo="16.static field ([Classifier]EditorCellKeyMap).([StaticFieldDeclaration]KEY_CODE_SPACE : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                          <link role="classifier" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                        </node>
                        <node role="initValue" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1164849028344">
                          <link role="classifier" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                          <link role="variableDeclaration" extResolveInfo="16.static field ([Classifier]EditorCellKeyMap).([StaticFieldDeclaration]KEY_CODE_CHAR : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.ExpressionStatement" id="1164849028345">
                  <node role="expression" type="jetbrains.mps.baseLanguage.ext.collections.lang.SequenceOperationExpression" id="1164849028346">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1164849028347">
                      <link role="variableDeclaration" targetNodeId="1164849028334" resolveInfo="keycodes" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.AddAllElementsOperation" id="1164849028348">
                      <node role="argument" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1164849028349">
                        <link role="classConcept" extResolveInfo="16.[Classifier]EditorCellKeyMap" />
                        <link role="baseMethodDeclaration" extResolveInfo="16.static method ([Classifier]EditorCellKeyMap).([StaticMethodDeclaration]getVirtualKeycodes() : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [List, &lt;jetbrains.mps.baseLanguage.types.classifier [String]&gt;]))" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1164849028350">
                  <node role="expression" type="jetbrains.mps.baseLanguage.LocalVariableReference" id="1164849028351">
                    <link role="variableDeclaration" targetNodeId="1164849028334" resolveInfo="keycodes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1136923542666">
        <property name="selectable" value="false" />
        <property name="text" value=" &gt;" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1137555282290">
    <link role="conceptDeclaration" targetNodeId="2.1137553248617" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1137555427555">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717232411">
        <link role="editorComponent" targetNodeId="1176716781495" resolveInfo="_OpenTag" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1137555500983">
        <property name="cellBackground" value="query" />
        <property name="noTargetText" value="&lt;choose property declaration&gt;" />
        <property name="drawBorder" value="true" />
        <link role="relationDeclaration" targetNodeId="2.1137553248621" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1137555500982">
          <link role="conceptDeclaration" targetNodeId="8.1105725006687" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1137555520594">
            <property name="noTargetText" value="&lt;no name&gt;" />
            <property name="readOnly" value="true" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
        <node role="cellBackgroundFunction" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_Color" id="1176889185745">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176889185746">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176889186616">
              <node role="expression" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1176889186617">
                <link role="classConcept" targetNodeId="1176888877514" resolveInfo="_EditorUtil" />
                <link role="baseMethodDeclaration" targetNodeId="1176888881562" resolveInfo="grayIfNotSelectable" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1176889186618" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1176717240099">
        <link role="editorComponent" targetNodeId="1176716904723" resolveInfo="_CloseTag" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1137633209013">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1137633209014">
        <property name="text" value="&lt; concept property cell &gt;" />
        <property name="name" value="headerCell" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1137633209015">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1137633209016">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1137633209017">
            <property name="selectable" value="false" />
            <property name="text" value="property" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1137633280382">
            <property name="noTargetText" value="&lt;choose property declaration&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1137553248621" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1137633280383">
              <link role="conceptDeclaration" targetNodeId="8.1105725006687" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1137633280384">
                <property name="noTargetText" value="&lt;no name&gt;" />
                <property name="readOnly" value="true" />
                <property name="drawBorder" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1137633209019">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1137633209020">
            <property name="selectable" value="false" />
            <property name="text" value="text*" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1137633209021">
            <property name="allowEmptyText" value="true" />
            <property name="textBgColor" value="yellow" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <property name="textBgColorSelected" value="cyan" />
            <link role="relationDeclaration" targetNodeId="2.1139852716018" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1137633209022">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1137633209023">
            <property name="selectable" value="false" />
            <property name="text" value="name" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140213394676">
            <property name="allowEmptyText" value="true" />
            <property name="writable" value="true" />
            <property name="noTargetText" value="&lt;auto&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="3.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1137633209025">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1137633209026">
            <property name="selectable" value="false" />
            <property name="text" value="selectable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1137633209027">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1073389214266" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1137633209028">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1137633209029">
            <property name="selectable" value="false" />
            <property name="text" value="editable" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1137633209030">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1079353555534" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902271771">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902271772">
            <property name="selectable" value="false" />
            <property name="text" value="attracts focus" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902271773">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130859485024" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139313478970">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139313041650" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1137633209037">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902289817">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902289818">
            <property name="selectable" value="false" />
            <property name="text" value="layout constraint " />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902289819">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1129573164669" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551108645">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140036939673">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140036939674">
            <property name="selectable" value="false" />
            <property name="text" value="action map" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140036939675">
            <property name="noTargetText" value="&lt;default&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139959269582" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140036939676">
              <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140036939677">
                <property name="drawBorder" value="true" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1137633209045">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1137633209046">
            <property name="selectable" value="false" />
            <property name="text" value="keymap" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1137633209047">
            <property name="drawBorder" value="true" />
            <link role="editorComponent" targetNodeId="1081339484984" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140814133487">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140814133488">
            <property name="selectable" value="false" />
            <property name="text" value="r-transform anchor" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140814133489">
            <link role="relationDeclaration" targetNodeId="2.1140813989553" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164826974136">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164826974137">
            <property name="selectable" value="false" />
            <property name="text" value="menu" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1164826974138">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1164826688380" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158610597744">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1137633209049">
          <property name="text" value="adornments:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902319356">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902319357">
            <property name="selectable" value="false" />
            <property name="text" value="draw border" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902319358">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1078832671094" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902319359">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902319360">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902319361">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902319362">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902319363">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902319364">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902319365">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902319366">
            <property name="selectable" value="false" />
            <property name="text" value="font style" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902319367">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512758" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902319368">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902319369">
            <property name="selectable" value="false" />
            <property name="text" value="font size" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902319370">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130426512759" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902319371">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902319372">
            <property name="selectable" value="false" />
            <property name="text" value="underlined" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1145902319373">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1130836394969" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139251636324">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1139246918944" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140551114341">
          <property name="name" value="separator" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1137633209075">
          <property name="text" value="query methods:" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902351413">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902351414">
            <property name="selectable" value="false" />
            <property name="text" value="condition" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1145902351415">
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1142887637401" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.EditorComponentDeclaration" id="1139246918944">
    <property name="name" value="_AbstractLabel_Colors_Component" />
    <link role="conceptDeclaration" targetNodeId="2.1079353555532" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139246957088">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="gridLayout" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139247019365">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139247019366">
          <property name="selectable" value="false" />
          <property name="text" value="text fg." />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139247019367">
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1101205477408" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Alternation" id="1139247077173">
        <property name="drawBorder" value="true" />
        <node role="ifFalseCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139250185704">
          <property name="text" value=" " />
          <property name="drawBorder" value="true" />
        </node>
        <node role="alternationCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1146619527626">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146619527627">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1146619529503">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146619552086">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146619543084">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1146619541864" />
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146619549757">
                    <link role="property" targetNodeId="2.1101205477408" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1146619555571">
                  <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146619555572">
                    <link role="enumMember" targetNodeId="2.1139246571096" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="ifTrueCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176889936134">
          <property name="vertical" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176889939246">
            <property name="text" value="fg. color query:" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176889945592">
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176889946469">
              <property name="text" value="  " />
              <property name="selectable" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176889948690">
              <property name="noTargetText" value="&lt;no query&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1176889772388" />
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139247019368">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139247019369">
          <property name="selectable" value="false" />
          <property name="text" value="text bg." />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139247019370">
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1079354087578" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Alternation" id="1139247111263">
        <property name="drawBorder" value="true" />
        <node role="ifFalseCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139250194220">
          <property name="text" value=" " />
          <property name="drawBorder" value="true" />
        </node>
        <node role="alternationCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1146619642214">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1146619642215">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1146619643638">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146619673314">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1146619649234">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1146619648093" />
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1146619670407">
                    <link role="property" targetNodeId="2.1079354087578" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1146619675862">
                  <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1146619675863">
                    <link role="enumMember" targetNodeId="2.1139246571096" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="ifTrueCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176889885700">
          <property name="vertical" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176889909348">
            <property name="text" value="bg. color query:" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176889913663">
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176889914540">
              <property name="text" value="  " />
              <property name="selectable" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176889917558">
              <property name="noTargetText" value="&lt;no query&gt;" />
              <link role="relationDeclaration" targetNodeId="2.1176810465151" />
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139247019371">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139247019372">
          <property name="selectable" value="false" />
          <property name="text" value="text bg.selected" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139247019373">
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1079354108907" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.EditorComponentDeclaration" id="1139313041650">
    <property name="name" value="_EditorCellModel_CellBackground_Component" />
    <link role="conceptDeclaration" targetNodeId="2.1073389214265" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139313070184">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="gridLayout" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139313199933">
        <property name="drawBorder" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139313199934">
          <property name="selectable" value="false" />
          <property name="text" value="cell background" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139313261957">
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1139312911783" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176810512644">
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176810515370">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <property name="text" value="cell background query:" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176810519669">
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176810521249">
            <property name="text" value="  " />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176810523735">
            <property name="noTargetText" value="&lt;no query&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1176810465151" />
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1176810566978">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176810566979">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176810567391">
              <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1176810567392">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1176810567393">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1176810567394" />
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1176810567395">
                    <link role="property" targetNodeId="2.1139312911783" />
                  </node>
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1176810567396">
                  <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1176810567397">
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
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1139532930462">
    <property name="name" value="CellActionMapDeclaration_Editor" />
    <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139532930463">
      <property name="name" value="nodeBox" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139532930464">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139532930465">
          <property name="text" value="action map" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139532930466">
          <property name="noTargetText" value="&lt;no name&gt;" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139532930469">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139532930470">
        <property name="name" value="cellsLayoutPanel" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139532930471">
          <property name="selectable" value="false" />
          <property name="text" value="applicable concept:" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1139532930472">
          <property name="noTargetText" value="&lt;any&gt;" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="2.1139535219968" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1139532930473">
            <link role="conceptDeclaration" targetNodeId="8.1071489090640" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139532930474">
              <property name="noTargetText" value="&lt;no name&gt;" />
              <property name="readOnly" value="true" />
              <property name="drawBorder" value="true" />
              <link role="relationDeclaration" targetNodeId="3.1169194664001" />
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139532930475">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139532930476">
        <property name="selectable" value="false" />
        <property name="text" value="actions:" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139532930477">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNodeList" id="1139532930478">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="2.1139535219969" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1139533175436">
    <link role="conceptDeclaration" targetNodeId="2.1139535280617" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139533175437">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139533175438">
        <property name="editable" value="false" />
        <property name="text" value="action" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139533204020">
        <property name="textFgColor" value="DARK_MAGENTA" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="2.1139535298778" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139533175439">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139537337310">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139537337311">
            <property name="text" value="description" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139537337312">
            <property name="selectable" value="false" />
            <property name="text" value=":" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139537337313">
            <property name="textFgColor" value="DARK_GREEN" />
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;no description&gt;" />
            <property name="fontStyle" value="BOLD" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="2.1139537298254" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139533175452">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139533175453">
            <property name="text" value="execute" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139533175454">
            <property name="selectable" value="false" />
            <property name="text" value=":" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1139533175455">
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="2.1139535280620" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1139746538168">
    <link role="conceptDeclaration" targetNodeId="2.1139744628335" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139746611466">
      <property name="text" value="$image$" />
      <property name="drawBorder" value="true" />
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139746652472">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="true" />
      <property name="gridLayout" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139746652473">
        <property name="text" value="&lt;image cell&gt;" />
        <property name="drawBorder" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139749702666">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749702667">
          <property name="selectable" value="false" />
          <property name="text" value="name" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140213386047">
          <property name="allowEmptyText" value="true" />
          <property name="writable" value="true" />
          <property name="noTargetText" value="&lt;auto&gt;" />
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176900004061">
        <property name="vertical" value="false" />
        <property name="selectable" value="false" />
        <property name="drawBorder" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176900004062">
          <property name="selectable" value="false" />
          <property name="text" value="image provider : " />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176900030403">
          <property name="noTargetText" value="&lt;no image provider&gt;" />
          <link role="relationDeclaration" targetNodeId="2.1176899909521" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139746735909">
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139746741660">
          <property name="selectable" value="false" />
          <property name="text" value="image file : " />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139861361374">
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139861371051">
            <property name="drawBorder" value="true" />
            <property name="selectable" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1139746504291" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_JComponent" id="1139861381007">
            <property name="drawBorder" value="true" />
            <node role="componentProvider" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_JComponent" id="1176475935262">
              <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176475935263">
                <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176475981469">
                  <node role="expression" type="jetbrains.mps.baseLanguage.NewExpression" id="1176476477521">
                    <link role="baseMethodDeclaration" extResolveInfo="13.constructor [Classifier]SelectImageFileButton[ConstructorDeclaration] ((jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [CellModel_Image]))" />
                    <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1176476525811">
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1176476522569" />
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetAdapterOperation" id="1176476527315" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139746652477">
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139858364870">
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139858378251">
          <property name="selectable" value="false" />
          <property name="text" value="descent :" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139858861380">
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1139858284555" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139858346956">
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139749668587">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749668588">
          <property name="selectable" value="false" />
          <property name="text" value="selectable" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139749668589">
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1073389214266" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139749668590">
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749668591">
          <property name="selectable" value="false" />
          <property name="text" value="attracts focus" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139749668592">
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1130859485024" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139749668593">
        <property name="drawBorder" value="true" />
        <link role="editorComponent" targetNodeId="1139313041650" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749668594">
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139749668595">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749668596">
          <property name="selectable" value="false" />
          <property name="text" value="layout constraint " />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139749668597">
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1129573164669" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749668598">
        <property name="name" value="separator" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140037033145">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140037033146">
          <property name="selectable" value="false" />
          <property name="text" value="action map" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1140037033147">
          <property name="noTargetText" value="&lt;default&gt;" />
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1139959269582" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1140037033148">
            <link role="conceptDeclaration" targetNodeId="2.1139535219966" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140037033149">
              <property name="drawBorder" value="true" />
              <property name="readOnly" value="true" />
              <link role="relationDeclaration" targetNodeId="3.1169194664001" />
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139749668602">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749668603">
          <property name="selectable" value="false" />
          <property name="text" value="keymap" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Component" id="1139749668604">
          <property name="drawBorder" value="true" />
          <link role="editorComponent" targetNodeId="1081339484984" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1140814149401">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1140814149402">
          <property name="selectable" value="false" />
          <property name="text" value="r-transform anchor" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1140814149403">
          <link role="relationDeclaration" targetNodeId="2.1140813989553" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164826898595">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164826898596">
          <property name="selectable" value="false" />
          <property name="text" value="menu" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1164826898597">
          <property name="noTargetText" value="&lt;none&gt;" />
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1164826688380" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749668605">
        <property name="name" value="separator" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749668606">
        <property name="text" value="adornments:" />
        <property name="drawBorder" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139749668607">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749668608">
          <property name="selectable" value="false" />
          <property name="text" value="draw border" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139749668609">
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1078832671094" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139749668610">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749668611">
          <property name="selectable" value="false" />
          <property name="text" value="draw brackets" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139749668612">
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1101478251453" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1139749668613">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749668614">
          <property name="selectable" value="false" />
          <property name="text" value="brackets color" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1139749668615">
          <property name="drawBorder" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1102623213256" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749668616">
        <property name="name" value="separator" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1139749668617">
        <property name="text" value="query methods:" />
        <property name="drawBorder" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1145902721552">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1145902721553">
          <property name="selectable" value="false" />
          <property name="text" value="condition" />
          <property name="drawBorder" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1145902721554">
          <property name="noTargetText" value="&lt;none&gt;" />
          <link role="relationDeclaration" targetNodeId="2.1142887637401" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176899952821" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1149850795343">
    <link role="conceptDeclaration" targetNodeId="2.1149850725784" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149850821036">
      <property name="vertical" value="true" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149850821037">
        <property name="text" value="&lt;attributed node cell&gt;" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149850821038">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149850821039">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149850821040">
            <property name="selectable" value="false" />
            <property name="text" value="draw brackets" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1149850821041">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1101478251453" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149850821042">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149850821043">
            <property name="selectable" value="false" />
            <property name="text" value="brackets color" />
            <property name="drawBorder" value="true" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1149850821044">
            <property name="drawBorder" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1102623213256" />
          </node>
        </node>
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1149850835046">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149850835047">
        <property name="selectable" value="false" />
        <property name="text" value="|&gt;" />
        <property name="drawBorder" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149850835048">
        <property name="editable" value="false" />
        <property name="textBgColor" value="pink" />
        <property name="text" value="attributed node" />
        <property name="drawBorder" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1149850835049">
        <property name="selectable" value="false" />
        <property name="text" value="&lt;|" />
        <property name="drawBorder" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1158615656703">
    <link role="conceptDeclaration" targetNodeId="2.1142886221719" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158615662366">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158615662367">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158615662369">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, scope)-&gt;boolean" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158615662370">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158615662371">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1158615662372">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1158958765527">
    <link role="conceptDeclaration" targetNodeId="2.1136917249679" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158958871965">
      <property name="drawBorder" value="false" />
      <property name="drawBrackets" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158958871966">
        <property name="textFgColor" value="blue" />
        <property name="text" value="&gt;" />
        <property name="attractsFocus" value="1" />
        <property name="fontStyle" value="BOLD" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1158958871967">
        <property name="drawBorder" value="false" />
        <property name="drawBrackets" value="true" />
        <link role="relationDeclaration" targetNodeId="12.1137022507850" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158958888364">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158958888365">
        <property name="textBgColor" value="lightGray" />
        <property name="textFgColor" value="blue" />
        <property name="text" value="keymap action precondition" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158958935135">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158958935136">
        <property name="fontStyle" value="PLAIN" />
        <property name="text" value="returns: boolean" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158958888366">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158958888367">
        <property name="fontStyle" value="PLAIN" />
        <property name="text" value="parameters:" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158958888368">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158959186956">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959186957">
            <property name="text" value="node" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959186973">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="action node" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158958888369">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158958888370">
            <property name="text" value="editorContext" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158958888371">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="context (jetbrains.mps.nodeEditor.EditorContext)" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158958888375">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158958888376">
            <property name="text" value="keyEvent" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158958888377">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="context (java.awt.event.KeyEvent)" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1158959210849">
    <link role="conceptDeclaration" targetNodeId="2.1136917288805" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158959228973">
      <property name="drawBorder" value="false" />
      <property name="drawBrackets" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959228974">
        <property name="textFgColor" value="blue" />
        <property name="text" value="&gt;" />
        <property name="attractsFocus" value="1" />
        <property name="fontStyle" value="BOLD" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1158959228975">
        <property name="drawBorder" value="false" />
        <property name="drawBrackets" value="true" />
        <link role="relationDeclaration" targetNodeId="12.1137022507850" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158959240368">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959240369">
        <property name="textBgColor" value="lightGray" />
        <property name="textFgColor" value="blue" />
        <property name="text" value="keymap action" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959240370">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959240373">
        <property name="fontStyle" value="PLAIN" />
        <property name="text" value="parameters:" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158959240374">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158959240375">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959240376">
            <property name="text" value="node" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959240377">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="action node" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158959240378">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959240379">
            <property name="text" value="editorContext" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959240380">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="context (jetbrains.mps.nodeEditor.EditorContext)" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158959240381">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959240382">
            <property name="text" value="keyEvent" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959240383">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="context (java.awt.event.KeyEvent)" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1158959342696">
    <link role="conceptDeclaration" targetNodeId="2.1139535439104" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158959352289">
      <property name="drawBorder" value="false" />
      <property name="drawBrackets" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959352290">
        <property name="textFgColor" value="blue" />
        <property name="text" value="&gt;" />
        <property name="attractsFocus" value="1" />
        <property name="fontStyle" value="BOLD" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1158959352291">
        <property name="drawBorder" value="false" />
        <property name="drawBrackets" value="true" />
        <link role="relationDeclaration" targetNodeId="12.1137022507850" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158959371957">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959371958">
        <property name="textBgColor" value="lightGray" />
        <property name="textFgColor" value="blue" />
        <property name="text" value="cell action" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959371959">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959371960">
        <property name="fontStyle" value="PLAIN" />
        <property name="text" value="parameters:" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158959371961">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158959371962">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959371963">
            <property name="text" value="node" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959371964">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="action node" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1158959371965">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959371966">
            <property name="text" value="editorContext" />
            <property name="drawBorder" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1158959371967">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="context (jetbrains.mps.nodeEditor.EditorContext)" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1160494425037">
    <link role="conceptDeclaration" targetNodeId="2.1160493135005" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1160494441801">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1160494441802">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1160494441804">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, scope, operationContext)-&gt;list&lt;String&gt;" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="lightGray" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1160494441805">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1160494441806">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1160494441807">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1163613661169">
    <link role="conceptDeclaration" targetNodeId="2.1163613131943" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1163613663017">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1163613663018">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1163613663019">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(parameterObject, node, model, scope, operationContext)-&gt;new node (replacement for current node)" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="lightGray" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1163613663020">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1163613663021">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1163613663022">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1163614107500">
    <link role="conceptDeclaration" targetNodeId="2.1163613035599" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1163614109833">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1163626006349">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1163626006350">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, scope, operationContext)-&gt;list&lt;parameter object&gt;" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="lightGray" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1163614109836">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1163614109837">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1163614109838">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1164052499311">
    <link role="conceptDeclaration" targetNodeId="2.1164052439493" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164052502347">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164052502348">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164052502349">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(parameterObject)-&gt;String" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="lightGray" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164052502350">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164052502351">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1164052502352">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1164052642234">
    <link role="conceptDeclaration" targetNodeId="2.1164052588708" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164052644207">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164052644208">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164052644209">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(parameterObject)-&gt;String" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="lightGray" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164052644210">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164052644211">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1164052644212">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1164826327348">
    <link role="conceptDeclaration" targetNodeId="2.1164824717996" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1164826331320">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164826341494">
        <property name="text" value="menu parts:" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNodeList" id="1164826358683">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="2.1164824815888" />
        <node role="emptyCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1164826376028">
          <property name="editable" value="true" />
          <property name="textFgColor" value="darkGray" />
          <property name="text" value="&lt;choose menu part&gt;" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1164826552421">
    <link role="conceptDeclaration" targetNodeId="2.1164824854750" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Error" id="1164841410765">
      <property name="fontStyle" value="ITALIC" />
      <property name="text" value="&lt;choose menu part&gt;" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1164834536966">
    <link role="conceptDeclaration" targetNodeId="2.1164833692343" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165261473107">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165261482475">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165261482476">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="property values" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165261473108">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165261553433">
          <property name="selectable" value="false" />
          <property name="text" value="  " />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165261473109">
          <property name="selectable" value="true" />
          <property name="text" value="values" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165261473110">
          <property name="selectable" value="false" />
          <property name="text" value=":" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165261473111">
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="2.1164833692344" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1164914829369">
    <link role="conceptDeclaration" targetNodeId="2.1164914519156" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165261271532">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165261279434">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165261279435">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="replace node (custom node concept)" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165261271533">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165261371430">
          <property name="selectable" value="false" />
          <property name="text" value="  " />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165261271534">
          <property name="selectable" value="true" />
          <property name="text" value="replace with" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165261271535">
          <property name="selectable" value="false" />
          <property name="text" value=":" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1165261271536">
          <property name="noTargetText" value="&lt;choose concept&gt;" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="2.1164914727930" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1165261271537">
            <link role="conceptDeclaration" targetNodeId="8.1071489090640" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1165261271538">
              <property name="textFgColor" value="DARK_MAGENTA" />
              <link role="relationDeclaration" targetNodeId="3.1169194664001" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1164996562499">
    <link role="conceptDeclaration" targetNodeId="2.1164996492011" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165017449838">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165017468128">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165017468129">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="primary choose referent menu" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165017449839">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165017598538">
          <property name="selectable" value="false" />
          <property name="text" value="  " />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165017449842">
          <property name="textFgColor" value="darkGray" />
          <property name="text" value="no customization needed" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1165004770474">
    <link role="conceptDeclaration" targetNodeId="2.1165004207520" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165004955922">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165004960235">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165004964970">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="replace node (group of custom actions)" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165005705255">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165005715519">
          <property name="selectable" value="false" />
          <property name="text" value="  " />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165005705256">
          <property name="usesFolding" value="true" />
          <property name="vertical" value="true" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165005705257">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165005705258">
              <property name="text" value="parameter object type" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165005705259">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165005705260">
              <property name="noTargetText" value="&lt;none&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165253890469" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165005705291">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165005705292">
              <property name="text" value="parameter objects" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165005705293">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165005705294">
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165004529292" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165005705261">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165005705262">
              <property name="text" value="presentation" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165005705263">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1165005705264">
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165254125954" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165005705265">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165005705266">
              <property name="text" value="matching text" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165005705267">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165005705268">
              <property name="noTargetText" value="&lt;default&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165254159533" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1165005705269">
              <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1165005705270">
                <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1165005705271">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1165005705272">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1165005705273">
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1165005705274" />
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1165005705275">
                        <link role="property" targetNodeId="2.1165254125954" />
                      </node>
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1165005705276">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1165005705277">
                        <link role="enumMember" targetNodeId="19.1165007009658" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165005705278">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165005705279">
              <property name="text" value="description text" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165005705280">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165005705281">
              <property name="noTargetText" value="&lt;default&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165254180581" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1165005705282">
              <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1165005705283">
                <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1165005705284">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1165005705285">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1165005705286">
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1165005705287" />
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1165005705288">
                        <link role="property" targetNodeId="2.1165254125954" />
                      </node>
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1165005705289">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1165005705290">
                        <link role="enumMember" targetNodeId="19.1165007009658" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165005705295">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165005705296">
              <property name="text" value="create new node" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165005705297">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165005705298">
              <property name="noTargetText" value="&lt;default&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165004529293" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1165270770033">
    <link role="conceptDeclaration" targetNodeId="2.1165270662927" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165270771788">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165270771789">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165270771790">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, currentChild, defaultConceptOfChild, scope, operationContext)-&gt;list&lt;parameter object&gt;" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="lightGray" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165270771791">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165270771792">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165270771793">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1165271082161">
    <link role="conceptDeclaration" targetNodeId="2.1165270999881" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165271083916">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165271083917">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271083918">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(parameterObject, node, currentChild, defaultConceptOfChild, model, scope, operationContext)-&gt;new child node" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="lightGray" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165271083919">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271083920">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165271083921">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1165271162703">
    <link role="conceptDeclaration" targetNodeId="2.1165270418989" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165271211647">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165271211648">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211649">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="replace child (group of custom actions)" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165271211650">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211651">
          <property name="selectable" value="false" />
          <property name="text" value="  " />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165271211652">
          <property name="usesFolding" value="true" />
          <property name="vertical" value="true" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165271211653">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211654">
              <property name="text" value="parameter object type" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211655">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165271211656">
              <property name="noTargetText" value="&lt;none&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165253890469" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165271211687">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211688">
              <property name="text" value="parameter objects" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211689">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165271211690">
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165270418991" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165271211657">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211658">
              <property name="text" value="presentation" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211659">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1165271211660">
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165254125954" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165271211661">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211662">
              <property name="text" value="matching text" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211663">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165271211664">
              <property name="noTargetText" value="&lt;default&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165254159533" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1165271211665">
              <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1165271211666">
                <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1165271211667">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1165271211668">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1165271211669">
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1165271211670" />
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1165271211671">
                        <link role="property" targetNodeId="2.1165254125954" />
                      </node>
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1165271211672">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1165271211673">
                        <link role="enumMember" targetNodeId="19.1165007009658" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165271211674">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211675">
              <property name="text" value="description text" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211676">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165271211677">
              <property name="noTargetText" value="&lt;default&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165254180581" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1165271211678">
              <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1165271211679">
                <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1165271211680">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1165271211681">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1165271211682">
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1165271211683" />
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1165271211684">
                        <link role="property" targetNodeId="2.1165254125954" />
                      </node>
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1165271211685">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1165271211686">
                        <link role="enumMember" targetNodeId="19.1165007009658" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165271211691">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211692">
              <property name="text" value="create new child" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165271211693">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165271211694">
              <property name="noTargetText" value="&lt;default&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165270418992" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1165281153030">
    <link role="conceptDeclaration" targetNodeId="2.1165280503630" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165281194157">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165281194158">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165281194159">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="replace child (custom child's concept)" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165281194160">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165281194161">
          <property name="selectable" value="false" />
          <property name="text" value="  " />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165281194162">
          <property name="selectable" value="true" />
          <property name="text" value="concept of child" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165281194163">
          <property name="selectable" value="false" />
          <property name="text" value=":" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165281194164">
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="2.1165280503631" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1165281275734">
    <link role="conceptDeclaration" targetNodeId="2.1165280856333" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165281277754">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165281277755">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165281277756">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, currentChild, defaultConceptOfChild, scope, operationContext)-&gt;node&lt;ConceptDeclaration&gt;" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="lightGray" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165281277757">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165281277758">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165281277759">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1165339451828">
    <link role="conceptDeclaration" targetNodeId="2.1165339307433" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165339458790">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165339458791">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165339458792">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, currentChild, defaultConceptOfChild, model, scope, operationContext)-&gt;new child node" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="lightGray" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165339458793">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165339458794">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165339458795">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1165339485727">
    <link role="conceptDeclaration" targetNodeId="2.1165339175678" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165339501698">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165339501699">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165339501700">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="replace child (custom action)" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165339501701">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165339501702">
          <property name="selectable" value="false" />
          <property name="text" value="  " />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165339501703">
          <property name="usesFolding" value="true" />
          <property name="vertical" value="true" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165339609739">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165339609740">
              <property name="text" value="matching text" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165339619288">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1165339609741">
              <property name="noTargetText" value="&lt;none&gt;" />
              <property name="textFgColor" value="DARK_GREEN" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165339639991" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1175117616163">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1175117616164">
              <property name="text" value="description text" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1175117616165">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1175117616166">
              <property name="allowEmptyText" value="true" />
              <property name="textFgColor" value="DARK_GREEN" />
              <property name="noTargetText" value="&lt;none&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1175117579502" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165339501742">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165339501743">
              <property name="text" value="create new child" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165339501744">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165339501745">
              <property name="noTargetText" value="&lt;default&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165339175680" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1165420914344">
    <link role="conceptDeclaration" targetNodeId="2.1165420413719" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165420935992">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165420935993">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420935994">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="generic group" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165420935995">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420935996">
          <property name="selectable" value="false" />
          <property name="text" value="  " />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165420935997">
          <property name="usesFolding" value="true" />
          <property name="vertical" value="true" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165420935998">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420935999">
              <property name="text" value="parameter object type" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420936000">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165420936001">
              <property name="noTargetText" value="&lt;none&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165253890469" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165420936002">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420936003">
              <property name="text" value="parameter objects" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420936004">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165420936005">
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165420413720" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165420936006">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420936007">
              <property name="text" value="presentation" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420936008">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1165420936009">
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165254125954" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165420936010">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420936011">
              <property name="text" value="matching text" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420936012">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165420936013">
              <property name="noTargetText" value="&lt;default&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165254159533" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1165420936014">
              <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1165420936015">
                <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1165420936016">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1165420936017">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1165420936018">
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1165420936019" />
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1165420936020">
                        <link role="property" targetNodeId="2.1165254125954" />
                      </node>
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1165420936021">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1165420936022">
                        <link role="enumMember" targetNodeId="19.1165007009658" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165420936023">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420936024">
              <property name="text" value="description text" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420936025">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165420936026">
              <property name="noTargetText" value="&lt;default&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165254180581" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_NodeCondition" id="1165420936027">
              <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1165420936028">
                <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1165420936029">
                  <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1165420936030">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1165420936031">
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1165420936032" />
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.SPropertyAccess" id="1165420936033">
                        <link role="property" targetNodeId="2.1165254125954" />
                      </node>
                    </node>
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Property_HasValue_Enum" id="1165420936034">
                      <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.EnumMemberReference" id="1165420936035">
                        <link role="enumMember" targetNodeId="19.1165007009658" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165420936036">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420936037">
              <property name="text" value="handler" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165420936038">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165420936039">
              <property name="noTargetText" value="&lt;default&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165420413721" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1165421126415">
    <link role="conceptDeclaration" targetNodeId="2.1165420626554" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165421148769">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165421148770">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165421148771">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(parameterObject, node, model, scope, operationContext)-&gt; &lt;none&gt;" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="lightGray" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165421148772">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165421148773">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165421148774">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1165424770434">
    <link role="conceptDeclaration" targetNodeId="2.1165424453110" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165424779461">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165424779462">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165424779463">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="generic item" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165424779464">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165424779465">
          <property name="selectable" value="false" />
          <property name="text" value="  " />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165424779466">
          <property name="usesFolding" value="true" />
          <property name="vertical" value="true" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165424779467">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165424779468">
              <property name="text" value="matching text" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165424779469">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1165424779470">
              <property name="noTargetText" value="&lt;none&gt;" />
              <property name="textFgColor" value="DARK_GREEN" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165424453111" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165424779471">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165424779472">
              <property name="text" value="handler" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165424779473">
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165424779474">
              <property name="noTargetText" value="&lt;default&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1165424453112" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1165424826590">
    <link role="conceptDeclaration" targetNodeId="2.1165424657443" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165424828470">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165424828471">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165424828472">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, model, scope, operationContext)-&gt; &lt;none&gt;" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="lightGray" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1165424828473">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1165424828474">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1165424828475">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1166041133876">
    <link role="conceptDeclaration" targetNodeId="2.1166040637528" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1166041142254">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1166041171503">
        <property name="name" value="headerRow" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1166041171504">
          <property name="text" value="cell-menu component" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1166041171505">
          <property name="noTargetText" value="&lt;no name&gt;" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1166041234867">
        <property name="name" value="semanticTypeAreaIndented" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1166041234868">
          <property name="text" value="    " />
          <property name="name" value="indentCell" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1166041234869">
          <property name="name" value="semanticTypeArea" />
          <property name="vertical" value="true" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1166041234871">
            <property name="name" value="cellsLayoutPanel" />
            <property name="vertical" value="false" />
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1166041252661">
              <property name="text" value="applicable to:" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1166041234873">
              <property name="noTargetText" value="&lt;choose concept&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1166049300910" />
              <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1166041234874">
                <link role="conceptDeclaration" targetNodeId="8.1071489090640" />
                <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1166041234875">
                  <property name="textFgColor" value="DARK_MAGENTA" />
                  <property name="drawBorder" value="true" />
                  <property name="readOnly" value="true" />
                  <link role="relationDeclaration" targetNodeId="3.1169194664001" />
                </node>
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1166062944696">
              <property name="text" value=":" />
              <property name="drawBorder" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1166062944697">
              <property name="noTargetText" value="&lt;any feature&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1166040865497" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1166041555819">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1166041615159">
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="2.1166041505377" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1166041937709">
    <link role="conceptDeclaration" targetNodeId="2.1166041748520" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1166057861191">
      <property name="noTargetText" value="&lt;choose property&gt;" />
      <property name="drawBorder" value="false" />
      <link role="relationDeclaration" targetNodeId="2.1166041884271" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1166057861192">
        <link role="conceptDeclaration" targetNodeId="8.1071489288299" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1166057861193">
          <property name="textFgColor" value="DARK_MAGENTA" />
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="3.1169194664001" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1166042186089">
    <link role="conceptDeclaration" targetNodeId="2.1166042131867" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1166057869265">
      <property name="noTargetText" value="&lt;choose property&gt;" />
      <property name="drawBorder" value="false" />
      <link role="relationDeclaration" targetNodeId="2.1166042131869" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1166057869266">
        <link role="conceptDeclaration" targetNodeId="8.1071489288298" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1166057869267">
          <property name="textFgColor" value="DARK_MAGENTA" />
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="8.1071599776563" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1166059730561">
    <link role="conceptDeclaration" targetNodeId="2.1166059625718" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1166059732993">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1166059732994">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1166059732995">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="menu component" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1166059732996">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1166059732997">
          <property name="selectable" value="false" />
          <property name="text" value="  " />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1166059732998">
          <property name="selectable" value="true" />
          <property name="text" value="component" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1166059732999">
          <property name="selectable" value="false" />
          <property name="text" value=":" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1166059755673">
          <property name="noTargetText" value="&lt;choose menu component&gt;" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="2.1166059677893" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1166059755674">
            <link role="conceptDeclaration" targetNodeId="2.1166040637528" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1166059764129">
              <property name="noTargetText" value="&lt;no name&gt;" />
              <property name="readOnly" value="true" />
              <link role="relationDeclaration" targetNodeId="3.1169194664001" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1174088115223">
    <link role="conceptDeclaration" targetNodeId="2.1174088067129" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1174088130953">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1174088130954">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1174088130955">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="primary replace child menu" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1174088130956">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1174088130957">
          <property name="selectable" value="false" />
          <property name="text" value="  " />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1174088130958">
          <property name="textFgColor" value="darkGray" />
          <property name="text" value="no customization needed" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1176474678259">
    <link role="conceptDeclaration" targetNodeId="2.1176474535556" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176474680013">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176474680014">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176474680015">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, editorContext)-&gt;JComponent" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176474680016">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176474680017">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176474680018">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.EditorComponentDeclaration" id="1176716781495">
    <property name="name" value="_OpenTag" />
    <link role="conceptDeclaration" targetNodeId="2.1073389214265" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_ModelAccess" id="1176716878596">
      <property name="editable" value="false" />
      <node role="modelAcessor" type="jetbrains.mps.bootstrap.editorLanguage.ModelAccessor" id="1176718832706">
        <node role="getter" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_ModelAccess_Getter" id="1176718832707">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176718832708">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176718836838">
              <node role="expression" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1176718844748">
                <link role="baseMethodDeclaration" extResolveInfo="13.static method ([Classifier]EditorCellTags).([StaticMethodDeclaration]getOpeningText((jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [EditorCellModel])) : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                <link role="classConcept" extResolveInfo="13.[Classifier]EditorCellTags" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1176718848985">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1176718846155" />
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetAdapterOperation" id="1176718849783" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="setter" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_ModelAccess_Setter" id="1176718832709">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176718832710" />
        </node>
        <node role="validator" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_ModelAccess_Validator" id="1176718832711">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176718832712">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176718853143">
              <node role="expression" type="jetbrains.mps.baseLanguage.BooleanConstant" id="1176718856802">
                <property name="value" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.EditorComponentDeclaration" id="1176716904723">
    <property name="name" value="_CloseTag" />
    <link role="conceptDeclaration" targetNodeId="2.1073389214265" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_ModelAccess" id="1176716918272">
      <property name="editable" value="false" />
      <node role="modelAcessor" type="jetbrains.mps.bootstrap.editorLanguage.ModelAccessor" id="1176718766209">
        <node role="getter" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_ModelAccess_Getter" id="1176718766210">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176718766211">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176718810894">
              <node role="expression" type="jetbrains.mps.baseLanguage.StaticMethodCall" id="1176718817382">
                <link role="baseMethodDeclaration" extResolveInfo="13.static method ([Classifier]EditorCellTags).([StaticMethodDeclaration]getClosingText((jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [EditorCellModel])) : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [String]))" />
                <link role="classConcept" extResolveInfo="13.[Classifier]EditorCellTags" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1176718821423">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.ConceptFunctionParameter_node" id="1176718818946" />
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetAdapterOperation" id="1176718822267" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="setter" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_ModelAccess_Setter" id="1176718766212">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176718766213" />
        </node>
        <node role="validator" type="jetbrains.mps.bootstrap.editorLanguage.QueryFunction_ModelAccess_Validator" id="1176718766214">
          <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176718766215">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176718802282">
              <node role="expression" type="jetbrains.mps.baseLanguage.BooleanConstant" id="1176718803877">
                <property name="value" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1176717935243">
    <link role="conceptDeclaration" targetNodeId="2.1176717841777" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176717936044">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176717936045">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176717936046">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, editorContext)-&gt;String" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176717936047">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176717936048">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176717936049">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1176717944270">
    <link role="conceptDeclaration" targetNodeId="2.1176717871254" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176717945008">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176717945009">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176717945010">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, text, editorContext)-&gt;void" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176717945011">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176717945012">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176717945013">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1176717970016">
    <link role="conceptDeclaration" targetNodeId="2.1176717888428" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176717970974">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176717970975">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176717970976">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, text, oldText, editorContext)-&gt;boolean" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176717970977">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176717970978">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176717970979">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1176718029833">
    <link role="conceptDeclaration" targetNodeId="2.1176717996748" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176718032741">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176718042215">
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718043531">
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="model acessor" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718046065">
          <property name="text" value="{" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176718050975">
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718052399">
          <property name="text" value="  " />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176718057589">
          <property name="vertical" value="true" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176718093154">
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718093155">
              <property name="textFgColor" value="DARK_BLUE" />
              <property name="text" value="get" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718093156">
              <property name="text" value="{" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176718093157">
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718093158">
              <property name="text" value="  " />
              <property name="selectable" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176718093159">
              <link role="relationDeclaration" targetNodeId="2.1176718001874" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718093160">
            <property name="text" value="}" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176718073253">
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718073254">
              <property name="textFgColor" value="DARK_BLUE" />
              <property name="text" value="set" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718077288">
              <property name="text" value="{" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176718082854">
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718084075">
              <property name="text" value="  " />
              <property name="selectable" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176718086281">
              <link role="relationDeclaration" targetNodeId="2.1176718007938" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718079040">
            <property name="text" value="}" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176718101933">
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718101934">
              <property name="textFgColor" value="DARK_BLUE" />
              <property name="text" value="validate" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718101935">
              <property name="text" value="{" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176718101936">
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718101937">
              <property name="text" value="  " />
              <property name="selectable" value="false" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176718101938">
              <link role="relationDeclaration" targetNodeId="2.1176718014393" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718101939">
            <property name="text" value="}" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176718048051">
        <property name="text" value="}" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1176750843681">
    <link role="conceptDeclaration" targetNodeId="2.1176750487975" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176750848496">
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176750850091">
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="text" value="&lt;QUERY[" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176795396038">
        <property name="vertical" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176795396039">
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176795396040">
            <property name="noTargetText" value="&lt;return type&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1176750789991" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1176795396041">
            <property name="noTargetText" value="&lt;prefix&gt;" />
            <link role="relationDeclaration" targetNodeId="2.1176750922515" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176795396042">
            <property name="text" value="(" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNodeList" id="1176795396043">
            <property name="separatorText" value="," />
            <link role="relationDeclaration" targetNodeId="2.1176750796710" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176795396044">
            <property name="text" value=")" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176800600178">
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176800601086">
            <property name="text" value="query id property :" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefCell" id="1176800612979">
            <link role="relationDeclaration" targetNodeId="2.1176750512039" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.InlineEditorComponent" id="1176800612980">
              <link role="conceptDeclaration" targetNodeId="8.1071489288299" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1176800616560">
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="3.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176800326709">
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176800327524">
            <property name="text" value="empty text:" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Property" id="1176800335057">
            <link role="relationDeclaration" targetNodeId="2.1176750736379" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176795396046">
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176795396047">
            <property name="text" value="import also :" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNodeList" id="1176795396048">
            <property name="vertical" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1176750816680" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176795403065">
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="text" value="]QUERY&gt;" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1176810232078">
    <link role="conceptDeclaration" targetNodeId="2.1176809959526" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176810232942">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176810232943">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176810232944">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, editorContext)-&gt;Color" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176810232945">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176810232946">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176810232947">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.ClassConcept" id="1176888877514">
    <property name="name" value="_EditorUtil" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.StaticMethodDeclaration" id="1176888881562">
      <property name="name" value="grayIfNotSelectable" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.ParameterDeclaration" id="1176888932798">
        <property name="name" value="cellModel" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeType" id="1176888934832">
          <link role="concept" targetNodeId="2.1073389214265" />
        </node>
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.ClassifierType" id="1176888927250">
        <link role="classifier" extResolveInfo="20.[Classifier]Color" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.StatementList" id="1176888881564">
        <node role="statement" type="jetbrains.mps.baseLanguage.IfStatement" id="1176888947599">
          <node role="condition" type="jetbrains.mps.baseLanguage.EqualsExpression" id="1176889007858">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.StaticFieldReference" id="1176889023378">
              <link role="classifier" extResolveInfo="22.[Classifier]_YesNoDefault_Enum" />
              <link role="variableDeclaration" extResolveInfo="22.static field ([Classifier]_YesNoDefault_Enum).([StaticFieldDeclaration]no : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [_YesNoDefault_Enum]))" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.InstanceMethodCall" id="1176889000874">
              <link role="baseMethodDeclaration" extResolveInfo="22.method ([Classifier]EditorCellModel).([InstanceMethodDeclaration]getSelectable() : (jetbrains.mps.baseLanguage.types.classifier/jetbrains.mps.baseLanguage.types.classifier [_YesNoDefault_Enum]))" />
              <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.SNodeOperationExpression" id="1176888992892">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.ParameterReference" id="1176888991077">
                  <link role="variableDeclaration" targetNodeId="1176888932798" resolveInfo="cellModel" />
                </node>
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.Node_GetAdapterOperation" id="1176888993581" />
              </node>
            </node>
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.StatementList" id="1176888947601">
            <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176889028394">
              <node role="expression" type="jetbrains.mps.baseLanguage.NewExpression" id="1176889034209">
                <link role="baseMethodDeclaration" extResolveInfo="20.constructor [Classifier]Color[ConstructorDeclaration] ((jetbrains.mps.baseLanguage.types.int/jetbrains.mps.baseLanguage.types.int), (jetbrains.mps.baseLanguage.types.int/jetbrains.mps.baseLanguage.types.int), (jetbrains.mps.baseLanguage.types.int/jetbrains.mps.baseLanguage.types.int))" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1176889041394">
                  <property name="value" value="230" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1176889044990">
                  <property name="value" value="230" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.IntegerConstant" id="1176889048008">
                  <property name="value" value="230" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ReturnStatement" id="1176889050760">
          <node role="expression" type="jetbrains.mps.baseLanguage.NullLiteral" id="1176889057794" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1176897832260">
    <link role="conceptDeclaration" targetNodeId="2.1176897764478" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176897833639">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176897833640">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176897833641">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, scope)-&gt;snode" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176897833642">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176897833643">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176897833644">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.ConceptEditorDeclaration" id="1176901250391">
    <link role="conceptDeclaration" targetNodeId="2.1176899348742" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176901251177">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176901251178">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176901251179">
          <property name="textBgColor" value="lightGray" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="text" value="(node, editorContext)-&gt;String" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Collection" id="1176901251180">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_Constant" id="1176901251181">
          <property name="textFgColor" value="blue" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="PLAIN" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.CellModel_RefNode" id="1176901251182">
          <property name="drawBorder" value="false" />
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="12.1137022507850" />
        </node>
      </node>
    </node>
  </node>
</model>


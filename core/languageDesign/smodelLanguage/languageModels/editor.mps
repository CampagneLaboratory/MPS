<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.bootstrap.smodelLanguage.editor">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.editorLanguage" />
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.helgins" />
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <maxImportIndex value="11" />
  <import index="1" modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  <import index="2" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="3" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1" />
  <import index="4" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="5" modelUID="jetbrains.mps.baseLanguage.editor" version="-1" />
  <import index="7" modelUID="java.lang@java_stub" version="-1" />
  <import index="8" modelUID="java.io@java_stub" version="-1" />
  <import index="9" modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  <import index="10" modelUID="jetbrains.mps.bootstrap.sharedConcepts.editor" version="-1" />
  <import index="11" modelUID="jetbrains.mps.closures.structure" version="0" />
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1138063451695">
    <link role="conceptDeclaration" targetNodeId="1.1138056022639" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1138412409274">
      <property name="noTargetText" value="&lt;no property&gt;" />
      <property name="drawBorder" value="false" />
      <link role="relationDeclaration" targetNodeId="1.1138056395725" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1138412409275">
        <link role="conceptDeclaration" targetNodeId="3.1071489288299" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1138412409276">
          <property name="textFgColor" value="darkGray" />
          <property name="readOnly" value="true" />
          <property name="fontStyle" value="ITALIC" />
          <property name="noTargetText" value="&lt;no name&gt;" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="2.1169194664001" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1138063757082">
    <property name="package" value="operation" />
    <link role="conceptDeclaration" targetNodeId="1.1138055978872" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1138063769790">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1138063769791">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1138056667223" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1203639997364">
        <property name="text" value="!" />
        <property name="textFgColor" value="red" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1138063769792">
        <property name="drawBorder" value="false" />
        <property name="text" value="." />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1138412455559">
        <property name="attractsFocus" value="2" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1138411864174" />
        <link role="actionMap" targetNodeId="1140123519849" resolveInfo="SNodeOperationExpression_Operation_Actions" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1138063852256">
    <link role="conceptDeclaration" targetNodeId="1.1138056143562" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1138412329756">
      <property name="noTargetText" value="&lt;no link&gt;" />
      <property name="drawBorder" value="false" />
      <link role="relationDeclaration" targetNodeId="1.1138056516764" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1138412329757">
        <link role="conceptDeclaration" targetNodeId="3.1071489288298" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1138412329758">
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="3.1071599776563" />
          <link role="styleClass" targetNodeId="1205441017139" resolveInfo="ref-link-role" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1138063886704">
    <link role="conceptDeclaration" targetNodeId="1.1138056282393" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1138412361312">
      <property name="noTargetText" value="&lt;no link&gt;" />
      <property name="drawBorder" value="false" />
      <link role="relationDeclaration" targetNodeId="1.1138056546658" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1138412361313">
        <link role="conceptDeclaration" targetNodeId="3.1071489288298" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1138412361314">
          <property name="textFgColor" value="darkGray" />
          <property name="readOnly" value="true" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="3.1071599776563" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1138405893950">
    <link role="conceptDeclaration" targetNodeId="1.1138055754698" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1138405907970">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1138405916830">
        <property name="editable" value="true" />
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="text" value="node" />
        <property name="fontStyle" value="BOLD" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1138406005691">
        <property name="drawBorder" value="false" />
        <property name="text" value="&lt;" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1138406014241">
        <property name="drawBorder" value="false" />
        <property name="attractsFocus" value="1" />
        <link role="relationDeclaration" targetNodeId="1.1138405853777" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1138406014240">
          <link role="conceptDeclaration" targetNodeId="3.1169125787135" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1138406019759">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="readOnly" value="true" />
            <property name="noTargetText" value="&lt;no name&gt;" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1138406102625">
        <property name="drawBorder" value="false" />
        <property name="text" value="&gt;" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1138412002490">
    <property name="package" value="operation" />
    <link role="conceptDeclaration" targetNodeId="1.1138411891628" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Error" id="1138412005946">
      <property name="drawBorder" value="false" />
      <property name="text" value="&lt;choose operaion&gt;" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1138661965229">
    <link role="conceptDeclaration" targetNodeId="1.1138661924179" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1138661974653">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487990991">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487990992">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1138662130034">
        <property name="noTargetText" value="&lt;no value&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1138662048170" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206488004275">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1138676397914">
    <link role="conceptDeclaration" targetNodeId="1.1138676077309" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1146158256146">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1146158270588">
        <property name="textFgColor" value="DARK_MAGENTA" />
        <property name="text" value="&lt;" />
        <property name="fontStyle" value="BOLD" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1146158258594">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1138676095763" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1146158258595">
          <link role="conceptDeclaration" targetNodeId="3.1083171877298" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1146158258596">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="readOnly" value="true" />
            <property name="fontStyle" value="BOLD" />
            <property name="noTargetText" value="&lt;no ext value&gt;" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="3.1083923523172" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1146158355984">
        <property name="textFgColor" value="DARK_MAGENTA" />
        <property name="text" value="&gt;" />
        <property name="fontStyle" value="BOLD" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1138757943608">
    <link role="conceptDeclaration" targetNodeId="1.1138757581985" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139880110903">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487847415">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487847416">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1139880110905">
        <property name="noTargetText" value="&lt;default&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1139880128956" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1139880110906">
          <link role="conceptDeclaration" targetNodeId="3.1071489090640" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1139880110907">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="drawBorder" value="false" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487861526">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1139184505217">
    <link role="conceptDeclaration" targetNodeId="1.1139184414036" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139877768037">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487762220">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487762221">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1139877775154">
        <property name="noTargetText" value="&lt;default&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1139877738879" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1139877775153">
          <link role="conceptDeclaration" targetNodeId="3.1071489090640" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1139877785578">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="drawBorder" value="false" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487772285">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1139616285308">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1139613262185" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1207269848529">
      <link role="editorComponent" targetNodeId="1206994531943" resolveInfo="ReplaceableAliasAndParms_Comp" />
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1154554723148">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154554752665">
        <property name="textFgColor" value="blue" />
        <property name="textBgColor" value="lightGray" />
        <property name="text" value="The 'parent' operation" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154554851745">
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154554923434">
        <property name="fontStyle" value="PLAIN" />
        <property name="text" value="Returns parent node" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154554988764">
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154554991970">
        <property name="fontStyle" value="PLAIN" />
        <property name="text" value="Optional parameters - deprecated. Use the 'ancestor' operation" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1154555018347">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1154555049677">
          <property name="vertical" value="false" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154555068240">
            <property name="drawBorder" value="false" />
            <property name="text" value="root" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154555089681">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="get top ancestor" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1154555230665">
          <property name="vertical" value="false" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154555230666">
            <property name="drawBorder" value="false" />
            <property name="text" value="concept" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154555230667">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="get ancestor which is instance of concept" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1154555322515">
          <property name="vertical" value="false" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154555322516">
            <property name="drawBorder" value="false" />
            <property name="text" value="concept in" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154555322517">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="get ancestor which is instance of one of concepts" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1154555175641">
          <property name="vertical" value="false" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154555175642">
            <property name="drawBorder" value="false" />
            <property name="text" value="+" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154555175643">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="return current node if it meets the requirements" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1139621561609">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1139621453865" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139621567253">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487310216">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487310217">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1177027660910">
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177027755380">
          <property name="textFgColor" value="red" />
          <property name="text" value="old-&gt;[" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1177027660911">
          <property name="noTargetText" value="&lt;no concept&gt;" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="1.1139621517231" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1177027660912">
            <link role="conceptDeclaration" targetNodeId="3.1169125787135" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1177027660913">
              <property name="textFgColor" value="DARK_MAGENTA" />
              <property name="readOnly" value="true" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1169194664001" />
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177028192476">
          <property name="textFgColor" value="red" />
          <property name="text" value="]" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177027798741">
          <property name="textFgColor" value="DARK_GREEN" />
          <property name="text" value="new-&gt;" />
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1177033362258">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1177033362259">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1177033364994">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1177033407796">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1177033410112" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227929937">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1177033377418" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1177033404842">
                    <link role="link" targetNodeId="1.1139621517231" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1177027646284">
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1177027386292" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487325343">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1139859062995">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1139858892567" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139859068528">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487125968">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487163813">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1139859121222">
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1139858951584" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1139859121221">
          <link role="conceptDeclaration" targetNodeId="3.1071489090640" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1139859127630">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="drawBorder" value="false" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487181236">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1139868014682">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1139867745658" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139868035538">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487419430">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487419431">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1139868035540">
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1139867957129" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1139868035541">
          <link role="conceptDeclaration" targetNodeId="3.1071489090640" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1139868035542">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="drawBorder" value="false" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487412210">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1139870425549">
    <link role="conceptDeclaration" targetNodeId="1.1139870260207" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1139870427663">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487753718">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487753719">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1139870441857">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1139870362308" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487744639">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1140029629081">
    <link role="conceptDeclaration" targetNodeId="1.1140029532506" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1140029629082">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487836132">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487836133">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1140029629084">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1139870362308" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487826349">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapDeclaration" id="1140123519849">
    <property name="name" value="SNodeOperationExpression_Operation_Actions" />
    <link role="applicableConcept" targetNodeId="1.1138055978872" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapItem" id="1140123561975">
      <property name="description" value="replace operation expression with left expression" />
      <property name="actionId" value="delete_action_id" />
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_ExecuteFunction" id="1140123561977">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1140123562104">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1140143244848">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227942505">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1140143244849" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1140143253429">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227838361">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1140143256963" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1140143262730">
                    <link role="link" targetNodeId="1.1138056667223" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1140129701012">
    <link role="conceptDeclaration" targetNodeId="1.1140129518788" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1140129710123">
      <property name="editable" value="true" />
      <property name="text" value="remove" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1140131924706">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1140131837776" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1140131934568">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487382395">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487382396">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1140131934570">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1139870362308" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487394428">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1140133705633">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1140133623887" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1140133705634">
      <property name="editable" value="true" />
      <property name="text" value="delete" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1140138174990">
    <link role="conceptDeclaration" targetNodeId="1.1140137987495" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1140138178976">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1140138184899">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1140138123956" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1140138199073">
        <property name="drawBorder" value="false" />
        <property name="text" value=":" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1140138237889">
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1140138128738" />
        <link role="actionMap" targetNodeId="1140139667693" resolveInfo="SNodeTypeCastExpression_Concept_Actions" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1140138237888">
          <link role="conceptDeclaration" targetNodeId="3.1169125787135" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1140138242844">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="drawBorder" value="false" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapDeclaration" id="1140139667693">
    <property name="name" value="SNodeTypeCastExpression_Concept_Actions" />
    <link role="applicableConcept" targetNodeId="1.1140137987495" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapItem" id="1140139769225">
      <property name="description" value="replace type case with left expression" />
      <property name="actionId" value="delete_action_id" />
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_ExecuteFunction" id="1140139769227">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1140139769245">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1140139883561">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227917479">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1140139883562" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1140139898486">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227916071">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1140139905394" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1140139909459">
                    <link role="link" targetNodeId="1.1140138123956" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1140725455179">
    <link role="conceptDeclaration" targetNodeId="1.1140725362528" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1140725455180">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487883216">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487883217">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1140725455182">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1140725362529" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487874371">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1143221124295">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1143221076066" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1143221124296">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487204566">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487204567">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1143221124298">
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1143221076069" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1143221124299">
          <link role="conceptDeclaration" targetNodeId="3.1071489090640" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1143221124300">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="drawBorder" value="false" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487192612">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1143224155410">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1143224066846" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1143224155411">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487211678">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487211679">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1143224155413">
        <property name="attractsFocus" value="1" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1143224066849" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487228726">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1143224196790">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1143224127713" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1143224196791">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487265808">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487265809">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1143224196793">
        <property name="attractsFocus" value="1" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1143224127716" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487245463">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1143226136623">
    <link role="conceptDeclaration" targetNodeId="1.1143226024141" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1143226143282">
      <property name="editable" value="true" />
      <property name="textFgColor" value="DARK_BLUE" />
      <property name="text" value="model" />
      <property name="fontStyle" value="BOLD" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1143234307768">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1143234257716" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1143234307769">
      <property name="editable" value="true" />
      <property name="text" value="model" />
      <property name="attractsFocus" value="1" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1143235366830">
    <property name="package" value="operation.model" />
    <link role="conceptDeclaration" targetNodeId="1.1143235216708" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1143235366831">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206480498092">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAliasWithOpeningPar" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206484910590">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1143235366833">
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1143235391024" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1143235366834">
          <link role="conceptDeclaration" targetNodeId="3.1071489090640" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1143235366835">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="drawBorder" value="false" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177700722848">
        <property name="layoutConstraint" value="punctuation" />
        <property name="selectable" value="false" />
        <property name="text" value="," />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1177700754756">
        <property name="noTargetText" value="&lt;no prototype&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1177700677986" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177700842881">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1143512939910">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1143511969223" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1143512939911">
      <property name="editable" value="true" />
      <property name="text" value="prev-sibling" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1143512964459">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1143512015885" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1143512964460">
      <property name="editable" value="true" />
      <property name="text" value="next-sibling" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1144100785515">
    <link role="conceptDeclaration" targetNodeId="1.1144100743722" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1146258034223">
      <property name="noTargetText" value="choose parameter" />
      <property name="textFgColor" value="DARK_MAGENTA" />
      <property name="drawBorder" value="false" />
      <link role="relationDeclaration" targetNodeId="2.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1144102054139">
    <link role="conceptDeclaration" targetNodeId="1.1144101972840" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1144102070906">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1144102074314">
        <property name="textFgColor" value="lightGray" />
        <property name="text" value="concept=" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1207343821830">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1207343836679">
          <property name="text" value="!" />
          <property name="textFgColor" value="red" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1207343821831">
          <property name="noTargetText" value="&lt;choose concept&gt;" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="1.1144102028966" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1207343821832">
            <link role="conceptDeclaration" targetNodeId="3.1169125787135" resolveInfo="AbstractConceptDeclaration" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1207343821833">
              <property name="textFgColor" value="DARK_MAGENTA" />
              <property name="readOnly" value="true" />
              <property name="noTargetText" value="&lt;no name&gt;" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
            </node>
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1207343847071">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207343847072">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207343861362">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1207343870257">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1207343872932" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207343862286">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1207343861363" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1207343865991">
                    <link role="link" targetNodeId="1.1144102028966" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1207343883309">
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1207343664468" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1144146335908">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1144146199828" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1144146355879">
      <property name="attractsFocus" value="1" />
      <property name="text" value="copy" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1144195442138">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1144195091934" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1144195449093">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487372236">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487372237">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1144195585868">
        <property name="noTargetText" value="&lt;concept of parent&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1144195362400" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1144195585869">
          <link role="conceptDeclaration" targetNodeId="3.1169125787135" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1144195593746">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="readOnly" value="true" />
            <property name="noTargetText" value="&lt;concept has no name&gt;" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1144198123372">
        <property name="drawBorder" value="false" />
        <property name="text" value=":" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1144198126876">
        <property name="noTargetText" value="&lt;role&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1144195396777" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1144198126877">
          <link role="conceptDeclaration" targetNodeId="3.1071489288298" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1144198126878">
            <property name="textFgColor" value="darkGray" />
            <property name="readOnly" value="true" />
            <property name="noTargetText" value="&lt;link has no role&gt;" />
            <property name="fontStyle" value="ITALIC" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="3.1071599776563" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487363126">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1145383231438">
    <link role="conceptDeclaration" targetNodeId="1.1145383075378" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1145383245679">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1145383245680">
        <property name="editable" value="true" />
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="text" value="nlist" />
        <property name="fontStyle" value="BOLD" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1145383245681">
        <property name="drawBorder" value="false" />
        <property name="text" value="&lt;" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1145383273157">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1145383142433" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1145383273158">
          <link role="conceptDeclaration" targetNodeId="3.1169125787135" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1145383277050">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="readOnly" value="true" />
            <property name="noTargetText" value="&lt;no name&gt;" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1145383245687">
        <property name="drawBorder" value="false" />
        <property name="text" value="&gt;" />
        <property name="selectable" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1145404650449">
    <link role="conceptDeclaration" targetNodeId="1.1145404486709" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1145404664303">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1145404664304">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1140138123956" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1145404664305">
        <property name="editable" value="false" />
        <property name="textFgColor" value="DARK_MAGENTA" />
        <property name="text" value="/" />
        <property name="drawBorder" value="false" />
        <property name="attractsFocus" value="1" />
        <link role="actionMap" targetNodeId="1145407825538" resolveInfo="SemanticDowncastExpression_Symbol_Actions" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapDeclaration" id="1145407825538">
    <property name="name" value="SemanticDowncastExpression_Symbol_Actions" />
    <link role="applicableConcept" targetNodeId="1.1145404486709" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapItem" id="1145407863898">
      <property name="description" value="remove semantic downcast" />
      <property name="actionId" value="delete_action_id" />
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_ExecuteFunction" id="1145407863899">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1145407863900">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1145407914432">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227918590">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1145407914433" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithAnotherOperation" id="1145407919732">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227894808">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1145407924265" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1145407933627">
                    <link role="link" targetNodeId="1.1145404616321" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1145468780047">
    <link role="conceptDeclaration" targetNodeId="1.1145468686058" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1145468793690">
      <property name="editable" value="true" />
      <property name="text" value="count" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1145567617432">
    <link role="conceptDeclaration" targetNodeId="1.1145567426890" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1145567624652">
      <property name="drawBorder" value="false" />
      <link role="relationDeclaration" targetNodeId="1.1145567471833" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1145570883802">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1145570846907" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1207249313004">
      <link role="editorComponent" targetNodeId="1206994531943" resolveInfo="ReplaceableAliasAndParms_Comp" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1145572859518">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1145572800087" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1207249521256">
      <link role="editorComponent" targetNodeId="1206994531943" resolveInfo="ReplaceableAliasAndParms_Comp" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1145573389679">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1145573345940" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1207000523060">
      <link role="editorComponent" targetNodeId="1206994531943" resolveInfo="ReplaceableAliasAndParms_Comp" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1145994905462">
    <link role="conceptDeclaration" targetNodeId="1.1145994841052" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1145994913699">
      <property name="noTargetText" value="&lt;no concept property&gt;" />
      <property name="drawBorder" value="false" />
      <link role="relationDeclaration" targetNodeId="1.1145994841055" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1145994913700">
        <link role="conceptDeclaration" targetNodeId="3.1105725006687" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1145994918311">
          <property name="textFgColor" value="DARK_MAGENTA" />
          <property name="readOnly" value="true" />
          <property name="noTargetText" value="&lt;no name&gt;" />
          <property name="fontStyle" value="ITALIC" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="2.1169194664001" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1146171168303">
    <link role="conceptDeclaration" targetNodeId="1.1146171026731" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1146171170036">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487951704">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487951705">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1146171170038">
        <property name="noTargetText" value="&lt;no value&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1146171026732" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487964378">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1146253594169">
    <link role="conceptDeclaration" targetNodeId="1.1146253292180" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1146253646906">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487983630">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487983631">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1146253646908">
        <property name="noTargetText" value="&lt;no value&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1146253292181" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487972988">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1154547032019">
    <link role="conceptDeclaration" targetNodeId="1.1154546950173" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1154547037209">
      <property name="noTargetText" value="&lt;choose concept&gt;" />
      <property name="drawBorder" value="false" />
      <link role="relationDeclaration" targetNodeId="1.1154546997487" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1154547037210">
        <link role="conceptDeclaration" targetNodeId="3.1169125787135" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1154547041930">
          <property name="textFgColor" value="DARK_MAGENTA" />
          <property name="drawBorder" value="false" />
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1169194664001" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1154547191760">
    <link role="conceptDeclaration" targetNodeId="1.1154546920561" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1154547198372">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154547202185">
        <property name="textFgColor" value="lightGray" />
        <property name="text" value="concept in:[" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1154547221297">
        <property name="separatorText" value="," />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1154546920563" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1154547244033">
        <property name="textFgColor" value="lightGray" />
        <property name="text" value="]" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1166648591078">
    <property name="package" value="operation.model" />
    <link role="conceptDeclaration" targetNodeId="1.1166648550386" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1166648602698">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206485367769">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177700867230">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1166648602700">
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1143235391024" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1166648602701">
          <link role="conceptDeclaration" targetNodeId="3.1071489090640" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1166648602702">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="drawBorder" value="false" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177700797421">
        <property name="layoutConstraint" value="punctuation" />
        <property name="selectable" value="false" />
        <property name="text" value="," />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1177700797422">
        <property name="noTargetText" value="&lt;no prototype&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1177700677986" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177700856899">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1168901099262">
    <link role="conceptDeclaration" targetNodeId="1.1168901043992" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168901118565">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206061378130">
        <property name="text" value="!" />
        <property name="textFgColor" value="red" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1168901122685">
        <property name="noTargetText" value="&lt;no link&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1138056546658" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1168901122686">
          <link role="conceptDeclaration" targetNodeId="3.1071489288298" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168901122687">
            <property name="textFgColor" value="darkGray" />
            <property name="readOnly" value="true" />
            <property name="fontStyle" value="ITALIC" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="3.1071599776563" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168901133423">
        <property name="layoutConstraint" value="punctuation" />
        <property name="textFgColor" value="darkGray" />
        <property name="text" value="/list" />
        <property name="fontStyle" value="ITALIC" />
        <property name="drawBorder" value="false" />
        <link role="actionMap" targetNodeId="1168907433889" resolveInfo="SLinkListAccessAsList_Actions" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapDeclaration" id="1168907433889">
    <property name="name" value="SLinkListAccessAsList_Actions" />
    <link role="applicableConcept" targetNodeId="1.1168901043992" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapItem" id="1168907465218">
      <property name="description" value="replace with link list access" />
      <property name="actionId" value="delete_action_id" />
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_ExecuteFunction" id="1168907465219">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168907465220">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1168907532678">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1168907532679">
              <property name="name" value="op" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1168907532681">
                <link role="concept" targetNodeId="1.1138056282393" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227848645">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1168907511706" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithNewOperation" id="1168907516708">
                  <link role="concept" targetNodeId="1.1138056282393" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1168907538761">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227944943">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227881010">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1168907538762">
                  <link role="variableDeclaration" targetNodeId="1168907532679" resolveInfo="op" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1168907542952">
                  <link role="link" targetNodeId="1.1138056546658" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1168907548125">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227880769">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1168907555018" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1168907558395">
                    <link role="link" targetNodeId="1.1138056546658" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1170384672076">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1170384605257" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1170384687660">
      <property name="attractsFocus" value="1" />
      <property name="drawBorder" value="false" />
      <property name="text" value="adapter" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1171305550276">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1171305280644" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1207248924093">
      <link role="editorComponent" targetNodeId="1206994531943" resolveInfo="ReplaceableAliasAndParms_Comp" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1171310362800">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1171310072040" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171310416458">
      <property name="editable" value="true" />
      <property name="drawBorder" value="false" />
      <property name="text" value="containing root" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1171315913365">
    <property name="package" value="operation.model" />
    <link role="conceptDeclaration" targetNodeId="1.1171315804604" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1171315915307">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206486703954">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486703955">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1171315915309">
        <property name="noTargetText" value="&lt;all&gt;" />
        <property name="drawBorder" value="false" />
        <property name="attractsFocus" value="1" />
        <link role="relationDeclaration" targetNodeId="1.1171315804605" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1171315915310">
          <link role="conceptDeclaration" targetNodeId="3.1169125787135" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1171315915311">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="drawBorder" value="false" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486716424">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1171323978358">
    <property name="package" value="operation.model" />
    <link role="conceptDeclaration" targetNodeId="1.1171323947159" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1171323979878">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206486656307">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486656308">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1171323979880">
        <property name="noTargetText" value="&lt;all&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1171323947160" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1171323979881">
          <link role="conceptDeclaration" targetNodeId="3.1169125787135" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1171323979882">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="drawBorder" value="false" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486664981">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1171407475023">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1171407110247" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1171407548388">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171407548389">
        <property name="textFgColor" value="blue" />
        <property name="textBgColor" value="lightGray" />
        <property name="text" value="The 'ancestor' operation" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171407548390">
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171407548391">
        <property name="fontStyle" value="PLAIN" />
        <property name="text" value="Returns ancestor node (if no parameters returns direct parent)" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171407548392">
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171407548393">
        <property name="fontStyle" value="PLAIN" />
        <property name="text" value="Optional parameters:" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1171407548394">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1171407548395">
          <property name="vertical" value="false" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171407548396">
            <property name="drawBorder" value="false" />
            <property name="text" value="root" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171407548397">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="get top ancestor" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1171407548398">
          <property name="vertical" value="false" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171407548399">
            <property name="drawBorder" value="false" />
            <property name="text" value="concept" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171407548400">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="get ancestor which is instance of concept" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1171407548401">
          <property name="vertical" value="false" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171407548402">
            <property name="drawBorder" value="false" />
            <property name="text" value="concept in" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171407548403">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="get ancestor which is instance of one of concepts" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1171407548404">
          <property name="vertical" value="false" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171407548405">
            <property name="drawBorder" value="false" />
            <property name="text" value="+" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171407548406">
            <property name="fontStyle" value="PLAIN" />
            <property name="text" value="return current node if it meets the requirements" />
            <property name="drawBorder" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1207070865189">
      <link role="editorComponent" targetNodeId="1206994531943" resolveInfo="ReplaceableAliasAndParms_Comp" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1171478968496">
    <link role="conceptDeclaration" targetNodeId="1.1171478925269" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1171478971357">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206064979092">
        <property name="text" value="!" />
        <property name="textFgColor" value="red" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1171478971358">
        <property name="noTargetText" value="&lt;no link&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1138056546658" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1171478971359">
          <link role="conceptDeclaration" targetNodeId="3.1071489288298" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1171478971360">
            <property name="textFgColor" value="darkGray" />
            <property name="readOnly" value="true" />
            <property name="fontStyle" value="ITALIC" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="3.1071599776563" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171478971361">
        <property name="layoutConstraint" value="punctuation" />
        <property name="textFgColor" value="darkGray" />
        <property name="text" value="/node" />
        <property name="fontStyle" value="ITALIC" />
        <property name="drawBorder" value="false" />
        <link role="actionMap" targetNodeId="1171479033796" resolveInfo="SLinkAccessAsNode_Actions" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapDeclaration" id="1171479033796">
    <property name="name" value="SLinkAccessAsNode_Actions" />
    <link role="applicableConcept" targetNodeId="1.1171478925269" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapItem" id="1171479033797">
      <property name="description" value="replace with link access" />
      <property name="actionId" value="delete_action_id" />
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_ExecuteFunction" id="1171479033798">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1171479033799">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1171479033800">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1171479033801">
              <property name="name" value="op" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1171479033802">
                <link role="concept" targetNodeId="1.1138056143562" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227852910">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1171479033804" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ReplaceWithNewOperation" id="1171479033805">
                  <link role="concept" targetNodeId="1.1138056143562" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1171479033806">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227910044">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227927576">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1171479033809">
                  <link role="variableDeclaration" targetNodeId="1171479033801" resolveInfo="op" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1171479094502">
                  <link role="link" targetNodeId="1.1138056516764" />
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetTargetOperation" id="1171479033811">
                <node role="parameter" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227900399">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1171479033813" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1171479097316">
                    <link role="link" targetNodeId="1.1138056516764" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1171501025862">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1171500988903" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171501030411">
      <property name="editable" value="true" />
      <property name="text" value="children" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1171999181752">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1171999116870" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1171999196301">
      <property name="editable" value="true" />
      <property name="text" value="isNull" />
      <property name="attractsFocus" value="1" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1172008334580">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1172008320231" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1172008340176">
      <property name="editable" value="true" />
      <property name="text" value="isNotNull" />
      <property name="attractsFocus" value="1" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1172244086685">
    <link role="conceptDeclaration" targetNodeId="1.1172244025706" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1172244089058">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206487728793">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487728794">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1172244089060">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1139870362308" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206487737076">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1172323101046">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1172323065820" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1172323109267">
      <property name="editable" value="true" />
      <property name="text" value="concept" />
      <property name="attractsFocus" value="1" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1172326614774">
    <property name="package" value="operation.concept" />
    <link role="conceptDeclaration" targetNodeId="1.1172326502327" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1172326619308">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206486113013">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486113014">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1206733900340">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206733909392">
          <property name="text" value="!" />
          <property name="textFgColor" value="red" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1206733900341">
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="1.1172326788598" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1206733900342">
            <link role="conceptDeclaration" targetNodeId="3.1071489090640" resolveInfo="ConceptDeclaration" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1206733900343">
              <property name="textFgColor" value="DARK_MAGENTA" />
              <property name="drawBorder" value="false" />
              <property name="readOnly" value="true" />
              <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
            </node>
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1206734683127">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206734683128">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206734698842">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1206734704879">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1206734707054" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206734699969">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1206734698843" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206734702690">
                    <link role="link" targetNodeId="1.1172326788598" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1206733827041">
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1206733650006" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206733878245">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1172420591442">
    <link role="conceptDeclaration" targetNodeId="1.1172420572800" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1180481149411">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1180481149412">
        <property name="editable" value="true" />
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="text" value="concept" />
        <property name="fontStyle" value="BOLD" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1180481149413">
        <property name="selectable" value="false" />
        <property name="text" value="&lt;" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1180481149414">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1180481110358" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1180481149415">
          <link role="conceptDeclaration" targetNodeId="3.1169125787135" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1180481149416">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="readOnly" value="true" />
            <property name="noTargetText" value="&lt;no name&gt;" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1180481149417">
        <property name="selectable" value="false" />
        <property name="text" value="&gt;" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1172421373683">
    <property name="package" value="operation.concept" />
    <link role="conceptDeclaration" targetNodeId="1.1172421306145" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1172421377028">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1203552485834">
        <property name="text" value="!" />
        <property name="textFgColor" value="red" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1172421378671">
        <property name="editable" value="true" />
        <property name="text" value="isAssignableFrom" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1178066424681">
        <property name="fontStyle" value="PLAIN" />
        <property name="text" value="(" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1172421458535">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1172421412830" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1172421389126">
        <property name="fontStyle" value="PLAIN" />
        <property name="text" value=")" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1172424081571">
    <link role="conceptDeclaration" targetNodeId="1.1172424058054" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1172424084370">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1172424087044">
        <property name="drawBorder" value="false" />
        <property name="text" value="concept" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177028645589">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="/" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1172424124986">
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1172424100906" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1172424124987">
          <link role="conceptDeclaration" targetNodeId="3.1169125787135" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1172424127661">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="drawBorder" value="false" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1172424091843">
        <property name="fontStyle" value="PLAIN" />
        <property name="text" value="/" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1173122820494">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1173122760281" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1207071456601">
      <link role="editorComponent" targetNodeId="1206994531943" resolveInfo="ReplaceableAliasAndParms_Comp" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1175618259856">
    <link role="conceptDeclaration" targetNodeId="1.1175618182947" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1175622789135">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1175622789848">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1175618223511" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1175622789849">
          <link role="conceptDeclaration" targetNodeId="3.1105736576531" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1175622789850">
            <property name="textFgColor" value="DARK_MAGENTA" />
            <property name="readOnly" value="true" />
            <property name="fontStyle" value="ITALIC" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1175622793711">
        <property name="layoutConstraint" value="punctuation" />
        <property name="textFgColor" value="darkGray" />
        <property name="text" value="/list" />
        <property name="fontStyle" value="ITALIC" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1176109725054">
    <property name="package" value="operation.model" />
    <link role="conceptDeclaration" targetNodeId="1.1176109685393" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176109727150">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206486688202">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486688203">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1176109781602">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1176109762787" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176109784760">
        <property name="drawBorder" value="false" />
        <property name="text" value="," />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1176109740908">
        <property name="drawBorder" value="false" />
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1176109685394" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1176109740909">
          <link role="conceptDeclaration" targetNodeId="3.1169125787135" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1176109745364">
            <property name="drawBorder" value="false" />
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
            <link role="styleClass" targetNodeId="10.1203541385314" resolveInfo="ReferenceOnConcept" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486676997">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1176462026279">
    <link role="conceptDeclaration" targetNodeId="1.1176461918946" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1176462074432">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1207357226488">
        <property name="text" value="!" />
        <property name="textFgColor" value="red" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1176462074433">
        <property name="textFgColor" value="lightGray" />
        <property name="text" value="concept expr=" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1176462088766">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1176461970854" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1177025546874">
    <link role="conceptDeclaration" targetNodeId="1.1177025403857" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1177027253787">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177027260554">
        <property name="editable" value="false" />
        <property name="textFgColor" value="red" />
        <property name="text" value="!#" />
        <property name="fontStyle" value="ITALIC" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1177027356385">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1177025447014" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1177027060590">
    <link role="conceptDeclaration" targetNodeId="1.1177026924588" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1177027092014">
      <property name="noTargetText" value="&lt;choose concept&gt;" />
      <link role="relationDeclaration" targetNodeId="1.1177026940964" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1177027092015">
        <link role="conceptDeclaration" targetNodeId="3.1169125787135" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1177027095986">
          <property name="textFgColor" value="DARK_MAGENTA" />
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1169194664001" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1179168156925">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1179168000618" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1179168170880">
      <property name="editable" value="false" />
      <property name="attractsFocus" value="1" />
      <link role="relationDeclaration" targetNodeId="2.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1179350233276">
    <property name="package" value="operation.concept" />
    <link role="conceptDeclaration" targetNodeId="1.1179350041460" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1206995074238">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206995074239">
        <link role="editorComponent" targetNodeId="1206994531943" resolveInfo="ReplaceableAliasAndParms_Comp" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1179409308553">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1179409122411" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1179409334055">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1179409337167">
        <link role="relationDeclaration" targetNodeId="1.1179409206125" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1179409337168">
          <link role="conceptDeclaration" targetNodeId="9.1177673300966" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1179409341654">
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="4.1083152972672" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1179409365157">
        <property name="text" value="(" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1179409369096">
        <property name="separatorText" value="," />
        <property name="vertical" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1179409255348" />
        <node role="emptyCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1179409374863">
          <property name="editable" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1179409379177">
        <property name="text" value=")" />
        <property name="attractsFocus" value="1" />
        <node role="focusPolicyApplicable" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1201515637070">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1201515637071">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1201515650920">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1201515672505">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1201515674008">
                  <property name="value" value="0" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227923719">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227915529">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227898194">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1201515650921" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1201515656110">
                        <link role="link" targetNodeId="1.1179409206125" />
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1201515659395">
                      <link role="link" targetNodeId="4.1068580123134" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_GetCountOperation" id="1201515671207" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1180028411522">
    <property name="package" value="operation.concept" />
    <link role="conceptDeclaration" targetNodeId="1.1180028149140" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1206486189207">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206486189208">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486189209">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1206486189210">
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1180028346304" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486189211">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1180031836714">
    <property name="package" value="operation.concept" />
    <link role="conceptDeclaration" targetNodeId="1.1180031783296" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1180031838387">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206486155766">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486155767">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1180031838390">
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1180031783297" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486165956">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1180457501143">
    <property name="package" value="operation.concept" />
    <link role="conceptDeclaration" targetNodeId="1.1180457458947" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1206996255986">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206996255987">
        <link role="editorComponent" targetNodeId="1206994531943" resolveInfo="ReplaceableAliasAndParms_Comp" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1180459626073">
    <property name="package" value="operation.concept" />
    <link role="conceptDeclaration" targetNodeId="1.1180458444893" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1180459627781">
      <property name="editable" value="true" />
      <property name="text" value="hierarchy" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1180636825133">
    <link role="conceptDeclaration" targetNodeId="1.1180636770613" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1181937467360">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1181937467361">
        <link role="relationDeclaration" targetNodeId="1.1180636770616" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1181943477552">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1181943477553">
          <property name="layoutConstraint" value="punctuation" />
          <property name="text" value="(" />
          <property name="fontStyle" value="PLAIN" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1181943477554">
          <link role="relationDeclaration" targetNodeId="1.1181937442359" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1181943477555">
          <property name="fontStyle" value="PLAIN" />
          <property name="text" value=")" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1181949581633">
    <property name="package" value="operation.concept" />
    <link role="conceptDeclaration" targetNodeId="1.1181949435690" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1206486226037">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206486226038">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486226039">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1206486226040">
        <property name="noTargetText" value="&lt;no prototype&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1181949561194" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486226041">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1181952939921">
    <property name="package" value="operation.concept" />
    <link role="conceptDeclaration" targetNodeId="1.1181952871644" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1182506828314">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206486063557">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486063558">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1182506841743">
        <property name="noTargetText" value="&lt;smodel&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1182506816063" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1182506973657">
        <property name="text" value="," />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1182506978425">
        <property name="noTargetText" value="&lt;scope&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1182506966389" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486074544">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1182279746815">
    <property name="package" value="operation.concept" />
    <link role="conceptDeclaration" targetNodeId="1.1182279509750" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1182279799230">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206485988830">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206485988831">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1182279799233">
        <property name="noTargetText" value="&lt;global scope&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1182279708330" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206485988837">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1182511080941">
    <property name="package" value="operation.model" />
    <link role="conceptDeclaration" targetNodeId="1.1182511038748" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1182511083881">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206486612667">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="ReplaceableAlias_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486612668">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1182511100904">
        <property name="noTargetText" value="&lt;no scope&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1182511038749" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1182511105406">
        <property name="text" value="," />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1182511109971">
        <property name="noTargetText" value="&lt;no concept&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1182511038750" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1182511109972">
          <link role="conceptDeclaration" targetNodeId="3.1169125787135" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1182511125130">
            <link role="relationDeclaration" targetNodeId="2.1169194664001" />
            <link role="styleClass" targetNodeId="10.1203541385314" resolveInfo="concept_reference" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206486629587">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1204762366627">
    <property name="package" value="attribute" />
    <link role="conceptDeclaration" targetNodeId="1.1204761823073" resolveInfo="AttributeAccessOperation" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204762834552">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204762856929">
        <property name="text" value="@" />
        <property name="fontStyle" value="PLAIN" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1204762928415">
        <link role="relationDeclaration" targetNodeId="1.1204762310079" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1204763553921">
    <property name="package" value="attribute" />
    <link role="conceptDeclaration" targetNodeId="1.1204763358057" resolveInfo="NodeAttributeAccessQualifier" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1204763572767">
      <link role="relationDeclaration" targetNodeId="1.1204763443606" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1204763572768">
        <link role="conceptDeclaration" targetNodeId="3.1149608206811" resolveInfo="AnnotationLinkDeclaration" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1204763584536">
          <property name="readOnly" value="true" />
          <property name="noTargetText" value="&lt;no annotation link&gt;" />
          <link role="relationDeclaration" targetNodeId="3.1204740973143" resolveInfo="role" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1204832702256">
    <property name="package" value="attribute" />
    <link role="conceptDeclaration" targetNodeId="1.1204832665472" resolveInfo="PropertyAttributeAccessQualifier" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204834222431">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1204834222432">
        <link role="relationDeclaration" targetNodeId="1.1204832665473" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1204834222433">
          <link role="conceptDeclaration" targetNodeId="3.1149608206811" resolveInfo="AnnotationLinkDeclaration" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1204834222434">
            <property name="readOnly" value="true" />
            <property name="noTargetText" value="&lt;no annotation link&gt;" />
            <link role="relationDeclaration" targetNodeId="3.1204740973143" resolveInfo="role" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204834237155">
        <property name="text" value="&lt;" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1204834257832">
        <property name="noTargetText" value="&lt;property&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1204834178790" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204834262709">
        <property name="text" value="&gt;" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1204835157357">
    <property name="package" value="operation.parameter" />
    <link role="conceptDeclaration" targetNodeId="1.1204834851141" resolveInfo="ExpressionArg" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204835162156">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204835162157">
        <property name="editable" value="false" />
        <property name="textFgColor" value="DARK_MAGENTA" />
        <property name="text" value="#" />
        <property name="fontStyle" value="ITALIC" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1204835162158">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1177025447014" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1204837271423">
    <property name="package" value="attribute" />
    <link role="conceptDeclaration" targetNodeId="1.1204837120311" resolveInfo="PropertyRefArgument" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1204837286691">
      <property name="noTargetText" value="no property" />
      <link role="relationDeclaration" targetNodeId="1.1204837225594" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1204837286692">
        <link role="conceptDeclaration" targetNodeId="3.1071489288299" resolveInfo="PropertyDeclaration" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1204837292350">
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1204849551517">
    <property name="package" value="attribute" />
    <link role="conceptDeclaration" targetNodeId="1.1204848911283" resolveInfo="LinkAttributeAccessQualifier" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204849566535">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1204849566536">
        <link role="relationDeclaration" targetNodeId="1.1204848911285" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1204849566537">
          <link role="conceptDeclaration" targetNodeId="3.1149608206811" resolveInfo="AnnotationLinkDeclaration" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1204849566538">
            <property name="readOnly" value="true" />
            <property name="noTargetText" value="&lt;no annotation link&gt;" />
            <link role="relationDeclaration" targetNodeId="3.1204740973143" resolveInfo="role" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204849566539">
        <property name="text" value="&lt;" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1204849566540">
        <property name="noTargetText" value="&lt;link&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1204848911284" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204849566541">
        <property name="text" value="&gt;" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1204851941271">
    <property name="package" value="attribute" />
    <link role="conceptDeclaration" targetNodeId="1.1204851882688" resolveInfo="LinkRefQualifier" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1204851958179">
      <link role="relationDeclaration" targetNodeId="1.1204851882689" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1204851958180">
        <link role="conceptDeclaration" targetNodeId="3.1071489288298" resolveInfo="LinkDeclaration" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1204851963572">
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="3.1071599776563" resolveInfo="role" />
          <link role="styleClass" targetNodeId="1205441017139" resolveInfo="ref-link-role" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1204919812348">
    <property name="package" value="type_internal" />
    <link role="conceptDeclaration" targetNodeId="1.1204919674986" resolveInfo="_BaseLinkAccessT" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1204919818991">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204919822243">
        <property name="text" value="link acc&lt;" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1204926270355">
        <link role="relationDeclaration" targetNodeId="1.1204926237448" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1204926270356">
          <link role="conceptDeclaration" targetNodeId="3.1169125787135" resolveInfo="AbstractConceptDeclaration" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1204926276952">
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1205264956549">
        <property name="text" value=",singular:" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1205264969895">
        <link role="relationDeclaration" targetNodeId="1.1205264860045" resolveInfo="isSingularCradinality" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1205266348084">
        <property name="text" value=",aggregation:" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1205266348085">
        <link role="relationDeclaration" targetNodeId="1.1205266306005" resolveInfo="isAggregation" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1204919852528">
        <property name="text" value="&gt;" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1205357213298">
    <property name="package" value="attribute" />
    <link role="conceptDeclaration" targetNodeId="1.1205357139746" resolveInfo="AllAttributesQualifier" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1205357242128">
      <property name="editable" value="false" />
      <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheet" id="1205441004091">
    <property name="name" value="Styles" />
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1205441017139">
      <property name="name" value="ref_link_role" />
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleSheetItem" id="1205441036593">
        <property name="style" value="ITALIC" />
      </node>
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleSheetItem" id="1205441075892">
        <property name="color" value="darkGray" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1205861795290">
    <property name="package" value="operation.node" />
    <link role="conceptDeclaration" targetNodeId="1.1205861725686" resolveInfo="Node_IsAttributeOperation" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1205861801901">
      <property name="text" value="isAttribute" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1206019883830">
    <link role="conceptDeclaration" targetNodeId="1.1206019730951" resolveInfo="StaticConceptMethodCall" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1206019887863">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1206019889771">
        <link role="relationDeclaration" targetNodeId="1.1206019820684" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1206019889772">
          <link role="conceptDeclaration" targetNodeId="3.1169125787135" resolveInfo="AbstractConceptDeclaration" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1206019891665">
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206019896573">
        <property name="text" value="." />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1206019905903">
        <link role="relationDeclaration" targetNodeId="1.1206019830404" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1206019905904">
          <link role="conceptDeclaration" targetNodeId="9.1206017324045" resolveInfo="StaticConceptMethodDeclaration" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1206019907860">
            <property name="readOnly" value="true" />
            <link role="relationDeclaration" targetNodeId="2.1169194664001" resolveInfo="name" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206019913627">
        <property name="text" value="(" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1206019917223">
        <property name="vertical" value="false" />
        <property name="separatorText" value="," />
        <link role="relationDeclaration" targetNodeId="4.1068499141038" />
        <node role="emptyCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206019768050">
          <property name="editable" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206019920053">
        <property name="text" value=")" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.EditorComponentDeclaration" id="1206480334645">
    <property name="name" value="ReplaceableAlias_Comp" />
    <link role="conceptDeclaration" targetNodeId="1.1138411891628" resolveInfo="SNodeOperation" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1206484954170">
      <property name="fontStyle" value="BOLD" />
      <property name="noTargetText" value="&lt;no alias&gt;" />
      <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
      <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1206484954171">
        <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" id="1206484954172">
          <link role="replacementConcept" targetNodeId="1.1138411891628" resolveInfo="SNodeOperation" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1206482997218">
    <property name="package" value="operation.model" />
    <link role="conceptDeclaration" targetNodeId="1.1206482823744" resolveInfo="Model_AddRootOperation" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1206482604994">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1206482604995">
        <link role="editorComponent" targetNodeId="1206480334645" resolveInfo="AliasWithPar_Comp" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206484905011">
        <property name="layoutConstraint" value="punctuation" />
        <property name="text" value="(" />
        <property name="fontStyle" value="PLAIN" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1206482605000">
        <property name="noTargetText" value="&lt;no prototype&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1206482823746" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206482605001">
        <property name="text" value=")" />
        <property name="fontStyle" value="PLAIN" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.EditorComponentDeclaration" id="1206994531943">
    <property name="name" value="ReplaceableAliasAndParms_Comp" />
    <link role="conceptDeclaration" targetNodeId="1.1138411891628" resolveInfo="SNodeOperation" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1206995930398">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1206995930399">
        <property name="fontStyle" value="BOLD" />
        <property name="noTargetText" value="&lt;no alias&gt;" />
        <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1206995930400">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" id="1206995930401">
            <link role="replacementConcept" targetNodeId="1.1138411891628" resolveInfo="SNodeOperation" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1206995959902">
        <property name="vertical" value="false" />
        <property name="selectable" value="false" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206995959903">
          <property name="textFgColor" value="lightGray" />
          <property name="text" value="&lt;" />
          <property name="fontStyle" value="BOLD" />
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1206995959904">
          <property name="separatorText" value="," />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="1.1144104376918" />
          <node role="emptyCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206995959905">
            <property name="editable" value="true" />
            <property name="textFgColor" value="lightGray" />
            <property name="text" value="no params" />
            <property name="fontStyle" value="ITALIC" />
            <property name="drawBorder" value="false" />
            <property name="defaultCaretPosition" value="FIRST" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1206995959906">
          <property name="textFgColor" value="lightGray" />
          <property name="text" value="&gt;" />
          <property name="fontStyle" value="BOLD" />
          <property name="drawBorder" value="false" />
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1206995967611">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206995967612">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1206995979662">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206995987105">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206995980602">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1206995979663" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1206995983135">
                    <link role="link" targetNodeId="1.1144104376918" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.IsNotEmptyOperation" id="1206995990044" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1208783046932">
    <property name="package" value="command" />
    <link role="conceptDeclaration" targetNodeId="1.1208782992286" resolveInfo="ExecuteCommandStatement" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1208783051904">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1208783056000">
        <property name="vertical" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1208783115211">
          <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
          <link role="styleClass" targetNodeId="5.1186415544875" resolveInfo="KeyWord" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1208783059893">
          <property name="text" value="{" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1208783117979">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1208783118809" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1208783120764">
          <link role="relationDeclaration" targetNodeId="1.1208941703859" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1208783062380">
        <property name="text" value="}" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1208800400645">
    <property name="package" value="command" />
    <link role="conceptDeclaration" targetNodeId="1.1208800367109" resolveInfo="ExecuteCommandStatement_New" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1208800401746">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1208800401747">
        <property name="vertical" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ConceptProperty" id="1208803093462">
          <link role="relationDeclaration" targetNodeId="2.1137473891462" resolveInfo="alias" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1208800401749">
          <property name="text" value="{" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1208800401750">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1208800401751" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1208894979859">
          <link role="relationDeclaration" targetNodeId="1.1208800408260" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1208800401753">
        <property name="text" value="}" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1208899718161">
    <property name="package" value="command" />
    <link role="conceptDeclaration" targetNodeId="1.1208899702690" resolveInfo="CommandClosureLiteral" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1208899740749">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1208899742090">
        <link role="relationDeclaration" targetNodeId="11.1199569916463" />
      </node>
    </node>
  </node>
</model>


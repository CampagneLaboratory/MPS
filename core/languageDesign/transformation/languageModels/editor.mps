<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.transformation.TLBase.editor">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.editorLanguage" />
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage" />
  <language namespace="jetbrains.mps.bootstrap.sharedConcepts" />
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.transformation.TLBase.structure" version="1" />
  <maxImportIndex value="68" />
  <import index="1" modelUID="jetbrains.mps.transformation.TLBase.structure" version="1" />
  <import index="4" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="6" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1" />
  <import index="8" modelUID="jetbrains.mps.transformation@java_stub" version="-1" />
  <import index="9" modelUID="jetbrains.mps.nodeEditor@java_stub" version="-1" />
  <import index="10" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="11" modelUID="java.util@java_stub" version="-1" />
  <import index="18" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="61" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure@java_stub" version="-1" />
  <import index="63" modelUID="jetbrains.mps.plugin@java_stub" version="-1" />
  <import index="64" modelUID="jetbrains.mps.generator.template@java_stub" version="-1" />
  <import index="65" modelUID="java.lang@java_stub" version="-1" />
  <import index="67" modelUID="jetbrains.mps.transformation.TLBase.structure@java_stub" version="-1" />
  <import index="68" modelUID="jetbrains.mps.ide@java_stub" version="-1" />
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1087903454703">
    <property name="name" value="PropertyMacro_Editor" />
    <property name="package" value="macro" />
    <link role="conceptDeclaration" targetNodeId="1.1087833241328" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1087903454708">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1087907544521">
        <property name="drawBorder" value="false" />
        <property name="text" value="property macro" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1087907544522">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1087907544523">
          <property name="drawBorder" value="false" />
          <property name="text" value="java query (deprecated)" />
          <property name="textFgColor" value="red" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Custom" id="1088501636842">
          <property name="drawBorder" value="false" />
          <node role="cellProvider" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_CellProvider" id="1176804140005">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176804140006">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176804149783">
                <node role="expression" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryMethodIdEditorProviderExpression" id="1176804150566">
                  <property name="notSetString" value="&lt;no property macro&gt;" />
                  <property name="prefix" value="propertyMacro_" />
                  <link role="queryIdProperty" targetNodeId="1.1087833392642" />
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176804177971">
                    <property name="name" value="sourceNode" />
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176804179513">
                      <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                    </node>
                  </node>
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176804181061">
                    <property name="name" value="teplateNode" />
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176804182828">
                      <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                    </node>
                  </node>
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176804184970">
                    <property name="name" value="property" />
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176804190425">
                      <link role="classifier" targetNodeId="61.~PropertyDeclaration" resolveInfo="PropertyDeclaration" />
                    </node>
                  </node>
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176804193082">
                    <property name="name" value="generator" />
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176804197334">
                      <link role="classifier" targetNodeId="64.~ITemplateGenerator" resolveInfo="ITemplateGenerator" />
                    </node>
                  </node>
                  <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176804175939">
                    <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1167765644943">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1167765644944">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1167765668035">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1167765683353">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1167765687184" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227942979">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1167765674209" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1167765679930">
                    <link role="property" targetNodeId="1.1087833392642" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167756652555">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167756687276">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167756690247">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="text" value="value :" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1167756850114">
          <property name="drawBorder" value="false" />
          <property name="noTargetText" value="&lt;none&gt;" />
          <link role="relationDeclaration" targetNodeId="1.1167756362303" />
        </node>
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149859004960">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149859006667">
        <property name="drawBorder" value="false" />
        <property name="textBgColorSelected" value="cyan" />
        <property name="text" value="$" />
        <property name="fontStyle" value="BOLD_ITALIC" />
        <property name="selectable" value="true" />
        <property name="textFgColor" value="DARK_BLUE" />
        <link role="keyMap" targetNodeId="1149931179122" resolveInfo="MacroSymbol_KeyMap" />
        <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168019544316">
        <property name="drawBorder" value="false" />
        <property name="text" value="!" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="red" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1168019544317">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168019544318">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168019544319">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168019544320">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168019544321" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227907012">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168019544323" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1168019562184">
                    <link role="property" targetNodeId="1.1087833392642" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_AttributedPropertyCell" id="1149859009402">
        <property name="drawBorder" value="false" />
        <property name="drawBrackets" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1087926271843">
    <property name="name" value="NodeMacro_Editor" />
    <property name="package" value="macro" />
    <link role="conceptDeclaration" targetNodeId="1.1087833466690" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1089126084078">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1089126148391">
        <property name="drawBorder" value="false" />
        <property name="text" value="&lt; abstract node macro &gt;" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1096644584231">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1205871987409">
        <property name="vertical" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1207673648137">
          <property name="text" value="DEPRECATED USAGE. USE THE 'MAP_SRC' MACRO INSTEAD." />
          <property name="textFgColor" value="red" />
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1207673678326">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207673678327">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1207673683078">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1207673683079">
                  <property name="name" value="b1" />
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1207673683080" />
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1207673697550">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1207673697551" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207673697552">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1207673697553" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1207673697554">
                        <link role="property" targetNodeId="1.1152722085357" resolveInfo="mappingId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1207673707260">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1207673707261">
                  <property name="name" value="b2" />
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1207673707262" />
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1207673730498">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1207673730499" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207673730500">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1207673730501" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1207673730502">
                        <link role="link" targetNodeId="1.1200912223215" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1207673737988">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1207673737989">
                  <property name="name" value="b3" />
                  <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1207673737990" />
                  <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1207673750555">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1207673750556" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207673750557">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1207673750558" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1207673750559">
                        <link role="property" targetNodeId="1.1090493180053" resolveInfo="sourceQueryAspectMethodName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1207673759717">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1207673762673">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1207673765396">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207673767524">
                      <link role="variableDeclaration" targetNodeId="1207673737989" resolveInfo="b3" />
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207673765223">
                      <link role="variableDeclaration" targetNodeId="1207673707261" resolveInfo="b2" />
                    </node>
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207673762485">
                    <link role="variableDeclaration" targetNodeId="1207673683079" resolveInfo="b1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1205871987410">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1205871987411">
            <property name="drawBorder" value="false" />
            <property name="text" value="mapping name" />
            <property name="textFgColor" value="red" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1205871987412">
            <property name="drawBorder" value="false" />
            <property name="allowEmptyText" value="true" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1152722085357" resolveInfo="mappingId" />
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1207673395850">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207673395851">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207673412918">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1207673419376">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1207673421082" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207673414545">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1207673412919" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1207673417156">
                      <link role="property" targetNodeId="1.1152722085357" resolveInfo="mappingId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200912330334">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912330335">
            <property name="text" value="mapping label" />
            <property name="textFgColor" value="red" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912330336">
            <property name="text" value=":" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200912330337">
            <property name="noTargetText" value="&lt;no label&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1200912223215" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200912330338">
              <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200912330339">
                <property name="readOnly" value="true" />
                <property name="textBgColor" value="orange" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1207673437177">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207673437178">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207673442944">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1207673450949">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1207673453562" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207673447837">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1207673442945" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1207673449636">
                      <link role="link" targetNodeId="1.1200912223215" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1090493300946">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1090493300947">
            <property name="drawBorder" value="false" />
            <property name="text" value="templateSourceQuery_" />
            <property name="textFgColor" value="red" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Custom" id="1090493300948">
            <property name="drawBorder" value="false" />
            <node role="cellProvider" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_CellProvider" id="1176801919383">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176801919384">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176801946748">
                  <node role="expression" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryMethodIdEditorProviderExpression" id="1176801951891">
                    <property name="notSetString" value="&lt;parent&gt;" />
                    <property name="prefix" value="templateSourceQuery_" />
                    <link role="queryIdProperty" targetNodeId="1.1090493180053" />
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176801970665">
                      <property name="name" value="parentSourceNode" />
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176801974823">
                        <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                      </node>
                    </node>
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176801979214">
                      <property name="name" value="generator" />
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802018502">
                        <link role="classifier" targetNodeId="64.~ITemplateGenerator" resolveInfo="ITemplateGenerator" />
                      </node>
                    </node>
                    <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176801955049">
                      <link role="classifier" targetNodeId="11.~List" resolveInfo="List" />
                      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LowerBoundType" id="1176801961177">
                        <node role="bound" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176801963507">
                          <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1090493300949">
            <property name="drawBorder" value="false" />
            <property name="text" value="(..)" />
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1207673481156">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207673481157">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1207673483049">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1207673486632">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1207673488463" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207673484364">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1207673483050" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1207673484709">
                      <link role="property" targetNodeId="1.1090493180053" resolveInfo="sourceQueryAspectMethodName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149865862287">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149865868009">
        <property name="text" value="$$" />
        <property name="textBgColorSelected" value="cyan" />
        <property name="selectable" value="true" />
        <property name="textFgColor" value="red" />
        <property name="drawBorder" value="false" />
        <property name="fontStyle" value="ITALIC" />
        <property name="editable" value="true" />
        <link role="keyMap" targetNodeId="1149931179122" resolveInfo="MacroSymbol_KeyMap" />
        <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1185230015117">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" id="1185230018853">
            <link role="replacementConcept" targetNodeId="1.1087833466690" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1200912847340">
        <link role="editorComponent" targetNodeId="1184864447477" resolveInfo="NodeMacro_postfix" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1088762125437">
    <property name="name" value="ReferenceMacro_Editor" />
    <property name="package" value="macro" />
    <link role="conceptDeclaration" targetNodeId="1.1088761943574" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1088763040904">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167770426881">
        <property name="drawBorder" value="false" />
        <property name="text" value="reference macro" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167770426893">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167770426894">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167770426895">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="text" value="referent :" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1167770426896">
          <property name="drawBorder" value="false" />
          <property name="noTargetText" value="&lt;none&gt;" />
          <link role="relationDeclaration" targetNodeId="1.1167770376702" />
        </node>
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149858909222">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149858910850">
        <property name="drawBorder" value="false" />
        <property name="textBgColorSelected" value="cyan" />
        <property name="text" value="-&gt;$" />
        <property name="fontStyle" value="BOLD_ITALIC" />
        <property name="selectable" value="true" />
        <property name="textFgColor" value="DARK_BLUE" />
        <link role="keyMap" targetNodeId="1149931179122" resolveInfo="MacroSymbol_KeyMap" />
        <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_AttributedLinkCell" id="1149858915193">
        <property name="drawBorder" value="false" />
        <property name="drawBrackets" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1092060948911">
    <property name="name" value="TemplateDeclaration_Editor" />
    <property name="package" value="template" />
    <link role="conceptDeclaration" targetNodeId="1.1092059087312" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1092060948912">
      <property name="drawBorder" value="false" />
      <property name="vertical" value="true" />
      <property name="name" value="nodeBox" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168623804742">
        <property name="drawBorder" value="false" />
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168623804743">
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="name" value="headerRow" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168623804744">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="true" />
            <property name="text" value="template" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168623804745">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;no name&gt;" />
            <property name="textBgColorSelected" value="cyan" />
            <property name="textBgColor" value="yellow" />
            <link role="relationDeclaration" targetNodeId="4.1169194664001" />
            <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1183548078603">
              <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_PropertyValues" id="1183548083857">
                <node role="valuesFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_PropertyValues_GetValues" id="1183548083858">
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1183548083859">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1183548097936">
                      <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1183548097937">
                        <property name="name" value="values" />
                        <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1183548097938">
                          <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1183548102896">
                            <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
                          </node>
                        </node>
                        <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1183548110188">
                          <node role="creator" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListCreatorWithInit" id="1183548111521">
                            <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1183548114157">
                              <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1183548125361">
                      <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1183548125362">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1183548125363">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631562">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1183548125364">
                              <link role="variableDeclaration" targetNodeId="1183548097937" resolveInfo="values" />
                            </node>
                            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddElementOperation" id="1183548154080">
                              <node role="argument" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1183548165694">
                                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227892282">
                                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227895609">
                                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_Abstract_editedNode" id="1183548173969" />
                                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1183548178909">
                                      <link role="link" targetNodeId="1.1168285871518" />
                                    </node>
                                  </node>
                                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1183548181956">
                                    <link role="property" targetNodeId="4.1169194664001" />
                                  </node>
                                </node>
                                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1183548159725">
                                  <property name="value" value="reduce_" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1183548193884">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207675631706">
                            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1183548193885">
                              <link role="variableDeclaration" targetNodeId="1183548097937" resolveInfo="values" />
                            </node>
                            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.AddElementOperation" id="1183548197146">
                              <node role="argument" type="jetbrains.mps.baseLanguage.structure.PlusExpression" id="1183548213044">
                                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227890588">
                                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227885393">
                                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_Abstract_editedNode" id="1183548215197" />
                                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1183548218360">
                                      <link role="link" targetNodeId="1.1168285871518" />
                                    </node>
                                  </node>
                                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1183548221442">
                                    <link role="property" targetNodeId="4.1169194664001" />
                                  </node>
                                </node>
                                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1183548203871">
                                  <property name="value" value="weave_" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227909325">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227959130">
                          <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_Abstract_editedNode" id="1183548127010" />
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1183548132928">
                            <link role="link" targetNodeId="1.1168285871518" />
                          </node>
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1183548147726" />
                      </node>
                    </node>
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1183548186113">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1183548186114">
                        <link role="variableDeclaration" targetNodeId="1183548097937" resolveInfo="values" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168623810818">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168623810819">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="source" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1168623810820">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;any node&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1168285871518" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1168623810821">
              <link role="conceptDeclaration" targetNodeId="6.1169125787135" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168623810822">
                <property name="drawBorder" value="false" />
                <property name="textFgColor" value="DARK_MAGENTA" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1092060945722">
        <property name="selectable" value="false" />
        <property name="drawBorder" value="false" />
        <property name="name" value="separator" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1092826413145">
        <property name="drawBorder" value="false" />
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1092826609045">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1092826609046">
            <property name="drawBorder" value="false" />
            <property name="text" value="Ctrl-Shift-F" />
            <property name="textBgColor" value="pink" />
            <property name="name" value="help3" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168623739674">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1092826609047">
            <property name="drawBorder" value="false" />
            <property name="text" value="create template fragment" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1100116537416">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1100116537417">
            <property name="drawBorder" value="false" />
            <property name="text" value="Ctrl-Shift-M" />
            <property name="textBgColor" value="orange" />
            <property name="name" value="help1" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168623758004">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1100116537418">
            <property name="drawBorder" value="false" />
            <property name="text" value="create macro" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168286052181">
        <property name="selectable" value="false" />
        <property name="drawBorder" value="false" />
        <property name="name" value="separator" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1092061173513">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <property name="text" value="content node:" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1092135992437">
        <property name="drawBorder" value="false" />
        <property name="noTargetText" value="&lt;no content node&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1092060348987" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1095419078589">
    <property name="name" value="MappingConfiguration_Editor" />
    <link role="conceptDeclaration" targetNodeId="1.1095416546421" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1095419078590">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184950420877">
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184950420878">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184950420879">
            <property name="drawBorder" value="false" />
            <property name="text" value="mapping configuration" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1184950420880">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;no name&gt;" />
            <link role="relationDeclaration" targetNodeId="4.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184950447849">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184950447850">
            <property name="drawBorder" value="false" />
            <property name="text" value="top-priority group" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1184950447851">
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="1.1184950341882" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1095419376938">
        <property name="selectable" value="false" />
        <property name="drawBorder" value="false" />
        <property name="name" value="separator" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200911414924">
        <property name="selectable" value="false" />
        <property name="vertical" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200911421694">
          <property name="text" value="mapping labels:" />
          <property name="fontStyle" value="BOLD_ITALIC" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="underlined" value="2" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200911438227">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1200911479270" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1200911481866">
            <property name="vertical" value="true" />
            <property name="gridLayout" value="true" />
            <link role="relationDeclaration" targetNodeId="1.1200911492601" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200911416677">
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502446251">
        <property name="selectable" value="false" />
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195502446252">
          <property name="drawBorder" value="false" />
          <property name="text" value="conditional root rules:" />
          <property name="fontStyle" value="BOLD_ITALIC" />
          <property name="selectable" value="false" />
          <property name="underlined" value="2" />
          <property name="textFgColor" value="DARK_BLUE" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502446253">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1200911442886" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1195502446255">
            <property name="drawBorder" value="false" />
            <property name="vertical" value="true" />
            <property name="selectable" value="false" />
            <property name="gridLayout" value="true" />
            <link role="relationDeclaration" targetNodeId="1.1167088157977" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167519449203">
        <property name="selectable" value="false" />
        <property name="drawBorder" value="false" />
        <property name="name" value="separator" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502470959">
        <property name="selectable" value="false" />
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195502470960">
          <property name="drawBorder" value="false" />
          <property name="text" value="mapping rules:" />
          <property name="fontStyle" value="BOLD_ITALIC" />
          <property name="selectable" value="false" />
          <property name="underlined" value="2" />
          <property name="textFgColor" value="DARK_BLUE" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502470961">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1200911450903" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1195502470963">
            <property name="selectable" value="false" />
            <property name="vertical" value="true" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="1.1167514678247" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167514717724">
        <property name="selectable" value="false" />
        <property name="drawBorder" value="false" />
        <property name="name" value="separator" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502488589">
        <property name="selectable" value="false" />
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195502488590">
          <property name="drawBorder" value="false" />
          <property name="text" value="weaving rules:" />
          <property name="fontStyle" value="BOLD_ITALIC" />
          <property name="selectable" value="false" />
          <property name="underlined" value="2" />
          <property name="textFgColor" value="DARK_BLUE" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502488591">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1200911453982" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1195502488593">
            <property name="selectable" value="false" />
            <property name="vertical" value="true" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="1.1167172143858" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167172252976">
        <property name="selectable" value="false" />
        <property name="drawBorder" value="false" />
        <property name="name" value="separator" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502503500">
        <property name="selectable" value="false" />
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195502503501">
          <property name="drawBorder" value="false" />
          <property name="text" value="reduction rules:" />
          <property name="fontStyle" value="BOLD_ITALIC" />
          <property name="selectable" value="false" />
          <property name="underlined" value="2" />
          <property name="textFgColor" value="DARK_BLUE" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502503502">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1200911457280" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1195502503504">
            <property name="selectable" value="false" />
            <property name="vertical" value="true" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="1.1167328349397" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167328391796">
        <property name="selectable" value="false" />
        <property name="drawBorder" value="false" />
        <property name="name" value="separator" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502524912">
        <property name="selectable" value="false" />
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195502524913">
          <property name="drawBorder" value="false" />
          <property name="text" value="abandon roots:" />
          <property name="fontStyle" value="BOLD_ITALIC" />
          <property name="selectable" value="false" />
          <property name="underlined" value="2" />
          <property name="textFgColor" value="DARK_BLUE" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502524914">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1200911461000" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1195502524916">
            <property name="drawBorder" value="false" />
            <property name="vertical" value="true" />
            <property name="selectable" value="false" />
            <property name="gridLayout" value="true" />
            <link role="relationDeclaration" targetNodeId="1.1169742456963" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195502382531">
        <property name="selectable" value="false" />
        <property name="drawBorder" value="false" />
        <property name="name" value="separator" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502537135">
        <property name="selectable" value="false" />
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195502537136">
          <property name="drawBorder" value="false" />
          <property name="text" value="pre-processing scripts:" />
          <property name="fontStyle" value="BOLD_ITALIC" />
          <property name="selectable" value="false" />
          <property name="underlined" value="2" />
          <property name="textFgColor" value="DARK_BLUE" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502537137">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1200911464907" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1195502537139">
            <property name="drawBorder" value="false" />
            <property name="vertical" value="true" />
            <property name="selectable" value="false" />
            <property name="gridLayout" value="true" />
            <link role="relationDeclaration" targetNodeId="1.1195502100749" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195502593672">
        <property name="selectable" value="false" />
        <property name="drawBorder" value="false" />
        <property name="name" value="separator" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502593673">
        <property name="selectable" value="false" />
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195502593674">
          <property name="drawBorder" value="false" />
          <property name="text" value="post-processing scripts:" />
          <property name="fontStyle" value="BOLD_ITALIC" />
          <property name="selectable" value="false" />
          <property name="underlined" value="2" />
          <property name="textFgColor" value="DARK_BLUE" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195502593675">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Indent" id="1200911468893" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1195502593677">
            <property name="drawBorder" value="false" />
            <property name="vertical" value="true" />
            <property name="selectable" value="false" />
            <property name="gridLayout" value="true" />
            <link role="relationDeclaration" targetNodeId="1.1195502346405" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1095672501074">
    <property name="name" value="TemplateFragment_Editor" />
    <property name="package" value="template" />
    <link role="conceptDeclaration" targetNodeId="1.1095672379244" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1095672654001">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184374372470">
        <property name="drawBorder" value="false" />
        <property name="text" value="template fragment" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184374372471">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184374372472">
        <property name="drawBorder" value="false" />
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184374372473">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184374372474">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapping name" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184374372475">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1184374372476">
            <property name="allowEmptyText" value="true" />
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="4.1169194664001" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200916708541">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200916709402">
            <property name="text" value="mapping label" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200916713576">
            <property name="text" value=":" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200916720609">
            <property name="noTargetText" value="&lt;no label&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1200916687663" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200916720610">
              <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200916724412">
                <property name="readOnly" value="true" />
                <property name="textBgColor" value="orange" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184374372516">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184374372517">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="fragment context" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184374372518">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1184374372519">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;main context node&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1184374535435" />
          </node>
        </node>
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1096109716628">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1096109764800">
        <property name="drawBorder" value="false" />
        <property name="text" value="&lt;TF" />
        <property name="textBgColorSelected" value="magenta" />
        <property name="textBgColor" value="pink" />
        <property name="selectable" value="true" />
        <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_NonEmptyProperty" id="1184320814183">
        <property name="textBgColor" value="orange" />
        <property name="textBgColorSelected" value="cyan" />
        <link role="relationDeclaration" targetNodeId="4.1169194664001" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200916748727">
        <property name="noTargetText" value="&lt;no label&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1200916687663" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200916748728">
          <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200916748729">
            <property name="readOnly" value="true" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1200916762542">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200916762543">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200916764091">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1200916767347">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1200916769537" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227894035">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1200916764092" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200916766658">
                    <link role="link" targetNodeId="1.1200916687663" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_AttributedNodeCell" id="1149858834706">
        <property name="drawBorder" value="false" />
        <property name="drawBrackets" value="true" />
        <property name="bracketsColor" value="pink" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149858857560">
        <property name="drawBorder" value="false" />
        <property name="text" value="TF&gt;" />
        <property name="textBgColorSelected" value="magenta" />
        <property name="textBgColor" value="pink" />
        <property name="selectable" value="true" />
        <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1112731832583">
    <property name="package" value="macro" />
    <link role="conceptDeclaration" targetNodeId="1.1112731569622" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1112732002603">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168380475643">
        <property name="drawBorder" value="false" />
        <property name="text" value="switch-macro" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168380475644">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168380475645">
        <property name="drawBorder" value="false" />
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168380475646">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168380475647">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapping name" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168380475648">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168380475649">
            <property name="allowEmptyText" value="true" />
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="1.1152722085357" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200912349154">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912349155">
            <property name="text" value="mapping label" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912349156">
            <property name="text" value=":" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200912349157">
            <property name="noTargetText" value="&lt;no label&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1200912223215" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200912349158">
              <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200912349159">
                <property name="readOnly" value="true" />
                <property name="textBgColor" value="orange" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168380475650">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168380475651">
            <property name="drawBorder" value="false" />
            <property name="text" value="java query (deprecated)" />
            <property name="textFgColor" value="red" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168380475652">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Custom" id="1168380475653">
            <property name="drawBorder" value="false" />
            <node role="cellProvider" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_CellProvider" id="1176802045905">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176802045906">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176802046309">
                  <node role="expression" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryMethodIdEditorProviderExpression" id="1176802046310">
                    <property name="notSetString" value="&lt;parent&gt;" />
                    <property name="prefix" value="templateSourceQuery_" />
                    <link role="queryIdProperty" targetNodeId="1.1090493180053" />
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176802046311">
                      <property name="name" value="parentSourceNode" />
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802046312">
                        <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                      </node>
                    </node>
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176802046313">
                      <property name="name" value="generator" />
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802046314">
                        <link role="classifier" targetNodeId="64.~ITemplateGenerator" resolveInfo="ITemplateGenerator" />
                      </node>
                    </node>
                    <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802046315">
                      <link role="classifier" targetNodeId="11.~List" resolveInfo="List" />
                      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LowerBoundType" id="1176802046316">
                        <node role="bound" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802046317">
                          <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1168380475654">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168380475655">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168380475656">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168380475657">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168380475658" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227908237">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168380475660" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1168382781165">
                      <link role="property" targetNodeId="1.1090493180053" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168649023867">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168649023868">
            <property name="drawBorder" value="false" />
            <property name="text" value="mapped concept (deprecated)" />
            <property name="textFgColor" value="red" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168649023869">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1168649023870">
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="1.1168648432408" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1168649023871">
              <link role="conceptDeclaration" targetNodeId="6.1071489090640" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168649023872">
                <property name="drawBorder" value="false" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" />
              </node>
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1168649023873">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168649023874">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168649023875">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168649023876">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168649023877" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227889214">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168649023879" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1168649023880">
                      <link role="link" targetNodeId="1.1168648432408" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168380475676">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168380475677">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapped node" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168380475678">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1168380475679">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;current source node&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1168380395224" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168380594944">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168380594945">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168380594946">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="template switch" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168380600468">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1168380594947">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;choose template switch&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1112731629154" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1168380594948">
              <link role="conceptDeclaration" targetNodeId="1.1112730859144" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168380594949">
                <property name="drawBorder" value="false" />
                <property name="noTargetText" value="&lt;no name&gt;" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" />
                <link role="styleClass" targetNodeId="1194566785068" resolveInfo="c1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149865970859">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149865971863">
        <property name="drawBorder" value="false" />
        <property name="textBgColorSelected" value="cyan" />
        <property name="text" value="$SWITCH$" />
        <property name="fontStyle" value="BOLD_ITALIC" />
        <property name="editable" value="true" />
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="attractsFocus" value="1" />
        <link role="keyMap" targetNodeId="1149931179122" resolveInfo="MacroSymbol_KeyMap" />
        <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1185229261881">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" id="1185229261882">
            <link role="replacementConcept" targetNodeId="1.1087833466690" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168380692643">
        <property name="drawBorder" value="false" />
        <property name="text" value="!" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="red" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1168649092481">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168649092482">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168649092483">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1168649092484">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168649092485">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227889563">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168649092487" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1168649114854">
                      <link role="property" targetNodeId="1.1090493180053" />
                    </node>
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168649092489" />
                </node>
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168649092490">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168649092491" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227883145">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168649092493" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1168649092494">
                      <link role="link" targetNodeId="1.1168648432408" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1184865715451">
        <link role="editorComponent" targetNodeId="1184864447477" resolveInfo="NodeMacro_postfix" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1112732167706">
    <link role="conceptDeclaration" targetNodeId="1.1112730859144" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1112732179003">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1113324878579">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1113324878580">
          <property name="drawBorder" value="false" />
          <property name="text" value="template switch" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1113324878581">
          <property name="drawBorder" value="false" />
          <property name="noTargetText" value="&lt;no name&gt;" />
          <link role="relationDeclaration" targetNodeId="4.1169194664001" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1113324878582">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="text" value="extends" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1113324878583">
          <property name="drawBorder" value="false" />
          <property name="noTargetText" value="&lt;none&gt;" />
          <link role="relationDeclaration" targetNodeId="1.1112820671508" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1113324878584">
            <link role="conceptDeclaration" targetNodeId="1.1112730859144" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1113324878585">
              <property name="drawBorder" value="false" />
              <property name="noTargetText" value="&lt;no name&gt;" />
              <property name="readOnly" value="true" />
              <link role="relationDeclaration" targetNodeId="4.1169194664001" />
              <link role="styleClass" targetNodeId="1194566785068" resolveInfo="reference" />
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1112732307916">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1112732228505">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1112732307917">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="text" value="  " />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167337603751">
          <property name="selectable" value="false" />
          <property name="vertical" value="true" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167340820337">
            <property name="drawBorder" value="false" />
            <property name="text" value="cases:" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167340983613">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167340820338">
            <property name="selectable" value="false" />
            <property name="vertical" value="false" />
            <property name="drawBorder" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167340820339">
              <property name="drawBorder" value="false" />
              <property name="text" value="  " />
              <property name="selectable" value="false" />
              <property name="name" value="indent" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1167340820340">
              <property name="selectable" value="false" />
              <property name="vertical" value="true" />
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="1.1167340453568" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167340858502">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167340861629">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168559964846">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168559964847">
              <property name="drawBorder" value="false" />
              <property name="text" value="default:" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1168560005632">
              <property name="drawBorder" value="false" />
              <property name="noTargetText" value="&lt;ignore switch&gt;" />
              <link role="relationDeclaration" targetNodeId="1.1168558750579" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1112911659681">
    <link role="conceptDeclaration" targetNodeId="1.1112911581741" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1112911714074">
      <property name="drawBorder" value="false" />
      <property name="noTargetText" value="&lt;choose switch&gt;" />
      <link role="relationDeclaration" targetNodeId="1.1112911598335" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1112911678104">
        <link role="conceptDeclaration" targetNodeId="1.1112730859144" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1112911714075">
          <property name="drawBorder" value="false" />
          <property name="noTargetText" value="&lt;no name&gt;" />
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="4.1169194664001" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1114458549484">
    <link role="conceptDeclaration" targetNodeId="1.1114458327664" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1114458600627">
      <property name="drawBorder" value="false" />
      <property name="noTargetText" value="&lt;choose concept declaration&gt;" />
      <link role="relationDeclaration" targetNodeId="1.1114458346385" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1114458566423">
        <link role="conceptDeclaration" targetNodeId="6.1071489090640" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1114458600628">
          <property name="drawBorder" value="false" />
          <property name="noTargetText" value="&lt;no name&gt;" />
          <property name="readOnly" value="true" />
          <property name="textFgColor" value="DARK_MAGENTA" />
          <link role="relationDeclaration" targetNodeId="4.1169194664001" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1114707211025">
    <property name="package" value="macro" />
    <link role="conceptDeclaration" targetNodeId="1.1118773211870" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1114709712821">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1114709792729">
        <property name="drawBorder" value="false" />
        <property name="text" value="if-macro" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167866342692">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167946208457">
        <property name="drawBorder" value="false" />
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167946208458">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167946208459">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapping name" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167946208460">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1167946208461">
            <property name="allowEmptyText" value="true" />
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="1.1152722085357" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200912276142">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912276143">
            <property name="text" value="mapping label" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912276144">
            <property name="text" value=":" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200912276145">
            <property name="noTargetText" value="&lt;no label&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1200912223215" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200912276146">
              <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200912276147">
                <property name="readOnly" value="true" />
                <property name="textBgColor" value="orange" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167946218106">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167946218107">
            <property name="drawBorder" value="false" />
            <property name="text" value="java query (deprecated)" />
            <property name="textFgColor" value="red" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167946218108">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Custom" id="1167946218109">
            <property name="drawBorder" value="false" />
            <node role="cellProvider" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_CellProvider" id="1176803086229">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176803086230">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176803087987">
                  <node role="expression" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryMethodIdEditorProviderExpression" id="1176803087988">
                    <property name="notSetString" value="&lt;no condition&gt;" />
                    <property name="prefix" value="semanticNodeCondition_" />
                    <link role="queryIdProperty" targetNodeId="1.1118773281249" />
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176803087989">
                      <property name="name" value="sourceNode" />
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176803087990">
                        <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                      </node>
                    </node>
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176803087991">
                      <property name="name" value="context" />
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176803087992">
                        <link role="classifier" targetNodeId="10.~IOperationContext" resolveInfo="IOperationContext" />
                      </node>
                    </node>
                    <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1176803087993" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1167946218110">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1167946218111">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1167946218112">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1167946218113">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1167946218114" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227886103">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1167946218116" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1167946450773">
                      <link role="property" targetNodeId="1.1118773281249" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167946218119">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167946218120">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="condition" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167946218121">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1167946218122">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="attractsFocus" value="2" />
            <link role="relationDeclaration" targetNodeId="1.1167945861827" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1194989407216">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1194989407217">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="alternative" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1194989407218">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1194989407219">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1194989344771" />
          </node>
        </node>
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149865994570">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149865995528">
        <property name="drawBorder" value="false" />
        <property name="textBgColorSelected" value="cyan" />
        <property name="text" value="$IF$" />
        <property name="fontStyle" value="BOLD_ITALIC" />
        <property name="editable" value="true" />
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="attractsFocus" value="1" />
        <link role="keyMap" targetNodeId="1149931179122" resolveInfo="MacroSymbol_KeyMap" />
        <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1185229081260">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" id="1185229081261">
            <link role="replacementConcept" targetNodeId="1.1087833466690" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168019522719">
        <property name="drawBorder" value="false" />
        <property name="text" value="!" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="red" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1168019522720">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168019522721">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168019522722">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168019522723">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168019522724" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227903303">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168019522726" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1168019533915">
                    <link role="property" targetNodeId="1.1118773281249" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1184865608223">
        <link role="editorComponent" targetNodeId="1184864447477" resolveInfo="NodeMacro_postfix" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1203262602124">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1203262902866">
          <property name="text" value="/" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1203262602125">
          <property name="text" value="$ELSE$" />
          <property name="fontStyle" value="BOLD_ITALIC" />
          <property name="textFgColor" value="DARK_BLUE" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1203262602126">
          <property name="drawBrackets" value="true" />
          <link role="relationDeclaration" targetNodeId="1.1194989344771" />
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1203262602127">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1203262602128">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1203262602129">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227933313">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227905492">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1203262602134" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1203262602133">
                    <link role="link" targetNodeId="1.1194989344771" />
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1203262602131" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1114729546995">
    <property name="package" value="macro" />
    <link role="conceptDeclaration" targetNodeId="1.1114729360583" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1114729602403">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168278698423">
        <property name="drawBorder" value="false" />
        <property name="text" value="copy/reduce node list macro" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168278698424">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168278698425">
        <property name="drawBorder" value="false" />
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168278698426">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168278698427">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapping name" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168278698428">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168278698429">
            <property name="allowEmptyText" value="true" />
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="1.1152722085357" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200912270588">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912270589">
            <property name="text" value="mapping label" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912270590">
            <property name="text" value=":" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200912270591">
            <property name="noTargetText" value="&lt;no label&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1200912223215" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200912270592">
              <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200912270593">
                <property name="readOnly" value="true" />
                <property name="textBgColor" value="orange" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168278698430">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168278698431">
            <property name="drawBorder" value="false" />
            <property name="text" value="java query (deprecated)" />
            <property name="textFgColor" value="red" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168278698432">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Custom" id="1168278698433">
            <property name="drawBorder" value="false" />
            <node role="cellProvider" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_CellProvider" id="1176802053182">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176802053183">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176802053977">
                  <node role="expression" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryMethodIdEditorProviderExpression" id="1176802053978">
                    <property name="notSetString" value="&lt;parent&gt;" />
                    <property name="prefix" value="templateSourceQuery_" />
                    <link role="queryIdProperty" targetNodeId="1.1090493180053" />
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176802053979">
                      <property name="name" value="parentSourceNode" />
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802053980">
                        <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                      </node>
                    </node>
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176802053981">
                      <property name="name" value="generator" />
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802053982">
                        <link role="classifier" targetNodeId="64.~ITemplateGenerator" resolveInfo="ITemplateGenerator" />
                      </node>
                    </node>
                    <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802053983">
                      <link role="classifier" targetNodeId="11.~List" resolveInfo="List" />
                      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LowerBoundType" id="1176802053984">
                        <node role="bound" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802053985">
                          <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1168278698434">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168278698435">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168278698436">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168278698437">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168278698438" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227923147">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168278698440" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1168278698441">
                      <link role="property" targetNodeId="1.1090493180053" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168278698448">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168278698449">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapped nodes" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168278698450">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1168278698451">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="attractsFocus" value="2" />
            <link role="relationDeclaration" targetNodeId="1.1168278589236" />
          </node>
        </node>
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149865947522">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149865948823">
        <property name="drawBorder" value="false" />
        <property name="textBgColorSelected" value="cyan" />
        <property name="text" value="$COPY_SRCL$" />
        <property name="fontStyle" value="BOLD_ITALIC" />
        <property name="editable" value="true" />
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="attractsFocus" value="1" />
        <link role="keyMap" targetNodeId="1149931179122" resolveInfo="MacroSymbol_KeyMap" />
        <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1185229126496">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" id="1185229126497">
            <link role="replacementConcept" targetNodeId="1.1087833466690" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168278666106">
        <property name="drawBorder" value="false" />
        <property name="text" value="!" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="red" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1168278666107">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168278666108">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168278666109">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168278666110">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168278666111" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227937681">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168278666113" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1168278666114">
                    <link role="property" targetNodeId="1.1090493180053" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1184865655240">
        <link role="editorComponent" targetNodeId="1184864447477" resolveInfo="NodeMacro_postfix" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1118773368750">
    <property name="package" value="macro" />
    <link role="conceptDeclaration" targetNodeId="1.1114706874351" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149866056564">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Alternation" id="1184214793163">
        <property name="vertical" value="true" />
        <node role="alternationCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1184214793165">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184214793166">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184217422267">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1184217425754">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1184217425755">
                  <link role="baseMethodDeclaration" targetNodeId="1184217274077" resolveInfo="isShowInline" />
                  <link role="classConcept" targetNodeId="1184217267887" resolveInfo="ShowInlineUtil" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1184217425756" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="ifTrueCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184214890348">
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="cyan" />
          <property name="text" value="$COPY_SRC$" />
          <property name="fontStyle" value="BOLD_ITALIC" />
          <property name="editable" value="true" />
          <property name="textFgColor" value="DARK_BLUE" />
          <property name="attractsFocus" value="1" />
          <link role="keyMap" targetNodeId="1149931179122" resolveInfo="MacroSymbol_KeyMap" />
          <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
          <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1185228138164">
            <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" id="1185228247259">
              <link role="replacementConcept" targetNodeId="1.1087833466690" />
            </node>
          </node>
        </node>
        <node role="ifFalseCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184214899933">
          <property name="vertical" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184214901037">
            <property name="drawBorder" value="false" />
            <property name="textBgColorSelected" value="cyan" />
            <property name="text" value="$COPY_SRC$" />
            <property name="fontStyle" value="BOLD_ITALIC" />
            <property name="editable" value="true" />
            <property name="textFgColor" value="DARK_BLUE" />
            <property name="attractsFocus" value="1" />
            <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
            <link role="keyMap" targetNodeId="1149931179122" resolveInfo="MacroSymbol_KeyMap" />
            <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1185229144623">
              <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" id="1185229144624">
                <link role="replacementConcept" targetNodeId="1.1087833466690" />
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1184215406198">
            <link role="editorComponent" targetNodeId="1184214289430" resolveInfo="CopyScrNodeMacro_inspector" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1184865678180">
        <link role="editorComponent" targetNodeId="1184864447477" resolveInfo="NodeMacro_postfix" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1184214434098">
      <link role="editorComponent" targetNodeId="1184214289430" resolveInfo="CopyScrNodeMacro_inspector" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1118786597045">
    <property name="package" value="macro" />
    <link role="conceptDeclaration" targetNodeId="1.1118786554307" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1118786597047">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167952224466">
        <property name="drawBorder" value="false" />
        <property name="text" value="loop-macro" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167952224467">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167952224468">
        <property name="drawBorder" value="false" />
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167952224469">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167952224470">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapping name" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167952224471">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1167952224472">
            <property name="allowEmptyText" value="true" />
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="1.1152722085357" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200912287265">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912287266">
            <property name="text" value="mapping label" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912287267">
            <property name="text" value=":" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200912287268">
            <property name="noTargetText" value="&lt;no label&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1200912223215" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200912287269">
              <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200912287270">
                <property name="readOnly" value="true" />
                <property name="textBgColor" value="orange" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167952224473">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167952224474">
            <property name="drawBorder" value="false" />
            <property name="text" value="java query (deprecated)" />
            <property name="textFgColor" value="red" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167952224475">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Custom" id="1167952224476">
            <property name="drawBorder" value="false" />
            <node role="cellProvider" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_CellProvider" id="1176802061584">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176802061585">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176802061926">
                  <node role="expression" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryMethodIdEditorProviderExpression" id="1176802061927">
                    <property name="notSetString" value="&lt;parent&gt;" />
                    <property name="prefix" value="templateSourceQuery_" />
                    <link role="queryIdProperty" targetNodeId="1.1090493180053" />
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176802061928">
                      <property name="name" value="parentSourceNode" />
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802061929">
                        <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                      </node>
                    </node>
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176802061930">
                      <property name="name" value="generator" />
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802061931">
                        <link role="classifier" targetNodeId="64.~ITemplateGenerator" resolveInfo="ITemplateGenerator" />
                      </node>
                    </node>
                    <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802061932">
                      <link role="classifier" targetNodeId="11.~List" resolveInfo="List" />
                      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LowerBoundType" id="1176802061933">
                        <node role="bound" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802061934">
                          <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1167952224477">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1167952224478">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1167952224479">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1167952224480">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1167952224481" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227884809">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1167952224483" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1167952352070">
                      <link role="property" targetNodeId="1.1090493180053" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168648563444">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168648563445">
            <property name="drawBorder" value="false" />
            <property name="text" value="mapped concept (deprecated)" />
            <property name="textFgColor" value="red" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168648563446">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1168648599050">
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="1.1168648432408" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1168648599051">
              <link role="conceptDeclaration" targetNodeId="6.1071489090640" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168648609678">
                <property name="drawBorder" value="false" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" />
              </node>
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1168648563448">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168648563449">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168648563450">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168648563451">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168648563452" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227955913">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168648563454" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1168648626413">
                      <link role="link" targetNodeId="1.1168648432408" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167952224485">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167952224486">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapped nodes" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167952224487">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1167952224504">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="attractsFocus" value="2" />
            <link role="relationDeclaration" targetNodeId="1.1167952069335" />
          </node>
        </node>
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149866039728">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149866040638">
        <property name="drawBorder" value="false" />
        <property name="textBgColorSelected" value="cyan" />
        <property name="text" value="$LOOP$" />
        <property name="fontStyle" value="BOLD_ITALIC" />
        <property name="editable" value="true" />
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="attractsFocus" value="1" />
        <link role="keyMap" targetNodeId="1149931179122" resolveInfo="MacroSymbol_KeyMap" />
        <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1185229158782">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" id="1185229158783">
            <link role="replacementConcept" targetNodeId="1.1087833466690" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168019424098">
        <property name="drawBorder" value="false" />
        <property name="text" value="!" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="red" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1168649141024">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168649141025">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168649141026">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1168649141027">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168649141028">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227902642">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168649141030" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1168649146585">
                      <link role="property" targetNodeId="1.1090493180053" />
                    </node>
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168649141032" />
                </node>
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168649141033">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168649141034" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227892819">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168649141036" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1168649141037">
                      <link role="link" targetNodeId="1.1168648432408" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1184865359555">
        <link role="editorComponent" targetNodeId="1184864447477" resolveInfo="NodeMacro_postfix" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1131073370410">
    <property name="package" value="macro" />
    <link role="conceptDeclaration" targetNodeId="1.1131073187192" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1131073370412">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168281881363">
        <property name="drawBorder" value="false" />
        <property name="text" value="map node macro" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168281881364">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168281881365">
        <property name="drawBorder" value="false" />
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168281881366">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168281881367">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapping name" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168281881368">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168281881369">
            <property name="allowEmptyText" value="true" />
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="1.1152722085357" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200912323546">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912323547">
            <property name="text" value="mapping label" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912323548">
            <property name="text" value=":" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200912323549">
            <property name="noTargetText" value="&lt;no label&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1200912223215" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200912323550">
              <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200912323551">
                <property name="readOnly" value="true" />
                <property name="textBgColor" value="orange" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168649038551">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168649038552">
            <property name="drawBorder" value="false" />
            <property name="text" value="mapped concept (deprecated)" />
            <property name="textFgColor" value="red" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168649038553">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1168649038554">
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="1.1168648432408" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1168649038555">
              <link role="conceptDeclaration" targetNodeId="6.1071489090640" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168649038556">
                <property name="drawBorder" value="false" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" />
              </node>
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1168649038557">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168649038558">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168649038559">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168649038560">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168649038561" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227897845">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168649038563" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1168649038564">
                      <link role="link" targetNodeId="1.1168648432408" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168281881382">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168281881383">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapped node" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168281881384">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1168281881385">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;current source node&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1168281849769" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1170725947556">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1170725947557">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapping func" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1170725947558">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1170725947559">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;default&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1170725844563" />
          </node>
        </node>
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149866021735">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149866022646">
        <property name="drawBorder" value="false" />
        <property name="textBgColorSelected" value="cyan" />
        <property name="text" value="$MAP_SRC$" />
        <property name="fontStyle" value="BOLD_ITALIC" />
        <property name="editable" value="true" />
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="attractsFocus" value="1" />
        <link role="keyMap" targetNodeId="1149931179122" resolveInfo="MacroSymbol_KeyMap" />
        <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1185229239786">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" id="1185229239787">
            <link role="replacementConcept" targetNodeId="1.1087833466690" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1184865705543">
        <link role="editorComponent" targetNodeId="1184864447477" resolveInfo="NodeMacro_postfix" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1133037934981">
    <property name="package" value="macro" />
    <link role="conceptDeclaration" targetNodeId="1.1133037731736" />
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1133038004770">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168291602938">
        <property name="drawBorder" value="false" />
        <property name="text" value="map node macro" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168291602939">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168291602940">
        <property name="drawBorder" value="false" />
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168291602941">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168291602942">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapping name" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168291602943">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168291602944">
            <property name="allowEmptyText" value="true" />
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="1.1152722085357" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200912293382">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912293383">
            <property name="text" value="mapping label" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912293384">
            <property name="text" value=":" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200912293385">
            <property name="noTargetText" value="&lt;no label&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1200912223215" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200912293386">
              <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200912293387">
                <property name="readOnly" value="true" />
                <property name="textFgColor" value="orange" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168291602945">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168291602946">
            <property name="drawBorder" value="false" />
            <property name="text" value="java query (deprecated)" />
            <property name="textFgColor" value="red" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168291602947">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Custom" id="1168291602948">
            <property name="drawBorder" value="false" />
            <node role="cellProvider" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_CellProvider" id="1176802074399">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176802074400">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176802075194">
                  <node role="expression" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryMethodIdEditorProviderExpression" id="1176802075195">
                    <property name="notSetString" value="&lt;parent&gt;" />
                    <property name="prefix" value="templateSourceQuery_" />
                    <link role="queryIdProperty" targetNodeId="1.1090493180053" />
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176802075196">
                      <property name="name" value="parentSourceNode" />
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802075197">
                        <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                      </node>
                    </node>
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176802075198">
                      <property name="name" value="generator" />
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802075199">
                        <link role="classifier" targetNodeId="64.~ITemplateGenerator" resolveInfo="ITemplateGenerator" />
                      </node>
                    </node>
                    <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802075200">
                      <link role="classifier" targetNodeId="11.~List" resolveInfo="List" />
                      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LowerBoundType" id="1176802075201">
                        <node role="bound" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176802075202">
                          <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1168291602949">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168291602950">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168291602951">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168291602952">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168291602953" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227878560">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168291602955" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1168291602956">
                      <link role="property" targetNodeId="1.1090493180053" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168648990339">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168648990340">
            <property name="drawBorder" value="false" />
            <property name="text" value="mapped concept (deprecated)" />
            <property name="textFgColor" value="red" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168648990341">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1168648990342">
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="1.1168648432408" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1168648990343">
              <link role="conceptDeclaration" targetNodeId="6.1071489090640" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168648990344">
                <property name="drawBorder" value="false" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" />
              </node>
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1168648990345">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168648990346">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168648990347">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168648990348">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168648990349" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227900003">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168648990351" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1168648990352">
                      <link role="link" targetNodeId="1.1168648432408" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168291602963">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168291602964">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapped nodes" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168291602965">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1168291602966">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1168291362368" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1170898922301">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1170898922302">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapping func" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1170898922303">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1170898922304">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;default&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1170871384825" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168291763040">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168291763041">
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168291763042">
          <property name="drawBorder" value="false" />
          <property name="text" value="templateSourceNodeMapper_ (old)" />
          <property name="textFgColor" value="red" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Custom" id="1168291763043">
          <property name="drawBorder" value="false" />
          <node role="cellProvider" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_CellProvider" id="1176804676371">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176804676372">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176804676722">
                <node role="expression" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryMethodIdEditorProviderExpression" id="1176804676723">
                  <property name="notSetString" value="&lt;default&gt;" />
                  <property name="prefix" value="templateSourceNodeMapper_" />
                  <link role="queryIdProperty" targetNodeId="1.1133037795224" />
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176804676724">
                    <property name="name" value="sourceNode" />
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176804676725">
                      <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                    </node>
                  </node>
                  <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1176804676726">
                    <property name="name" value="generator" />
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176804676727">
                      <link role="classifier" targetNodeId="64.~ITemplateGenerator" resolveInfo="ITemplateGenerator" />
                    </node>
                  </node>
                  <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176804676728">
                    <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1170898776381">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1170898776382">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1170898776383">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1170898776384">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1170898776385" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227926953">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1170898776387" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1170898785202">
                    <link role="property" targetNodeId="1.1133037795224" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1149865914232">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1149865915190">
        <property name="drawBorder" value="false" />
        <property name="textBgColorSelected" value="cyan" />
        <property name="text" value="$MAP_SRCL$" />
        <property name="fontStyle" value="BOLD_ITALIC" />
        <property name="editable" value="true" />
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="attractsFocus" value="1" />
        <link role="keyMap" targetNodeId="1149931179122" resolveInfo="MacroSymbol_KeyMap" />
        <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1185229219830">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" id="1185229219831">
            <link role="replacementConcept" targetNodeId="1.1087833466690" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168291575106">
        <property name="drawBorder" value="false" />
        <property name="text" value="!" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="red" />
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1168649164567">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168649164568">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1170898551543">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1170898551544">
                <property name="name" value="b" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1170898551546" />
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168649164571">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227911371">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168649164573" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1168649168737">
                      <link role="property" targetNodeId="1.1090493180053" />
                    </node>
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168649164575" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1170898582537">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1170898582836">
                <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1170898582538">
                  <link role="variableDeclaration" targetNodeId="1170898551544" resolveInfo="b" />
                </node>
                <node role="rValue" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1170898587648">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1170898587649">
                    <link role="variableDeclaration" targetNodeId="1170898551544" resolveInfo="b" />
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1170898587650">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1170898587651" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227927180">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1170898587653" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1170898587654">
                        <link role="link" targetNodeId="1.1168648432408" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168649164569">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1168649164570">
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1170898551547">
                  <link role="variableDeclaration" targetNodeId="1170898551544" resolveInfo="b" />
                </node>
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1168649164576">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1168649164577" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227842429">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1168649164579" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1170898617578">
                      <link role="property" targetNodeId="1.1133037795224" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1184865693854">
        <link role="editorComponent" targetNodeId="1184864447477" resolveInfo="NodeMacro_postfix" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapDeclaration" id="1149868357716">
    <property name="everyModel" value="true" />
    <property name="name" value="MacrosSwitch_KeyMap" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1149868396494">
      <property name="description" value="create template fragmet" />
      <property name="showInPopup" value="true" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1149868396495">
        <property name="keycode" value="VK_F" />
        <property name="modifiers" value="ctrl+shift" />
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1149868396496">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1149868396497">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205866458043">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205866458044">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205866458045">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205866458046">
                  <property name="value" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1205866458047">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205866458048">
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1205866458049" />
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNodes" id="1205866458050" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1205866458051">
                <property name="value" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205859818006">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205859818007">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205859892538">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205859894541">
                  <property name="value" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1205859888062">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205859889848" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205859852816">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205863472249" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1205859870414">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1205859874245">
                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648316">
                      <link role="conceptDeclaration" targetNodeId="1.1092059087312" resolveInfo="TemplateDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205863559568">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205863559569">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205863624309">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205863626733">
                  <property name="value" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205863602404">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205863582890">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205863563573">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205863562291" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorsOperation" id="1205863578717" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1205863586423">
                  <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1205863586424">
                    <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1205863586425">
                      <property name="name" value="it" />
                    </node>
                    <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205863586426">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205863593091">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205863594109">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1205863593092">
                            <link role="closureParameter" targetNodeId="1205863586425" resolveInfo="it" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsAttributeOperation" id="1205863596053" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.IsNotEmptyOperation" id="1205863617773" />
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205863514519">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205863514520">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205863524967">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205863527502">
                  <property name="value" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205863520758">
              <link role="baseMethodDeclaration" targetNodeId="1205859565509" resolveInfo="isInsideTemplateFragment" />
              <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
              <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205863543051" />
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1149868396508">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205863736456">
              <property name="value" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1149868396512">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1149868396513">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1205864837321">
            <property name="value" value="do not hang &lt;TF&gt; on other attributes" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205863761395">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205863761396">
              <property name="name" value="applyToNode" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205863761397" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205863815430">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205863788138">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205863775525">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205863771633" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorsOperation" id="1205863780277">
                      <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Inclusion" id="1205863786497" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1205863790281">
                    <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1205863790282">
                      <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1205863790283">
                        <property name="name" value="it" />
                      </node>
                      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205863790284">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205863796131">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1205863796132">
                            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205863802791">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1205863801259">
                                <link role="closureParameter" targetNodeId="1205863790283" resolveInfo="it" />
                              </node>
                              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsAttributeOperation" id="1205863806329" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetFirstOperation" id="1205863818122" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205869236934">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205869242389">
              <link role="baseMethodDeclaration" targetNodeId="1205869137520" resolveInfo="createTemplateFragment" />
              <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205869244937">
                <link role="variableDeclaration" targetNodeId="1205863761396" resolveInfo="applyToNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1149868396517">
      <property name="description" value="add node macro" />
      <property name="showInPopup" value="true" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1149868396518">
        <property name="keycode" value="VK_M" />
        <property name="modifiers" value="ctrl+shift" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1149868396523">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1149868396524">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1205868849173">
            <property name="value" value="do not hang $$ on other attributes" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205868849174">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205868849175">
              <property name="name" value="applyToNode" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205868849176" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205868849177">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205868849178">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205868849179">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205868849180" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorsOperation" id="1205868849181">
                      <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Inclusion" id="1205868849182" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1205868849183">
                    <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1205868849184">
                      <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1205868849185">
                        <property name="name" value="it" />
                      </node>
                      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205868849186">
                        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205868849187">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1205868849188">
                            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205868849189">
                              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1205868849190">
                                <link role="closureParameter" targetNodeId="1205868849185" resolveInfo="it" />
                              </node>
                              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsAttributeOperation" id="1205868849191" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetFirstOperation" id="1205868849192" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1205870097465">
            <property name="value" value="surround with &lt;TF&gt; if necessary" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205943210334">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205943210335">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205943210336">
                <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205943210337">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205943210338">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205943210339">
                      <link role="baseMethodDeclaration" targetNodeId="1205869137520" resolveInfo="createTemplateFragment" />
                      <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205943234373">
                        <link role="variableDeclaration" targetNodeId="1205868849175" resolveInfo="applyToNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1205943210341">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205943210342">
                    <link role="baseMethodDeclaration" targetNodeId="1205859565509" resolveInfo="isInsideTemplateFragment" />
                    <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205943229825">
                      <link role="variableDeclaration" targetNodeId="1205868849175" resolveInfo="applyToNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1205943210344">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205943210345">
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1205943210346">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1205943210347">
                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648295">
                      <link role="conceptDeclaration" targetNodeId="1.1092059087312" resolveInfo="TemplateDeclaration" />
                    </node>
                  </node>
                </node>
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205943225762">
                  <link role="variableDeclaration" targetNodeId="1205868849175" resolveInfo="applyToNode" />
                </node>
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205943210349" />
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205873422243">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205873422244" />
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1205873434331">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205873434332">
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1205873434333">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1205873434334">
                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648320">
                      <link role="conceptDeclaration" targetNodeId="1.1092059087312" resolveInfo="TemplateDeclaration" />
                    </node>
                  </node>
                </node>
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205873434335" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205873434336" />
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205869316787">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205869316788">
              <property name="name" value="nodeMacro" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205869316789">
                <link role="concept" targetNodeId="1.1087833466690" resolveInfo="NodeMacro" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression" id="1205869332463">
                <node role="creator" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeCreator" id="1205869332464">
                  <node role="createdType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205869332465">
                    <link role="concept" targetNodeId="1.1087833466690" resolveInfo="NodeMacro" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205869337623">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205869337624">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205869447591">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869455584">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205869447592" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_InsertPrevSiblingOperation" id="1205869561586">
                    <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205869566275">
                      <link role="variableDeclaration" targetNodeId="1205869316788" resolveInfo="nodeMacro" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1205869549030">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869550361">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869550362">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205869550363">
                    <link role="variableDeclaration" targetNodeId="1205868849175" resolveInfo="applyToNode" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetChildrenOperation" id="1205869550364" />
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ContainsOperation" id="1205869550365">
                  <node role="argument" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205869550366" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869536759">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205869535727" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1205869540683">
                  <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1205869544217">
                    <link role="conceptDeclaration" targetNodeId="1.1087833466690" resolveInfo="NodeMacro" />
                  </node>
                </node>
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1205869570684">
              <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205869570685">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205869580452">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869587130">
                    <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869581751">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205869580453">
                        <link role="variableDeclaration" targetNodeId="1205868849175" resolveInfo="applyToNode" />
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205869583425">
                        <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.NodeAttributeAccessQualifier" id="1205869585223">
                          <link role="annotationLink" targetNodeId="1.1149694500506" resolveInfo="nodeMacro" />
                        </node>
                      </node>
                    </node>
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddChildOperation" id="1205870340835">
                      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205870349373">
                        <link role="variableDeclaration" targetNodeId="1205869316788" resolveInfo="nodeMacro" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1205880516683">
            <property name="value" value="set caret" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1193051096328">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471425">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1193051096329" />
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471426">
                <link role="baseMethodDeclaration" targetNodeId="9.~EditorContext.selectAndSetCaretLater(jetbrains.mps.smodel.SNode,int):void" resolveInfo="selectAndSetCaretLater" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205869703280">
                  <link role="variableDeclaration" targetNodeId="1205869316788" resolveInfo="nodeMacro" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1193051131308">
                  <property name="value" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1205866754254">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205866754255">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205866787811">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205866787812">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205866787813">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205866787814">
                  <property name="value" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1205866787815">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205866787816">
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1205866787817" />
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNodes" id="1205866787818" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1205866787819">
                <property name="value" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205866802631">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205866804586">
              <property name="value" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1149868414143">
      <property name="description" value="add property macro" />
      <property name="showInPopup" value="true" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1149868414144">
        <property name="keycode" value="VK_M" />
        <property name="modifiers" value="ctrl+shift" />
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1149868414145">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1149868414146">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205874717704">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205874717705">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205874717706">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205874717707">
                  <property name="value" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1205874717708">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205874717709">
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1205874717710" />
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNodes" id="1205874717711" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1205874717712">
                <property name="value" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1149868414147">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1149868414148">
              <property name="name" value="cell" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1149868414149">
                <link role="classifier" targetNodeId="9.~EditorCell" resolveInfo="EditorCell" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471471">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1149868414151" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471472">
                  <link role="baseMethodDeclaration" targetNodeId="9.~EditorContext.getSelectedCell():jetbrains.mps.nodeEditor.EditorCell" resolveInfo="getSelectedCell" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1205880287843">
            <property name="value" value="it can be 'ref.cell-&gt;{name}'. in this case both are 'applicable'. but link has priority" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205880244652">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205880244653">
              <property name="name" value="linkRole" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205880244654">
                <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205880244655">
                <link role="baseMethodDeclaration" targetNodeId="1205879788732" resolveInfo="getEditedLinkRole" />
                <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880244656">
                  <link role="variableDeclaration" targetNodeId="1149868414148" resolveInfo="cell" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205880248751">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205880248752">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205880257073">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205880259294">
                  <property name="value" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1205880252913">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205880255275" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880250818">
                <link role="variableDeclaration" targetNodeId="1205880244653" resolveInfo="linkRole" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205880205375">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205880205376">
              <property name="name" value="propertyName" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205880205377">
                <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205880205378">
                <link role="baseMethodDeclaration" targetNodeId="1205880048658" resolveInfo="getEditedPropertyName" />
                <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880205379">
                  <link role="variableDeclaration" targetNodeId="1149868414148" resolveInfo="cell" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205880443729">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205880443730">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205880453972">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205880456208">
                  <property name="value" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1205880449812">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205880452268" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880447061">
                <link role="variableDeclaration" targetNodeId="1205880205376" resolveInfo="propertyName" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1149868414160">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1205880414048">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205880414049" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205880414050">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205880414051" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205880414052">
                  <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PropertyAttributeAccessQualifier" id="1205880414053">
                    <link role="annotationLink" targetNodeId="1.1149694466802" resolveInfo="propertyMacro" />
                    <node role="propertyQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PoundExpression" id="1205880414054">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880414055">
                        <link role="variableDeclaration" targetNodeId="1205880205376" resolveInfo="propertyName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1149868414163">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1149868414164">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1205877816727">
            <property name="value" value="surround with &lt;TF&gt; if necessary" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205877816730">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205877816731">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205877816728">
                <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205877816729">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205877816732">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205877816733">
                      <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
                      <link role="baseMethodDeclaration" targetNodeId="1205869137520" resolveInfo="createTemplateFragment" />
                      <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205877830667" />
                    </node>
                  </node>
                </node>
                <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1205877816741">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205877816742">
                    <link role="baseMethodDeclaration" targetNodeId="1205859565509" resolveInfo="isInsideTemplateFragment" />
                    <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
                    <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205877827541" />
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1205877816735">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205877816736">
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1205877816737">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1205877816738">
                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648322">
                      <link role="conceptDeclaration" targetNodeId="1.1092059087312" resolveInfo="TemplateDeclaration" />
                    </node>
                  </node>
                </node>
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205877816739" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205877816740" />
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1149868414165">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1149868414166">
              <property name="name" value="cell" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1149868414167">
                <link role="classifier" targetNodeId="9.~EditorCell" resolveInfo="EditorCell" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471331">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1149868414169" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471332">
                  <link role="baseMethodDeclaration" targetNodeId="9.~EditorContext.getSelectedCell():jetbrains.mps.nodeEditor.EditorCell" resolveInfo="getSelectedCell" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205877271617">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205877271618">
              <property name="name" value="propertyName" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205877271619">
                <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205880477819">
                <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
                <link role="baseMethodDeclaration" targetNodeId="1205880048658" resolveInfo="getEditedPropertyName" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880477820">
                  <link role="variableDeclaration" targetNodeId="1149868414166" resolveInfo="cell" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205877337155">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205877337156">
              <property name="name" value="propertyMacro" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205877337157">
                <link role="concept" targetNodeId="1.1087833241328" resolveInfo="PropertyMacro" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205877337158">
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1205877337159" />
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205877337160">
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205877337161">
                    <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PropertyAttributeAccessQualifier" id="1205877337162">
                      <link role="annotationLink" targetNodeId="1.1149694466802" resolveInfo="propertyMacro" />
                      <node role="propertyQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PoundExpression" id="1205877337163">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205877337164">
                          <link role="variableDeclaration" targetNodeId="1205877271618" resolveInfo="propertyName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205877337165" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1205880501025">
            <property name="value" value="set caret" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1193052614472">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471260">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1193052614473" />
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471261">
                <link role="baseMethodDeclaration" targetNodeId="9.~EditorContext.selectAndSetCaretLater(jetbrains.mps.smodel.SNode,int):void" resolveInfo="selectAndSetCaretLater" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205877358885">
                  <link role="variableDeclaration" targetNodeId="1205877337156" resolveInfo="propertyMacro" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1193053240610">
                  <property name="value" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1149868455481">
      <property name="description" value="add reference macro" />
      <property name="showInPopup" value="true" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1149868455482">
        <property name="keycode" value="VK_M" />
        <property name="modifiers" value="ctrl+shift" />
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1149868455483">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1149868455484">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205878695983">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205878695984">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205878695985">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205878695986">
                  <property name="value" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1205878695987">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205878695988">
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1205878695989" />
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNodes" id="1205878695990" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1205878695991">
                <property name="value" value="1" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1149868455485">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1149868455486">
              <property name="name" value="cell" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1149868455487">
                <link role="classifier" targetNodeId="9.~EditorCell" resolveInfo="EditorCell" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471258">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1149868455489" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471259">
                  <link role="baseMethodDeclaration" targetNodeId="9.~EditorContext.getSelectedCell():jetbrains.mps.nodeEditor.EditorCell" resolveInfo="getSelectedCell" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205880550465">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205880550466">
              <property name="name" value="linkRole" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205880550467">
                <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205880550468">
                <link role="baseMethodDeclaration" targetNodeId="1205879788732" resolveInfo="getEditedLinkRole" />
                <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880550469">
                  <link role="variableDeclaration" targetNodeId="1149868455486" resolveInfo="cell" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205881818803">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205881818804">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205881832731">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205881835155">
                  <property name="value" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1205881838844">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205881838845">
                <link role="variableDeclaration" targetNodeId="1205880550466" resolveInfo="linkRole" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205881838846" />
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205882012229">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205882012230">
              <property name="name" value="referentNode" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205882034937" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205882012232">
                <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
                <link role="baseMethodDeclaration" targetNodeId="1205881894854" resolveInfo="getEditedLinkReferentNode" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205882012233">
                  <link role="variableDeclaration" targetNodeId="1149868455486" resolveInfo="cell" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205881842192">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1205882081840">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205882083593" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205882065051">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205882063816">
                  <link role="variableDeclaration" targetNodeId="1205882012230" resolveInfo="referentNode" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205882067303">
                  <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkAttributeAccessQualifier" id="1205882072039">
                    <link role="annotationLink" targetNodeId="1.1149694518242" resolveInfo="referenceMacro" />
                    <node role="linkQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PoundExpression" id="1205882078055">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205882079729">
                        <link role="variableDeclaration" targetNodeId="1205880550466" resolveInfo="linkRole" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1149868455501">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1149868455502">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1149868455503">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1149868455504">
              <property name="name" value="cell" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1149868455505">
                <link role="classifier" targetNodeId="9.~EditorCell" resolveInfo="EditorCell" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471240">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1149868455507" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471241">
                  <link role="baseMethodDeclaration" targetNodeId="9.~EditorContext.getSelectedCell():jetbrains.mps.nodeEditor.EditorCell" resolveInfo="getSelectedCell" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205880658846">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205880658847">
              <property name="name" value="linkRole" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205880658848">
                <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205880658849">
                <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
                <link role="baseMethodDeclaration" targetNodeId="1205879788732" resolveInfo="getEditedLinkRole" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880658850">
                  <link role="variableDeclaration" targetNodeId="1149868455504" resolveInfo="cell" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205880849485">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205880849486">
              <property name="name" value="referentNode" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205880849487" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205882111861">
                <link role="baseMethodDeclaration" targetNodeId="1205881894854" resolveInfo="getEditedLinkReferentNode" />
                <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205882111862">
                  <link role="variableDeclaration" targetNodeId="1149868455504" resolveInfo="cell" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1205880891984">
            <property name="value" value="surround with &lt;TF&gt; if necessary" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205880891987">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205880891988">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205880891985">
                <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205880891986">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205880891989">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205880891990">
                      <link role="baseMethodDeclaration" targetNodeId="1205869137520" resolveInfo="createTemplateFragment" />
                      <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
                      <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880902814">
                        <link role="variableDeclaration" targetNodeId="1205880849486" resolveInfo="referentNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1205880891998">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205880891999">
                    <link role="baseMethodDeclaration" targetNodeId="1205859565509" resolveInfo="isInsideTemplateFragment" />
                    <link role="classConcept" targetNodeId="1205859480204" resolveInfo="QueriesUtil" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880898219">
                      <link role="variableDeclaration" targetNodeId="1205880849486" resolveInfo="referentNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1205880891992">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205880891993">
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1205880891994">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1205880891995">
                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648317">
                      <link role="conceptDeclaration" targetNodeId="1.1092059087312" resolveInfo="TemplateDeclaration" />
                    </node>
                  </node>
                </node>
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880907971">
                  <link role="variableDeclaration" targetNodeId="1205880849486" resolveInfo="referentNode" />
                </node>
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205880891997" />
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1193052813063">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1193052813064">
              <property name="name" value="referenceMacro" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1193052818170">
                <link role="concept" targetNodeId="1.1088761943574" resolveInfo="ReferenceMacro" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205880970559">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205880956552">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880955129">
                    <link role="variableDeclaration" targetNodeId="1205880849486" resolveInfo="referentNode" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205880957772">
                    <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkAttributeAccessQualifier" id="1205880960414">
                      <link role="annotationLink" targetNodeId="1.1149694518242" resolveInfo="referenceMacro" />
                      <node role="linkQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.PoundExpression" id="1205880963243">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880967808">
                          <link role="variableDeclaration" targetNodeId="1205880658847" resolveInfo="linkRole" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1205880973186" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1205880992249">
            <property name="value" value="set caret" />
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1193052865273">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471445">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1193052865274" />
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471446">
                <link role="baseMethodDeclaration" targetNodeId="9.~EditorContext.selectAndSetCaretLater(jetbrains.mps.smodel.SNode,int):void" resolveInfo="selectAndSetCaretLater" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1193052874598">
                  <link role="variableDeclaration" targetNodeId="1193052813064" resolveInfo="referenceMacro" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1193052901463">
                  <property name="value" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1176304571070">
      <property name="description" value="Navigate to generated query method" />
      <property name="showInPopup" value="true" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1176304571071">
        <property name="keycode" value="VK_Q" />
        <property name="modifiers" value="ctrl+alt+shift" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1176304571072">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176304571073">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176304630480">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176304630481">
              <property name="name" value="fun" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1176304630482" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227901862">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1176304638248" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1176304649237">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1176304651550">
                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648318">
                      <link role="conceptDeclaration" targetNodeId="18.1137021947720" resolveInfo="ConceptFunction" />
                    </node>
                  </node>
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Inclusion" id="1198611121507" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1176304745877">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1176304748660">
              <link role="baseMethodDeclaration" targetNodeId="63.~GeneratedQueriesOpener.openQueryMethod(jetbrains.mps.smodel.IOperationContext,jetbrains.mps.smodel.SNode):boolean" resolveInfo="openQueryMethod" />
              <link role="classConcept" targetNodeId="63.~GeneratedQueriesOpener" resolveInfo="GeneratedQueriesOpener" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753470728">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1176304757394" />
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753470729">
                  <link role="baseMethodDeclaration" targetNodeId="9.~EditorContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolveInfo="getOperationContext" />
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176304768899">
                <link role="variableDeclaration" targetNodeId="1176304630481" resolveInfo="fun" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1176305101355">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176305101356">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176305126549">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1176305130520">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176305132101" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227911507">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1176305127923" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorOperation" id="1176305127924">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1176305127925">
                    <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648313">
                      <link role="conceptDeclaration" targetNodeId="18.1137021947720" resolveInfo="ConceptFunction" />
                    </node>
                  </node>
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Inclusion" id="1198611114425" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapDeclaration" id="1149931179122">
    <property name="name" value="MacroSymbol_KeyMap" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1184215900380">
      <property name="description" value="toggle show inline" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1184215900381">
        <property name="modifiers" value="ctrl+shift" />
        <property name="keycode" value="VK_8" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1184215900382">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184215900383">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1184216130642">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1184216130643">
              <property name="name" value="sNode" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1184216130644">
                <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
              </node>
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1184215989072">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1184215978945" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1184216152197">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1184216152198">
              <property name="name" value="key" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1184216152199">
                <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1184244761084">
                <link role="classifier" targetNodeId="1184217267887" resolveInfo="ShowInlineUtil" />
                <link role="variableDeclaration" targetNodeId="1184244654999" resolveInfo="SHOW_INLINE" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1184216080949">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1184216080950">
              <property name="name" value="value" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1184216080951" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1184217448733">
                <link role="baseMethodDeclaration" targetNodeId="1184217274077" resolveInfo="isShowInline" />
                <link role="classConcept" targetNodeId="1184217267887" resolveInfo="ShowInlineUtil" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1184217579168" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184216103606">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression" id="1184216106021">
              <node role="rValue" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1184216112078">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184216112079">
                  <link role="variableDeclaration" targetNodeId="1184216080950" resolveInfo="value" />
                </node>
              </node>
              <node role="lValue" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184216103607">
                <link role="variableDeclaration" targetNodeId="1184216080950" resolveInfo="value" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184216142670">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471398">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184216142671">
                <link role="variableDeclaration" targetNodeId="1184216130643" resolveInfo="sNode" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471399">
                <link role="baseMethodDeclaration" targetNodeId="10.~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolveInfo="putUserObject" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184216156411">
                  <link role="variableDeclaration" targetNodeId="1184216152198" resolveInfo="key" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184216160132">
                  <link role="variableDeclaration" targetNodeId="1184216080950" resolveInfo="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1167088003562">
    <property name="package" value="rule" />
    <link role="conceptDeclaration" targetNodeId="1.1167087469898" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167088005388">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167088005389">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="true" />
        <property name="text" value="condition" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1167088028162">
        <property name="drawBorder" value="false" />
        <property name="noTargetText" value="&lt;always&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1167087469900" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167088005391">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="true" />
        <property name="text" value="--&gt;" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167518654057">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1167518654058">
          <property name="allowEmptyText" value="true" />
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="cyan" />
          <property name="noTargetText" value="&lt;no mapping name&gt;" />
          <property name="textBgColor" value="orange" />
          <link role="relationDeclaration" targetNodeId="4.1169194664001" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167518654059">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="true" />
          <property name="text" value=":" />
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1167518654060">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1167518654061">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1167518654062">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1167518654063">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1167518654064" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227831653">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1167518654066" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1167518654067">
                    <link role="property" targetNodeId="4.1169194664001" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200923573453">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200923573454">
          <link role="relationDeclaration" targetNodeId="1.1200923511980" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200923573455">
            <link role="conceptDeclaration" targetNodeId="1.1200923014784" resolveInfo="ConditionalRootLabelDeclaration" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200923573456">
              <property name="readOnly" value="true" />
              <property name="textBgColor" value="orange" />
              <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
            </node>
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1200923573457">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200923573458">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200923573459">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1200923573460">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227915235">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1200923573462" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200923584998">
                      <link role="link" targetNodeId="1.1200923511980" />
                    </node>
                  </node>
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1200923573464" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200923575700">
          <property name="text" value=":" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1167088005394">
        <property name="drawBorder" value="false" />
        <property name="noTargetText" value="&lt;no template&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1167087469901" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1167088005395">
          <link role="conceptDeclaration" targetNodeId="4.1169194658468" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1167088005396">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;no name&gt;" />
            <property name="fontStyle" value="ITALIC" />
            <property name="readOnly" value="true" />
            <property name="textFgColor" value="DARK_BLUE" />
            <link role="relationDeclaration" targetNodeId="4.1169194664001" />
          </node>
        </node>
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167518681155">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167518681156">
        <property name="drawBorder" value="false" />
        <property name="text" value="conditional root rule" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167518681157">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167518681158">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167518681159">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="text" value="mapping name" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1167518681160">
          <property name="allowEmptyText" value="true" />
          <property name="drawBorder" value="false" />
          <property name="noTargetText" value="&lt;none&gt;" />
          <property name="textBgColor" value="orange" />
          <link role="relationDeclaration" targetNodeId="4.1169194664001" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200923541310">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200923541311">
          <property name="text" value="mapping label" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200923541312">
          <property name="text" value=":" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200923541313">
          <property name="noTargetText" value="&lt;no label&gt;" />
          <link role="relationDeclaration" targetNodeId="1.1200923511980" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200923541314">
            <link role="conceptDeclaration" targetNodeId="1.1200923014784" resolveInfo="ConditionalRootLabelDeclaration" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200923541315">
              <property name="readOnly" value="true" />
              <property name="textBgColor" value="orange" />
              <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1167171627113">
    <property name="package" value="rule" />
    <link role="conceptDeclaration" targetNodeId="1.1167171569011" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169580472028">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169580472029">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169580472030">
          <property name="selectable" value="false" />
          <property name="vertical" value="true" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1169580472031">
            <property name="drawBorder" value="false" />
            <link role="editorComponent" targetNodeId="1167328078404" resolveInfo="BaseMappingRule_premise" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169580472033">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="text" value="--&gt;" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169580472034">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1169580472035">
            <property name="allowEmptyText" value="true" />
            <property name="drawBorder" value="false" />
            <property name="textBgColorSelected" value="cyan" />
            <property name="noTargetText" value="&lt;no mapping name&gt;" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="4.1169194664001" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169580472036">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="true" />
            <property name="text" value=":" />
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1169580472037">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1169580472038">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1169580472039">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1169580472040">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1169580472041" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227880565">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1169580472043" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1169580472044">
                      <link role="property" targetNodeId="4.1169194664001" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200917687309">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200917687310">
            <link role="relationDeclaration" targetNodeId="1.1200917515464" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200917687311">
              <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200917687312">
                <property name="readOnly" value="true" />
                <property name="textBgColor" value="orange" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200917884282">
            <property name="text" value=":" />
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1200917687313">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200917687314">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200917687315">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1200917687316">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1200917687317" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227866424">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1200917687320" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200917687319">
                      <link role="link" targetNodeId="1.1200917515464" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169580472045">
          <property name="drawBorder" value="false" />
          <property name="vertical" value="true" />
          <property name="bracketsColor" value="gray" />
          <property name="selectable" value="false" />
          <property name="gridLayout" value="true" />
          <property name="drawBrackets" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169580472046">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169580472047">
              <property name="drawBorder" value="false" />
              <property name="text" value="old:" />
              <property name="textFgColor" value="red" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1169580472048">
              <property name="drawBorder" value="false" />
              <property name="noTargetText" value="&lt;no template&gt;" />
              <link role="relationDeclaration" targetNodeId="1.1167171569014" />
              <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1169580472049">
                <link role="conceptDeclaration" targetNodeId="1.1092059087312" />
                <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1169580472050">
                  <property name="drawBorder" value="false" />
                  <property name="noTargetText" value="&lt;no name&gt;" />
                  <property name="readOnly" value="true" />
                  <link role="relationDeclaration" targetNodeId="4.1169194664001" />
                </node>
              </node>
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1169580472051">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1169580472052">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1169580472053">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1169580472054">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1169580472055" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227881592">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1169580472057" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1169580472058">
                        <link role="link" targetNodeId="1.1167171569014" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1169580472059">
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="1.1169570368028" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184616402093">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184616402094">
              <property name="drawBorder" value="false" />
              <property name="text" value="context" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195253451315">
              <property name="drawBorder" value="false" />
              <property name="selectable" value="false" />
              <property name="text" value=":" />
              <property name="layoutConstraint" value="punctuation" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1184616402096">
              <property name="drawBorder" value="false" />
              <property name="noTargetText" value="&lt;no context node&gt;" />
              <link role="relationDeclaration" targetNodeId="1.1184616230853" />
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169580486409">
        <property name="drawBorder" value="false" />
        <property name="editable" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167517960207">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167517960208">
        <property name="drawBorder" value="false" />
        <property name="text" value="weaving rule" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167517960209">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167517960210">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167517960211">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="text" value="mapping name" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1167517960212">
          <property name="allowEmptyText" value="true" />
          <property name="drawBorder" value="false" />
          <property name="noTargetText" value="&lt;none&gt;" />
          <property name="textBgColor" value="orange" />
          <link role="relationDeclaration" targetNodeId="4.1169194664001" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200917658730">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200917658731">
          <property name="text" value="mapping label" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200917658732">
          <link role="relationDeclaration" targetNodeId="1.1200917515464" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200917658733">
            <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200917658734">
              <property name="readOnly" value="true" />
              <property name="textBgColor" value="orange" />
              <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.EditorComponentDeclaration" id="1167328078404">
    <property name="name" value="BaseMappingRule_premise" />
    <link role="conceptDeclaration" targetNodeId="1.1167169308231" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167328170273">
      <property name="drawBorder" value="false" />
      <property name="vertical" value="true" />
      <property name="bracketsColor" value="gray" />
      <property name="selectable" value="false" />
      <property name="drawBrackets" value="true" />
      <property name="gridLayout" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169494942757">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169494942758">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="text" value="concept" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1169494942759">
          <property name="drawBorder" value="false" />
          <property name="attractsFocus" value="2" />
          <property name="noTargetText" value="&lt;choose applicable concept&gt;" />
          <link role="relationDeclaration" targetNodeId="1.1167169349424" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1169494942760">
            <link role="conceptDeclaration" targetNodeId="6.1169125787135" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1169494942761">
              <property name="drawBorder" value="false" />
              <property name="attractsFocus" value="0" />
              <property name="readOnly" value="true" />
              <property name="textFgColor" value="DARK_MAGENTA" />
              <link role="relationDeclaration" targetNodeId="4.1169194664001" />
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169494942762">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169494942763">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="text" value="inheritors" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1169494942764">
          <property name="drawBorder" value="false" />
          <link role="relationDeclaration" targetNodeId="1.1167272244852" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169494942774">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169494942775">
          <property name="drawBorder" value="false" />
          <property name="text" value="condition" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1169494942776">
          <property name="drawBorder" value="false" />
          <property name="noTargetText" value="&lt;always&gt;" />
          <link role="relationDeclaration" targetNodeId="1.1167169362365" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1167328252970">
    <property name="package" value="rule" />
    <link role="conceptDeclaration" targetNodeId="1.1167327847730" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169672948371">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169672948372">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169672948373">
          <property name="selectable" value="false" />
          <property name="vertical" value="true" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1169672948374">
            <property name="drawBorder" value="false" />
            <link role="editorComponent" targetNodeId="1167328078404" resolveInfo="BaseMappingRule_premise" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169672948376">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169672948377">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="--&gt;" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169672948378">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1169672948379">
              <property name="allowEmptyText" value="true" />
              <property name="drawBorder" value="false" />
              <property name="textBgColorSelected" value="cyan" />
              <property name="noTargetText" value="&lt;no mapping name&gt;" />
              <property name="textBgColor" value="orange" />
              <link role="relationDeclaration" targetNodeId="4.1169194664001" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169672948380">
              <property name="drawBorder" value="false" />
              <property name="selectable" value="true" />
              <property name="text" value=":" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1169672948381">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1169672948382">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1169672948383">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1169672948384">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1169672948385" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227945603">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1169672948387" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1169672948388">
                        <link role="property" targetNodeId="4.1169194664001" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200917576895">
            <property name="selectable" value="false" />
            <property name="vertical" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200917586647">
              <link role="relationDeclaration" targetNodeId="1.1200917515464" />
              <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200917586648">
                <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
                <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200917586649">
                  <property name="readOnly" value="true" />
                  <property name="textBgColor" value="orange" />
                  <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
                </node>
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200917873343">
              <property name="text" value=":" />
            </node>
            <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1200917610586">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200917610587">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200917614979">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1200917617969">
                    <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1200917620566" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227920283">
                      <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1200917614980" />
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200917617202">
                        <link role="link" targetNodeId="1.1200917515464" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169672948389">
            <property name="selectable" value="false" />
            <property name="vertical" value="true" />
            <property name="drawBorder" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169672948390">
              <property name="drawBorder" value="false" />
              <property name="selectable" value="false" />
              <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169672948391">
                <property name="drawBorder" value="false" />
                <property name="text" value="old:" />
                <property name="textFgColor" value="red" />
              </node>
              <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1169672948392">
                <property name="drawBorder" value="false" />
                <property name="noTargetText" value="&lt;no template&gt;" />
                <link role="relationDeclaration" targetNodeId="1.1167327847732" />
                <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1169672948393">
                  <link role="conceptDeclaration" targetNodeId="1.1092059087312" />
                  <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1169672948394">
                    <property name="drawBorder" value="false" />
                    <property name="noTargetText" value="&lt;no name&gt;" />
                    <property name="readOnly" value="true" />
                    <link role="relationDeclaration" targetNodeId="4.1169194664001" />
                  </node>
                </node>
              </node>
              <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1169672948395">
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1169672948396">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1169672948397">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1169672948398">
                      <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1169672948399" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227894634">
                        <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1169672948401" />
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1169672948402">
                          <link role="link" targetNodeId="1.1167327847732" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1169672948403">
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="1.1169672767469" />
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169672948404">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169672961188">
        <property name="drawBorder" value="false" />
        <property name="editable" value="true" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167518270805">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167518270806">
        <property name="drawBorder" value="false" />
        <property name="text" value="reduction rule" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167518270807">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167518270808">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167518270809">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="text" value="mapping name" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1167518270810">
          <property name="allowEmptyText" value="true" />
          <property name="drawBorder" value="false" />
          <property name="noTargetText" value="&lt;none&gt;" />
          <property name="textBgColor" value="orange" />
          <link role="relationDeclaration" targetNodeId="4.1169194664001" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200917554260">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200917555184">
          <property name="text" value="mapping label" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200917562296">
          <link role="relationDeclaration" targetNodeId="1.1200917515464" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200917562297">
            <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200917563252">
              <property name="readOnly" value="true" />
              <property name="textBgColor" value="orange" />
              <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1167514442227">
    <property name="package" value="rule" />
    <link role="conceptDeclaration" targetNodeId="1.1167514355419" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167514444706">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167514444707">
        <property name="selectable" value="false" />
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1177959016740">
          <property name="drawBorder" value="false" />
          <property name="vertical" value="true" />
          <property name="bracketsColor" value="gray" />
          <property name="selectable" value="false" />
          <property name="drawBrackets" value="true" />
          <property name="gridLayout" value="true" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1177959016741">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177959016742">
              <property name="selectable" value="false" />
              <property name="drawBorder" value="false" />
              <property name="text" value="concept" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1177959016743">
              <property name="drawBorder" value="false" />
              <property name="attractsFocus" value="2" />
              <property name="noTargetText" value="&lt;choose applicable concept&gt;" />
              <link role="relationDeclaration" targetNodeId="1.1167169349424" />
              <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1177959016744">
                <link role="conceptDeclaration" targetNodeId="6.1169125787135" />
                <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1177959016745">
                  <property name="drawBorder" value="false" />
                  <property name="attractsFocus" value="0" />
                  <property name="readOnly" value="true" />
                  <property name="textFgColor" value="DARK_MAGENTA" />
                  <link role="relationDeclaration" targetNodeId="4.1169194664001" />
                </node>
              </node>
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1177959016746">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177959016747">
              <property name="selectable" value="false" />
              <property name="drawBorder" value="false" />
              <property name="text" value="inheritors" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1177959016748">
              <property name="drawBorder" value="false" />
              <link role="relationDeclaration" targetNodeId="1.1167272244852" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1177959016749">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177959016750">
              <property name="drawBorder" value="false" />
              <property name="text" value="condition" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1177959016751">
              <property name="drawBorder" value="false" />
              <property name="noTargetText" value="&lt;always&gt;" />
              <link role="relationDeclaration" targetNodeId="1.1167169362365" />
            </node>
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1177959050711">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177959050712">
              <property name="drawBorder" value="false" />
              <property name="text" value="keep source root" />
            </node>
            <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1177959058949">
              <link role="relationDeclaration" targetNodeId="1.1177959072138" />
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167514444709">
          <property name="drawBorder" value="false" />
          <property name="editable" value="true" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167514444710">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <property name="text" value="--&gt;" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167516991645">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1167516991646">
          <property name="allowEmptyText" value="true" />
          <property name="drawBorder" value="false" />
          <property name="textBgColorSelected" value="cyan" />
          <property name="noTargetText" value="&lt;no mapping name&gt;" />
          <property name="textBgColor" value="orange" />
          <link role="relationDeclaration" targetNodeId="4.1169194664001" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167517002540">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="true" />
          <property name="text" value=":" />
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1167517031025">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1167517031026">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1167517052856">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1167517072579">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1167517075864" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227883675">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1167517064342" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1167517069032">
                    <link role="property" targetNodeId="4.1169194664001" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200917674374">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200917674375">
          <link role="relationDeclaration" targetNodeId="1.1200917515464" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200917674376">
            <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200917674377">
              <property name="readOnly" value="true" />
              <property name="textBgColor" value="orange" />
              <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200917860731">
          <property name="text" value=":" />
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1200917674378">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200917674379">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200917674380">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1200917674381">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1200917674382" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227921299">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1200917674385" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200917674384">
                    <link role="link" targetNodeId="1.1200917515464" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1167514444711">
        <property name="drawBorder" value="false" />
        <property name="noTargetText" value="&lt;no template&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1167514355421" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1167514444712">
          <link role="conceptDeclaration" targetNodeId="4.1169194658468" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1167514444713">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;no name&gt;" />
            <property name="fontStyle" value="ITALIC" />
            <property name="readOnly" value="true" />
            <property name="textFgColor" value="DARK_BLUE" />
            <link role="relationDeclaration" targetNodeId="4.1169194664001" />
          </node>
        </node>
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167516839695">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167516845603">
        <property name="drawBorder" value="false" />
        <property name="text" value="root mapping rule" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167516860073">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1167516898389">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1167516900797">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="text" value="mapping name" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1167516913752">
          <property name="allowEmptyText" value="true" />
          <property name="drawBorder" value="false" />
          <property name="noTargetText" value="&lt;none&gt;" />
          <property name="textBgColor" value="orange" />
          <link role="relationDeclaration" targetNodeId="4.1169194664001" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200917653631">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200917653632">
          <property name="text" value="mapping label" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200917653633">
          <link role="relationDeclaration" targetNodeId="1.1200917515464" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200917653634">
            <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200917653635">
              <property name="readOnly" value="true" />
              <property name="textBgColor" value="orange" />
              <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapDeclaration" id="1167859493978">
    <property name="name" value="MacroSymbol_Actions" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMapItem" id="1167860279572">
      <property name="description" value="delete macro node" />
      <property name="actionId" value="delete_action_id" />
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_ExecuteFunction" id="1167860279573">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1167860279574">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1167860339427">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227884202">
              <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellActionMap_FunctionParm_selectedNode" id="1167860339428" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_DeleteOperation" id="1167860343774" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1168559286756">
    <property name="package" value="rule.consequence" />
    <link role="conceptDeclaration" targetNodeId="1.1168559098955" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Error" id="1168559289383">
      <property name="drawBorder" value="false" />
      <property name="text" value="choose consequence" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1168559415840">
    <property name="package" value="rule.consequence" />
    <link role="conceptDeclaration" targetNodeId="1.1168559333462" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1168559420280">
      <property name="drawBorder" value="false" />
      <property name="noTargetText" value="&lt;choose template&gt;" />
      <link role="relationDeclaration" targetNodeId="1.1168559393589" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1168559420281">
        <link role="conceptDeclaration" targetNodeId="1.1092059087312" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168559425423">
          <property name="drawBorder" value="false" />
          <property name="readOnly" value="true" />
          <link role="relationDeclaration" targetNodeId="4.1169194664001" />
          <link role="styleClass" targetNodeId="1194566785068" resolveInfo="reference" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1168559735661">
    <property name="package" value="rule.consequence" />
    <link role="conceptDeclaration" targetNodeId="1.1168559512253" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169670446867">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169670468666">
        <property name="drawBorder" value="false" />
        <property name="text" value="DISMISS TOP RULE" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1169670501887">
        <property name="drawBorder" value="false" />
        <property name="noTargetText" value="&lt;no message&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1169669152123" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1168619539479">
    <property name="package" value="annotation" />
    <link role="conceptDeclaration" targetNodeId="1.1168619357332" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168619666865">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168625644510">
        <property name="vertical" value="true" />
        <property name="drawBorder" value="false" />
        <property name="bracketsColor" value="lightGray" />
        <property name="selectable" value="true" />
        <property name="drawBrackets" value="true" />
        <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168625651362">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="true" />
          <property name="text" value="root template" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168625644511">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168625644512">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="source" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1168625644513">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;any node&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1168619429071" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1168625644514">
              <link role="conceptDeclaration" targetNodeId="6.1169125787135" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1168625644515">
                <property name="drawBorder" value="false" />
                <property name="textFgColor" value="DARK_MAGENTA" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168625659015">
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <property name="name" value="separator" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1168625659016">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168625659017">
            <property name="drawBorder" value="false" />
            <property name="text" value="Ctrl-Shift-M" />
            <property name="textBgColor" value="orange" />
            <property name="name" value="help1" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168625659018">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168625659019">
            <property name="drawBorder" value="false" />
            <property name="text" value="create macro" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1168625659020">
          <property name="selectable" value="false" />
          <property name="drawBorder" value="false" />
          <property name="name" value="separator" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_AttributedNodeCell" id="1168619837004">
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapDeclaration" id="1168620373595">
    <property name="everyModel" value="true" />
    <property name="name" value="RootTemplateAnnotation_KeyMap" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1168620555235">
      <property name="description" value="add root template annotation" />
      <property name="showInPopup" value="true" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1168620555236">
        <property name="keycode" value="VK_H" />
        <property name="modifiers" value="ctrl+shift" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1168620555237">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168620555238">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1168622580789">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205883177421">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205883170386">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205883535819">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205883169197" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetContainingRootOperation" id="1205883539586" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205883171591">
                  <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.NodeAttributeAccessQualifier" id="1205883175576">
                    <link role="annotationLink" targetNodeId="1.1168619445822" resolveInfo="rootTemplateAnnotation" />
                  </node>
                </node>
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1205883187814" />
            </node>
          </node>
        </node>
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1168622085218">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1168622085219">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205882872205">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205882872206">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205882896626">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205882904034">
                  <property name="value" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1205882892870">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1205882894749">
                <property name="value" value="1" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205882886350">
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNodes" id="1205882883787" />
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1205882888055" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205883506608">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205883506609">
              <property name="name" value="applyToNode" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205883506610" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205883506611">
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetContainingRootOperation" id="1205883506612" />
                <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1205883506613" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205883003793">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205883003794">
              <property name="name" value="language" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205883003795">
                <link role="classifier" targetNodeId="10.~Language" resolveInfo="Language" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205883003796">
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1205883003797">
                  <link role="baseMethodDeclaration" targetNodeId="10.~SNode.getNodeLanguage():jetbrains.mps.smodel.Language" resolveInfo="getNodeLanguage" />
                </node>
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1205883003798">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205883518379">
                    <link role="variableDeclaration" targetNodeId="1205883506609" resolveInfo="applyToNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205883007582">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205883007583">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205883090295">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1205883092156">
                  <property name="value" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1205883087540">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205883087541">
                <link role="variableDeclaration" targetNodeId="1205883003794" resolveInfo="language" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205883087542">
                <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1205883087543">
                  <link role="baseMethodDeclaration" targetNodeId="68.~BootstrapLanguagesManager.getTLBase():jetbrains.mps.smodel.Language" resolveInfo="getTLBase" />
                </node>
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1205883087544">
                  <link role="baseMethodDeclaration" targetNodeId="68.~BootstrapLanguagesManager.getInstance():jetbrains.mps.ide.BootstrapLanguagesManager" resolveInfo="getInstance" />
                  <link role="classConcept" targetNodeId="68.~BootstrapLanguagesManager" resolveInfo="BootstrapLanguagesManager" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1168622142763">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1205883131990">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205883135040" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205883102799">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205883525927">
                  <link role="variableDeclaration" targetNodeId="1205883506609" resolveInfo="applyToNode" />
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205883118379">
                  <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.NodeAttributeAccessQualifier" id="1205883123427">
                    <link role="annotationLink" targetNodeId="1.1168619445822" resolveInfo="rootTemplateAnnotation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1169570088021">
    <property name="package" value="rule.consequence" />
    <link role="conceptDeclaration" targetNodeId="1.1169569792945" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169570092914">
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <property name="gridLayout" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195252240599">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195252240600">
          <property name="drawBorder" value="false" />
          <property name="text" value="foreach" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195252327837">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="text" value=":" />
          <property name="layoutConstraint" value="punctuation" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1195252250461">
          <property name="drawBorder" value="false" />
          <property name="noTargetText" value="&lt;none&gt;" />
          <link role="relationDeclaration" targetNodeId="1.1169569939267" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195252271352">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195252271353">
          <property name="drawBorder" value="false" />
          <property name="text" value="apply" />
          <property name="selectable" value="true" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195252333494">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <property name="text" value=":" />
          <property name="layoutConstraint" value="punctuation" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1195252271355">
          <property name="drawBorder" value="false" />
          <property name="noTargetText" value="&lt;choose template&gt;" />
          <link role="relationDeclaration" targetNodeId="1.1169569853122" />
          <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1195252271356">
            <link role="conceptDeclaration" targetNodeId="1.1092059087312" resolveInfo="TemplateDeclaration" />
            <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1195252271357">
              <property name="drawBorder" value="false" />
              <property name="readOnly" value="true" />
              <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
              <link role="styleClass" targetNodeId="1194566785068" resolveInfo="reference" />
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195252758277">
        <property name="selectable" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1169670569544">
    <property name="package" value="rule.consequence" />
    <link role="conceptDeclaration" targetNodeId="1.1169670156577" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1169670581344">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1169670587361">
        <property name="drawBorder" value="false" />
        <property name="fontStyle" value="BOLD" />
        <property name="textFgColor" value="DARK_MAGENTA" />
        <link role="relationDeclaration" targetNodeId="1.1169670356567" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1169670599832">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1169670607428">
        <property name="drawBorder" value="false" />
        <property name="noTargetText" value="&lt;no text&gt;" />
        <property name="textFgColor" value="DARK_GREEN" />
        <link role="relationDeclaration" targetNodeId="1.1169670173015" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1177093677607">
    <property name="package" value="rule.consequence" />
    <link role="conceptDeclaration" targetNodeId="1.1177093525992" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1177093682624">
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177093687720">
        <property name="textBgColor" value="pink" />
        <property name="textBgColorSelected" value="magenta" />
        <property name="text" value="&lt;T " />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1177093748944">
        <link role="relationDeclaration" targetNodeId="1.1177093586806" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1177093729598">
        <property name="textBgColor" value="pink" />
        <property name="textBgColorSelected" value="magenta" />
        <property name="text" value=" T&gt;" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.EditorComponentDeclaration" id="1184214289430">
    <property name="name" value="CopyScrNodeMacro_inspector" />
    <link role="conceptDeclaration" targetNodeId="1.1114706874351" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184214419028">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184214419029">
        <property name="drawBorder" value="false" />
        <property name="text" value="copy/reduce node macro" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184214419030">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184214419031">
        <property name="drawBorder" value="false" />
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184214419032">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184214419033">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapping name" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184214419034">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1184214419035">
            <property name="allowEmptyText" value="true" />
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="1.1152722085357" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200912238248">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912239094">
            <property name="text" value="mapping label" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912242768">
            <property name="text" value=":" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200912246505">
            <property name="noTargetText" value="&lt;no label&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1200912223215" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200912246506">
              <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200912247570">
                <property name="readOnly" value="true" />
                <property name="textBgColor" value="orange" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184214419057">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184214419058">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapped node" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184214419059">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1184214419060">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="attractsFocus" value="2" />
            <link role="relationDeclaration" targetNodeId="1.1168024447342" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1184217267887">
    <property name="name" value="ShowInlineUtil" />
    <node role="staticField" type="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" id="1184244654999">
      <property name="name" value="SHOW_INLINE" />
      <property name="isFinal" value="true" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1184244657880" />
      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1184244702768">
        <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
      </node>
      <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StringLiteral" id="1184244714296">
        <property name="value" value="showInline" />
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1184217274077">
      <property name="name" value="isShowInline" />
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1184217503667">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1184217505579" />
      </node>
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1184217279925" />
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1184217274079" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184217274080">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1184217519197">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1184217519198">
            <property name="name" value="sNode" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1184217519199">
              <link role="classifier" targetNodeId="10.~SNode" resolveInfo="SNode" />
            </node>
            <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1184217514614">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1184217512574">
                <link role="variableDeclaration" targetNodeId="1184217503667" resolveInfo="node" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1184217536963">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1184217536964">
            <property name="name" value="userObject" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1184217536965">
              <link role="classifier" targetNodeId="65.~Object" resolveInfo="Object" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753471449">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184217524195">
                <link role="variableDeclaration" targetNodeId="1184217519198" resolveInfo="sNode" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753471450">
                <link role="baseMethodDeclaration" targetNodeId="10.~SNode.getUserObject(java.lang.Object):java.lang.Object" resolveInfo="getUserObject" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalStaticFieldReference" id="1184244732212">
                  <link role="variableDeclaration" targetNodeId="1184244654999" resolveInfo="SHOW_INLINE" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184217300852">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" id="1184217306666">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1184217310218">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1184217312002" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184217543735">
                <link role="variableDeclaration" targetNodeId="1184217536964" resolveInfo="userObject" />
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1184217315472">
              <property name="value" value="false" />
            </node>
            <node role="ifFalse" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1184217323101">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184217546772">
                <link role="variableDeclaration" targetNodeId="1184217536964" resolveInfo="userObject" />
              </node>
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1184217325309">
                <link role="classifier" targetNodeId="65.~Boolean" resolveInfo="Boolean" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1184217267888" />
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.EditorComponentDeclaration" id="1184864447477">
    <property name="name" value="NodeMacro_postfix" />
    <link role="conceptDeclaration" targetNodeId="1.1087833466690" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184865301579">
      <property name="vertical" value="false" />
      <property name="selectable" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1184865302330">
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1184865302331">
          <property name="text" value="bad role:" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_ModelAccess" id="1184865302332">
          <property name="textFgColor" value="red" />
          <node role="modelAcessor" type="jetbrains.mps.bootstrap.editorLanguage.structure.ModelAccessor" id="1184865302333">
            <node role="getter" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_ModelAccess_Getter" id="1184865302334">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184865302335">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184865302336">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753470796">
                    <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1184865302338">
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1184865302339" />
                    </node>
                    <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753470797">
                      <link role="baseMethodDeclaration" targetNodeId="10.~SNode.getRole_():java.lang.String" resolveInfo="getRole_" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="setter" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_ModelAccess_Setter" id="1184865302340">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184865302341" />
            </node>
            <node role="validator" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_ModelAccess_Validator" id="1184865302342">
              <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184865302343">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184865302344">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1184865302345">
                    <property name="value" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1184865302346">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1184865302347">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1184865302348">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1184865302349">
                <property name="name" value="actualRole" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1184865302350">
                  <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753470777">
                  <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1184865302352">
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1184865302353" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753470778">
                    <link role="baseMethodDeclaration" targetNodeId="10.~SNode.getRole_():java.lang.String" resolveInfo="getRole_" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1184865302354">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1184865302355">
                <property name="name" value="expectedRole" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1184865302356">
                  <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1184865302357">
                  <link role="baseMethodDeclaration" targetNodeId="10.~AttributesRolesUtil.childRoleFromAttributeRole(java.lang.String):java.lang.String" resolveInfo="childRoleFromAttributeRole" />
                  <link role="classConcept" targetNodeId="10.~AttributesRolesUtil" resolveInfo="AttributesRolesUtil" />
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1184865302358">
                    <link role="classifier" targetNodeId="67.~NodeMacro_AnnotationLink" resolveInfo="NodeMacro_AnnotationLink" />
                    <link role="variableDeclaration" targetNodeId="67.~NodeMacro_AnnotationLink.NODE_MACRO" resolveInfo="NODE_MACRO" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1184865302359">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1184865302360">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204753470773">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184865302362">
                    <link role="variableDeclaration" targetNodeId="1184865302349" resolveInfo="actualRole" />
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1204753470774">
                    <link role="baseMethodDeclaration" targetNodeId="65.~String.equals(java.lang.Object):boolean" resolveInfo="equals" />
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1184865302363">
                      <link role="variableDeclaration" targetNodeId="1184865302355" resolveInfo="expectedRole" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_NonEmptyProperty" id="1184865331990">
        <property name="textBgColor" value="orange" />
        <property name="textBgColorSelected" value="cyan" />
        <link role="relationDeclaration" targetNodeId="1.1152722085357" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200912672389">
        <link role="relationDeclaration" targetNodeId="1.1200912223215" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200912672390">
          <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200912674689">
            <property name="readOnly" value="true" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
          </node>
        </node>
        <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1200912701981">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1200912701982">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1200912703530">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1200912706443">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1200912708196" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227921974">
                  <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1200912703531" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1200912705926">
                    <link role="link" targetNodeId="1.1200912223215" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_AttributedNodeCell" id="1184865331991">
        <property name="drawBorder" value="false" />
        <property name="drawBrackets" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1194566459517">
    <property name="package" value="macro" />
    <link role="conceptDeclaration" targetNodeId="1.1194565793557" resolveInfo="IncludeMacro" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1194566483566">
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1194566483567">
        <property name="drawBorder" value="false" />
        <property name="textBgColorSelected" value="cyan" />
        <property name="text" value="$INCLUDE$" />
        <property name="fontStyle" value="BOLD_ITALIC" />
        <property name="editable" value="true" />
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="attractsFocus" value="1" />
        <link role="keyMap" targetNodeId="1149931179122" resolveInfo="MacroSymbol_KeyMap" />
        <link role="actionMap" targetNodeId="1167859493978" resolveInfo="MacroSymbol_Actions" />
        <node role="menuDescriptor" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuDescriptor" id="1194566483568">
          <node role="cellMenuPart" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" id="1194566483569">
            <link role="replacementConcept" targetNodeId="1.1087833466690" resolveInfo="NodeMacro" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Component" id="1194566483585">
        <link role="editorComponent" targetNodeId="1184864447477" resolveInfo="NodeMacro_postfix" />
      </node>
    </node>
    <node role="inspectedCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1194566535681">
      <property name="selectable" value="false" />
      <property name="vertical" value="true" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1194566535682">
        <property name="drawBorder" value="false" />
        <property name="text" value="include-macro" />
        <property name="textBgColor" value="lightGray" />
        <property name="selectable" value="false" />
        <property name="textFgColor" value="DARK_BLUE" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1194566535683">
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1194566535684">
        <property name="drawBorder" value="false" />
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1194566535685">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1194566535686">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapping name" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1194566535687">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1194566535688">
            <property name="allowEmptyText" value="true" />
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;none&gt;" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="1.1152722085357" resolveInfo="mappingId" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200912281133">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912281134">
            <property name="text" value="mapping label" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200912281135">
            <property name="text" value=":" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200912281136">
            <property name="noTargetText" value="&lt;no label&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1200912223215" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200912281137">
              <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200912281138">
                <property name="readOnly" value="true" />
                <property name="textBgColor" value="orange" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1194566535726">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1194566535727">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="mapped node" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1194566535728">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1194566535729">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;current source node&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1194565823413" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1194566535730">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1194566535731">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <property name="drawBorder" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1194566535732">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value="include template" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1194566535733">
            <property name="drawBorder" value="false" />
            <property name="selectable" value="false" />
            <property name="text" value=":" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1194566535734">
            <property name="drawBorder" value="false" />
            <property name="noTargetText" value="&lt;choose template switch&gt;" />
            <link role="relationDeclaration" targetNodeId="1.1194566366375" />
            <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1194566535735">
              <link role="conceptDeclaration" targetNodeId="1.1092059087312" resolveInfo="TemplateDeclaration" />
              <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1194566535736">
                <property name="drawBorder" value="false" />
                <property name="noTargetText" value="&lt;no name&gt;" />
                <property name="readOnly" value="true" />
                <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
                <link role="styleClass" targetNodeId="1194566785068" resolveInfo="reference" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheet" id="1194566703393">
    <property name="name" value="Styles" />
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1194566785068">
      <property name="name" value="reference" />
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleSheetItem" id="1194566983414">
        <property name="color" value="DARK_BLUE" />
      </node>
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleSheetItem" id="1194567002745">
        <property name="style" value="ITALIC" />
      </node>
    </node>
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1195595824868">
      <property name="name" value="constant" />
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleSheetItem" id="1195595847744">
        <property name="color" value="DARK_MAGENTA" />
      </node>
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleSheetItem" id="1195595857606">
        <property name="style" value="BOLD" />
      </node>
    </node>
    <node role="styleClass" type="jetbrains.mps.bootstrap.editorLanguage.structure.StyleSheetClass" id="1198104170947">
      <property name="name" value="literal" />
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.ForegroundColorStyleSheetItem" id="1198104178995">
        <property name="color" value="DARK_BLUE" />
      </node>
      <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.FontStyleStyleSheetItem" id="1198104178996">
        <property name="style" value="BOLD" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1195158756338">
    <property name="package" value="rule.consequence" />
    <link role="conceptDeclaration" targetNodeId="1.1195158388553" resolveInfo="InlineSwitch_Case" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195158790422">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195158790423">
        <property name="vertical" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195242493134">
          <property name="drawBorder" value="false" />
          <property name="selectable" value="true" />
          <property name="text" value="case:" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1195158856240">
          <link role="relationDeclaration" targetNodeId="1.1195158608805" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195242469583">
        <property name="vertical" value="false" />
        <property name="selectable" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195243496625">
          <property name="text" value="  " />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1195242469586">
          <link role="relationDeclaration" targetNodeId="1.1195158637244" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195158800051" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1195158926900">
    <property name="package" value="rule.consequence" />
    <link role="conceptDeclaration" targetNodeId="1.1195158154974" resolveInfo="InlineSwitch_RuleConsequence" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195158950699">
      <property name="vertical" value="true" />
      <property name="drawBrackets" value="true" />
      <property name="bracketsColor" value="gray" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNodeList" id="1195242097517">
        <property name="vertical" value="true" />
        <property name="gridLayout" value="true" />
        <link role="relationDeclaration" targetNodeId="1.1195158408710" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195242125115">
        <property name="text" value="default:" />
        <property name="selectable" value="true" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195158996813">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195242154631">
          <property name="text" value="  " />
          <property name="selectable" value="false" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1195159014565">
          <link role="relationDeclaration" targetNodeId="1.1195158241124" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1195501142572">
    <property name="package" value="script" />
    <link role="conceptDeclaration" targetNodeId="1.1195499912406" resolveInfo="MappingScript" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195501168018">
      <property name="vertical" value="true" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195501175723">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195501190865">
          <property name="text" value="mapping script" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1195501209836">
          <property name="noTargetText" value="&lt;no name&gt;" />
          <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195501234838">
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195595700766">
        <property name="vertical" value="true" />
        <property name="selectable" value="false" />
        <property name="gridLayout" value="true" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195595713705">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195595730145">
            <property name="text" value="script kind" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195595775631">
            <property name="text" value=":" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1195595788914">
            <link role="relationDeclaration" targetNodeId="1.1195595592106" resolveInfo="scriptKind" />
            <link role="styleClass" targetNodeId="1195595824868" resolveInfo="constant" />
          </node>
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1195595895701">
          <property name="selectable" value="false" />
          <property name="vertical" value="false" />
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195595895702">
            <property name="text" value="modifies model" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195595895703">
            <property name="text" value=":" />
            <property name="selectable" value="false" />
          </node>
          <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1195595895704">
            <link role="styleClass" targetNodeId="1195595824868" resolveInfo="constant" />
            <link role="relationDeclaration" targetNodeId="1.1195595611951" resolveInfo="readOnly" />
          </node>
          <node role="renderingCondition" type="jetbrains.mps.bootstrap.editorLanguage.structure.QueryFunction_NodeCondition" id="1195595990346">
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1195595990347">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1195595996457">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227916645">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1204227899583">
                    <node role="operand" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_node" id="1195595996458" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1195596003384">
                      <link role="property" targetNodeId="1.1195595592106" resolveInfo="scriptKind" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1195596008888">
                    <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1195596008889">
                      <link role="enumMember" targetNodeId="1.1195595264962" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1195596617569">
        <property name="selectable" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1195501248700">
        <link role="relationDeclaration" targetNodeId="1.1195501105008" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1195502189033">
    <property name="package" value="script" />
    <link role="conceptDeclaration" targetNodeId="1.1195502151594" resolveInfo="MappingScriptReference" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1195502197442">
      <property name="noTargetText" value="choose script" />
      <link role="relationDeclaration" targetNodeId="1.1195502167610" />
      <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1195502197443">
        <link role="conceptDeclaration" targetNodeId="1.1195499912406" resolveInfo="MappingScript" />
        <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1195502206366">
          <property name="readOnly" value="true" />
          <property name="noTargetText" value="&lt;no name&gt;" />
          <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
          <link role="styleClass" targetNodeId="1194566785068" resolveInfo="reference" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1198101594289">
    <link role="conceptDeclaration" targetNodeId="1.1198101033452" resolveInfo="TypeOrStringType" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1198101602026">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1198101605403">
        <property name="text" value="(" />
        <link role="styleClass" targetNodeId="1198104170947" resolveInfo="literal" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1198101616733">
        <property name="noTargetText" value="&lt;none&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1198101462928" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1198101623813">
        <property name="text" value="or string" />
        <property name="selectable" value="false" />
        <link role="styleClass" targetNodeId="1198104170947" resolveInfo="literal" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1198101722129">
        <property name="text" value=")" />
        <link role="styleClass" targetNodeId="1198104170947" resolveInfo="literal" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1200911357797">
    <property name="package" value="label" />
    <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="LabelDeclaration" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200911359877">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200911360660">
        <property name="text" value="label" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200911362725">
        <property name="noTargetText" value="&lt;no name&gt;" />
        <property name="textBgColor" value="orange" />
        <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200913021132">
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200911381903">
        <property name="noTargetText" value="&lt;no input concept&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1200911342686" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200911381904">
          <link role="conceptDeclaration" targetNodeId="6.1169125787135" resolveInfo="AbstractConceptDeclaration" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200911383718">
            <property name="readOnly" value="true" />
            <property name="textFgColor" value="DARK_MAGENTA" />
            <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200913024009">
        <property name="text" value="-&gt;" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200913026652">
        <property name="noTargetText" value="&lt;no output concept&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1200913004646" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200913026653">
          <link role="conceptDeclaration" targetNodeId="6.1169125787135" resolveInfo="AbstractConceptDeclaration" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200913029718">
            <property name="readOnly" value="true" />
            <property name="textFgColor" value="DARK_MAGENTA" />
            <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1200913739876">
    <link role="conceptDeclaration" targetNodeId="1.1200913690460" resolveInfo="FindOutputNode" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200913743143">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200913743973">
        <property name="text" value="findOutput" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200913832415">
        <property name="text" value="(" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200913865125">
        <property name="text" value="with" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200913869283">
        <property name="noTargetText" value="&lt;no label&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1200913726734" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200913869284">
          <link role="conceptDeclaration" targetNodeId="1.1200911316486" resolveInfo="MappingLabelDeclaration" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200913879395">
            <property name="readOnly" value="true" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200916090755">
        <property name="text" value="in" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1200913861873">
        <link role="relationDeclaration" targetNodeId="1.1200913810085" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200913833901">
        <property name="text" value=")" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1200923044013">
    <property name="package" value="label" />
    <link role="conceptDeclaration" targetNodeId="1.1200923014784" resolveInfo="ConditionalRootLabelDeclaration" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200923100680">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1207698573049">
        <property name="selectable" value="false" />
        <property name="vertical" value="false" />
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1207698573050">
          <property name="text" value="!" />
          <property name="textFgColor" value="red" />
        </node>
        <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200923100681">
          <property name="text" value="label" />
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200923100682">
        <property name="noTargetText" value="&lt;no name&gt;" />
        <property name="textBgColor" value="orange" />
        <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200923100683">
        <property name="text" value=":" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200923100688">
        <property name="noTargetText" value="&lt;no target concept&gt;" />
        <link role="relationDeclaration" targetNodeId="1.1200913004646" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200923100689">
          <link role="conceptDeclaration" targetNodeId="6.1169125787135" resolveInfo="AbstractConceptDeclaration" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200923100690">
            <property name="readOnly" value="true" />
            <property name="textFgColor" value="DARK_MAGENTA" />
            <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1200923951919">
    <link role="conceptDeclaration" targetNodeId="1.1200923907774" resolveInfo="ConditionalRootExpression" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1200923955171">
      <property name="vertical" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1200923962003">
        <link role="relationDeclaration" targetNodeId="1.1200923917743" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1200923962004">
          <link role="conceptDeclaration" targetNodeId="1.1200923014784" resolveInfo="ConditionalRootLabelDeclaration" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1200923963569">
            <property name="readOnly" value="true" />
            <property name="textBgColor" value="orange" />
            <link role="relationDeclaration" targetNodeId="4.1169194664001" resolveInfo="name" />
          </node>
        </node>
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1200923965367">
        <property name="text" value="in" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1200923967182">
        <link role="relationDeclaration" targetNodeId="1.1200923934902" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1202780999264">
    <property name="package" value="rule.consequence" />
    <link role="conceptDeclaration" targetNodeId="1.1202776937179" resolveInfo="AbandonInput_RuleConsequence" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1202781010672">
      <property name="text" value="&lt;abandon input&gt;" />
      <property name="fontStyle" value="BOLD" />
    </node>
  </node>
  <visible index="2" modelUID="jetbrains.mps.bootstrap.structureLanguage.constraints" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept" id="1205859480204">
    <property name="name" value="QueriesUtil" />
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1205859565509">
      <property name="name" value="isInsideTemplateFragment" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1205859710913" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205859565512">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205859679048">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205859679049">
            <property name="name" value="ancestorTFs" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1205859679050">
              <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205859679051" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205859679052">
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1205859679053">
                <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1205859679054">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1205859679055">
                    <property name="name" value="it" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205859679056">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205859679057">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1205859679058">
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205859679059">
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205859679060">
                            <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.NodeAttributeAccessQualifier" id="1205859679061">
                              <link role="annotationLink" targetNodeId="1.1149858605876" resolveInfo="templateFragment" />
                            </node>
                          </node>
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1205859679062">
                            <link role="closureParameter" targetNodeId="1205859679055" resolveInfo="it" />
                          </node>
                        </node>
                        <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205859679063" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205859679064">
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAncestorsOperation" id="1205859679065">
                  <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Inclusion" id="1205859679066" />
                </node>
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205859679067">
                  <link role="variableDeclaration" targetNodeId="1205859602132" resolveInfo="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205859683728">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" id="1205859699079">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.IntegerConstant" id="1205859701755">
              <property name="value" value="0" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205859688559">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205859687449">
                <link role="variableDeclaration" targetNodeId="1205859679049" resolveInfo="ancestorTFs" />
              </node>
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetSizeOperation" id="1205859696077" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1205859602132">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205859602133" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1207155796928" />
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1205869137520">
      <property name="name" value="createTemplateFragment" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1205869137521" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205869137523">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205869156671">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869156672">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869156673">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205869164250">
                <link role="variableDeclaration" targetNodeId="1205869152165" resolveInfo="node" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205869156675">
                <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.NodeAttributeAccessQualifier" id="1205869156676">
                  <link role="annotationLink" targetNodeId="1.1149858605876" resolveInfo="templateFragment" />
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Link_SetNewChildOperation" id="1205869156677" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1205869156678">
          <property name="value" value="remove subordinate template fragments" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205869156679">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205869156680">
            <property name="name" value="children" />
            <node role="type" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.SequenceType" id="1205869156681">
              <node role="elementType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205869156682" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869156683">
              <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereOperation" id="1205869156684">
                <node role="whereClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.WhereBlock" id="1205869156685">
                  <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1205869156686">
                    <property name="name" value="it" />
                  </node>
                  <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205869156687">
                    <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205869156688">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1205869156689">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869156690">
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsAttributeOperation" id="1205869156691" />
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1205869156692">
                            <link role="closureParameter" targetNodeId="1205869156686" resolveInfo="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869156693">
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetChildrenOperation" id="1205869156694" />
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205869169548">
                  <link role="variableDeclaration" targetNodeId="1205869152165" resolveInfo="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachStatement" id="1205869156696">
          <node role="variable" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariable" id="1205869156697">
            <property name="name" value="child" />
          </node>
          <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205869156698">
            <link role="variableDeclaration" targetNodeId="1205869156680" resolveInfo="children" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205869156699">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205869156700">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869156701">
                <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869156702">
                  <node role="operand" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachVariableReference" id="1205869156703">
                    <link role="variable" targetNodeId="1205869156697" resolveInfo="child" />
                  </node>
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetDescendantsOperation" id="1205869156704">
                    <node role="parameter" type="jetbrains.mps.bootstrap.smodelLanguage.structure.OperationParm_Concept" id="1205869156705">
                      <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1207675648306">
                        <link role="conceptDeclaration" targetNodeId="1.1095672379244" resolveInfo="TemplateFragment" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachOperation" id="1205869156706">
                  <node role="forEachClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachBlock" id="1205869156707">
                    <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1205869156708">
                      <property name="name" value="it" />
                    </node>
                    <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205869156709">
                      <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205869156710">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205869156711">
                          <node role="operand" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1205869156712">
                            <link role="closureParameter" targetNodeId="1205869156708" resolveInfo="it" />
                          </node>
                          <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_DeleteOperation" id="1205869156713" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1205870841001">
          <property name="value" value="re append all macros to make them go 'after' the &lt;TF&gt;" />
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205871010867">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205871020498">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205871012228">
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205871010868">
                <link role="variableDeclaration" targetNodeId="1205869152165" resolveInfo="node" />
              </node>
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205871013308">
                <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.NodeAttributeAccessQualifier" id="1205871018168">
                  <link role="annotationLink" targetNodeId="1.1149694500506" resolveInfo="nodeMacro" />
                </node>
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachOperation" id="1205871024812">
              <node role="forEachClosure" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ForEachBlock" id="1205871024813">
                <node role="defaultInputElement" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.DefaultInputElement" id="1205871024814">
                  <property name="name" value="it" />
                </node>
                <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205871024815">
                  <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1205871031489">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205871041479">
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205871032882">
                        <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205871031490">
                          <link role="variableDeclaration" targetNodeId="1205869152165" resolveInfo="node" />
                        </node>
                        <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.AttributeAccessOperation" id="1205871037462">
                          <node role="attributeQualifier" type="jetbrains.mps.bootstrap.smodelLanguage.structure.NodeAttributeAccessQualifier" id="1205871039760">
                            <link role="annotationLink" targetNodeId="1.1149694500506" resolveInfo="nodeMacro" />
                          </node>
                        </node>
                      </node>
                      <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.LinkList_AddChildOperation" id="1205871044231">
                        <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ClosureParameterReference" id="1205871053233">
                          <link role="closureParameter" targetNodeId="1205871024814" resolveInfo="it" />
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
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1205869152165">
        <property name="name" value="node" />
        <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205869152166" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1207155794005" />
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1205880048658">
      <property name="name" value="getEditedPropertyName" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205880133709">
        <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1205880048660" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205880048661">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205880088338">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205880088339">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205880088340">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205880088341">
                <property name="name" value="modelAccessor" />
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205880088342">
                  <link role="classifier" targetNodeId="9.~ModelAccessor" resolveInfo="ModelAccessor" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205880088343">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1205880088344">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1205880088345">
                      <node role="expression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205880089766">
                        <link role="variableDeclaration" targetNodeId="1205880064302" resolveInfo="cell" />
                      </node>
                      <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205880088347">
                        <link role="classifier" targetNodeId="9.~EditorCell_Property" resolveInfo="EditorCell_Property" />
                      </node>
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1205880088348">
                    <link role="baseMethodDeclaration" targetNodeId="9.~EditorCell_Property.getModelAccessor():jetbrains.mps.nodeEditor.ModelAccessor" resolveInfo="getModelAccessor" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205880088349">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205880088350">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205880088351">
                  <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205880088352">
                    <property name="name" value="propertyName" />
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205880088353">
                      <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
                    </node>
                    <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205880088354">
                      <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1205880088355">
                        <link role="baseMethodDeclaration" targetNodeId="9.~PropertyAccessor.getPropertyName():java.lang.String" resolveInfo="getPropertyName" />
                      </node>
                      <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1205880088356">
                        <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1205880088357">
                          <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880088358">
                            <link role="variableDeclaration" targetNodeId="1205880088341" resolveInfo="modelAccessor" />
                          </node>
                          <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205880088359">
                            <link role="classifier" targetNodeId="9.~PropertyAccessor" resolveInfo="PropertyAccessor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205880120939">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880123535">
                    <link role="variableDeclaration" targetNodeId="1205880088352" resolveInfo="propertyName" />
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" id="1205880088369">
                <node role="classType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205880088370">
                  <link role="classifier" targetNodeId="9.~PropertyAccessor" resolveInfo="PropertyAccessor" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880088371">
                  <link role="variableDeclaration" targetNodeId="1205880088341" resolveInfo="modelAccessor" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" id="1205880088372">
            <node role="classType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205880088373">
              <link role="classifier" targetNodeId="9.~EditorCell_Property" resolveInfo="EditorCell_Property" />
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205880089672">
              <link role="variableDeclaration" targetNodeId="1205880064302" resolveInfo="cell" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205880142663">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205880144524" />
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1205880064302">
        <property name="name" value="cell" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205880064303">
          <link role="classifier" targetNodeId="9.~EditorCell" resolveInfo="EditorCell" />
        </node>
      </node>
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1205879788732">
      <property name="name" value="getEditedLinkRole" />
      <node role="returnType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205879799408">
        <link role="classifier" targetNodeId="65.~String" resolveInfo="String" />
      </node>
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205879788735">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205879900223">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205879900224">
            <property name="name" value="linkDeclaration" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205879900225">
              <link role="classifier" targetNodeId="65.~Object" resolveInfo="Object" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205879900226">
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1205879900227">
                <link role="baseMethodDeclaration" targetNodeId="9.~EditorCell.getUserObject(java.lang.Object):java.lang.Object" resolveInfo="getUserObject" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1205879900228">
                  <link role="classifier" targetNodeId="9.~EditorCell" resolveInfo="EditorCell" />
                  <link role="variableDeclaration" targetNodeId="9.~EditorCell.METAINFO_LINK_DECLARATION" resolveInfo="METAINFO_LINK_DECLARATION" />
                </node>
              </node>
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205879901519">
                <link role="variableDeclaration" targetNodeId="1205879822862" resolveInfo="cell" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205879900230">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205879900231">
            <property name="name" value="referentNode" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205879900232">
              <link role="classifier" targetNodeId="65.~Object" resolveInfo="Object" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205879900233">
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1205879900234">
                <link role="baseMethodDeclaration" targetNodeId="9.~EditorCell.getUserObject(java.lang.Object):java.lang.Object" resolveInfo="getUserObject" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1205879900235">
                  <link role="classifier" targetNodeId="9.~EditorCell" resolveInfo="EditorCell" />
                  <link role="variableDeclaration" targetNodeId="9.~EditorCell.METAINFO_SOURCE_NODE" resolveInfo="METAINFO_SOURCE_NODE" />
                </node>
              </node>
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205879901613">
                <link role="variableDeclaration" targetNodeId="1205879822862" resolveInfo="cell" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1205879906709">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205879906710">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205879930117">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205879932072" />
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.OrExpression" id="1205879919281">
            <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1205879926456">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205879928334" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205879923627">
                <link role="variableDeclaration" targetNodeId="1205879900224" resolveInfo="linkDeclaration" />
              </node>
            </node>
            <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1205879912605">
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205879910276">
                <link role="variableDeclaration" targetNodeId="1205879900231" resolveInfo="referentNode" />
              </node>
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1205879914826" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205880021921">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205880021922">
            <property name="name" value="link" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205880021923">
              <link role="concept" targetNodeId="6.1071489288298" resolveInfo="LinkDeclaration" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1205880021924">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205881528918">
                <link role="variableDeclaration" targetNodeId="1205879900224" resolveInfo="linkDeclaration" />
              </node>
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205880021931">
                <link role="concept" targetNodeId="6.1071489288298" resolveInfo="LinkDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205880035183">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205880039545">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205880038498">
              <link role="variableDeclaration" targetNodeId="1205880021922" resolveInfo="link" />
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1205880043641">
              <link role="conceptMethodDeclaration" targetNodeId="2v.1203470470631" resolveInfo="getGenuineRole" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1205879822862">
        <property name="name" value="cell" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205879822863">
          <link role="classifier" targetNodeId="9.~EditorCell" resolveInfo="EditorCell" />
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1207155547149" />
    </node>
    <node role="staticMethod" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" id="1205881894854">
      <property name="name" value="getEditedLinkReferentNode" />
      <node role="returnType" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205881958055" />
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1205881894856">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1205881894864">
          <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1205881894865">
            <property name="name" value="referentNode" />
            <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205881894866">
              <link role="classifier" targetNodeId="65.~Object" resolveInfo="Object" />
            </node>
            <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1205881894867">
              <node role="operation" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" id="1205881894868">
                <link role="baseMethodDeclaration" targetNodeId="9.~EditorCell.getUserObject(java.lang.Object):java.lang.Object" resolveInfo="getUserObject" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1205881894869">
                  <link role="classifier" targetNodeId="9.~EditorCell" resolveInfo="EditorCell" />
                  <link role="variableDeclaration" targetNodeId="9.~EditorCell.METAINFO_SOURCE_NODE" resolveInfo="METAINFO_SOURCE_NODE" />
                </node>
              </node>
              <node role="operand" type="jetbrains.mps.baseLanguage.structure.ParameterReference" id="1205881894870">
                <link role="variableDeclaration" targetNodeId="1205881894892" resolveInfo="cell" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1205881894888">
          <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1205881949552">
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1205881963228" />
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1205881949554">
              <link role="variableDeclaration" targetNodeId="1205881894865" resolveInfo="referentNode" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" id="1205881894892">
        <property name="name" value="cell" />
        <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1205881894893">
          <link role="classifier" targetNodeId="9.~EditorCell" resolveInfo="EditorCell" />
        </node>
      </node>
      <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1207155548978" />
    </node>
    <node role="visibility" type="jetbrains.mps.baseLanguage.structure.PublicVisibility" id="1207155541679" />
  </node>
</model>


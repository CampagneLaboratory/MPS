<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.patterns.editor">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.editorLanguage" />
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="0" />
  <maxImportIndex value="30" />
  <import index="1" modelUID="jetbrains.mps.patterns.structure" version="-1" />
  <import index="2" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="3" modelUID="jetbrains.mps.annotations.structure" version="-1" />
  <import index="6" modelUID="jetbrains.mps.patterns.util@java_stub" version="-1" />
  <import index="7" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="14" modelUID="jetbrains.mps.nodeEditor@java_stub" version="-1" />
  <import index="18" modelUID="java.lang@java_stub" version="-1" />
  <import index="22" modelUID="jetbrains.mps.patterns.structure@java_stub" version="-1" />
  <import index="23" modelUID="jetbrains.mps.core.structure@java_stub" version="-1" />
  <import index="24" modelUID="jetbrains.mps.bootstrap.helgins.structure@java_stub" version="-1" />
  <import index="25" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure@java_stub" version="-1" />
  <import index="26" modelUID="jetbrains.mps.bootstrap.helgins.structure" version="-1" />
  <import index="27" modelUID="jetbrains.mps.quotation.structure@java_stub" version="-1" />
  <import index="28" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1" />
  <import index="29" modelUID="jetbrains.mps.bootstrap.helgins.editor" version="-1" />
  <import index="30" modelUID="jetbrains.mps.quotation.structure" version="-1" />
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1136720096744">
    <link role="conceptDeclaration" targetNodeId="1.1136720037773" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1136720096745">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136720096746">
        <property name="textFgColor" value="DARK_GREEN" />
        <property name="text" value="@" />
        <property name="fontStyle" value="BOLD" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1136728380327">
        <property name="fontStyle" value="BOLD" />
        <property name="textFgColor" value="DARK_GREEN" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1136720037780" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_AttributedNodeCell" id="1150461005171">
        <property name="drawBrackets" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1136720096748">
    <link role="conceptDeclaration" targetNodeId="1.1136720037777" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1136720096749">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <link role="keyMap" targetNodeId="1136721133135" resolveInfo="_PatternExpression_KeyMap" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136720096750">
        <property name="editable" value="false" />
        <property name="textBgColor" value="green" />
        <property name="text" value="&gt;" />
        <property name="selectable" value="false" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefNode" id="1136720096751">
        <property name="drawBorder" value="true" />
        <property name="drawBrackets" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1136720037778" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136720096752">
        <property name="textBgColor" value="green" />
        <property name="text" value="&lt;" />
        <property name="drawBorder" value="false" />
        <property name="selectable" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1136720096753">
    <link role="conceptDeclaration" targetNodeId="1.1136720037779" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1136720096754">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1138397498295">
        <property name="textFgColor" value="DARK_GREEN" />
        <property name="text" value="#" />
        <property name="fontStyle" value="BOLD" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1136720096755">
        <property name="textFgColor" value="DARK_GREEN" />
        <property name="fontStyle" value="BOLD" />
        <property name="noTargetText" value="&lt;var&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1136720037780" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1136720096756">
    <link role="conceptDeclaration" targetNodeId="1.1136720037775" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Error" id="1136720096757">
      <property name="text" value="&lt;undefined pattern&gt;" />
      <property name="drawBorder" value="false" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1136720096758">
    <link role="conceptDeclaration" targetNodeId="1.1136720037781" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1136720096759">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1138397462496">
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="text" value="$" />
        <property name="fontStyle" value="BOLD_ITALIC" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1136720096760">
        <property name="textFgColor" value="DARK_BLUE" />
        <property name="fontStyle" value="BOLD_ITALIC" />
        <property name="noTargetText" value="&lt;property var&gt;" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1136720037782" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1136720096761">
    <link role="conceptDeclaration" targetNodeId="1.1136720037783" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1136720096762">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136720096763">
        <property name="textFgColor" value="DARK_GREEN" />
        <property name="text" value="_" />
        <property name="fontStyle" value="BOLD" />
        <property name="drawBorder" value="false" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapDeclaration" id="1136721133135">
    <property name="name" value="_PatternExpression_KeyMap" />
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1163600715323">
      <property name="description" value="create wildcard" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1163600715324">
        <property name="keycode" value="_" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1163600715325">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1163600715326">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1163601201673">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1163601257289">
              <link role="baseMethodDeclaration" targetNodeId="7.~SNode.setAttribute(jetbrains.mps.smodel.SNode):void" resolveInfo="setAttribute" />
              <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1163601244832">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1163601201674" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1171552261546">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1171552272034">
                  <link role="concept" targetNodeId="1.1136720037783" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1171552256948">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1171552260482" />
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1171552255759" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1163601040238">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1163601040239">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1163601043079">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1163601149576">
              <link role="baseMethodDeclaration" targetNodeId="6.~PatternAddingUtil.isPatternApplicable(jetbrains.mps.nodeEditor.EditorContext):boolean" resolveInfo="isPatternApplicable" />
              <link role="classConcept" targetNodeId="6.~PatternAddingUtil" resolveInfo="PatternAddingUtil" />
              <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1163601163749" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1163600736765">
      <property name="description" value="create as-pattern" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1163600736766">
        <property name="keycode" value="@" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1163600736767">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1163600736768">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1163601506949">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1163601508436">
              <link role="classConcept" targetNodeId="22.~AsPattern_AnnotationLink" resolveInfo="AsPattern_AnnotationLink" />
              <link role="baseMethodDeclaration" targetNodeId="22.~AsPattern_AnnotationLink.setAsPattern(jetbrains.mps.core.structure.BaseConcept,jetbrains.mps.patterns.structure.AsPattern):void" resolveInfo="setAsPattern" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1163601969003">
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1171552346622">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1171552348812" />
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1163601978694" />
                </node>
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1171552862915">
                  <link role="classifier" targetNodeId="23.~BaseConcept" resolveInfo="BaseConcept" />
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1171552385395">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1171552387398" />
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1171552378203">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1171552380487">
                    <link role="concept" targetNodeId="1.1136720037773" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1171552373933">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1171552378170" />
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1171552373900" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1163601481957">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1163601481958">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1163601484194">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1163601490212">
              <link role="baseMethodDeclaration" targetNodeId="6.~PatternAddingUtil.isPatternApplicable(jetbrains.mps.nodeEditor.EditorContext):boolean" resolveInfo="isPatternApplicable" />
              <link role="classConcept" targetNodeId="6.~PatternAddingUtil" resolveInfo="PatternAddingUtil" />
              <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1163601492589" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1163600763504">
      <property name="description" value="create variable pattern" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1163600763505">
        <property name="keycode" value="#" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1163600763506">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1163600763507">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1163602232887">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1163602681023">
              <link role="baseMethodDeclaration" targetNodeId="6.~PatternAddingUtil.addVariablePattern(jetbrains.mps.nodeEditor.EditorContext):void" resolveInfo="addVariablePattern" />
              <link role="classConcept" targetNodeId="6.~PatternAddingUtil" resolveInfo="PatternAddingUtil" />
              <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1163602702743" />
            </node>
          </node>
        </node>
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1163602203410">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1163602203411">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1163602205428">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1163602214149">
              <link role="baseMethodDeclaration" targetNodeId="6.~PatternAddingUtil.isPatternApplicable(jetbrains.mps.nodeEditor.EditorContext):boolean" resolveInfo="isPatternApplicable" />
              <link role="classConcept" targetNodeId="6.~PatternAddingUtil" resolveInfo="PatternAddingUtil" />
              <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1163602215900" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1163600789149">
      <property name="description" value="create property var pattern" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1163600789150">
        <property name="keycode" value="$" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1163600789151">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1163600789152">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1163603121640">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1163603121641">
              <property name="name" value="cell" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1163603121642">
                <link role="classifier" targetNodeId="14.~EditorCell_Property" resolveInfo="EditorCell_Property" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1163603151512">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1163603151513">
                  <link role="baseMethodDeclaration" targetNodeId="14.~EditorContext.getSelectedCell():jetbrains.mps.nodeEditor.EditorCell" resolveInfo="getSelectedCell" />
                  <node role="instance" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1163603151514" />
                </node>
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1163603151515">
                  <link role="classifier" targetNodeId="14.~EditorCell_Property" resolveInfo="EditorCell_Property" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1163603188409">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1163603188410">
              <property name="name" value="propertyName" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1163603188411">
                <link role="classifier" targetNodeId="18.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1163603258638">
                <link role="baseMethodDeclaration" targetNodeId="14.~PropertyAccessor.getPropertyName():java.lang.String" resolveInfo="getPropertyName" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1163603254210">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1163603254211">
                    <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1163603254212">
                      <link role="baseMethodDeclaration" targetNodeId="14.~EditorCell_Property.getModelAccessor():jetbrains.mps.nodeEditor.ModelAccessor" resolveInfo="getModelAccessor" />
                      <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1163603254213">
                        <link role="variableDeclaration" targetNodeId="1163603121641" resolveInfo="cell" />
                      </node>
                    </node>
                    <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1163603254214">
                      <link role="classifier" targetNodeId="14.~PropertyAccessor" resolveInfo="PropertyAccessor" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1163603281343">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1163603329791">
              <link role="baseMethodDeclaration" targetNodeId="7.~SNode.setPropertyAttribute(java.lang.String,jetbrains.mps.smodel.SNode):void" resolveInfo="setPropertyAttribute" />
              <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1163603317269">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1163603281344" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1163603331949">
                <link role="variableDeclaration" targetNodeId="1163603188410" resolveInfo="propertyName" />
              </node>
              <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1171552460742">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1171552464745">
                  <link role="concept" targetNodeId="1.1136720037781" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1171552459253">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1171552460725" />
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1171552459237" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1163602964326">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1163602964327">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1163602977578">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1163603040388">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1163603068237">
                <link role="baseMethodDeclaration" targetNodeId="6.~PatternAddingUtil.isPatternApplicable(jetbrains.mps.nodeEditor.EditorContext):boolean" resolveInfo="isPatternApplicable" />
                <link role="classConcept" targetNodeId="6.~PatternAddingUtil" resolveInfo="PatternAddingUtil" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1163603072910" />
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1163603090979">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" id="1163603090980">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1163603090981">
                    <link role="baseMethodDeclaration" targetNodeId="14.~EditorContext.getSelectedCell():jetbrains.mps.nodeEditor.EditorCell" resolveInfo="getSelectedCell" />
                    <node role="instance" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1163603090982" />
                  </node>
                  <node role="classType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1163603090983">
                    <link role="classifier" targetNodeId="14.~EditorCell_Property" resolveInfo="EditorCell_Property" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1163600809309">
      <property name="description" value="create list pattern" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1163600809310">
        <property name="keycode" value="*" />
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1163600809311">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1163600809312">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1163603670564">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1163603670565">
              <property name="name" value="siblings" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeListType" id="1163603731899" />
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1163603675350">
                <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1163603674209" />
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAllSiblingsOperation" id="1163603741791" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1163603816923">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1163603830769">
              <link role="classConcept" targetNodeId="22.~AsPattern_AnnotationLink" resolveInfo="AsPattern_AnnotationLink" />
              <link role="baseMethodDeclaration" targetNodeId="22.~AsPattern_AnnotationLink.setAsPattern(jetbrains.mps.core.structure.BaseConcept,jetbrains.mps.patterns.structure.AsPattern):void" resolveInfo="setAsPattern" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1163603840848">
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1171552849742">
                  <link role="classifier" targetNodeId="23.~BaseConcept" resolveInfo="BaseConcept" />
                </node>
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1171552649820">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1171552651870" />
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1163603845805" />
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1171553027296">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1171553030017" />
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1171552542011">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1171552544545">
                    <link role="concept" targetNodeId="1.1136727061274" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1171552539992">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1171552541979" />
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1171552539959" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1163603926363">
            <node role="iterable" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1163603931040">
              <link role="variableDeclaration" targetNodeId="1163603670565" resolveInfo="siblings" />
            </node>
            <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1163603926365">
              <property name="name" value="sibling" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1163603935525" />
            </node>
            <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1163603926367">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1163603950652">
                <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1163603951904">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1163603950653">
                    <link role="variableDeclaration" targetNodeId="1163603926365" resolveInfo="sibling" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_DeleteOperation" id="1163603954202" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1163603524505">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1163603524506">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1163603527179">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.AndExpression" id="1163603529400">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1163603558128">
                <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1163603562335" />
                <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1163603547017">
                  <node role="leftExpression" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_FunctionParm_selectedNode" id="1163603546922" />
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1163603553205" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1163603539498">
                <link role="baseMethodDeclaration" targetNodeId="6.~PatternAddingUtil.isPatternApplicable(jetbrains.mps.nodeEditor.EditorContext):boolean" resolveInfo="isPatternApplicable" />
                <link role="classConcept" targetNodeId="6.~PatternAddingUtil" resolveInfo="PatternAddingUtil" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1163603542936" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1176736750292">
      <property name="description" value="antiquotation" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1176736750293">
        <property name="keycode" value="%" />
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1176736750294">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750295">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176736750296">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1176736750297">
              <property name="value" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1176736750298">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750299">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176736750300">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176736750301">
              <property name="name" value="contextNode" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1176736750302">
                <link role="concept" targetNodeId="2.1133920641626" resolveInfo="BaseConcept" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750303">
                <link role="baseMethodDeclaration" targetNodeId="14.~EditorCell.getSNode():jetbrains.mps.smodel.SNode" resolveInfo="getSNode" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750304">
                  <link role="baseMethodDeclaration" targetNodeId="14.~EditorContext.getSelectedCell():jetbrains.mps.nodeEditor.EditorCell" resolveInfo="getSelectedCell" />
                  <node role="instance" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1176736750305" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1176736750306">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1176736750307">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750308" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750309">
                <link role="variableDeclaration" targetNodeId="1176736750301" resolveInfo="contextNode" />
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750310">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176736750311" />
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1176736750312">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750313">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176736750314">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176736750315">
                  <property name="name" value="attributedNode" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1176736750316" />
                  <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750317">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1176736750318">
                      <link role="link" targetNodeId="3.1136027476088" />
                    </node>
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" id="1176736750319">
                      <node role="expression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1176736750320">
                        <link role="concept" targetNodeId="3.1136027476087" resolveInfo="AttributeConcept" />
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750321">
                          <link role="variableDeclaration" targetNodeId="1176736750301" resolveInfo="contextNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1176736750322">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750323">
                  <link role="baseMethodDeclaration" targetNodeId="7.~SNode.setAttribute(jetbrains.mps.smodel.SNode):void" resolveInfo="setAttribute" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750324">
                    <link role="variableDeclaration" targetNodeId="1176736750315" resolveInfo="attributedNode" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750325" />
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176736750326" />
            </node>
            <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750327">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1176736750328">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1202142138495">
                  <link role="conceptDeclaration" targetNodeId="3.1136027476087" resolveInfo="AttributeConcept" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750329">
                <link role="variableDeclaration" targetNodeId="1176736750301" resolveInfo="contextNode" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176736750330">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176736750331">
              <property name="name" value="model" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SModelType" id="1176736750332" />
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750333">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1176736750334" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750335">
                  <link role="variableDeclaration" targetNodeId="1176736750301" resolveInfo="contextNode" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1176736750336">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750337">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1176736750338">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750339">
                  <link role="baseMethodDeclaration" targetNodeId="7.~SNode.setAttribute(jetbrains.mps.smodel.SNode):void" resolveInfo="setAttribute" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750340">
                    <link role="variableDeclaration" targetNodeId="1176736750301" resolveInfo="contextNode" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750341" />
                </node>
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1176736750342">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750343">
                <link role="baseMethodDeclaration" targetNodeId="7.~SNode.setAttribute(jetbrains.mps.smodel.SNode):void" resolveInfo="setAttribute" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750344">
                  <link role="variableDeclaration" targetNodeId="1176736750301" resolveInfo="contextNode" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750345">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1176736750346">
                    <link role="concept" targetNodeId="30.1196350785112" resolveInfo="Antiquotation" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750347">
                    <link role="variableDeclaration" targetNodeId="1176736750331" resolveInfo="model" />
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1176736750348">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750349" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1176736750350">
                <link role="classConcept" targetNodeId="27.~Antiquotation_AnnotationLink" resolveInfo="Antiquotation_AnnotationLink" />
                <link role="baseMethodDeclaration" targetNodeId="27.~Antiquotation_AnnotationLink.getAntiquotation(jetbrains.mps.core.structure.BaseConcept):jetbrains.mps.quotation.structure.Antiquotation" resolveInfo="getAntiquotation" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750351">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750352">
                    <link role="variableDeclaration" targetNodeId="1176736750301" resolveInfo="contextNode" />
                  </node>
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1176736750353" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1176736750354">
      <property name="description" value="list antiquotation" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1176736750355">
        <property name="keycode" value="*" />
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1176736750356">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750357">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176736750358">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1176736750359">
              <property name="value" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1176736750360">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750361">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176736750362">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176736750363">
              <property name="name" value="contextNode" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1176736750364" />
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750365">
                <link role="baseMethodDeclaration" targetNodeId="14.~EditorCell.getSNode():jetbrains.mps.smodel.SNode" resolveInfo="getSNode" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750366">
                  <link role="baseMethodDeclaration" targetNodeId="14.~EditorContext.getSelectedCell():jetbrains.mps.nodeEditor.EditorCell" resolveInfo="getSelectedCell" />
                  <node role="instance" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1176736750367" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1176736750368">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1176736750369">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750370" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750371">
                <link role="variableDeclaration" targetNodeId="1176736750363" resolveInfo="contextNode" />
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750372">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176736750373" />
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1176736750374">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750375">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176736750376">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176736750377">
                  <property name="name" value="attributedNode" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1176736750378" />
                  <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750379">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1176736750380" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750381">
                      <link role="variableDeclaration" targetNodeId="1176736750363" resolveInfo="contextNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.AssertStatement" id="1176736750382">
                <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1176736750383">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750384" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750385">
                    <link role="variableDeclaration" targetNodeId="1176736750377" resolveInfo="attributedNode" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1176736750386">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750387">
                  <link role="baseMethodDeclaration" targetNodeId="7.~SNode.setAttribute(jetbrains.mps.smodel.SNode):void" resolveInfo="setAttribute" />
                  <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1176736750388">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750389">
                      <link role="variableDeclaration" targetNodeId="1176736750377" resolveInfo="attributedNode" />
                    </node>
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750390" />
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176736750391" />
            </node>
            <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750392">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1176736750393">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1202142346250">
                  <link role="conceptDeclaration" targetNodeId="30.1196350785118" resolveInfo="ListAntiquotation" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750394">
                <link role="variableDeclaration" targetNodeId="1176736750363" resolveInfo="contextNode" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176736750395">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176736750396">
              <property name="name" value="model" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SModelType" id="1176736750397" />
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750398">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1176736750399" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750400">
                  <link role="variableDeclaration" targetNodeId="1176736750363" resolveInfo="contextNode" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1176736750401">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750402">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1176736750403">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750404">
                  <link role="baseMethodDeclaration" targetNodeId="7.~SNode.setAttribute(jetbrains.mps.smodel.SNode):void" resolveInfo="setAttribute" />
                  <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1202142309355">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750405">
                      <link role="variableDeclaration" targetNodeId="1176736750363" resolveInfo="contextNode" />
                    </node>
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750406" />
                </node>
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1176736750407">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750408">
                <link role="baseMethodDeclaration" targetNodeId="7.~SNode.setAttribute(jetbrains.mps.smodel.SNode):void" resolveInfo="setAttribute" />
                <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1202142314607">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750409">
                    <link role="variableDeclaration" targetNodeId="1176736750363" resolveInfo="contextNode" />
                  </node>
                </node>
                <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750410">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1176736750411">
                    <link role="concept" targetNodeId="30.1196350785118" resolveInfo="ListAntiquotation" />
                  </node>
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750412">
                    <link role="variableDeclaration" targetNodeId="1176736750396" resolveInfo="model" />
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1176736750413">
              <link role="classConcept" targetNodeId="7.~BaseAdapter" resolveInfo="BaseAdapter" />
              <link role="baseMethodDeclaration" targetNodeId="7.~BaseAdapter.isInstance(jetbrains.mps.smodel.SNode,java.lang.Class):boolean" resolveInfo="isInstance" />
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750414">
                <link role="baseMethodDeclaration" targetNodeId="7.~SNode.getAttribute():jetbrains.mps.smodel.SNode" resolveInfo="getAttribute" />
                <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1176736750415">
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750416">
                    <link role="variableDeclaration" targetNodeId="1176736750363" resolveInfo="contextNode" />
                  </node>
                </node>
              </node>
              <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1176736750417">
                <link role="classifier" targetNodeId="27.~ListAntiquotation" resolveInfo="ListAntiquotation" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="item" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapItem" id="1176736750418">
      <property name="description" value="reference antiquotation" />
      <node role="keystroke" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMapKeystroke" id="1176736750419">
        <property name="keycode" value="^" />
      </node>
      <node role="isApplicableFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_IsApplicableFunction" id="1176736750420">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750421">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176736750422">
            <node role="expression" type="jetbrains.mps.baseLanguage.structure.BooleanConstant" id="1176736750423">
              <property name="value" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node role="executeFunction" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellKeyMap_ExecuteFunction" id="1176736750424">
        <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750425">
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176736750426">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176736750427">
              <property name="name" value="selectedCell" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176736750428">
                <link role="classifier" targetNodeId="14.~EditorCell" resolveInfo="EditorCell" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750429">
                <link role="baseMethodDeclaration" targetNodeId="14.~EditorContext.getSelectedCell():jetbrains.mps.nodeEditor.EditorCell" resolveInfo="getSelectedCell" />
                <node role="instance" type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptFunctionParameter_editorContext" id="1176736750430" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176736750431">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176736750432">
              <property name="name" value="contextNode" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1176736750433">
                <link role="concept" targetNodeId="2.1133920641626" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750434">
                <link role="baseMethodDeclaration" targetNodeId="14.~EditorCell.getSNode():jetbrains.mps.smodel.SNode" resolveInfo="getSNode" />
                <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750435">
                  <link role="variableDeclaration" targetNodeId="1176736750427" resolveInfo="selectedCell" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176736750436">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176736750437">
              <property name="name" value="linkNode" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176736750438">
                <link role="classifier" targetNodeId="7.~SNode" resolveInfo="SNode" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.CastExpression" id="1176736750439">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750440">
                  <link role="baseMethodDeclaration" targetNodeId="14.~EditorCell.getUserObject(java.lang.Object):java.lang.Object" resolveInfo="getUserObject" />
                  <node role="instance" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750441">
                    <link role="variableDeclaration" targetNodeId="1176736750427" resolveInfo="selectedCell" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticFieldReference" id="1176736750442">
                    <link role="variableDeclaration" targetNodeId="14.~EditorCell.METAINFO_LINK_DECLARATION" resolveInfo="METAINFO_LINK_DECLARATION" />
                    <link role="classifier" targetNodeId="14.~EditorCell_Component" resolveInfo="EditorCell_Component" />
                  </node>
                </node>
                <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176736750443">
                  <link role="classifier" targetNodeId="7.~SNode" resolveInfo="SNode" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1176736750444">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750445">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176736750446" />
            </node>
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1176736750447">
              <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1176736750448">
                <link role="baseMethodDeclaration" targetNodeId="7.~BaseAdapter.isInstance(jetbrains.mps.smodel.SNode,java.lang.Class):boolean" resolveInfo="isInstance" />
                <link role="classConcept" targetNodeId="7.~BaseAdapter" resolveInfo="BaseAdapter" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750449">
                  <link role="variableDeclaration" targetNodeId="1176736750437" resolveInfo="linkNode" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" id="1176736750450">
                  <link role="classifier" targetNodeId="25.~LinkDeclaration" resolveInfo="LinkDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1176736750451">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.EqualsExpression" id="1176736750452">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750453" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750454">
                <link role="variableDeclaration" targetNodeId="1176736750432" resolveInfo="contextNode" />
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750455">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176736750456" />
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176736750457">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176736750458">
              <property name="name" value="link" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1176736750459">
                <link role="concept" targetNodeId="28.1071489288298" />
              </node>
              <node role="initializer" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750460">
                <link role="variableDeclaration" targetNodeId="1176736750437" resolveInfo="linkNode" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1176736750461">
            <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750462">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Property_HasValue_Enum" id="1176736750463">
                <node role="value" type="jetbrains.mps.bootstrap.smodelLanguage.structure.EnumMemberReference" id="1176736750464">
                  <link role="enumMember" targetNodeId="28.1084199179705" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750465">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1176736750466">
                  <link role="property" targetNodeId="28.1071599937831" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750467">
                  <link role="variableDeclaration" targetNodeId="1176736750458" resolveInfo="link" />
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750468">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176736750469" />
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176736750470">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176736750471">
              <property name="name" value="role" />
              <node role="type" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1176736750472">
                <link role="classifier" targetNodeId="18.~String" resolveInfo="String" />
              </node>
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750473">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1176736750474">
                  <link role="property" targetNodeId="28.1071599776563" />
                </node>
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750475">
                  <link role="variableDeclaration" targetNodeId="1176736750458" resolveInfo="link" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1176736750476">
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750477">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176736750478">
                <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176736750479">
                  <property name="name" value="attributedNode" />
                  <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1176736750480">
                    <link role="concept" targetNodeId="2.1133920641626" />
                  </node>
                  <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1176736750481">
                    <link role="concept" targetNodeId="2.1133920641626" />
                    <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750482">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetParentOperation" id="1176736750483" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750484">
                        <link role="variableDeclaration" targetNodeId="1176736750432" resolveInfo="contextNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.AssertStatement" id="1176736750485">
                <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1176736750486">
                  <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750487" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750488">
                    <link role="variableDeclaration" targetNodeId="1176736750479" resolveInfo="attributedNode" />
                  </node>
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1176736750489">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1176736750490">
                  <link role="baseMethodDeclaration" targetNodeId="27.~ReferenceAntiquotation_AnnotationLink.setReferenceAntiquotation(jetbrains.mps.core.structure.BaseConcept,java.lang.String,jetbrains.mps.quotation.structure.ReferenceAntiquotation):void" resolveInfo="setReferenceAntiquotation" />
                  <link role="classConcept" targetNodeId="27.~ReferenceAntiquotation_AnnotationLink" resolveInfo="ReferenceAntiquotation_AnnotationLink" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750491">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1176736750492" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750493">
                      <link role="variableDeclaration" targetNodeId="1176736750479" resolveInfo="attributedNode" />
                    </node>
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750494">
                    <link role="variableDeclaration" targetNodeId="1176736750471" resolveInfo="role" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750495" />
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1176736750496">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCall" id="1176736750497">
                  <link role="baseMethodDeclaration" targetNodeId="7.~SNode.setAttribute(jetbrains.mps.smodel.SNode):void" resolveInfo="setAttribute" />
                  <node role="instance" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SemanticDowncastExpression" id="1176736750498">
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750499">
                      <link role="variableDeclaration" targetNodeId="1176736750479" resolveInfo="attributedNode" />
                    </node>
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750500" />
                </node>
              </node>
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ReturnStatement" id="1176736750501" />
            </node>
            <node role="condition" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750502">
              <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1176736750503">
                <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1202142412674">
                  <link role="conceptDeclaration" targetNodeId="30.1196350785117" resolveInfo="ReferenceAntiquotation" />
                </node>
              </node>
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750504">
                <link role="variableDeclaration" targetNodeId="1176736750432" resolveInfo="contextNode" />
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1176736750505">
            <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1176736750506">
              <property name="name" value="model" />
              <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SModelType" id="1176736750507" />
              <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750508">
                <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetModelOperation" id="1176736750509" />
                <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750510">
                  <link role="variableDeclaration" targetNodeId="1176736750432" resolveInfo="contextNode" />
                </node>
              </node>
            </node>
          </node>
          <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1176736750511">
            <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" id="1176736750512">
              <node role="rightExpression" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750513" />
              <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1176736750514">
                <link role="baseMethodDeclaration" targetNodeId="27.~ReferenceAntiquotation_AnnotationLink.getReferenceAntiquotation(jetbrains.mps.core.structure.BaseConcept,java.lang.String):jetbrains.mps.quotation.structure.ReferenceAntiquotation" resolveInfo="getReferenceAntiquotation" />
                <link role="classConcept" targetNodeId="27.~ReferenceAntiquotation_AnnotationLink" resolveInfo="ReferenceAntiquotation_AnnotationLink" />
                <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750515">
                  <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1176736750516" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750517">
                    <link role="variableDeclaration" targetNodeId="1176736750432" resolveInfo="contextNode" />
                  </node>
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750518">
                  <link role="variableDeclaration" targetNodeId="1176736750471" resolveInfo="role" />
                </node>
              </node>
            </node>
            <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750519">
              <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1176736750520">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1176736750521">
                  <link role="baseMethodDeclaration" targetNodeId="27.~ReferenceAntiquotation_AnnotationLink.setReferenceAntiquotation(jetbrains.mps.core.structure.BaseConcept,java.lang.String,jetbrains.mps.quotation.structure.ReferenceAntiquotation):void" resolveInfo="setReferenceAntiquotation" />
                  <link role="classConcept" targetNodeId="27.~ReferenceAntiquotation_AnnotationLink" resolveInfo="ReferenceAntiquotation_AnnotationLink" />
                  <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750522">
                    <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1176736750523" />
                    <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750524">
                      <link role="variableDeclaration" targetNodeId="1176736750432" resolveInfo="contextNode" />
                    </node>
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750525">
                    <link role="variableDeclaration" targetNodeId="1176736750471" resolveInfo="role" />
                  </node>
                  <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.NullLiteral" id="1176736750526" />
                </node>
              </node>
            </node>
            <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1176736750527">
              <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1176736750528">
                <node role="statement" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement" id="1176736750529">
                  <node role="expression" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1176736750530">
                    <link role="baseMethodDeclaration" targetNodeId="27.~ReferenceAntiquotation_AnnotationLink.setReferenceAntiquotation(jetbrains.mps.core.structure.BaseConcept,java.lang.String,jetbrains.mps.quotation.structure.ReferenceAntiquotation):void" resolveInfo="setReferenceAntiquotation" />
                    <link role="classConcept" targetNodeId="27.~ReferenceAntiquotation_AnnotationLink" resolveInfo="ReferenceAntiquotation_AnnotationLink" />
                    <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750531">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1176736750532" />
                      <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750533">
                        <link role="variableDeclaration" targetNodeId="1176736750432" resolveInfo="contextNode" />
                      </node>
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750534">
                      <link role="variableDeclaration" targetNodeId="1176736750471" resolveInfo="role" />
                    </node>
                    <node role="actualArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750535">
                      <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_GetAdapterOperation" id="1176736750536" />
                      <node role="leftExpression" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeOperationExpression" id="1176736750537">
                        <node role="nodeOperation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Model_CreateNewNodeOperation" id="1176736750538">
                          <link role="concept" targetNodeId="30.1196350785117" resolveInfo="ReferenceAntiquotation" />
                        </node>
                        <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1176736750539">
                          <link role="variableDeclaration" targetNodeId="1176736750506" resolveInfo="model" />
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
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1136727254735">
    <link role="conceptDeclaration" targetNodeId="1.1136727061274" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1136727263715">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1136727263716">
        <property name="textFgColor" value="DARK_GREEN" />
        <property name="text" value="*" />
        <property name="fontStyle" value="BOLD" />
        <property name="drawBorder" value="false" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1136728429078">
        <property name="fontStyle" value="BOLD" />
        <property name="textFgColor" value="DARK_GREEN" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1136720037780" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_AttributedNodeCell" id="1150461026704">
        <property name="drawBrackets" value="true" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1136890178412">
    <link role="conceptDeclaration" targetNodeId="1.1136890029205" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1136890191680">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1136891232433">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1136890071566" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1136891232432">
          <link role="conceptDeclaration" targetNodeId="1.1136720037779" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1136891238607">
            <property name="fontStyle" value="BOLD" />
            <property name="textFgColor" value="DARK_GREEN" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="1.1136720037780" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1136890212528">
    <link role="conceptDeclaration" targetNodeId="1.1136889887092" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1136890218468">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_RefCell" id="1136891206929">
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1136890007360" />
        <node role="editorComponent" type="jetbrains.mps.bootstrap.editorLanguage.structure.InlineEditorComponent" id="1136891206928">
          <link role="conceptDeclaration" targetNodeId="1.1136720037781" />
          <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1136891217556">
            <property name="fontStyle" value="BOLD_ITALIC" />
            <property name="textFgColor" value="DARK_BLUE" />
            <property name="drawBorder" value="false" />
            <link role="relationDeclaration" targetNodeId="1.1136720037782" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration" id="1137418658698">
    <link role="conceptDeclaration" targetNodeId="1.1137418540378" />
    <node role="cellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Collection" id="1137418661903">
      <property name="vertical" value="false" />
      <property name="drawBorder" value="false" />
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Constant" id="1140969522389">
        <property name="textFgColor" value="DARK_GREEN" />
        <property name="drawBorder" value="false" />
        <property name="text" value="#" />
      </node>
      <node role="childCellModel" type="jetbrains.mps.bootstrap.editorLanguage.structure.CellModel_Property" id="1137418665045">
        <property name="fontStyle" value="BOLD" />
        <property name="textFgColor" value="DARK_GREEN" />
        <property name="drawBorder" value="false" />
        <link role="relationDeclaration" targetNodeId="1.1137418571428" />
      </node>
    </node>
  </node>
</model>


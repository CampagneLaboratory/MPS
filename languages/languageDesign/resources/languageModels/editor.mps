<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:dc468d7c-ca2d-45f7-ace9-6f81e4694f66(jetbrains.mps.lang.resources.editor)" version="0">
  <persistence version="8" />
  <language namespace="18bc6592-03a6-4e29-a83a-7ff23bde13ba(jetbrains.mps.lang.editor)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="1oap" modelUID="r:03d44d4c-3d65-461c-9085-0f48e9569e59(jetbrains.mps.lang.resources.structure)" version="0" />
  <import index="7lvn" modelUID="r:4e6037e6-9135-44f8-9403-04d79fc40f4a(jetbrains.mps.ide.editor.util)" version="-1" />
  <import index="1t7x" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt(JDK/java.awt@java_stub)" version="-1" />
  <import index="tpen" modelUID="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" version="-1" />
  <import index="3767" modelUID="r:7f24d329-a444-4288-af92-f8ef91dfd241(jetbrains.mps.lang.resources.behavior)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tpc2" modelUID="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" version="32" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" implicit="yes" />
  <import index="tpco" modelUID="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" version="-1" implicit="yes" />
  <root type="tpc2.ConceptEditorDeclaration" typeId="tpc2.1071666914219" id="8974276187400029900" nodeInfo="ng">
    <link role="conceptDeclaration" roleId="tpc2.1166049300910" targetNodeId="1oap.8974276187400029883" resolveInfo="IconResource" />
    <node role="cellModel" roleId="tpc2.1080736633877" type="tpc2.CellModel_Collection" typeId="tpc2.1073389446423" id="6976585500156659086" nodeInfo="nn">
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Alternation" typeId="tpc2.1088612959204" id="6976585500156879192" nodeInfo="ng">
        <property name="vertical" nameId="tpc2.1088613081987" value="true" />
        <node role="ifFalseCellModel" roleId="tpc2.1088612973955" type="tpc2.CellModel_Empty" typeId="tpc2.8313721352726366579" id="6976585500156983757" nodeInfo="ng" />
        <node role="alternationCondition" roleId="tpc2.1145918517974" type="tpc2.QueryFunction_NodeCondition" typeId="tpc2.1142886221719" id="6976585500156879195" nodeInfo="nn">
          <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="6976585500156879197" nodeInfo="nn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6976585500156928164" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6976585500156953867" nodeInfo="nn">
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsNullOperation" typeId="tp25.1171999116870" id="6976585500156968031" nodeInfo="nn" />
                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6976585500156930376" nodeInfo="nn">
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="6976585500156941208" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="1oap.6976585500156684809" />
                  </node>
                  <node role="operand" roleId="tpee.1197027771414" type="tpc2.ConceptFunctionParameter_node" typeId="tpc2.1142886811589" id="6976585500156928163" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="ifTrueCellModel" roleId="tpc2.1088612958265" type="tpc2.CellModel_Collection" typeId="tpc2.1073389446423" id="8974276187400029901" nodeInfo="nn">
          <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Alternation" typeId="tpc2.1088612959204" id="8974276187400029902" nodeInfo="ng">
            <property name="vertical" nameId="tpc2.1088613081987" value="true" />
            <node role="alternationCondition" roleId="tpc2.1145918517974" type="tpc2.QueryFunction_NodeCondition" typeId="tpc2.1142886221719" id="8974276187400029903" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="8974276187400029904" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8974276187400029905" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8974276187400029906" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8974276187400029907" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpc2.ConceptFunctionParameter_node" typeId="tpc2.1142886811589" id="8974276187400029908" nodeInfo="nn" />
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="8974276187400029909" nodeInfo="nn">
                        <link role="property" roleId="tp25.1138056395725" targetNodeId="1oap.8974276187400029899" resolveInfo="path" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.IsEmptyOperation" typeId="tpee.1225271369338" id="8974276187400029910" nodeInfo="nn" />
                  </node>
                </node>
              </node>
            </node>
            <node role="ifTrueCellModel" roleId="tpc2.1088612958265" type="tpc2.CellModel_Constant" typeId="tpc2.1073389577006" id="8974276187400029911" nodeInfo="nn">
              <property name="text" nameId="tpc2.1073389577007" value="&lt;no icon&gt;" />
              <node role="styleItem" roleId="tpc2.1219418656006" type="tpc2.ForegroundColorStyleClassItem" typeId="tpc2.1186404549998" id="8974276187400029912" nodeInfo="nn">
                <property name="color" nameId="tpc2.1186403713874" value="lightGray" />
              </node>
            </node>
            <node role="ifFalseCellModel" roleId="tpc2.1088612973955" type="tpc2.CellModel_Alternation" typeId="tpc2.1088612959204" id="8974276187400029913" nodeInfo="ng">
              <property name="vertical" nameId="tpc2.1088613081987" value="true" />
              <node role="alternationCondition" roleId="tpc2.1145918517974" type="tpc2.QueryFunction_NodeCondition" typeId="tpc2.1142886221719" id="8974276187400029914" nodeInfo="nn">
                <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="8974276187400029915" nodeInfo="nn">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8974276187400029916" nodeInfo="nn">
                    <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8974276187400029917" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpc2.ConceptFunctionParameter_node" typeId="tpc2.1142886811589" id="8974276187400029918" nodeInfo="nn" />
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="8974276187400029919" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3767.8974276187400030063" resolveInfo="isValid" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="ifTrueCellModel" roleId="tpc2.1088612958265" type="tpc2.CellModel_Collection" typeId="tpc2.1073389446423" id="8974276187400029920" nodeInfo="nn">
                <property name="vertical" nameId="tpc2.1073389446425" value="false" />
                <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Image" typeId="tpc2.1139744628335" id="8974276187400029921" nodeInfo="ng">
                  <node role="imagePathProvider" roleId="tpc2.1176899909521" type="tpc2.QueryFunction_ImagePath" typeId="tpc2.1176899348742" id="8974276187400029922" nodeInfo="nn">
                    <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="8974276187400029923" nodeInfo="nn">
                      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8974276187400029924" nodeInfo="nn">
                        <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8974276187400029925" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpc2.ConceptFunctionParameter_node" typeId="tpc2.1142886811589" id="8974276187400029926" nodeInfo="nn" />
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="8974276187400029927" nodeInfo="nn">
                            <link role="property" roleId="tp25.1138056395725" targetNodeId="1oap.8974276187400029899" resolveInfo="path" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="styleItem" roleId="tpc2.1219418656006" type="tpc2.SelectableStyleSheetItem" typeId="tpc2.1186414928363" id="8974276187400029928" nodeInfo="nn">
                  <property name="flag" nameId="tpc2.1186414551515" value="false" />
                </node>
                <node role="cellLayout" roleId="tpc2.1106270802874" type="tpc2.CellLayout_Horizontal" typeId="tpc2.1106270549637" id="8974276187400029929" nodeInfo="nn" />
              </node>
              <node role="ifFalseCellModel" roleId="tpc2.1088612973955" type="tpc2.CellModel_Constant" typeId="tpc2.1073389577006" id="8974276187400029930" nodeInfo="nn">
                <property name="text" nameId="tpc2.1073389577007" value="&lt;invalid path&gt;" />
                <node role="styleItem" roleId="tpc2.1219418656006" type="tpc2.ForegroundColorStyleClassItem" typeId="tpc2.1186404549998" id="8974276187400029931" nodeInfo="nn">
                  <property name="color" nameId="tpc2.1186403713874" value="red" />
                </node>
              </node>
            </node>
          </node>
          <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_JComponent" typeId="tpc2.1103016434866" id="8974276187400029932" nodeInfo="ng">
            <node role="componentProvider" roleId="tpc2.1176475119347" type="tpc2.QueryFunction_JComponent" typeId="tpc2.1176474535556" id="8974276187400029933" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="8974276187400029934" nodeInfo="nn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="8974276187400029935" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068581517676" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8974276187400029936" nodeInfo="nn">
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="7lvn.7973955287399271868" resolveInfo="EditorUtil" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7lvn.1684996642972608268" resolveInfo="createSelectIconButton" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpc2.ConceptFunctionParameter_node" typeId="tpc2.1142886811589" id="8974276187400029937" nodeInfo="nn" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tp25.PropertyNameRefExpression" typeId="tp25.5253134957341870583" id="8974276187400029938" nodeInfo="nn">
                      <link role="conceptDeclaration" roleId="tp25.5253134957341870584" targetNodeId="1oap.8974276187400029883" resolveInfo="IconResource" />
                      <link role="propertyDeclaration" roleId="tp25.5253134957341870585" targetNodeId="1oap.8974276187400029899" resolveInfo="path" />
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpc2.ConceptFunctionParameter_editorContext" typeId="tpc2.1161622981231" id="8974276187400029939" nodeInfo="nn" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="cellLayout" roleId="tpc2.1106270802874" type="tpc2.CellLayout_Indent" typeId="tpc2.1237303669825" id="6976585500156808853" nodeInfo="nn" />
        </node>
      </node>
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Alternation" typeId="tpc2.1088612959204" id="6976585500156988514" nodeInfo="ng">
        <property name="vertical" nameId="tpc2.1088613081987" value="true" />
        <node role="ifFalseCellModel" roleId="tpc2.1088612973955" type="tpc2.CellModel_Empty" typeId="tpc2.8313721352726366579" id="6976585500157073944" nodeInfo="ng" />
        <node role="alternationCondition" roleId="tpc2.1145918517974" type="tpc2.QueryFunction_NodeCondition" typeId="tpc2.1142886221719" id="6976585500156988517" nodeInfo="nn">
          <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="6976585500156988519" nodeInfo="nn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6976585500156992366" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6976585500157637932" nodeInfo="nn">
                <node role="operation" roleId="tpee.1197027833540" type="tpee.IsEmptyOperation" typeId="tpee.1225271369338" id="6976585500157643193" nodeInfo="nn" />
                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6976585500157010615" nodeInfo="nn">
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="6976585500157635859" nodeInfo="nn">
                    <link role="property" roleId="tp25.1138056395725" targetNodeId="1oap.8974276187400029899" resolveInfo="path" />
                  </node>
                  <node role="operand" roleId="tpee.1197027771414" type="tpc2.ConceptFunctionParameter_node" typeId="tpc2.1142886811589" id="6976585500157008854" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="ifTrueCellModel" roleId="tpc2.1088612958265" type="tpc2.CellModel_RefNode" typeId="tpc2.1073389882823" id="6976585500156691808" nodeInfo="ng">
          <link role="relationDeclaration" roleId="tpc2.1140103550593" targetNodeId="1oap.6976585500156684809" />
        </node>
        <node role="renderingCondition" roleId="tpc2.1142887637401" type="tpc2.QueryFunction_NodeCondition" typeId="tpc2.1142886221719" id="6976585500157142811" nodeInfo="nn">
          <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="6976585500157142812" nodeInfo="nn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6976585500157151523" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6976585500157199894" nodeInfo="nn">
                <node role="operation" roleId="tpee.1197027833540" type="tpee.IsEmptyOperation" typeId="tpee.1225271369338" id="6976585500157204941" nodeInfo="nn" />
                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6976585500157193146" nodeInfo="nn">
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="6976585500157197376" nodeInfo="nn">
                    <link role="property" roleId="tp25.1138056395725" targetNodeId="1oap.8974276187400029899" resolveInfo="path" />
                  </node>
                  <node role="operand" roleId="tpee.1197027771414" type="tpc2.ConceptFunctionParameter_node" typeId="tpc2.1142886811589" id="6976585500157192730" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="cellLayout" roleId="tpc2.1106270802874" type="tpc2.CellLayout_Indent" typeId="tpc2.1237303669825" id="6976585500157244843" nodeInfo="nn" />
    </node>
    <node role="inspectedCellModel" roleId="tpc2.1078153129734" type="tpc2.CellModel_Property" typeId="tpc2.1073389658414" id="8974276187400029941" nodeInfo="ng">
      <link role="relationDeclaration" roleId="tpc2.1140103550593" targetNodeId="1oap.8974276187400029899" resolveInfo="path" />
      <node role="styleItem" roleId="tpc2.1219418656006" type="tpc2.ForegroundColorStyleClassItem" typeId="tpc2.1186404549998" id="8974276187400029942" nodeInfo="nn">
        <node role="query" roleId="tpc2.1186403803051" type="tpc2.QueryFunction_Color" typeId="tpc2.1176809959526" id="8974276187400029943" nodeInfo="nn">
          <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="8974276187400029944" nodeInfo="nn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8974276187400029945" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.TernaryOperatorExpression" typeId="tpee.1163668896201" id="8974276187400029946" nodeInfo="nn">
                <node role="condition" roleId="tpee.1163668914799" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8974276187400029947" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpc2.ConceptFunctionParameter_node" typeId="tpc2.1142886811589" id="8974276187400029948" nodeInfo="nn" />
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="8974276187400029949" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3767.8974276187400030063" resolveInfo="isValid" />
                  </node>
                </node>
                <node role="ifTrue" roleId="tpee.1163668922816" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8974276187400029950" nodeInfo="nn">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="1t7x.~Color" resolveInfo="Color" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1t7x.~Color%dBLACK" resolveInfo="BLACK" />
                </node>
                <node role="ifFalse" roleId="tpee.1163668934364" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8974276187400029951" nodeInfo="nn">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="1t7x.~Color" resolveInfo="Color" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1t7x.~Color%dRED" resolveInfo="RED" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root type="tpc2.ConceptEditorDeclaration" typeId="tpc2.1071666914219" id="8974276187400029952" nodeInfo="ng">
    <link role="conceptDeclaration" roleId="tpc2.1166049300910" targetNodeId="1oap.8974276187400029891" resolveInfo="IconResourceExpression" />
    <node role="cellModel" roleId="tpc2.1080736633877" type="tpc2.CellModel_Collection" typeId="tpc2.1073389446423" id="8974276187400029953" nodeInfo="nn">
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Constant" typeId="tpc2.1073389577006" id="8974276187400029954" nodeInfo="nn">
        <property name="text" nameId="tpc2.1073389577007" value="icon" />
      </node>
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Constant" typeId="tpc2.1073389577006" id="8974276187400029955" nodeInfo="nn">
        <property name="text" nameId="tpc2.1073389577007" value="{" />
      </node>
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_RefNode" typeId="tpc2.1073389882823" id="8974276187400029956" nodeInfo="ng">
        <link role="relationDeclaration" roleId="tpc2.1140103550593" targetNodeId="1oap.8974276187400029893" />
      </node>
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Constant" typeId="tpc2.1073389577006" id="8974276187400029957" nodeInfo="nn">
        <property name="text" nameId="tpc2.1073389577007" value="}" />
      </node>
      <node role="cellLayout" roleId="tpc2.1106270802874" type="tpc2.CellLayout_Indent" typeId="tpc2.1237303669825" id="8974276187400029958" nodeInfo="nn" />
    </node>
  </root>
  <root type="tpc2.ConceptEditorDeclaration" typeId="tpc2.1071666914219" id="8974276187400029959" nodeInfo="ng">
    <link role="conceptDeclaration" roleId="tpc2.1166049300910" targetNodeId="1oap.8974276187400029885" resolveInfo="IconResourceBundle" />
    <node role="cellModel" roleId="tpc2.1080736633877" type="tpc2.CellModel_Collection" typeId="tpc2.1073389446423" id="8974276187400029960" nodeInfo="nn">
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Constant" typeId="tpc2.1073389577006" id="8974276187400029961" nodeInfo="nn">
        <property name="text" nameId="tpc2.1073389577007" value="Icons" />
      </node>
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Property" typeId="tpc2.1073389658414" id="8974276187400029962" nodeInfo="ng">
        <link role="relationDeclaration" roleId="tpc2.1140103550593" targetNodeId="tpck.1169194664001" resolveInfo="name" />
      </node>
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Constant" typeId="tpc2.1073389577006" id="8974276187400029963" nodeInfo="nn">
        <property name="text" nameId="tpc2.1073389577007" value="{" />
        <link role="styleClass" roleId="tpc2.1186406756722" targetNodeId="tpen.1215091279307" resolveInfo="LeftBrace" />
      </node>
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_RefNodeList" typeId="tpc2.1073390211982" id="8974276187400029964" nodeInfo="ng">
        <link role="relationDeclaration" roleId="tpc2.1140103550593" targetNodeId="1oap.8974276187400029886" />
        <node role="cellLayout" roleId="tpc2.1140524464360" type="tpc2.CellLayout_Vertical" typeId="tpc2.1106270571710" id="8974276187400029965" nodeInfo="nn" />
        <node role="styleItem" roleId="tpc2.1219418656006" type="tpc2.IndentLayoutOnNewLineStyleClassItem" typeId="tpc2.1237385578942" id="8974276187400029966" nodeInfo="nn">
          <property name="flag" nameId="tpc2.1186414551515" value="true" />
        </node>
        <node role="styleItem" roleId="tpc2.1219418656006" type="tpc2.IndentLayoutIndentStyleClassItem" typeId="tpc2.1237307900041" id="8974276187400029967" nodeInfo="nn">
          <property name="flag" nameId="tpc2.1186414551515" value="true" />
        </node>
      </node>
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Constant" typeId="tpc2.1073389577006" id="8974276187400029968" nodeInfo="nn">
        <property name="text" nameId="tpc2.1073389577007" value="}" />
        <link role="styleClass" roleId="tpc2.1186406756722" targetNodeId="tpen.1215091331565" resolveInfo="RightBrace" />
        <node role="styleItem" roleId="tpc2.1219418656006" type="tpc2.IndentLayoutOnNewLineStyleClassItem" typeId="tpc2.1237385578942" id="8974276187400029969" nodeInfo="nn">
          <property name="flag" nameId="tpc2.1186414551515" value="true" />
        </node>
      </node>
      <node role="cellLayout" roleId="tpc2.1106270802874" type="tpc2.CellLayout_Indent" typeId="tpc2.1237303669825" id="8974276187400029970" nodeInfo="nn" />
    </node>
  </root>
  <root type="tpc2.ConceptEditorDeclaration" typeId="tpc2.1071666914219" id="8974276187400029971" nodeInfo="ng">
    <link role="conceptDeclaration" roleId="tpc2.1166049300910" targetNodeId="1oap.8974276187400029888" resolveInfo="IconResourceDeclaration" />
    <node role="cellModel" roleId="tpc2.1080736633877" type="tpc2.CellModel_Collection" typeId="tpc2.1073389446423" id="8974276187400029972" nodeInfo="nn">
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Property" typeId="tpc2.1073389658414" id="8974276187400029973" nodeInfo="ng">
        <link role="relationDeclaration" roleId="tpc2.1140103550593" targetNodeId="tpck.1169194664001" resolveInfo="name" />
        <link role="styleClass" roleId="tpc2.1186406756722" targetNodeId="tpen.1198160792349" resolveInfo="StaticField" />
      </node>
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Constant" typeId="tpc2.1073389577006" id="8974276187400029974" nodeInfo="nn">
        <property name="text" nameId="tpc2.1073389577007" value="=" />
      </node>
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_RefNode" typeId="tpc2.1073389882823" id="8974276187400029975" nodeInfo="ng">
        <link role="relationDeclaration" roleId="tpc2.1140103550593" targetNodeId="1oap.8974276187400029889" />
      </node>
      <node role="cellLayout" roleId="tpc2.1106270802874" type="tpc2.CellLayout_Indent" typeId="tpc2.1237303669825" id="8974276187400029976" nodeInfo="nn" />
    </node>
  </root>
  <root type="tpc2.ConceptEditorDeclaration" typeId="tpc2.1071666914219" id="8974276187400029977" nodeInfo="ng">
    <link role="conceptDeclaration" roleId="tpc2.1166049300910" targetNodeId="1oap.8974276187400029895" resolveInfo="IconResourceReference" />
    <node role="cellModel" roleId="tpc2.1080736633877" type="tpc2.CellModel_Collection" typeId="tpc2.1073389446423" id="8974276187400029978" nodeInfo="nn">
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Component" typeId="tpc2.1078939183254" id="2886182022232400016" nodeInfo="ng">
        <property name="attractsFocus" nameId="tpc2.1130859485024" value="0" />
        <link role="editorComponent" roleId="tpc2.1078939183255" targetNodeId="tpco.2900100530630621651" resolveInfo="AliasEditorComponent" />
        <link role="styleClass" roleId="tpc2.1186406756722" targetNodeId="tpen.1186415544875" resolveInfo="KeyWord" />
      </node>
      <node role="cellLayout" roleId="tpc2.1106270802874" type="tpc2.CellLayout_Horizontal" typeId="tpc2.1106270549637" id="8974276187400029979" nodeInfo="nn" />
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Constant" typeId="tpc2.1073389577006" id="8974276187400029981" nodeInfo="nn">
        <property name="text" nameId="tpc2.1073389577007" value="&lt;" />
        <link role="styleClass" roleId="tpc2.1186406756722" targetNodeId="tpen.8171260302110651849" resolveInfo="LeftAngleBracket" />
        <node role="styleItem" roleId="tpc2.1219418656006" type="tpc2.PunctuationLeftStyleClassItem" typeId="tpc2.1233758997495" id="8974276187400029982" nodeInfo="nn">
          <property name="flag" nameId="tpc2.1186414551515" value="true" />
        </node>
      </node>
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_RefCell" typeId="tpc2.1088013125922" id="8974276187400029983" nodeInfo="ng">
        <link role="relationDeclaration" roleId="tpc2.1140103550593" targetNodeId="1oap.8974276187400029896" />
        <node role="editorComponent" roleId="tpc2.1088186146602" type="tpc2.InlineEditorComponent" typeId="tpc2.1088185857835" id="8974276187400029984" nodeInfo="ng">
          <node role="cellModel" roleId="tpc2.1080736633877" type="tpc2.CellModel_Property" typeId="tpc2.1073389658414" id="8974276187400029985" nodeInfo="ng">
            <property name="readOnly" nameId="tpc2.1140017977771" value="true" />
            <link role="relationDeclaration" roleId="tpc2.1140103550593" targetNodeId="tpck.1169194664001" resolveInfo="name" />
          </node>
        </node>
      </node>
      <node role="childCellModel" roleId="tpc2.1073389446424" type="tpc2.CellModel_Constant" typeId="tpc2.1073389577006" id="8974276187400029986" nodeInfo="nn">
        <property name="text" nameId="tpc2.1073389577007" value="&gt;" />
        <link role="styleClass" roleId="tpc2.1186406756722" targetNodeId="tpen.8171260302110651850" resolveInfo="RightAngleBracket" />
      </node>
    </node>
  </root>
</model>

